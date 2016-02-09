.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Configuration$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_DPI_ANY:I = 0xfffe

.field public static final DENSITY_DPI_NONE:I = 0xffff

.field public static final DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final EMPTY:Landroid/content/res/Configuration;

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final MNC_ZERO:I = 0xffff

.field public static final NATIVE_CONFIG_DENSITY:I = 0x100

.field public static final NATIVE_CONFIG_KEYBOARD:I = 0x10

.field public static final NATIVE_CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final NATIVE_CONFIG_LAYOUTDIR:I = 0x4000

.field public static final NATIVE_CONFIG_LOCALE:I = 0x4

.field public static final NATIVE_CONFIG_MCC:I = 0x1

.field public static final NATIVE_CONFIG_MNC:I = 0x2

.field public static final NATIVE_CONFIG_NAVIGATION:I = 0x40

.field public static final NATIVE_CONFIG_ORIENTATION:I = 0x80

.field public static final NATIVE_CONFIG_SCREEN_LAYOUT:I = 0x800

.field public static final NATIVE_CONFIG_SCREEN_SIZE:I = 0x200

.field public static final NATIVE_CONFIG_SMALLEST_SCREEN_SIZE:I = 0x2000

.field public static final NATIVE_CONFIG_TOUCHSCREEN:I = 0x8

.field public static final NATIVE_CONFIG_UI_MODE:I = 0x1000

.field public static final NATIVE_CONFIG_VERSION:I = 0x400

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_ROUND_MASK:I = 0x300

.field public static final SCREENLAYOUT_ROUND_NO:I = 0x100

.field public static final SCREENLAYOUT_ROUND_SHIFT:I = 0x8

.field public static final SCREENLAYOUT_ROUND_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_ROUND_YES:I = 0x200

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final UI_MODE_TYPE_UNDEFINED:I = 0x0

.field public static final UI_MODE_TYPE_WATCH:I = 0x6

.field private static final XML_ATTR_DENSITY:Ljava/lang/String; = "density"

.field private static final XML_ATTR_FONT_SCALE:Ljava/lang/String; = "fs"

.field private static final XML_ATTR_HARD_KEYBOARD_HIDDEN:Ljava/lang/String; = "hardKeyHid"

.field private static final XML_ATTR_KEYBOARD:Ljava/lang/String; = "key"

.field private static final XML_ATTR_KEYBOARD_HIDDEN:Ljava/lang/String; = "keyHid"

.field private static final XML_ATTR_LOCALE:Ljava/lang/String; = "locale"

.field private static final XML_ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final XML_ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final XML_ATTR_NAVIGATION:Ljava/lang/String; = "nav"

.field private static final XML_ATTR_NAVIGATION_HIDDEN:Ljava/lang/String; = "navHid"

.field private static final XML_ATTR_ORIENTATION:Ljava/lang/String; = "ori"

.field private static final XML_ATTR_SCREEN_HEIGHT:Ljava/lang/String; = "height"

.field private static final XML_ATTR_SCREEN_LAYOUT:Ljava/lang/String; = "scrLay"

.field private static final XML_ATTR_SCREEN_WIDTH:Ljava/lang/String; = "width"

.field private static final XML_ATTR_SMALLEST_WIDTH:Ljava/lang/String; = "sw"

.field private static final XML_ATTR_TOUCHSCREEN:Ljava/lang/String; = "touch"

.field private static final XML_ATTR_UI_MODE:Ljava/lang/String; = "ui"


# instance fields
.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public densityDpi:I

.field public fontScale:F

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;

.field public mcc:I

.field public mnc:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenWidthDp:I

.field public seq:I

.field public smallestScreenWidthDp:I

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    new-instance v0, Landroid/content/res/Configuration;

    #@2
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@5
    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@7
    .line 1210
    new-instance v0, Landroid/content/res/Configuration$1;

    #@9
    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    #@c
    .line 1209
    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 641
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    #@6
    .line 640
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "o"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 648
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@6
    .line 647
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1224
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 1223
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 3
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "change"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1636
    new-instance v0, Landroid/content/res/Configuration;

    #@2
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@5
    .line 1637
    .local v0, "delta":Landroid/content/res/Configuration;
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    #@7
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    #@9
    cmpl-float v1, v1, v2

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1638
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    #@f
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    #@11
    .line 1641
    :cond_0
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    #@13
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    #@15
    if-eq v1, v2, :cond_1

    #@17
    .line 1642
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    #@19
    iput v1, v0, Landroid/content/res/Configuration;->mcc:I

    #@1b
    .line 1645
    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    #@1d
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    #@1f
    if-eq v1, v2, :cond_2

    #@21
    .line 1646
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    #@23
    iput v1, v0, Landroid/content/res/Configuration;->mnc:I

    #@25
    .line 1649
    :cond_2
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@27
    if-nez v1, :cond_15

    #@29
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2b
    if-eqz v1, :cond_15

    #@2d
    .line 1651
    :cond_3
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2f
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@31
    .line 1654
    :cond_4
    :goto_0
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@33
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@35
    if-eq v1, v2, :cond_5

    #@37
    .line 1655
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@39
    iput v1, v0, Landroid/content/res/Configuration;->touchscreen:I

    #@3b
    .line 1658
    :cond_5
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    #@3d
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    #@3f
    if-eq v1, v2, :cond_6

    #@41
    .line 1659
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    #@43
    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    #@45
    .line 1662
    :cond_6
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@47
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@49
    if-eq v1, v2, :cond_7

    #@4b
    .line 1663
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@4d
    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@4f
    .line 1666
    :cond_7
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    #@51
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    #@53
    if-eq v1, v2, :cond_8

    #@55
    .line 1667
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    #@57
    iput v1, v0, Landroid/content/res/Configuration;->navigation:I

    #@59
    .line 1670
    :cond_8
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@5b
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@5d
    if-eq v1, v2, :cond_9

    #@5f
    .line 1671
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@61
    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    #@63
    .line 1674
    :cond_9
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    #@65
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    #@67
    if-eq v1, v2, :cond_a

    #@69
    .line 1675
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    #@6b
    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    #@6d
    .line 1678
    :cond_a
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@6f
    and-int/lit8 v1, v1, 0xf

    #@71
    .line 1679
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@73
    and-int/lit8 v2, v2, 0xf

    #@75
    .line 1678
    if-eq v1, v2, :cond_b

    #@77
    .line 1680
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@79
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@7b
    and-int/lit8 v2, v2, 0xf

    #@7d
    or-int/2addr v1, v2

    #@7e
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@80
    .line 1683
    :cond_b
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@82
    and-int/lit16 v1, v1, 0xc0

    #@84
    .line 1684
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@86
    and-int/lit16 v2, v2, 0xc0

    #@88
    .line 1683
    if-eq v1, v2, :cond_c

    #@8a
    .line 1685
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@8c
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@8e
    and-int/lit16 v2, v2, 0xc0

    #@90
    or-int/2addr v1, v2

    #@91
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@93
    .line 1688
    :cond_c
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@95
    and-int/lit8 v1, v1, 0x30

    #@97
    .line 1689
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@99
    and-int/lit8 v2, v2, 0x30

    #@9b
    .line 1688
    if-eq v1, v2, :cond_d

    #@9d
    .line 1690
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@9f
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@a1
    and-int/lit8 v2, v2, 0x30

    #@a3
    or-int/2addr v1, v2

    #@a4
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@a6
    .line 1693
    :cond_d
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@a8
    and-int/lit16 v1, v1, 0x300

    #@aa
    .line 1694
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@ac
    and-int/lit16 v2, v2, 0x300

    #@ae
    .line 1693
    if-eq v1, v2, :cond_e

    #@b0
    .line 1695
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@b2
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@b4
    and-int/lit16 v2, v2, 0x300

    #@b6
    or-int/2addr v1, v2

    #@b7
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@b9
    .line 1698
    :cond_e
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    #@bb
    and-int/lit8 v1, v1, 0xf

    #@bd
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@bf
    and-int/lit8 v2, v2, 0xf

    #@c1
    if-eq v1, v2, :cond_f

    #@c3
    .line 1699
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    #@c5
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@c7
    and-int/lit8 v2, v2, 0xf

    #@c9
    or-int/2addr v1, v2

    #@ca
    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    #@cc
    .line 1702
    :cond_f
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    #@ce
    and-int/lit8 v1, v1, 0x30

    #@d0
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@d2
    and-int/lit8 v2, v2, 0x30

    #@d4
    if-eq v1, v2, :cond_10

    #@d6
    .line 1703
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    #@d8
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@da
    and-int/lit8 v2, v2, 0x30

    #@dc
    or-int/2addr v1, v2

    #@dd
    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    #@df
    .line 1706
    :cond_10
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@e1
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@e3
    if-eq v1, v2, :cond_11

    #@e5
    .line 1707
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@e7
    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@e9
    .line 1710
    :cond_11
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@eb
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@ed
    if-eq v1, v2, :cond_12

    #@ef
    .line 1711
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@f1
    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@f3
    .line 1714
    :cond_12
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@f5
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@f7
    if-eq v1, v2, :cond_13

    #@f9
    .line 1715
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@fb
    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@fd
    .line 1718
    :cond_13
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@ff
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@101
    if-eq v1, v2, :cond_14

    #@103
    .line 1719
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@105
    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    #@107
    .line 1721
    :cond_14
    return-object v0

    #@108
    .line 1650
    :cond_15
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@10a
    if-eqz v1, :cond_4

    #@10c
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@10e
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@110
    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@113
    move-result v1

    #@114
    if-eqz v1, :cond_3

    #@116
    goto/16 :goto_0
.end method

.method private static getScreenLayoutNoDirection(I)I
    .locals 1
    .param p0, "screenLayout"    # I

    #@0
    .prologue
    .line 1356
    and-int/lit16 v0, p0, -0xc1

    #@2
    return v0
.end method

.method public static localeToResourceQualifier(Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1374
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1375
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_1

    #@f
    const/4 v1, 0x1

    #@10
    .line 1376
    .local v1, "l":Z
    :goto_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_2

    #@1a
    const/4 v0, 0x1

    #@1b
    .line 1377
    .local v0, "c":Z
    :goto_1
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_3

    #@25
    const/4 v2, 0x1

    #@26
    .line 1378
    .local v2, "s":Z
    :goto_2
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_4

    #@30
    const/4 v4, 0x1

    #@31
    .line 1380
    .local v4, "v":Z
    :goto_3
    if-eqz v1, :cond_0

    #@33
    .line 1381
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 1382
    if-eqz v0, :cond_0

    #@3c
    .line 1383
    const-string/jumbo v5, "-r"

    #@3f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 1384
    if-eqz v2, :cond_0

    #@4c
    .line 1385
    const-string/jumbo v5, "-s"

    #@4f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 1386
    if-eqz v4, :cond_0

    #@5c
    .line 1387
    const-string/jumbo v5, "-v"

    #@5f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 1392
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    return-object v5

    #@6f
    .line 1375
    .end local v0    # "c":Z
    .end local v1    # "l":Z
    .end local v2    # "s":Z
    .end local v4    # "v":Z
    :cond_1
    const/4 v1, 0x0

    #@70
    .restart local v1    # "l":Z
    goto :goto_0

    #@71
    .line 1376
    :cond_2
    const/4 v0, 0x0

    #@72
    .restart local v0    # "c":Z
    goto :goto_1

    #@73
    .line 1377
    :cond_3
    const/4 v2, 0x0

    #@74
    .restart local v2    # "s":Z
    goto :goto_2

    #@75
    .line 1378
    :cond_4
    const/4 v4, 0x0

    #@76
    .restart local v4    # "v":Z
    goto :goto_3
.end method

.method public static needNewResources(II)Z
    .locals 2
    .param p0, "configChanges"    # I
    .param p1, "interestingChanges"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1106
    const/high16 v1, 0x40000000    # 2.0f

    #@3
    or-int/2addr v1, p1

    #@4
    and-int/2addr v1, p0

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public static readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "configOut"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1753
    const-string/jumbo v1, "fs"

    #@4
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@7
    move-result v1

    #@8
    .line 1752
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@b
    move-result v1

    #@c
    iput v1, p1, Landroid/content/res/Configuration;->fontScale:F

    #@e
    .line 1754
    const-string/jumbo v1, "mcc"

    #@11
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@14
    move-result v1

    #@15
    iput v1, p1, Landroid/content/res/Configuration;->mcc:I

    #@17
    .line 1755
    const-string/jumbo v1, "mnc"

    #@1a
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@1d
    move-result v1

    #@1e
    iput v1, p1, Landroid/content/res/Configuration;->mnc:I

    #@20
    .line 1757
    const-string/jumbo v1, "locale"

    #@23
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 1758
    .local v0, "localeStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@29
    .line 1759
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2f
    .line 1762
    :cond_0
    const-string/jumbo v1, "touch"

    #@32
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@35
    move-result v1

    #@36
    iput v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@38
    .line 1764
    const-string/jumbo v1, "key"

    #@3b
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@3e
    move-result v1

    #@3f
    iput v1, p1, Landroid/content/res/Configuration;->keyboard:I

    #@41
    .line 1766
    const-string/jumbo v1, "keyHid"

    #@44
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@47
    move-result v1

    #@48
    iput v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@4a
    .line 1769
    const-string/jumbo v1, "hardKeyHid"

    #@4d
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@50
    move-result v1

    #@51
    .line 1768
    iput v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@53
    .line 1771
    const-string/jumbo v1, "nav"

    #@56
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@59
    move-result v1

    #@5a
    iput v1, p1, Landroid/content/res/Configuration;->navigation:I

    #@5c
    .line 1773
    const-string/jumbo v1, "navHid"

    #@5f
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@62
    move-result v1

    #@63
    iput v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@65
    .line 1775
    const-string/jumbo v1, "ori"

    #@68
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@6b
    move-result v1

    #@6c
    iput v1, p1, Landroid/content/res/Configuration;->orientation:I

    #@6e
    .line 1777
    const-string/jumbo v1, "scrLay"

    #@71
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@74
    move-result v1

    #@75
    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@77
    .line 1779
    const-string/jumbo v1, "ui"

    #@7a
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@7d
    move-result v1

    #@7e
    iput v1, p1, Landroid/content/res/Configuration;->uiMode:I

    #@80
    .line 1780
    const-string/jumbo v1, "width"

    #@83
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@86
    move-result v1

    #@87
    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@89
    .line 1782
    const-string/jumbo v1, "height"

    #@8c
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@8f
    move-result v1

    #@90
    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@92
    .line 1785
    const-string/jumbo v1, "sw"

    #@95
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@98
    move-result v1

    #@99
    .line 1784
    iput v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@9b
    .line 1787
    const-string/jumbo v1, "density"

    #@9e
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@a1
    move-result v1

    #@a2
    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@a4
    .line 1751
    return-void
.end method

.method public static reduceScreenLayout(III)I
    .locals 6
    .param p0, "curLayout"    # I
    .param p1, "longSizeDp"    # I
    .param p2, "shortSizeDp"    # I

    #@0
    .prologue
    .line 238
    const/16 v4, 0x1d6

    #@2
    if-ge p1, v4, :cond_3

    #@4
    .line 241
    const/4 v3, 0x1

    #@5
    .line 242
    .local v3, "screenLayoutSize":I
    const/4 v2, 0x0

    #@6
    .line 243
    .local v2, "screenLayoutLong":Z
    const/4 v1, 0x0

    #@7
    .line 278
    .local v1, "screenLayoutCompatNeeded":Z
    :goto_0
    if-nez v2, :cond_0

    #@9
    .line 279
    and-int/lit8 v4, p0, -0x31

    #@b
    or-int/lit8 p0, v4, 0x10

    #@d
    .line 281
    :cond_0
    if-eqz v1, :cond_1

    #@f
    .line 282
    const/high16 v4, 0x10000000

    #@11
    or-int/2addr p0, v4

    #@12
    .line 284
    :cond_1
    and-int/lit8 v0, p0, 0xf

    #@14
    .line 285
    .local v0, "curSize":I
    if-ge v3, v0, :cond_2

    #@16
    .line 286
    and-int/lit8 v4, p0, -0x10

    #@18
    or-int p0, v4, v3

    #@1a
    .line 288
    :cond_2
    return p0

    #@1b
    .line 246
    .end local v0    # "curSize":I
    .end local v1    # "screenLayoutCompatNeeded":Z
    .end local v2    # "screenLayoutLong":Z
    .end local v3    # "screenLayoutSize":I
    :cond_3
    const/16 v4, 0x3c0

    #@1d
    if-lt p1, v4, :cond_5

    #@1f
    const/16 v4, 0x2d0

    #@21
    if-lt p2, v4, :cond_5

    #@23
    .line 249
    const/4 v3, 0x4

    #@24
    .line 261
    .restart local v3    # "screenLayoutSize":I
    :goto_1
    const/16 v4, 0x141

    #@26
    if-gt p2, v4, :cond_4

    #@28
    const/16 v4, 0x23a

    #@2a
    if-le p1, v4, :cond_7

    #@2c
    .line 262
    :cond_4
    const/4 v1, 0x1

    #@2d
    .line 268
    .restart local v1    # "screenLayoutCompatNeeded":Z
    :goto_2
    mul-int/lit8 v4, p1, 0x3

    #@2f
    div-int/lit8 v4, v4, 0x5

    #@31
    add-int/lit8 v5, p2, -0x1

    #@33
    if-lt v4, v5, :cond_8

    #@35
    .line 270
    const/4 v2, 0x1

    #@36
    .restart local v2    # "screenLayoutLong":Z
    goto :goto_0

    #@37
    .line 250
    .end local v1    # "screenLayoutCompatNeeded":Z
    .end local v2    # "screenLayoutLong":Z
    .end local v3    # "screenLayoutSize":I
    :cond_5
    const/16 v4, 0x280

    #@39
    if-lt p1, v4, :cond_6

    #@3b
    const/16 v4, 0x1e0

    #@3d
    if-lt p2, v4, :cond_6

    #@3f
    .line 253
    const/4 v3, 0x3

    #@40
    .line 250
    .restart local v3    # "screenLayoutSize":I
    goto :goto_1

    #@41
    .line 255
    .end local v3    # "screenLayoutSize":I
    :cond_6
    const/4 v3, 0x2

    #@42
    .restart local v3    # "screenLayoutSize":I
    goto :goto_1

    #@43
    .line 264
    :cond_7
    const/4 v1, 0x0

    #@44
    .restart local v1    # "screenLayoutCompatNeeded":Z
    goto :goto_2

    #@45
    .line 272
    :cond_8
    const/4 v2, 0x0

    #@46
    .restart local v2    # "screenLayoutLong":Z
    goto :goto_0
.end method

.method public static resetScreenLayout(I)I
    .locals 1
    .param p0, "curLayout"    # I

    #@0
    .prologue
    .line 223
    const v0, -0x10000040

    #@3
    and-int/2addr v0, p0

    #@4
    or-int/lit8 v0, v0, 0x24

    #@6
    return v0
.end method

.method public static resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1403
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1405
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "mcc"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    .line 1407
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    #@24
    if-eqz v1, :cond_0

    #@26
    .line 1408
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "mnc"

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f
    .line 1412
    :cond_0
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@41
    if-eqz v1, :cond_1

    #@43
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@45
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_5

    #@4f
    .line 1416
    :cond_1
    :goto_0
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@51
    and-int/lit16 v1, v1, 0xc0

    #@53
    sparse-switch v1, :sswitch_data_0

    #@56
    .line 1427
    :goto_1
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@58
    if-eqz v1, :cond_2

    #@5a
    .line 1428
    new-instance v1, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v2, "sw"

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    const-string/jumbo v2, "dp"

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7a
    .line 1431
    :cond_2
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@7c
    if-eqz v1, :cond_3

    #@7e
    .line 1432
    new-instance v1, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v2, "w"

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@8c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    const-string/jumbo v2, "dp"

    #@93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v1

    #@97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9e
    .line 1435
    :cond_3
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@a0
    if-eqz v1, :cond_4

    #@a2
    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v2, "h"

    #@aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@b0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    const-string/jumbo v2, "dp"

    #@b7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v1

    #@bb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v1

    #@bf
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c2
    .line 1439
    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@c4
    and-int/lit8 v1, v1, 0xf

    #@c6
    packed-switch v1, :pswitch_data_0

    #@c9
    .line 1456
    :goto_2
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@cb
    and-int/lit8 v1, v1, 0x30

    #@cd
    sparse-switch v1, :sswitch_data_1

    #@d0
    .line 1467
    :goto_3
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@d2
    and-int/lit16 v1, v1, 0x300

    #@d4
    sparse-switch v1, :sswitch_data_2

    #@d7
    .line 1478
    :goto_4
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    #@d9
    packed-switch v1, :pswitch_data_1

    #@dc
    .line 1489
    :goto_5
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    #@de
    and-int/lit8 v1, v1, 0xf

    #@e0
    packed-switch v1, :pswitch_data_2

    #@e3
    .line 1509
    :goto_6
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    #@e5
    and-int/lit8 v1, v1, 0x30

    #@e7
    sparse-switch v1, :sswitch_data_3

    #@ea
    .line 1520
    :goto_7
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@ec
    sparse-switch v1, :sswitch_data_4

    #@ef
    .line 1550
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@f6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v1

    #@fa
    const-string/jumbo v2, "dpi"

    #@fd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v1

    #@101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v1

    #@105
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@108
    .line 1554
    :goto_9
    :sswitch_0
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@10a
    packed-switch v1, :pswitch_data_3

    #@10d
    .line 1565
    :goto_a
    :pswitch_0
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@10f
    packed-switch v1, :pswitch_data_4

    #@112
    .line 1579
    :goto_b
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    #@114
    packed-switch v1, :pswitch_data_5

    #@117
    .line 1593
    :goto_c
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@119
    packed-switch v1, :pswitch_data_6

    #@11c
    .line 1604
    :goto_d
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    #@11e
    packed-switch v1, :pswitch_data_7

    #@121
    .line 1621
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    #@123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@126
    const-string/jumbo v2, "v"

    #@129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v1

    #@12d
    sget v2, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@12f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@132
    move-result-object v1

    #@133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@136
    move-result-object v1

    #@137
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13a
    .line 1622
    const-string/jumbo v1, "-"

    #@13d
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@140
    move-result-object v1

    #@141
    return-object v1

    #@142
    .line 1413
    :cond_5
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@144
    invoke-static {v1}, Landroid/content/res/Configuration;->localeToResourceQualifier(Ljava/util/Locale;)Ljava/lang/String;

    #@147
    move-result-object v1

    #@148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14b
    goto/16 :goto_0

    #@14d
    .line 1418
    :sswitch_1
    const-string/jumbo v1, "ldltr"

    #@150
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@153
    goto/16 :goto_1

    #@155
    .line 1421
    :sswitch_2
    const-string/jumbo v1, "ldrtl"

    #@158
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15b
    goto/16 :goto_1

    #@15d
    .line 1441
    :pswitch_1
    const-string/jumbo v1, "small"

    #@160
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@163
    goto/16 :goto_2

    #@165
    .line 1444
    :pswitch_2
    const-string/jumbo v1, "normal"

    #@168
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16b
    goto/16 :goto_2

    #@16d
    .line 1447
    :pswitch_3
    const-string/jumbo v1, "large"

    #@170
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@173
    goto/16 :goto_2

    #@175
    .line 1450
    :pswitch_4
    const-string/jumbo v1, "xlarge"

    #@178
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17b
    goto/16 :goto_2

    #@17d
    .line 1458
    :sswitch_3
    const-string/jumbo v1, "long"

    #@180
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@183
    goto/16 :goto_3

    #@185
    .line 1461
    :sswitch_4
    const-string/jumbo v1, "notlong"

    #@188
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18b
    goto/16 :goto_3

    #@18d
    .line 1469
    :sswitch_5
    const-string/jumbo v1, "round"

    #@190
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@193
    goto/16 :goto_4

    #@195
    .line 1472
    :sswitch_6
    const-string/jumbo v1, "notround"

    #@198
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19b
    goto/16 :goto_4

    #@19d
    .line 1480
    :pswitch_5
    const-string/jumbo v1, "land"

    #@1a0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a3
    goto/16 :goto_5

    #@1a5
    .line 1483
    :pswitch_6
    const-string/jumbo v1, "port"

    #@1a8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ab
    goto/16 :goto_5

    #@1ad
    .line 1491
    :pswitch_7
    const-string/jumbo v1, "appliance"

    #@1b0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b3
    goto/16 :goto_6

    #@1b5
    .line 1494
    :pswitch_8
    const-string/jumbo v1, "desk"

    #@1b8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1bb
    goto/16 :goto_6

    #@1bd
    .line 1497
    :pswitch_9
    const-string/jumbo v1, "television"

    #@1c0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c3
    goto/16 :goto_6

    #@1c5
    .line 1500
    :pswitch_a
    const-string/jumbo v1, "car"

    #@1c8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1cb
    goto/16 :goto_6

    #@1cd
    .line 1503
    :pswitch_b
    const-string/jumbo v1, "watch"

    #@1d0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d3
    goto/16 :goto_6

    #@1d5
    .line 1511
    :sswitch_7
    const-string/jumbo v1, "night"

    #@1d8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1db
    goto/16 :goto_7

    #@1dd
    .line 1514
    :sswitch_8
    const-string/jumbo v1, "notnight"

    #@1e0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e3
    goto/16 :goto_7

    #@1e5
    .line 1524
    :sswitch_9
    const-string/jumbo v1, "ldpi"

    #@1e8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1eb
    goto/16 :goto_9

    #@1ed
    .line 1527
    :sswitch_a
    const-string/jumbo v1, "mdpi"

    #@1f0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f3
    goto/16 :goto_9

    #@1f5
    .line 1530
    :sswitch_b
    const-string/jumbo v1, "tvdpi"

    #@1f8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1fb
    goto/16 :goto_9

    #@1fd
    .line 1533
    :sswitch_c
    const-string/jumbo v1, "hdpi"

    #@200
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@203
    goto/16 :goto_9

    #@205
    .line 1536
    :sswitch_d
    const-string/jumbo v1, "xhdpi"

    #@208
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20b
    goto/16 :goto_9

    #@20d
    .line 1539
    :sswitch_e
    const-string/jumbo v1, "xxhdpi"

    #@210
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@213
    goto/16 :goto_9

    #@215
    .line 1542
    :sswitch_f
    const-string/jumbo v1, "xxxhdpi"

    #@218
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21b
    goto/16 :goto_9

    #@21d
    .line 1545
    :sswitch_10
    const-string/jumbo v1, "anydpi"

    #@220
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@223
    goto/16 :goto_9

    #@225
    .line 1548
    :sswitch_11
    const-string/jumbo v1, "nodpi"

    #@228
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22b
    goto/16 :goto_8

    #@22d
    .line 1556
    :pswitch_c
    const-string/jumbo v1, "notouch"

    #@230
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@233
    goto/16 :goto_a

    #@235
    .line 1559
    :pswitch_d
    const-string/jumbo v1, "finger"

    #@238
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23b
    goto/16 :goto_a

    #@23d
    .line 1567
    :pswitch_e
    const-string/jumbo v1, "keysexposed"

    #@240
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@243
    goto/16 :goto_b

    #@245
    .line 1570
    :pswitch_f
    const-string/jumbo v1, "keyshidden"

    #@248
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24b
    goto/16 :goto_b

    #@24d
    .line 1573
    :pswitch_10
    const-string/jumbo v1, "keyssoft"

    #@250
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@253
    goto/16 :goto_b

    #@255
    .line 1581
    :pswitch_11
    const-string/jumbo v1, "nokeys"

    #@258
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25b
    goto/16 :goto_c

    #@25d
    .line 1584
    :pswitch_12
    const-string/jumbo v1, "qwerty"

    #@260
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@263
    goto/16 :goto_c

    #@265
    .line 1587
    :pswitch_13
    const-string/jumbo v1, "12key"

    #@268
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26b
    goto/16 :goto_c

    #@26d
    .line 1595
    :pswitch_14
    const-string/jumbo v1, "navexposed"

    #@270
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@273
    goto/16 :goto_d

    #@275
    .line 1598
    :pswitch_15
    const-string/jumbo v1, "navhidden"

    #@278
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27b
    goto/16 :goto_d

    #@27d
    .line 1606
    :pswitch_16
    const-string/jumbo v1, "nonav"

    #@280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@283
    goto/16 :goto_e

    #@285
    .line 1609
    :pswitch_17
    const-string/jumbo v1, "dpad"

    #@288
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28b
    goto/16 :goto_e

    #@28d
    .line 1612
    :pswitch_18
    const-string/jumbo v1, "trackball"

    #@290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@293
    goto/16 :goto_e

    #@295
    .line 1615
    :pswitch_19
    const-string/jumbo v1, "wheel"

    #@298
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29b
    goto/16 :goto_e

    #@29d
    .line 1416
    nop

    #@29e
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
    .end sparse-switch

    #@2a8
    .line 1439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@2b4
    .line 1456
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_4
        0x20 -> :sswitch_3
    .end sparse-switch

    #@2be
    .line 1467
    :sswitch_data_2
    .sparse-switch
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
    .end sparse-switch

    #@2c8
    .line 1478
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch

    #@2d0
    .line 1489
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_b
    .end packed-switch

    #@2de
    .line 1509
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_8
        0x20 -> :sswitch_7
    .end sparse-switch

    #@2e8
    .line 1520
    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_0
        0x78 -> :sswitch_9
        0xa0 -> :sswitch_a
        0xd5 -> :sswitch_b
        0xf0 -> :sswitch_c
        0x140 -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x280 -> :sswitch_f
        0xfffe -> :sswitch_10
        0xffff -> :sswitch_11
    .end sparse-switch

    #@312
    .line 1554
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch

    #@31c
    .line 1565
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    #@326
    .line 1579
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    #@330
    .line 1593
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
    .end packed-switch

    #@338
    .line 1604
    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public static writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1802
    const-string/jumbo v0, "fs"

    #@3
    .line 1803
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    #@5
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@8
    move-result v1

    #@9
    .line 1802
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@c
    .line 1804
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1805
    const-string/jumbo v0, "mcc"

    #@13
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    #@15
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@18
    .line 1807
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 1808
    const-string/jumbo v0, "mnc"

    #@1f
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    #@21
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@24
    .line 1810
    :cond_1
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 1811
    const-string/jumbo v0, "locale"

    #@2b
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2d
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@34
    .line 1813
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@36
    if-eqz v0, :cond_3

    #@38
    .line 1814
    const-string/jumbo v0, "touch"

    #@3b
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@3d
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@40
    .line 1816
    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    #@42
    if-eqz v0, :cond_4

    #@44
    .line 1817
    const-string/jumbo v0, "key"

    #@47
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    #@49
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@4c
    .line 1819
    :cond_4
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@4e
    if-eqz v0, :cond_5

    #@50
    .line 1820
    const-string/jumbo v0, "keyHid"

    #@53
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@55
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@58
    .line 1822
    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@5a
    if-eqz v0, :cond_6

    #@5c
    .line 1823
    const-string/jumbo v0, "hardKeyHid"

    #@5f
    .line 1824
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@61
    .line 1823
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@64
    .line 1826
    :cond_6
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    #@66
    if-eqz v0, :cond_7

    #@68
    .line 1827
    const-string/jumbo v0, "nav"

    #@6b
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    #@6d
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@70
    .line 1829
    :cond_7
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@72
    if-eqz v0, :cond_8

    #@74
    .line 1830
    const-string/jumbo v0, "navHid"

    #@77
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@79
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@7c
    .line 1832
    :cond_8
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    #@7e
    if-eqz v0, :cond_9

    #@80
    .line 1833
    const-string/jumbo v0, "ori"

    #@83
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    #@85
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@88
    .line 1835
    :cond_9
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@8a
    if-eqz v0, :cond_a

    #@8c
    .line 1836
    const-string/jumbo v0, "scrLay"

    #@8f
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@91
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@94
    .line 1838
    :cond_a
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    #@96
    if-eqz v0, :cond_b

    #@98
    .line 1839
    const-string/jumbo v0, "ui"

    #@9b
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    #@9d
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@a0
    .line 1841
    :cond_b
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@a2
    if-eqz v0, :cond_c

    #@a4
    .line 1842
    const-string/jumbo v0, "width"

    #@a7
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@a9
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@ac
    .line 1844
    :cond_c
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@ae
    if-eqz v0, :cond_d

    #@b0
    .line 1845
    const-string/jumbo v0, "height"

    #@b3
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@b5
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@b8
    .line 1847
    :cond_d
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@ba
    if-eqz v0, :cond_e

    #@bc
    .line 1848
    const-string/jumbo v0, "sw"

    #@bf
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@c1
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@c4
    .line 1850
    :cond_e
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@c6
    if-eqz v0, :cond_f

    #@c8
    .line 1851
    const-string/jumbo v0, "density"

    #@cb
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@cd
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@d0
    .line 1801
    :cond_f
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/content/res/Configuration;)I
    .locals 7
    .param p1, "that"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, -0x1

    #@2
    .line 1229
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    #@4
    .line 1230
    .local v0, "a":F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    #@6
    .line 1231
    .local v1, "b":F
    cmpg-float v3, v0, v1

    #@8
    if-gez v3, :cond_0

    #@a
    return v5

    #@b
    .line 1232
    :cond_0
    cmpl-float v3, v0, v1

    #@d
    if-lez v3, :cond_1

    #@f
    return v6

    #@10
    .line 1233
    :cond_1
    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    #@12
    iget v4, p1, Landroid/content/res/Configuration;->mcc:I

    #@14
    sub-int v2, v3, v4

    #@16
    .line 1234
    .local v2, "n":I
    if-eqz v2, :cond_2

    #@18
    return v2

    #@19
    .line 1235
    :cond_2
    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    #@1b
    iget v4, p1, Landroid/content/res/Configuration;->mnc:I

    #@1d
    sub-int v2, v3, v4

    #@1f
    .line 1236
    if-eqz v2, :cond_3

    #@21
    return v2

    #@22
    .line 1237
    :cond_3
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@24
    if-nez v3, :cond_4

    #@26
    .line 1238
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@28
    if-eqz v3, :cond_8

    #@2a
    return v6

    #@2b
    .line 1239
    :cond_4
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2d
    if-nez v3, :cond_5

    #@2f
    .line 1240
    return v5

    #@30
    .line 1242
    :cond_5
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@32
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@38
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@3f
    move-result v2

    #@40
    .line 1243
    if-eqz v2, :cond_6

    #@42
    return v2

    #@43
    .line 1244
    :cond_6
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@45
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@4b
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@52
    move-result v2

    #@53
    .line 1245
    if-eqz v2, :cond_7

    #@55
    return v2

    #@56
    .line 1246
    :cond_7
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@58
    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@5e
    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@65
    move-result v2

    #@66
    .line 1247
    if-eqz v2, :cond_8

    #@68
    return v2

    #@69
    .line 1249
    :cond_8
    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@6b
    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@6d
    sub-int v2, v3, v4

    #@6f
    .line 1250
    if-eqz v2, :cond_9

    #@71
    return v2

    #@72
    .line 1251
    :cond_9
    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    #@74
    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    #@76
    sub-int v2, v3, v4

    #@78
    .line 1252
    if-eqz v2, :cond_a

    #@7a
    return v2

    #@7b
    .line 1253
    :cond_a
    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@7d
    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@7f
    sub-int v2, v3, v4

    #@81
    .line 1254
    if-eqz v2, :cond_b

    #@83
    return v2

    #@84
    .line 1255
    :cond_b
    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@86
    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@88
    sub-int v2, v3, v4

    #@8a
    .line 1256
    if-eqz v2, :cond_c

    #@8c
    return v2

    #@8d
    .line 1257
    :cond_c
    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    #@8f
    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    #@91
    sub-int v2, v3, v4

    #@93
    .line 1258
    if-eqz v2, :cond_d

    #@95
    return v2

    #@96
    .line 1259
    :cond_d
    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@98
    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@9a
    sub-int v2, v3, v4

    #@9c
    .line 1260
    if-eqz v2, :cond_e

    #@9e
    return v2

    #@9f
    .line 1261
    :cond_e
    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    #@a1
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    #@a3
    sub-int v2, v3, v4

    #@a5
    .line 1262
    if-eqz v2, :cond_f

    #@a7
    return v2

    #@a8
    .line 1263
    :cond_f
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@aa
    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@ac
    sub-int v2, v3, v4

    #@ae
    .line 1264
    if-eqz v2, :cond_10

    #@b0
    return v2

    #@b1
    .line 1265
    :cond_10
    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    #@b3
    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    #@b5
    sub-int v2, v3, v4

    #@b7
    .line 1266
    if-eqz v2, :cond_11

    #@b9
    return v2

    #@ba
    .line 1267
    :cond_11
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@bc
    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@be
    sub-int v2, v3, v4

    #@c0
    .line 1268
    if-eqz v2, :cond_12

    #@c2
    return v2

    #@c3
    .line 1269
    :cond_12
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@c5
    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@c7
    sub-int v2, v3, v4

    #@c9
    .line 1270
    if-eqz v2, :cond_13

    #@cb
    return v2

    #@cc
    .line 1271
    :cond_13
    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@ce
    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@d0
    sub-int v2, v3, v4

    #@d2
    .line 1272
    if-eqz v2, :cond_14

    #@d4
    return v2

    #@d5
    .line 1273
    :cond_14
    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@d7
    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@d9
    sub-int v2, v3, v4

    #@db
    .line 1275
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1227
    check-cast p1, Landroid/content/res/Configuration;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1142
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .locals 4
    .param p1, "delta"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1016
    const/4 v0, 0x0

    #@1
    .line 1017
    .local v0, "changed":I
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    #@3
    const/4 v3, 0x0

    #@4
    cmpl-float v2, v2, v3

    #@6
    if-lez v2, :cond_0

    #@8
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    #@a
    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    #@c
    cmpl-float v2, v2, v3

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1018
    const/high16 v0, 0x40000000    # 2.0f

    #@12
    .line 1020
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    #@14
    if-eqz v2, :cond_1

    #@16
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    #@18
    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    #@1a
    if-eq v2, v3, :cond_1

    #@1c
    .line 1021
    or-int/lit8 v0, v0, 0x1

    #@1e
    .line 1023
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    #@20
    if-eqz v2, :cond_2

    #@22
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    #@24
    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    #@26
    if-eq v2, v3, :cond_2

    #@28
    .line 1024
    or-int/lit8 v0, v0, 0x2

    #@2a
    .line 1026
    :cond_2
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2c
    if-eqz v2, :cond_3

    #@2e
    .line 1027
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@30
    if-eqz v2, :cond_12

    #@32
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@34
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@36
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_12

    #@3c
    .line 1031
    :cond_3
    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@3e
    and-int/lit16 v1, v2, 0xc0

    #@40
    .line 1032
    .local v1, "deltaScreenLayoutDir":I
    if-eqz v1, :cond_4

    #@42
    .line 1033
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@44
    and-int/lit16 v2, v2, 0xc0

    #@46
    if-eq v1, v2, :cond_4

    #@48
    .line 1034
    or-int/lit16 v0, v0, 0x2000

    #@4a
    .line 1036
    :cond_4
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@4c
    if-eqz v2, :cond_5

    #@4e
    .line 1037
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@50
    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@52
    if-eq v2, v3, :cond_5

    #@54
    .line 1038
    or-int/lit8 v0, v0, 0x8

    #@56
    .line 1040
    :cond_5
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    #@58
    if-eqz v2, :cond_6

    #@5a
    .line 1041
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    #@5c
    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    #@5e
    if-eq v2, v3, :cond_6

    #@60
    .line 1042
    or-int/lit8 v0, v0, 0x10

    #@62
    .line 1044
    :cond_6
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@64
    if-eqz v2, :cond_7

    #@66
    .line 1045
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@68
    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@6a
    if-eq v2, v3, :cond_7

    #@6c
    .line 1046
    or-int/lit8 v0, v0, 0x20

    #@6e
    .line 1048
    :cond_7
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@70
    if-eqz v2, :cond_8

    #@72
    .line 1049
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@74
    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@76
    if-eq v2, v3, :cond_8

    #@78
    .line 1050
    or-int/lit8 v0, v0, 0x20

    #@7a
    .line 1052
    :cond_8
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    #@7c
    if-eqz v2, :cond_9

    #@7e
    .line 1053
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    #@80
    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    #@82
    if-eq v2, v3, :cond_9

    #@84
    .line 1054
    or-int/lit8 v0, v0, 0x40

    #@86
    .line 1056
    :cond_9
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@88
    if-eqz v2, :cond_a

    #@8a
    .line 1057
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@8c
    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@8e
    if-eq v2, v3, :cond_a

    #@90
    .line 1058
    or-int/lit8 v0, v0, 0x20

    #@92
    .line 1060
    :cond_a
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    #@94
    if-eqz v2, :cond_b

    #@96
    .line 1061
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    #@98
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    #@9a
    if-eq v2, v3, :cond_b

    #@9c
    .line 1062
    or-int/lit16 v0, v0, 0x80

    #@9e
    .line 1064
    :cond_b
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@a0
    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    #@a3
    move-result v2

    #@a4
    if-eqz v2, :cond_c

    #@a6
    .line 1066
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@a8
    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    #@ab
    move-result v2

    #@ac
    .line 1067
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@ae
    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    #@b1
    move-result v3

    #@b2
    .line 1066
    if-eq v2, v3, :cond_c

    #@b4
    .line 1068
    or-int/lit16 v0, v0, 0x100

    #@b6
    .line 1070
    :cond_c
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@b8
    if-eqz v2, :cond_d

    #@ba
    .line 1071
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@bc
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    #@be
    if-eq v2, v3, :cond_d

    #@c0
    .line 1072
    or-int/lit16 v0, v0, 0x200

    #@c2
    .line 1074
    :cond_d
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@c4
    if-eqz v2, :cond_e

    #@c6
    .line 1075
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@c8
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@ca
    if-eq v2, v3, :cond_e

    #@cc
    .line 1076
    or-int/lit16 v0, v0, 0x400

    #@ce
    .line 1078
    :cond_e
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@d0
    if-eqz v2, :cond_f

    #@d2
    .line 1079
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@d4
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@d6
    if-eq v2, v3, :cond_f

    #@d8
    .line 1080
    or-int/lit16 v0, v0, 0x400

    #@da
    .line 1082
    :cond_f
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@dc
    if-eqz v2, :cond_10

    #@de
    .line 1083
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@e0
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@e2
    if-eq v2, v3, :cond_10

    #@e4
    .line 1084
    or-int/lit16 v0, v0, 0x800

    #@e6
    .line 1086
    :cond_10
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@e8
    if-eqz v2, :cond_11

    #@ea
    .line 1087
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@ec
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@ee
    if-eq v2, v3, :cond_11

    #@f0
    .line 1088
    or-int/lit16 v0, v0, 0x1000

    #@f2
    .line 1091
    :cond_11
    return v0

    #@f3
    .line 1028
    .end local v1    # "deltaScreenLayoutDir":I
    :cond_12
    or-int/lit8 v0, v0, 0x4

    #@f5
    .line 1029
    or-int/lit16 v0, v0, 0x2000

    #@f7
    goto/16 :goto_0
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .locals 3
    .param p1, "that"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1279
    if-nez p1, :cond_0

    #@4
    return v1

    #@5
    .line 1280
    :cond_0
    if-ne p1, p0, :cond_1

    #@7
    return v0

    #@8
    .line 1281
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_2

    #@e
    :goto_0
    return v0

    #@f
    :cond_2
    move v0, v1

    #@10
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1286
    :try_start_0
    check-cast p1, Landroid/content/res/Configuration;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1287
    :catch_0
    move-exception v0

    #@8
    .line 1289
    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getLayoutDirection()I
    .locals 2

    #@0
    .prologue
    .line 1333
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@2
    and-int/lit16 v0, v0, 0xc0

    #@4
    const/16 v1, 0x80

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 1334
    const/4 v0, 0x1

    #@9
    .line 1333
    :goto_0
    return v0

    #@a
    .line 1334
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 1294
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    #@2
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@5
    move-result v1

    #@6
    add-int/lit16 v0, v1, 0x20f

    #@8
    .line 1295
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    #@c
    add-int v0, v1, v2

    #@e
    .line 1296
    mul-int/lit8 v1, v0, 0x1f

    #@10
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    #@12
    add-int v0, v1, v2

    #@14
    .line 1297
    mul-int/lit8 v2, v0, 0x1f

    #@16
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@18
    if-eqz v1, :cond_0

    #@1a
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@1c
    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    #@1f
    move-result v1

    #@20
    :goto_0
    add-int v0, v2, v1

    #@22
    .line 1298
    mul-int/lit8 v1, v0, 0x1f

    #@24
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@26
    add-int v0, v1, v2

    #@28
    .line 1299
    mul-int/lit8 v1, v0, 0x1f

    #@2a
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    #@2c
    add-int v0, v1, v2

    #@2e
    .line 1300
    mul-int/lit8 v1, v0, 0x1f

    #@30
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@32
    add-int v0, v1, v2

    #@34
    .line 1301
    mul-int/lit8 v1, v0, 0x1f

    #@36
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@38
    add-int v0, v1, v2

    #@3a
    .line 1302
    mul-int/lit8 v1, v0, 0x1f

    #@3c
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    #@3e
    add-int v0, v1, v2

    #@40
    .line 1303
    mul-int/lit8 v1, v0, 0x1f

    #@42
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@44
    add-int v0, v1, v2

    #@46
    .line 1304
    mul-int/lit8 v1, v0, 0x1f

    #@48
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    #@4a
    add-int v0, v1, v2

    #@4c
    .line 1305
    mul-int/lit8 v1, v0, 0x1f

    #@4e
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@50
    add-int v0, v1, v2

    #@52
    .line 1306
    mul-int/lit8 v1, v0, 0x1f

    #@54
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@56
    add-int v0, v1, v2

    #@58
    .line 1307
    mul-int/lit8 v1, v0, 0x1f

    #@5a
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@5c
    add-int v0, v1, v2

    #@5e
    .line 1308
    mul-int/lit8 v1, v0, 0x1f

    #@60
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@62
    add-int v0, v1, v2

    #@64
    .line 1309
    mul-int/lit8 v1, v0, 0x1f

    #@66
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@68
    add-int v0, v1, v2

    #@6a
    .line 1310
    mul-int/lit8 v1, v0, 0x1f

    #@6c
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@6e
    add-int v0, v1, v2

    #@70
    .line 1311
    return v0

    #@71
    .line 1297
    :cond_0
    const/4 v1, 0x0

    #@72
    goto :goto_0
.end method

.method public isLayoutSizeAtLeast(I)Z
    .locals 3
    .param p1, "size"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 302
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@3
    and-int/lit8 v0, v2, 0xf

    #@5
    .line 303
    .local v0, "cur":I
    if-nez v0, :cond_0

    #@7
    return v1

    #@8
    .line 304
    :cond_0
    if-lt v0, p1, :cond_1

    #@a
    const/4 v1, 0x1

    #@b
    :cond_1
    return v1
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .locals 5
    .param p1, "other"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1115
    if-nez p1, :cond_0

    #@4
    .line 1117
    return v2

    #@5
    .line 1119
    :cond_0
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    #@7
    if-nez v3, :cond_1

    #@9
    .line 1122
    return v1

    #@a
    .line 1124
    :cond_1
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    #@c
    if-nez v3, :cond_2

    #@e
    .line 1127
    return v1

    #@f
    .line 1129
    :cond_2
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    #@11
    iget v4, p0, Landroid/content/res/Configuration;->seq:I

    #@13
    sub-int v0, v3, v4

    #@15
    .line 1130
    .local v0, "diff":I
    const/high16 v3, 0x10000

    #@17
    if-le v0, v3, :cond_3

    #@19
    .line 1133
    return v2

    #@1a
    .line 1135
    :cond_3
    if-lez v0, :cond_4

    #@1c
    :goto_0
    return v1

    #@1d
    :cond_4
    move v1, v2

    #@1e
    goto :goto_0
.end method

.method public isScreenRound()Z
    .locals 2

    #@0
    .prologue
    .line 1366
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@2
    and-int/lit16 v0, v0, 0x300

    #@4
    const/16 v1, 0x200

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 842
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    #@3
    .line 841
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1182
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@5
    move-result v2

    #@6
    iput v2, p0, Landroid/content/res/Configuration;->fontScale:F

    #@8
    .line 1183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v2

    #@c
    iput v2, p0, Landroid/content/res/Configuration;->mcc:I

    #@e
    .line 1184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v2

    #@12
    iput v2, p0, Landroid/content/res/Configuration;->mnc:I

    #@14
    .line 1185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1186
    new-instance v2, Ljava/util/Locale;

    #@1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    .line 1187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 1186
    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    iput-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2d
    .line 1189
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v2

    #@31
    if-ne v2, v0, :cond_1

    #@33
    :goto_0
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    #@35
    .line 1190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v0

    #@39
    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@3b
    .line 1191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v0

    #@3f
    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    #@41
    .line 1192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v0

    #@45
    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@47
    .line 1193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v0

    #@4b
    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@4d
    .line 1194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v0

    #@51
    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    #@53
    .line 1195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v0

    #@57
    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@59
    .line 1196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v0

    #@5d
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    #@5f
    .line 1197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v0

    #@63
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@65
    .line 1198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v0

    #@69
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    #@6b
    .line 1199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v0

    #@6f
    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@71
    .line 1200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@74
    move-result v0

    #@75
    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@77
    .line 1201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v0

    #@7b
    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@7d
    .line 1202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v0

    #@81
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@83
    .line 1203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@86
    move-result v0

    #@87
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@89
    .line 1204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v0

    #@8d
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@8f
    .line 1205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@92
    move-result v0

    #@93
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@95
    .line 1206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@98
    move-result v0

    #@99
    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    #@9b
    .line 1181
    return-void

    #@9c
    :cond_1
    move v0, v1

    #@9d
    .line 1189
    goto :goto_0
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1350
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    #@3
    move-result v1

    #@4
    add-int/lit8 v0, v1, 0x1

    #@6
    .line 1351
    .local v0, "layoutDirection":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@8
    and-int/lit16 v1, v1, -0xc1

    #@a
    .line 1352
    shl-int/lit8 v2, v0, 0x6

    #@c
    .line 1351
    or-int/2addr v1, v2

    #@d
    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@f
    .line 1347
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1321
    iput-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@2
    .line 1322
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@4
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    #@7
    .line 1320
    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "o"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 652
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    #@2
    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    #@4
    .line 653
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    #@6
    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    #@8
    .line 654
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    #@a
    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    #@c
    .line 655
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 656
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@12
    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/util/Locale;

    #@18
    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@1a
    .line 658
    :cond_0
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    #@1c
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    #@1e
    .line 659
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@20
    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@22
    .line 660
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    #@24
    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    #@26
    .line 661
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@28
    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@2a
    .line 662
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@2c
    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@2e
    .line 663
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    #@30
    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    #@32
    .line 664
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@34
    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@36
    .line 665
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    #@38
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    #@3a
    .line 666
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@3c
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@3e
    .line 667
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    #@40
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    #@42
    .line 668
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@44
    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@46
    .line 669
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@48
    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@4a
    .line 670
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@4c
    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@4e
    .line 671
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@50
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@52
    .line 672
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@54
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@56
    .line 673
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@58
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@5a
    .line 674
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@5c
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@5e
    .line 675
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    #@60
    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    #@62
    .line 651
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 820
    const/high16 v0, 0x3f800000    # 1.0f

    #@3
    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    #@5
    .line 821
    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    #@7
    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    #@9
    .line 822
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@c
    .line 823
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    #@e
    .line 824
    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@10
    .line 825
    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    #@12
    .line 826
    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@14
    .line 827
    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@16
    .line 828
    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    #@18
    .line 829
    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@1a
    .line 830
    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    #@1c
    .line 831
    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@1e
    .line 832
    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    #@20
    .line 833
    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@22
    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@24
    .line 834
    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@26
    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@28
    .line 835
    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@2a
    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@2c
    .line 836
    iput v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@2e
    .line 837
    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    #@30
    .line 819
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const/16 v2, 0x80

    #@4
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 680
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 681
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@12
    .line 682
    const-string/jumbo v2, " "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 683
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 684
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    .line 685
    const-string/jumbo v2, "mcc"

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 689
    :goto_0
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 690
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    .line 691
    const-string/jumbo v2, "mnc"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 695
    :goto_1
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@38
    if-eqz v2, :cond_3

    #@3a
    .line 696
    const-string/jumbo v2, " "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 697
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    .line 701
    :goto_2
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@47
    and-int/lit16 v0, v2, 0xc0

    #@49
    .line 702
    .local v0, "layoutDir":I
    sparse-switch v0, :sswitch_data_0

    #@4c
    .line 706
    const-string/jumbo v2, " layoutDir="

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 707
    shr-int/lit8 v2, v0, 0x6

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    .line 709
    :goto_3
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@59
    if-eqz v2, :cond_4

    #@5b
    .line 710
    const-string/jumbo v2, " sw"

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    const-string/jumbo v2, "dp"

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 714
    :goto_4
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@6e
    if-eqz v2, :cond_5

    #@70
    .line 715
    const-string/jumbo v2, " w"

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    const-string/jumbo v2, "dp"

    #@7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 719
    :goto_5
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@83
    if-eqz v2, :cond_6

    #@85
    .line 720
    const-string/jumbo v2, " h"

    #@88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@8d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    const-string/jumbo v2, "dp"

    #@93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    .line 724
    :goto_6
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@98
    if-eqz v2, :cond_7

    #@9a
    .line 725
    const-string/jumbo v2, " "

    #@9d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@a2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    const-string/jumbo v2, "dpi"

    #@a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    .line 729
    :goto_7
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@ad
    and-int/lit8 v2, v2, 0xf

    #@af
    packed-switch v2, :pswitch_data_0

    #@b2
    .line 735
    const-string/jumbo v2, " layoutSize="

    #@b5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    .line 736
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@ba
    and-int/lit8 v2, v2, 0xf

    #@bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bf
    .line 738
    :goto_8
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@c1
    and-int/lit8 v2, v2, 0x30

    #@c3
    sparse-switch v2, :sswitch_data_1

    #@c6
    .line 742
    const-string/jumbo v2, " layoutLong="

    #@c9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    .line 743
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@ce
    and-int/lit8 v2, v2, 0x30

    #@d0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d3
    .line 745
    :goto_9
    :sswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    #@d5
    packed-switch v2, :pswitch_data_1

    #@d8
    .line 749
    const-string/jumbo v2, " orien="

    #@db
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    #@e0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e3
    .line 751
    :goto_a
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@e5
    and-int/lit8 v2, v2, 0xf

    #@e7
    packed-switch v2, :pswitch_data_2

    #@ea
    .line 759
    const-string/jumbo v2, " uimode="

    #@ed
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@f2
    and-int/lit8 v2, v2, 0xf

    #@f4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f7
    .line 761
    :goto_b
    :pswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@f9
    and-int/lit8 v2, v2, 0x30

    #@fb
    sparse-switch v2, :sswitch_data_2

    #@fe
    .line 765
    const-string/jumbo v2, " night="

    #@101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@106
    and-int/lit8 v2, v2, 0x30

    #@108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10b
    .line 767
    :goto_c
    :sswitch_1
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@10d
    packed-switch v2, :pswitch_data_3

    #@110
    .line 772
    const-string/jumbo v2, " touch="

    #@113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11b
    .line 774
    :goto_d
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    #@11d
    packed-switch v2, :pswitch_data_4

    #@120
    .line 779
    const-string/jumbo v2, " keys="

    #@123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    #@128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12b
    .line 781
    :goto_e
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@12d
    packed-switch v2, :pswitch_data_5

    #@130
    .line 786
    const-string/jumbo v2, "/"

    #@133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13b
    .line 788
    :goto_f
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@13d
    packed-switch v2, :pswitch_data_6

    #@140
    .line 792
    const-string/jumbo v2, "/"

    #@143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14b
    .line 794
    :goto_10
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    #@14d
    packed-switch v2, :pswitch_data_7

    #@150
    .line 800
    const-string/jumbo v2, " nav="

    #@153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    #@158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15b
    .line 802
    :goto_11
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@15d
    packed-switch v2, :pswitch_data_8

    #@160
    .line 806
    const-string/jumbo v2, "/"

    #@163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16b
    .line 808
    :goto_12
    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    #@16d
    if-eqz v2, :cond_0

    #@16f
    .line 809
    const-string/jumbo v2, " s."

    #@172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    .line 810
    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    #@177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17a
    .line 812
    :cond_0
    const/16 v2, 0x7d

    #@17c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17f
    .line 813
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@182
    move-result-object v2

    #@183
    return-object v2

    #@184
    .line 687
    .end local v0    # "layoutDir":I
    :cond_1
    const-string/jumbo v2, "?mcc"

    #@187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    goto/16 :goto_0

    #@18c
    .line 693
    :cond_2
    const-string/jumbo v2, "?mnc"

    #@18f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    goto/16 :goto_1

    #@194
    .line 699
    :cond_3
    const-string/jumbo v2, " ?locale"

    #@197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    goto/16 :goto_2

    #@19c
    .line 703
    .restart local v0    # "layoutDir":I
    :sswitch_2
    const-string/jumbo v2, " ?layoutDir"

    #@19f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    goto/16 :goto_3

    #@1a4
    .line 704
    :sswitch_3
    const-string/jumbo v2, " ldltr"

    #@1a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    goto/16 :goto_3

    #@1ac
    .line 705
    :sswitch_4
    const-string/jumbo v2, " ldrtl"

    #@1af
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    goto/16 :goto_3

    #@1b4
    .line 712
    :cond_4
    const-string/jumbo v2, " ?swdp"

    #@1b7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    goto/16 :goto_4

    #@1bc
    .line 717
    :cond_5
    const-string/jumbo v2, " ?wdp"

    #@1bf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    goto/16 :goto_5

    #@1c4
    .line 722
    :cond_6
    const-string/jumbo v2, " ?hdp"

    #@1c7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ca
    goto/16 :goto_6

    #@1cc
    .line 727
    :cond_7
    const-string/jumbo v2, " ?density"

    #@1cf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    goto/16 :goto_7

    #@1d4
    .line 730
    :pswitch_1
    const-string/jumbo v2, " ?lsize"

    #@1d7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    goto/16 :goto_8

    #@1dc
    .line 731
    :pswitch_2
    const-string/jumbo v2, " smll"

    #@1df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    goto/16 :goto_8

    #@1e4
    .line 732
    :pswitch_3
    const-string/jumbo v2, " nrml"

    #@1e7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    goto/16 :goto_8

    #@1ec
    .line 733
    :pswitch_4
    const-string/jumbo v2, " lrg"

    #@1ef
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f2
    goto/16 :goto_8

    #@1f4
    .line 734
    :pswitch_5
    const-string/jumbo v2, " xlrg"

    #@1f7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    goto/16 :goto_8

    #@1fc
    .line 739
    :sswitch_5
    const-string/jumbo v2, " ?long"

    #@1ff
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@202
    goto/16 :goto_9

    #@204
    .line 741
    :sswitch_6
    const-string/jumbo v2, " long"

    #@207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a
    goto/16 :goto_9

    #@20c
    .line 746
    :pswitch_6
    const-string/jumbo v2, " ?orien"

    #@20f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@212
    goto/16 :goto_a

    #@214
    .line 747
    :pswitch_7
    const-string/jumbo v2, " land"

    #@217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21a
    goto/16 :goto_a

    #@21c
    .line 748
    :pswitch_8
    const-string/jumbo v2, " port"

    #@21f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    goto/16 :goto_a

    #@224
    .line 752
    :pswitch_9
    const-string/jumbo v2, " ?uimode"

    #@227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22a
    goto/16 :goto_b

    #@22c
    .line 754
    :pswitch_a
    const-string/jumbo v2, " desk"

    #@22f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@232
    goto/16 :goto_b

    #@234
    .line 755
    :pswitch_b
    const-string/jumbo v2, " car"

    #@237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23a
    goto/16 :goto_b

    #@23c
    .line 756
    :pswitch_c
    const-string/jumbo v2, " television"

    #@23f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    goto/16 :goto_b

    #@244
    .line 757
    :pswitch_d
    const-string/jumbo v2, " appliance"

    #@247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24a
    goto/16 :goto_b

    #@24c
    .line 758
    :pswitch_e
    const-string/jumbo v2, " watch"

    #@24f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@252
    goto/16 :goto_b

    #@254
    .line 762
    :sswitch_7
    const-string/jumbo v2, " ?night"

    #@257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25a
    goto/16 :goto_c

    #@25c
    .line 764
    :sswitch_8
    const-string/jumbo v2, " night"

    #@25f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@262
    goto/16 :goto_c

    #@264
    .line 768
    :pswitch_f
    const-string/jumbo v2, " ?touch"

    #@267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26a
    goto/16 :goto_d

    #@26c
    .line 769
    :pswitch_10
    const-string/jumbo v2, " -touch"

    #@26f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@272
    goto/16 :goto_d

    #@274
    .line 770
    :pswitch_11
    const-string/jumbo v2, " stylus"

    #@277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27a
    goto/16 :goto_d

    #@27c
    .line 771
    :pswitch_12
    const-string/jumbo v2, " finger"

    #@27f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@282
    goto/16 :goto_d

    #@284
    .line 775
    :pswitch_13
    const-string/jumbo v2, " ?keyb"

    #@287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28a
    goto/16 :goto_e

    #@28c
    .line 776
    :pswitch_14
    const-string/jumbo v2, " -keyb"

    #@28f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@292
    goto/16 :goto_e

    #@294
    .line 777
    :pswitch_15
    const-string/jumbo v2, " qwerty"

    #@297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29a
    goto/16 :goto_e

    #@29c
    .line 778
    :pswitch_16
    const-string/jumbo v2, " 12key"

    #@29f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a2
    goto/16 :goto_e

    #@2a4
    .line 782
    :pswitch_17
    const-string/jumbo v2, "/?"

    #@2a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2aa
    goto/16 :goto_f

    #@2ac
    .line 783
    :pswitch_18
    const-string/jumbo v2, "/v"

    #@2af
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b2
    goto/16 :goto_f

    #@2b4
    .line 784
    :pswitch_19
    const-string/jumbo v2, "/h"

    #@2b7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    goto/16 :goto_f

    #@2bc
    .line 785
    :pswitch_1a
    const-string/jumbo v2, "/s"

    #@2bf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c2
    goto/16 :goto_f

    #@2c4
    .line 789
    :pswitch_1b
    const-string/jumbo v2, "/?"

    #@2c7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ca
    goto/16 :goto_10

    #@2cc
    .line 790
    :pswitch_1c
    const-string/jumbo v2, "/v"

    #@2cf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d2
    goto/16 :goto_10

    #@2d4
    .line 791
    :pswitch_1d
    const-string/jumbo v2, "/h"

    #@2d7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2da
    goto/16 :goto_10

    #@2dc
    .line 795
    :pswitch_1e
    const-string/jumbo v2, " ?nav"

    #@2df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e2
    goto/16 :goto_11

    #@2e4
    .line 796
    :pswitch_1f
    const-string/jumbo v2, " -nav"

    #@2e7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ea
    goto/16 :goto_11

    #@2ec
    .line 797
    :pswitch_20
    const-string/jumbo v2, " dpad"

    #@2ef
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f2
    goto/16 :goto_11

    #@2f4
    .line 798
    :pswitch_21
    const-string/jumbo v2, " tball"

    #@2f7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fa
    goto/16 :goto_11

    #@2fc
    .line 799
    :pswitch_22
    const-string/jumbo v2, " wheel"

    #@2ff
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@302
    goto/16 :goto_11

    #@304
    .line 803
    :pswitch_23
    const-string/jumbo v2, "/?"

    #@307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30a
    goto/16 :goto_12

    #@30c
    .line 804
    :pswitch_24
    const-string/jumbo v2, "/v"

    #@30f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@312
    goto/16 :goto_12

    #@314
    .line 805
    :pswitch_25
    const-string/jumbo v2, "/h"

    #@317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31a
    goto/16 :goto_12

    #@31c
    .line 702
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    #@32a
    .line 729
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    #@338
    .line 738
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x10 -> :sswitch_0
        0x20 -> :sswitch_6
    .end sparse-switch

    #@346
    .line 745
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch

    #@350
    .line 751
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    #@362
    .line 761
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x10 -> :sswitch_1
        0x20 -> :sswitch_8
    .end sparse-switch

    #@370
    .line 767
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    #@37c
    .line 774
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    #@388
    .line 781
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    #@394
    .line 788
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    #@39e
    .line 794
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch

    #@3ac
    .line 802
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_23
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .locals 5
    .param p1, "delta"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 854
    const/4 v0, 0x0

    #@2
    .line 855
    .local v0, "changed":I
    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    #@4
    const/4 v4, 0x0

    #@5
    cmpl-float v3, v3, v4

    #@7
    if-lez v3, :cond_0

    #@9
    iget v3, p0, Landroid/content/res/Configuration;->fontScale:F

    #@b
    iget v4, p1, Landroid/content/res/Configuration;->fontScale:F

    #@d
    cmpl-float v3, v3, v4

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 856
    const/high16 v0, 0x40000000    # 2.0f

    #@13
    .line 857
    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    #@15
    iput v3, p0, Landroid/content/res/Configuration;->fontScale:F

    #@17
    .line 859
    :cond_0
    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    #@19
    if-eqz v3, :cond_1

    #@1b
    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    #@1d
    iget v4, p1, Landroid/content/res/Configuration;->mcc:I

    #@1f
    if-eq v3, v4, :cond_1

    #@21
    .line 860
    or-int/lit8 v0, v0, 0x1

    #@23
    .line 861
    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    #@25
    iput v3, p0, Landroid/content/res/Configuration;->mcc:I

    #@27
    .line 863
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    #@29
    if-eqz v3, :cond_2

    #@2b
    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    #@2d
    iget v4, p1, Landroid/content/res/Configuration;->mnc:I

    #@2f
    if-eq v3, v4, :cond_2

    #@31
    .line 864
    or-int/lit8 v0, v0, 0x2

    #@33
    .line 865
    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    #@35
    iput v3, p0, Landroid/content/res/Configuration;->mnc:I

    #@37
    .line 867
    :cond_2
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@39
    if-eqz v3, :cond_3

    #@3b
    .line 868
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@3d
    if-eqz v3, :cond_19

    #@3f
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@41
    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@43
    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_19

    #@49
    .line 878
    :cond_3
    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@4b
    and-int/lit16 v1, v2, 0xc0

    #@4d
    .line 879
    .local v1, "deltaScreenLayoutDir":I
    if-eqz v1, :cond_4

    #@4f
    .line 880
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@51
    and-int/lit16 v2, v2, 0xc0

    #@53
    if-eq v1, v2, :cond_4

    #@55
    .line 881
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@57
    and-int/lit16 v2, v2, -0xc1

    #@59
    or-int/2addr v2, v1

    #@5a
    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@5c
    .line 882
    or-int/lit16 v0, v0, 0x2000

    #@5e
    .line 884
    :cond_4
    iget-boolean v2, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    #@60
    if-eqz v2, :cond_6

    #@62
    iget-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    #@64
    if-eqz v2, :cond_5

    #@66
    and-int/lit8 v2, v0, 0x4

    #@68
    if-eqz v2, :cond_6

    #@6a
    .line 886
    :cond_5
    or-int/lit8 v0, v0, 0x4

    #@6c
    .line 887
    const/4 v2, 0x1

    #@6d
    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    #@6f
    .line 889
    :cond_6
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@71
    if-eqz v2, :cond_7

    #@73
    .line 890
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@75
    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@77
    if-eq v2, v3, :cond_7

    #@79
    .line 891
    or-int/lit8 v0, v0, 0x8

    #@7b
    .line 892
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@7d
    iput v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@7f
    .line 894
    :cond_7
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    #@81
    if-eqz v2, :cond_8

    #@83
    .line 895
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    #@85
    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    #@87
    if-eq v2, v3, :cond_8

    #@89
    .line 896
    or-int/lit8 v0, v0, 0x10

    #@8b
    .line 897
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    #@8d
    iput v2, p0, Landroid/content/res/Configuration;->keyboard:I

    #@8f
    .line 899
    :cond_8
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@91
    if-eqz v2, :cond_9

    #@93
    .line 900
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@95
    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@97
    if-eq v2, v3, :cond_9

    #@99
    .line 901
    or-int/lit8 v0, v0, 0x20

    #@9b
    .line 902
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@9d
    iput v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@9f
    .line 904
    :cond_9
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@a1
    if-eqz v2, :cond_a

    #@a3
    .line 905
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@a5
    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@a7
    if-eq v2, v3, :cond_a

    #@a9
    .line 906
    or-int/lit8 v0, v0, 0x20

    #@ab
    .line 907
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@ad
    iput v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@af
    .line 909
    :cond_a
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    #@b1
    if-eqz v2, :cond_b

    #@b3
    .line 910
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    #@b5
    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    #@b7
    if-eq v2, v3, :cond_b

    #@b9
    .line 911
    or-int/lit8 v0, v0, 0x40

    #@bb
    .line 912
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    #@bd
    iput v2, p0, Landroid/content/res/Configuration;->navigation:I

    #@bf
    .line 914
    :cond_b
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@c1
    if-eqz v2, :cond_c

    #@c3
    .line 915
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@c5
    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@c7
    if-eq v2, v3, :cond_c

    #@c9
    .line 916
    or-int/lit8 v0, v0, 0x20

    #@cb
    .line 917
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@cd
    iput v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@cf
    .line 919
    :cond_c
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    #@d1
    if-eqz v2, :cond_d

    #@d3
    .line 920
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    #@d5
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    #@d7
    if-eq v2, v3, :cond_d

    #@d9
    .line 921
    or-int/lit16 v0, v0, 0x80

    #@db
    .line 922
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    #@dd
    iput v2, p0, Landroid/content/res/Configuration;->orientation:I

    #@df
    .line 924
    :cond_d
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@e1
    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    #@e4
    move-result v2

    #@e5
    if-eqz v2, :cond_e

    #@e7
    .line 926
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@e9
    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    #@ec
    move-result v2

    #@ed
    .line 927
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@ef
    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    #@f2
    move-result v3

    #@f3
    .line 926
    if-eq v2, v3, :cond_e

    #@f5
    .line 928
    or-int/lit16 v0, v0, 0x100

    #@f7
    .line 930
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@f9
    and-int/lit16 v2, v2, 0xc0

    #@fb
    if-nez v2, :cond_1b

    #@fd
    .line 931
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@ff
    and-int/lit16 v2, v2, 0xc0

    #@101
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@103
    or-int/2addr v2, v3

    #@104
    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@106
    .line 936
    :cond_e
    :goto_1
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@108
    if-eqz v2, :cond_10

    #@10a
    .line 937
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@10c
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    #@10e
    if-eq v2, v3, :cond_10

    #@110
    .line 938
    or-int/lit16 v0, v0, 0x200

    #@112
    .line 939
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@114
    and-int/lit8 v2, v2, 0xf

    #@116
    if-eqz v2, :cond_f

    #@118
    .line 940
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@11a
    and-int/lit8 v2, v2, -0x10

    #@11c
    .line 941
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    #@11e
    and-int/lit8 v3, v3, 0xf

    #@120
    .line 940
    or-int/2addr v2, v3

    #@121
    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@123
    .line 943
    :cond_f
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@125
    and-int/lit8 v2, v2, 0x30

    #@127
    if-eqz v2, :cond_10

    #@129
    .line 944
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@12b
    and-int/lit8 v2, v2, -0x31

    #@12d
    .line 945
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    #@12f
    and-int/lit8 v3, v3, 0x30

    #@131
    .line 944
    or-int/2addr v2, v3

    #@132
    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@134
    .line 948
    :cond_10
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@136
    if-eqz v2, :cond_11

    #@138
    .line 949
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@13a
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@13c
    if-eq v2, v3, :cond_11

    #@13e
    .line 950
    or-int/lit16 v0, v0, 0x400

    #@140
    .line 951
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@142
    iput v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@144
    .line 953
    :cond_11
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@146
    if-eqz v2, :cond_12

    #@148
    .line 954
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@14a
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@14c
    if-eq v2, v3, :cond_12

    #@14e
    .line 955
    or-int/lit16 v0, v0, 0x400

    #@150
    .line 956
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@152
    iput v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@154
    .line 958
    :cond_12
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@156
    if-eqz v2, :cond_13

    #@158
    .line 959
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@15a
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@15c
    if-eq v2, v3, :cond_13

    #@15e
    .line 960
    or-int/lit16 v0, v0, 0x800

    #@160
    .line 961
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@162
    iput v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@164
    .line 963
    :cond_13
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@166
    if-eqz v2, :cond_14

    #@168
    .line 964
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@16a
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@16c
    if-eq v2, v3, :cond_14

    #@16e
    .line 965
    or-int/lit16 v0, v0, 0x1000

    #@170
    .line 966
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@172
    iput v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@174
    .line 968
    :cond_14
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@176
    if-eqz v2, :cond_15

    #@178
    .line 969
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@17a
    iput v2, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@17c
    .line 971
    :cond_15
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@17e
    if-eqz v2, :cond_16

    #@180
    .line 972
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@182
    iput v2, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@184
    .line 974
    :cond_16
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@186
    if-eqz v2, :cond_17

    #@188
    .line 975
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@18a
    iput v2, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@18c
    .line 977
    :cond_17
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    #@18e
    if-eqz v2, :cond_18

    #@190
    .line 978
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    #@192
    iput v2, p0, Landroid/content/res/Configuration;->seq:I

    #@194
    .line 981
    :cond_18
    return v0

    #@195
    .line 869
    .end local v1    # "deltaScreenLayoutDir":I
    :cond_19
    or-int/lit8 v0, v0, 0x4

    #@197
    .line 870
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@199
    if-eqz v3, :cond_1a

    #@19b
    .line 871
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@19d
    invoke-virtual {v2}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    #@1a0
    move-result-object v2

    #@1a1
    check-cast v2, Ljava/util/Locale;

    #@1a3
    .line 870
    :cond_1a
    iput-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@1a5
    .line 873
    or-int/lit16 v0, v0, 0x2000

    #@1a7
    .line 876
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@1a9
    invoke-virtual {p0, v2}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    #@1ac
    goto/16 :goto_0

    #@1ae
    .line 933
    .restart local v1    # "deltaScreenLayoutDir":I
    :cond_1b
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@1b0
    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@1b2
    goto/16 :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1146
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@7
    .line 1147
    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1148
    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1149
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@13
    if-nez v0, :cond_0

    #@15
    .line 1150
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 1157
    :goto_0
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 1158
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1162
    :goto_1
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1163
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    #@26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 1164
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 1165
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 1166
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    #@35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 1167
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 1168
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    #@3f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    .line 1169
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@47
    .line 1170
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    #@49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 1171
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@4e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 1172
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    .line 1173
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    .line 1174
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@5d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    .line 1175
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@62
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 1176
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@67
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    .line 1177
    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@6c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    .line 1178
    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    #@71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@74
    .line 1145
    return-void

    #@75
    .line 1152
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@78
    .line 1153
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@7a
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@7d
    move-result-object v0

    #@7e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@81
    .line 1154
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@83
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@86
    move-result-object v0

    #@87
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@8a
    .line 1155
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@8c
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@8f
    move-result-object v0

    #@90
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@93
    goto :goto_0

    #@94
    .line 1160
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@97
    goto :goto_1
.end method
