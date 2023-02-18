package;

import flash.text.TextField;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.addons.effects.chainable.FlxEffectSprite;
import flixel.addons.effects.chainable.FlxShakeEffect;
import flixel.addons.transition.FlxTransitionableState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import haxe.io.Input;
import lime.utils.Assets;

using StringTools;

#if desktop
import Discord.DiscordClient;
#end
#if MODS_ALLOWED
import sys.FileSystem;
import sys.io.File;
#end

class ThankYouState extends MusicBeatState
{
	var thankYouImage:FlxSprite;
	var youCanPreesed:Bool = false;

	override function create()
	{
		FlxG.mouse.visible = false;

		if (FlxG.save.data.flashing == null && !FlashingState.leftState)
		{
			FlxTransitionableState.skipNextTransIn = true;
			FlxTransitionableState.skipNextTransOut = true;
			FlxG.save.data.flashing = true;
			FlashingState.leftState = true;
		}

		thankYouImage = new FlxSprite();
		thankYouImage.loadGraphic(Paths.image('3Q'));
		thankYouImage.alpha = 0;
		add(thankYouImage);
		FlxTween.tween(thankYouImage, {alpha: 1}, 1, {
			onComplete: function(twn:FlxTween)
			{
				youCanPreesed = true;
			}
		});
	}

	override function update(elapsed:Float)
	{
		if (youCanPreesed)
		{
			if (FlxG.keys.justPressed.ANY)
			{
				youCanPreesed = false;
				FlxG.sound.play(Paths.sound('confirmMenu'), 0.7);
				FlxG.camera.flash(FlxColor.BLACK, 2);
				new FlxTimer().start(2, function(tmr:FlxTimer)
				{
					FlxTween.tween(thankYouImage, {alpha: 0}, 1, {
						onComplete: function(twn:FlxTween)
						{
							LoadingState.loadAndSwitchState(new StoryMenuState());
						}
					});
				});
			}
		}
	}
}
