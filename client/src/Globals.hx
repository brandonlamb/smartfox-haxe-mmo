class Globals{
    public static var clientWidth:Float = 1184;
    public static var clientHeight:Float = 360;
    public static var gameViewWidthRatio:Float = 3/4;
    public static var gameViewHeightRatio:Float = 3/4;

    public static var envBitmapDatas:Map<String,flash.display.BitmapData>;

    public static var avatarSpriteSheet:spritesheet.Spritesheet;

    public static var AVATAR_DIRECTIONS = ["E", "SE", "S", "SW", "W", "NW", "N", "NE"];

    public static var barrelBitmapDatas:Map<String,flash.display.BitmapData>;

    public static var balloonBitmapDatas:Map<String,flash.display.BitmapData>;

    static public function initSpriteSheets()
    {
        var rect = new flash.geom.Rectangle();
        var dest = new flash.geom.Point();

        envBitmapDatas = new Map<String,flash.display.BitmapData>();
        var envBmpData = openfl.Assets.getBitmapData("images/spritesheet_environment.png");
        var bush1 = new flash.display.BitmapData(36,39,true,0x00);
        rect.setTo(2,2,36,39);
        bush1.copyPixels(envBmpData,rect,dest);
        envBitmapDatas.set("bush1",bush1);

        var bush4 = new flash.display.BitmapData(46,67,true,0x00);
        rect.setTo(40,2,46,67);
        bush4.copyPixels(envBmpData,rect,dest);
        envBitmapDatas.set("bush4",bush4);

        var door = new flash.display.BitmapData(44,80,true,0x00);
        rect.setTo(88,2,44,80);
        door.copyPixels(envBmpData,rect,dest);
        envBitmapDatas.set("door",door);

        var tree2 = new flash.display.BitmapData(137,143,true,0x00);
        rect.setTo(134,2,137,143);
        tree2.copyPixels(envBmpData,rect,dest);
        envBitmapDatas.set("tree2",tree2);

        var tree3 = new flash.display.BitmapData(43,130,true,0x00);
        rect.setTo(273,2,43,130);
        tree3.copyPixels(envBmpData,rect,dest);
        envBitmapDatas.set("tree3",tree3);

        var tree4 = new flash.display.BitmapData(142,139,true,0x00);
        rect.setTo(318,2,142,139);
        tree4.copyPixels(envBmpData,rect,dest);
        envBitmapDatas.set("tree4",tree4);

        //Avatar
        var avatarBmp = openfl.Assets.getBitmapData("images/spritesheet_avatar.png");
        avatarSpriteSheet = spritesheet.importers.BitmapImporter.create(avatarBmp,56,3,30,68);
        avatarSpriteSheet.addBehavior(new spritesheet.data.BehaviorData("avatarE",[for(i in 0...20)i],true,30));
        avatarSpriteSheet.addBehavior(new spritesheet.data.BehaviorData("avatarN",[for(i in 20...39)i],true,30));
        avatarSpriteSheet.addBehavior(new spritesheet.data.BehaviorData("avatarNE",[for(i in 39...59)i],true,30));
        avatarSpriteSheet.addBehavior(new spritesheet.data.BehaviorData("avatarNW",[for(i in 59...79)i],true,30));
        avatarSpriteSheet.addBehavior(new spritesheet.data.BehaviorData("avatarS",[for(i in 79...98)i],true,30));
        avatarSpriteSheet.addBehavior(new spritesheet.data.BehaviorData("avatarSE",[for(i in 98...118)i],true,30));
        avatarSpriteSheet.addBehavior(new spritesheet.data.BehaviorData("avatarSW",[for(i in 118...138)i],true,30));
        avatarSpriteSheet.addBehavior(new spritesheet.data.BehaviorData("avatarW",[for(i in 138...158)i],true,30));
        avatarSpriteSheet.addBehavior(new spritesheet.data.BehaviorData("avatarStand",[79],false,30));

        //Barrel
        var barrelBmpData = openfl.Assets.getBitmapData("images/spritesheet_items.png");
        barrelBitmapDatas = new Map<String,flash.display.BitmapData>();

        var closeState = new flash.display.BitmapData(52,58,true,0x00);
        rect.setTo(0,0,52,58);
        closeState.copyPixels(barrelBmpData,rect,dest);
        barrelBitmapDatas.set("closeState",closeState);

        var openState = new flash.display.BitmapData(52,58,true,0x00);
        rect.setTo(52,0,52,58);
        openState.copyPixels(barrelBmpData,rect,dest);
        barrelBitmapDatas.set("openState",openState);

        //Balloon
        balloonBitmapDatas=new Map<String,flash.display.BitmapData>();
        var bBmp = openfl.Assets.getBitmapData("images/spritesheet_balloon.png");

        var bottom = new flash.display.BitmapData(100,25,true,0x00);
        rect.setTo(0,0,100,25);
        bottom.copyPixels(bBmp,rect,dest);
        balloonBitmapDatas.set("bottom",bottom);

        var middle = new flash.display.BitmapData(100,10,true,0x00);
        rect.setTo(0,25,100,10);
        middle.copyPixels(bBmp,rect,dest);
        balloonBitmapDatas.set("middle",middle);

        var top = new flash.display.BitmapData(100,10,true,0x00);
        rect.setTo(0,35,100,10);
        top.copyPixels(bBmp,rect,dest);
        balloonBitmapDatas.set("top",top);

    }
}