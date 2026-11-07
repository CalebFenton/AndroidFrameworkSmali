.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Configuration$NativeConfig;,
        Landroid/content/res/Configuration$Orientation;,
        Landroid/content/res/Configuration$GrammaticalGender;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o ASSETS_SEQ_UNDEFINED:I = 0x0

.field public static final whitelist COLOR_MODE_HDR_MASK:I = 0xc

.field public static final whitelist COLOR_MODE_HDR_NO:I = 0x4

.field public static final whitelist COLOR_MODE_HDR_SHIFT:I = 0x2

.field public static final whitelist COLOR_MODE_HDR_UNDEFINED:I = 0x0

.field public static final whitelist COLOR_MODE_HDR_YES:I = 0x8

.field public static final whitelist COLOR_MODE_UNDEFINED:I = 0x0

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT_MASK:I = 0x3

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT_NO:I = 0x1

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT_UNDEFINED:I = 0x0

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT_YES:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DENSITY_DPI_ANY:I = 0xfffe

.field public static final greylist-max-o DENSITY_DPI_NONE:I = 0xffff

.field public static final whitelist DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final greylist-max-o EMPTY:Landroid/content/res/Configuration;

.field public static final whitelist FONT_WEIGHT_ADJUSTMENT_UNDEFINED:I = 0x7fffffff

.field public static final whitelist GRAMMATICAL_GENDER_FEMININE:I = 0x2

.field public static final whitelist GRAMMATICAL_GENDER_MASCULINE:I = 0x3

.field public static final whitelist GRAMMATICAL_GENDER_NEUTRAL:I = 0x1

.field public static final whitelist GRAMMATICAL_GENDER_NOT_SPECIFIED:I = 0x0

.field public static final blacklist GRAMMATICAL_GENDER_UNDEFINED:I = -0x1

.field public static final whitelist HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final whitelist HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final whitelist HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final whitelist KEYBOARDHIDDEN_NO:I = 0x1

.field public static final greylist-max-o KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final whitelist KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final whitelist KEYBOARDHIDDEN_YES:I = 0x2

.field public static final whitelist KEYBOARD_12KEY:I = 0x3

.field public static final whitelist KEYBOARD_NOKEYS:I = 0x1

.field public static final whitelist KEYBOARD_QWERTY:I = 0x2

.field public static final whitelist KEYBOARD_UNDEFINED:I = 0x0

.field public static final whitelist MNC_ZERO:I = 0xffff

.field public static final greylist-max-o NATIVE_CONFIG_COLOR_MODE:I = 0x10000

.field public static final greylist-max-o NATIVE_CONFIG_DENSITY:I = 0x100

.field public static final blacklist NATIVE_CONFIG_GRAMMATICAL_GENDER:I = 0x20000

.field public static final greylist-max-o NATIVE_CONFIG_KEYBOARD:I = 0x10

.field public static final greylist-max-o NATIVE_CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final greylist-max-o NATIVE_CONFIG_LAYOUTDIR:I = 0x4000

.field public static final greylist-max-o NATIVE_CONFIG_LOCALE:I = 0x4

.field public static final greylist-max-o NATIVE_CONFIG_MCC:I = 0x1

.field public static final greylist-max-o NATIVE_CONFIG_MNC:I = 0x2

.field public static final greylist-max-o NATIVE_CONFIG_NAVIGATION:I = 0x40

.field public static final greylist-max-o NATIVE_CONFIG_ORIENTATION:I = 0x80

.field public static final greylist-max-o NATIVE_CONFIG_SCREEN_LAYOUT:I = 0x800

.field public static final greylist-max-o NATIVE_CONFIG_SCREEN_SIZE:I = 0x200

.field public static final greylist-max-o NATIVE_CONFIG_SMALLEST_SCREEN_SIZE:I = 0x2000

.field public static final greylist-max-o NATIVE_CONFIG_TOUCHSCREEN:I = 0x8

.field public static final greylist-max-o NATIVE_CONFIG_UI_MODE:I = 0x1000

.field public static final greylist-max-o NATIVE_CONFIG_VERSION:I = 0x400

.field public static final whitelist NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final whitelist NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final whitelist NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final whitelist NAVIGATION_DPAD:I = 0x2

.field public static final whitelist NAVIGATION_NONAV:I = 0x1

.field public static final whitelist NAVIGATION_TRACKBALL:I = 0x3

.field public static final whitelist NAVIGATION_UNDEFINED:I = 0x0

.field public static final whitelist NAVIGATION_WHEEL:I = 0x4

.field public static final whitelist ORIENTATION_LANDSCAPE:I = 0x2

.field public static final whitelist ORIENTATION_PORTRAIT:I = 0x1

.field public static final whitelist ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ORIENTATION_UNDEFINED:I = 0x0

.field public static final greylist-max-o SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final whitelist SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final whitelist SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final whitelist SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final whitelist SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final whitelist SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final whitelist SCREENLAYOUT_ROUND_MASK:I = 0x300

.field public static final whitelist SCREENLAYOUT_ROUND_NO:I = 0x100

.field public static final greylist-max-o SCREENLAYOUT_ROUND_SHIFT:I = 0x8

.field public static final whitelist SCREENLAYOUT_ROUND_UNDEFINED:I = 0x0

.field public static final whitelist SCREENLAYOUT_ROUND_YES:I = 0x200

.field public static final whitelist SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final whitelist SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final whitelist SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final whitelist SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final whitelist SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final whitelist SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final whitelist SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final whitelist SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final whitelist SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final whitelist SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "Configuration"

.field public static final whitelist TOUCHSCREEN_FINGER:I = 0x3

.field public static final whitelist TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final whitelist TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final whitelist UI_MODE_NIGHT_MASK:I = 0x30

.field public static final whitelist UI_MODE_NIGHT_NO:I = 0x10

.field public static final whitelist UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final whitelist UI_MODE_NIGHT_YES:I = 0x20

.field public static final whitelist UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final whitelist UI_MODE_TYPE_CAR:I = 0x3

.field public static final whitelist UI_MODE_TYPE_DESK:I = 0x2

.field public static final whitelist UI_MODE_TYPE_MASK:I = 0xf

.field public static final whitelist UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final whitelist UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final whitelist UI_MODE_TYPE_UNDEFINED:I = 0x0

.field public static final whitelist UI_MODE_TYPE_VR_HEADSET:I = 0x7

.field public static final whitelist UI_MODE_TYPE_WATCH:I = 0x6

.field private static final greylist-max-o XML_ATTR_APP_BOUNDS:Ljava/lang/String; = "app_bounds"

.field private static final greylist-max-o XML_ATTR_COLOR_MODE:Ljava/lang/String; = "clrMod"

.field private static final greylist-max-o XML_ATTR_DENSITY:Ljava/lang/String; = "density"

.field private static final greylist-max-o XML_ATTR_FONT_SCALE:Ljava/lang/String; = "fs"

.field private static final blacklist XML_ATTR_FONT_WEIGHT_ADJUSTMENT:Ljava/lang/String; = "fontWeightAdjustment"

.field private static final blacklist XML_ATTR_GRAMMATICAL_GENDER:Ljava/lang/String; = "grammaticalGender"

.field private static final greylist-max-o XML_ATTR_HARD_KEYBOARD_HIDDEN:Ljava/lang/String; = "hardKeyHid"

.field private static final greylist-max-o XML_ATTR_KEYBOARD:Ljava/lang/String; = "key"

.field private static final greylist-max-o XML_ATTR_KEYBOARD_HIDDEN:Ljava/lang/String; = "keyHid"

.field private static final greylist-max-o XML_ATTR_LOCALES:Ljava/lang/String; = "locales"

.field private static final greylist-max-o XML_ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final greylist-max-o XML_ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final greylist-max-o XML_ATTR_NAVIGATION:Ljava/lang/String; = "nav"

.field private static final greylist-max-o XML_ATTR_NAVIGATION_HIDDEN:Ljava/lang/String; = "navHid"

.field private static final greylist-max-o XML_ATTR_ORIENTATION:Ljava/lang/String; = "ori"

.field private static final greylist-max-o XML_ATTR_ROTATION:Ljava/lang/String; = "rot"

.field private static final greylist-max-o XML_ATTR_SCREEN_HEIGHT:Ljava/lang/String; = "height"

.field private static final greylist-max-o XML_ATTR_SCREEN_LAYOUT:Ljava/lang/String; = "scrLay"

.field private static final greylist-max-o XML_ATTR_SCREEN_WIDTH:Ljava/lang/String; = "width"

.field private static final greylist-max-o XML_ATTR_SMALLEST_WIDTH:Ljava/lang/String; = "sw"

.field private static final greylist-max-o XML_ATTR_TOUCHSCREEN:Ljava/lang/String; = "touch"

.field private static final greylist-max-o XML_ATTR_UI_MODE:Ljava/lang/String; = "ui"


# instance fields
.field public greylist-max-r assetsSeq:I

.field public whitelist colorMode:I

.field public greylist-max-o compatScreenHeightDp:I

.field public greylist-max-o compatScreenWidthDp:I

.field public greylist-max-o compatSmallestScreenWidthDp:I

.field public whitelist densityDpi:I

.field public whitelist fontScale:F

.field public whitelist fontWeightAdjustment:I

.field public whitelist hardKeyboardHidden:I

.field public whitelist keyboard:I

.field public whitelist keyboardHidden:I

.field public whitelist locale:Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mGrammaticalGender:I

.field private greylist-max-o mLocaleList:Landroid/os/LocaleList;

.field public whitelist mcc:I

.field public whitelist mnc:I

.field public whitelist navigation:I

.field public whitelist navigationHidden:I

.field public whitelist orientation:I

.field public whitelist screenHeightDp:I

.field public whitelist screenLayout:I

.field public whitelist screenWidthDp:I

.field public greylist seq:I

.field public whitelist smallestScreenWidthDp:I

.field public whitelist touchscreen:I

.field public whitelist uiMode:I

.field public greylist userSetLocale:Z

.field public final blacklist windowConfiguration:Landroid/app/WindowConfiguration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 2159
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1060
    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    .line 1061
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "o"    # Landroid/content/res/Configuration;

    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1067
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1068
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2174
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 2175
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/res/Configuration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o configurationDiffToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "diff"    # I

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 494
    const-string v1, "CONFIG_MCC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    .line 497
    const-string v1, "CONFIG_MNC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    .line 500
    const-string v1, "CONFIG_LOCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_20
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_29

    .line 503
    const-string v1, "CONFIG_TOUCHSCREEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_29
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_32

    .line 506
    const-string v1, "CONFIG_KEYBOARD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_32
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3b

    .line 509
    const-string v1, "CONFIG_KEYBOARD_HIDDEN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_3b
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_44

    .line 512
    const-string v1, "CONFIG_NAVIGATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_44
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_4d

    .line 515
    const-string v1, "CONFIG_ORIENTATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_4d
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_56

    .line 518
    const-string v1, "CONFIG_SCREEN_LAYOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_56
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_5f

    .line 521
    const-string v1, "CONFIG_COLOR_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_5f
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_68

    .line 524
    const-string v1, "CONFIG_UI_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_68
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_71

    .line 527
    const-string v1, "CONFIG_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_71
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_7a

    .line 530
    const-string v1, "CONFIG_SMALLEST_SCREEN_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_7a
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_83

    .line 533
    const-string v1, "CONFIG_DENSITY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_83
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_8c

    .line 536
    const-string v1, "CONFIG_LAYOUT_DIRECTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_8c
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_96

    .line 539
    const-string v1, "CONFIG_FONT_SCALE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_96
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_a0

    .line 542
    const-string v1, "CONFIG_ASSETS_PATHS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_a0
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_aa

    .line 545
    const-string v1, "CONFIG_WINDOW_CONFIGURATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_aa
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b4

    .line 548
    const-string v1, "CONFIG_AUTO_BOLD_TEXT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_b4
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_bf

    .line 551
    const-string v1, "CONFIG_GRAMMATICAL_GENDER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_bf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o fixUpLocaleList()V
    .registers 5

    .line 1073
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_d
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1074
    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1075
    :cond_1f
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_28

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_34

    :cond_28
    new-instance v0, Landroid/os/LocaleList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :goto_34
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1077
    :cond_36
    return-void
.end method

.method public static whitelist generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 5
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "change"    # Landroid/content/res/Configuration;

    .line 2826
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 2827
    .local v0, "delta":Landroid/content/res/Configuration;
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_11

    .line 2828
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 2831
    :cond_11
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1b

    .line 2832
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, v0, Landroid/content/res/Configuration;->mcc:I

    .line 2835
    :cond_1b
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_25

    .line 2836
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, v0, Landroid/content/res/Configuration;->mnc:I

    .line 2839
    :cond_25
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2840
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2841
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 2842
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, v0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2843
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2846
    :cond_3d
    iget v1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v2, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-eq v1, v2, :cond_47

    .line 2847
    iget v1, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput v1, v0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 2850
    :cond_47
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_51

    .line 2851
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, v0, Landroid/content/res/Configuration;->touchscreen:I

    .line 2854
    :cond_51
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_5b

    .line 2855
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 2858
    :cond_5b
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_65

    .line 2859
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2862
    :cond_65
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_6f

    .line 2863
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    iput v1, v0, Landroid/content/res/Configuration;->navigation:I

    .line 2866
    :cond_6f
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_79

    .line 2867
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2870
    :cond_79
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_83

    .line 2871
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2874
    :cond_83
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_96

    .line 2876
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2879
    :cond_96
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_a9

    .line 2881
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2884
    :cond_a9
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_bc

    .line 2886
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2889
    :cond_bc
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    if-eq v1, v2, :cond_cf

    .line 2891
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2894
    :cond_cf
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    if-eq v1, v2, :cond_e2

    .line 2896
    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 2899
    :cond_e2
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    if-eq v1, v2, :cond_f5

    .line 2901
    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 2904
    :cond_f5
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_108

    .line 2905
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 2908
    :cond_108
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_11b

    .line 2909
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 2912
    :cond_11b
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_125

    .line 2913
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2916
    :cond_125
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_12f

    .line 2917
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2920
    :cond_12f
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_139

    .line 2921
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2924
    :cond_139
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_143

    .line 2925
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2928
    :cond_143
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v2, :cond_14d

    .line 2929
    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2932
    :cond_14d
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15e

    .line 2933
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 2936
    :cond_15e
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v2, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v1, v2, :cond_168

    .line 2937
    iget v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v1, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 2939
    :cond_168
    return-object v0
.end method

.method private static greylist-max-o getScreenLayoutNoDirection(I)I
    .registers 2
    .param p0, "screenLayout"    # I

    .line 2428
    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static blacklist getUiModeTypeString(I)Ljava/lang/String;
    .registers 2
    .param p0, "uiModeType"    # I

    .line 2796
    packed-switch p0, :pswitch_data_1a

    .line 2810
    const/4 v0, 0x0

    return-object v0

    .line 2808
    :pswitch_5
    const-string/jumbo v0, "vrheadset"

    return-object v0

    .line 2806
    :pswitch_9
    const-string/jumbo v0, "watch"

    return-object v0

    .line 2798
    :pswitch_d
    const-string v0, "appliance"

    return-object v0

    .line 2802
    :pswitch_10
    const-string/jumbo v0, "television"

    return-object v0

    .line 2804
    :pswitch_14
    const-string v0, "car"

    return-object v0

    .line 2800
    :pswitch_17
    const-string v0, "desk"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist-max-o localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;
    .registers 10
    .param p0, "locs"    # Landroid/os/LocaleList;

    .line 2470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2471
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_97

    .line 2472
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 2473
    .local v2, "loc":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 2474
    .local v3, "l":I
    if-nez v3, :cond_1c

    .line 2475
    goto/16 :goto_93

    .line 2477
    :cond_1c
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 2478
    .local v4, "s":I
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 2479
    .local v5, "c":I
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 2482
    .local v6, "v":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3f

    .line 2483
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2485
    :cond_3f
    const/4 v7, 0x2

    if-ne v3, v7, :cond_61

    if-nez v4, :cond_61

    if-eqz v5, :cond_48

    if-ne v5, v7, :cond_61

    :cond_48
    if-nez v6, :cond_61

    .line 2487
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2488
    if-ne v5, v7, :cond_93

    .line 2489
    const-string v7, "-r"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 2492
    :cond_61
    const-string v7, "b+"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2493
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2494
    const-string v7, "+"

    if-eqz v4, :cond_7b

    .line 2495
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2496
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2498
    :cond_7b
    if-eqz v5, :cond_87

    .line 2499
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2502
    :cond_87
    if-eqz v6, :cond_93

    .line 2503
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2504
    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2471
    .end local v2    # "loc":Ljava/util/Locale;
    .end local v3    # "l":I
    .end local v4    # "s":I
    .end local v5    # "c":I
    .end local v6    # "v":I
    :cond_93
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 2508
    .end local v1    # "i":I
    :cond_97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist needNewResources(II)Z
    .registers 4
    .param p0, "configChanges"    # I
    .param p1, "interestingChanges"    # I

    .line 2048
    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    or-int p1, v0, v1

    .line 2050
    and-int v0, p0, p1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static greylist-max-o readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "configOut"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2975
    nop

    .line 2976
    const-string v0, "fs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 2975
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2977
    const-string/jumbo v0, "mcc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mcc:I

    .line 2978
    const-string/jumbo v0, "mnc"

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->mnc:I

    .line 2980
    const-string/jumbo v0, "locales"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2981
    .local v0, "localesStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2982
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2984
    const-string/jumbo v2, "touch"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 2986
    const-string/jumbo v2, "key"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 2988
    const-string/jumbo v2, "keyHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2990
    nop

    .line 2991
    const-string/jumbo v2, "hardKeyHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2993
    const-string/jumbo v2, "nav"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->navigation:I

    .line 2995
    const-string/jumbo v2, "navHid"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2997
    const-string/jumbo v2, "ori"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2999
    const-string/jumbo v2, "scrLay"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 3001
    const-string v2, "clrMod"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->colorMode:I

    .line 3003
    const-string/jumbo v2, "ui"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 3004
    const-string/jumbo v2, "width"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3006
    const-string/jumbo v2, "height"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3008
    nop

    .line 3009
    const-string/jumbo v2, "sw"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3011
    const-string v2, "density"

    invoke-static {p0, v2, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 3013
    const-string v1, "fontWeightAdjustment"

    const v2, 0x7fffffff

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 3015
    const-string/jumbo v1, "grammaticalGender"

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 3020
    return-void
.end method

.method public static greylist-max-o reduceScreenLayout(III)I
    .registers 8
    .param p0, "curLayout"    # I
    .param p1, "longSizeDp"    # I
    .param p2, "shortSizeDp"    # I

    .line 437
    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_8

    .line 440
    const/4 v0, 0x1

    .line 441
    .local v0, "screenLayoutSize":I
    const/4 v1, 0x0

    .line 442
    .local v1, "screenLayoutLong":Z
    const/4 v2, 0x0

    .local v2, "screenLayoutCompatNeeded":Z
    goto :goto_36

    .line 445
    .end local v0    # "screenLayoutSize":I
    .end local v1    # "screenLayoutLong":Z
    .end local v2    # "screenLayoutCompatNeeded":Z
    :cond_8
    const/16 v0, 0x3c0

    if-lt p1, v0, :cond_12

    const/16 v0, 0x2d0

    if-lt p2, v0, :cond_12

    .line 448
    const/4 v0, 0x4

    .restart local v0    # "screenLayoutSize":I
    goto :goto_1d

    .line 449
    .end local v0    # "screenLayoutSize":I
    :cond_12
    const/16 v0, 0x280

    if-lt p1, v0, :cond_1c

    const/16 v0, 0x1e0

    if-lt p2, v0, :cond_1c

    .line 452
    const/4 v0, 0x3

    .restart local v0    # "screenLayoutSize":I
    goto :goto_1d

    .line 454
    .end local v0    # "screenLayoutSize":I
    :cond_1c
    const/4 v0, 0x2

    .line 460
    .restart local v0    # "screenLayoutSize":I
    :goto_1d
    const/16 v1, 0x141

    if-gt p2, v1, :cond_29

    const/16 v1, 0x23a

    if-le p1, v1, :cond_26

    goto :goto_29

    .line 463
    :cond_26
    const/4 v1, 0x0

    move v2, v1

    .local v1, "screenLayoutCompatNeeded":Z
    goto :goto_2b

    .line 461
    .end local v1    # "screenLayoutCompatNeeded":Z
    :cond_29
    :goto_29
    const/4 v1, 0x1

    move v2, v1

    .line 467
    .restart local v2    # "screenLayoutCompatNeeded":Z
    :goto_2b
    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x5

    add-int/lit8 v3, p2, -0x1

    if-lt v1, v3, :cond_35

    .line 469
    const/4 v1, 0x1

    .local v1, "screenLayoutLong":Z
    goto :goto_36

    .line 471
    .end local v1    # "screenLayoutLong":Z
    :cond_35
    const/4 v1, 0x0

    .line 477
    .restart local v1    # "screenLayoutLong":Z
    :goto_36
    if-nez v1, :cond_3c

    .line 478
    and-int/lit8 v3, p0, -0x31

    or-int/lit8 p0, v3, 0x10

    .line 480
    :cond_3c
    if-eqz v2, :cond_41

    .line 481
    const/high16 v3, 0x10000000

    or-int/2addr p0, v3

    .line 483
    :cond_41
    and-int/lit8 v3, p0, 0xf

    .line 484
    .local v3, "curSize":I
    if-ge v0, v3, :cond_49

    .line 485
    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v0

    .line 487
    :cond_49
    return p0
.end method

.method public static greylist-max-o resetScreenLayout(I)I
    .registers 2
    .param p0, "curLayout"    # I

    .line 422
    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public static greylist-max-r resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 2520
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .registers 8
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 2530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2532
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_3f

    .line 2533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2534
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_3f

    .line 2535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2539
    :cond_3f
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    .line 2540
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v1}, Landroid/content/res/Configuration;->localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v1

    .line 2541
    .local v1, "resourceQualifier":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    .line 2542
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2546
    .end local v1    # "resourceQualifier":Ljava/lang/String;
    :cond_56
    iget v1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    packed-switch v1, :pswitch_data_2c4

    goto :goto_70

    .line 2554
    :pswitch_5c
    const-string/jumbo v1, "masculine"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2555
    goto :goto_70

    .line 2551
    :pswitch_63
    const-string v1, "feminine"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2552
    goto :goto_70

    .line 2548
    :pswitch_69
    const-string/jumbo v1, "neuter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2549
    nop

    .line 2560
    :goto_70
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    sparse-switch v1, :sswitch_data_2ce

    goto :goto_86

    .line 2565
    :sswitch_78
    const-string/jumbo v1, "ldrtl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2566
    goto :goto_86

    .line 2562
    :sswitch_7f
    const-string/jumbo v1, "ldltr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2563
    nop

    .line 2571
    :goto_86
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v2, "dp"

    if-eqz v1, :cond_a9

    .line 2572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sw"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    :cond_a9
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_ca

    .line 2576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "w"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2579
    :cond_ca
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_eb

    .line 2580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "h"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2583
    :cond_eb
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_2d8

    goto :goto_10f

    .line 2594
    :pswitch_f3
    const-string/jumbo v1, "xlarge"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2595
    goto :goto_10f

    .line 2591
    :pswitch_fa
    const-string/jumbo v1, "large"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2592
    goto :goto_10f

    .line 2588
    :pswitch_101
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2589
    goto :goto_10f

    .line 2585
    :pswitch_108
    const-string/jumbo v1, "small"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2586
    nop

    .line 2600
    :goto_10f
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_2e4

    goto :goto_125

    .line 2602
    :sswitch_117
    const-string/jumbo v1, "long"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2603
    goto :goto_125

    .line 2605
    :sswitch_11e
    const-string/jumbo v1, "notlong"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2606
    nop

    .line 2611
    :goto_125
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    sparse-switch v1, :sswitch_data_2ee

    goto :goto_13b

    .line 2613
    :sswitch_12d
    const-string/jumbo v1, "round"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2614
    goto :goto_13b

    .line 2616
    :sswitch_134
    const-string/jumbo v1, "notround"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2617
    nop

    .line 2622
    :goto_13b
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_2f8

    goto :goto_151

    .line 2624
    :pswitch_143
    const-string/jumbo v1, "widecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2625
    goto :goto_151

    .line 2627
    :pswitch_14a
    const-string/jumbo v1, "nowidecg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2628
    nop

    .line 2633
    :goto_151
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_300

    goto :goto_167

    .line 2635
    :sswitch_159
    const-string/jumbo v1, "highdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2636
    goto :goto_167

    .line 2638
    :sswitch_160
    const-string/jumbo v1, "lowdr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2639
    nop

    .line 2644
    :goto_167
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_30a

    goto :goto_17b

    .line 2646
    :pswitch_16d
    const-string/jumbo v1, "land"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2647
    goto :goto_17b

    .line 2649
    :pswitch_174
    const-string/jumbo v1, "port"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2650
    nop

    .line 2655
    :goto_17b
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    .line 2656
    invoke-static {v1}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object v1

    .line 2657
    .local v1, "uiModeTypeString":Ljava/lang/String;
    if-eqz v1, :cond_188

    .line 2658
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2661
    :cond_188
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_312

    goto :goto_19e

    .line 2663
    :sswitch_190
    const-string/jumbo v2, "night"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2664
    goto :goto_19e

    .line 2666
    :sswitch_197
    const-string/jumbo v2, "notnight"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2667
    nop

    .line 2672
    :goto_19e
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    sparse-switch v2, :sswitch_data_31c

    .line 2703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dpi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1fb

    .line 2700
    :sswitch_1bc
    const-string/jumbo v2, "nodpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2701
    goto :goto_1fb

    .line 2697
    :sswitch_1c3
    const-string v2, "anydpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2698
    goto :goto_1fb

    .line 2694
    :sswitch_1c9
    const-string/jumbo v2, "xxxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2695
    goto :goto_1fb

    .line 2691
    :sswitch_1d0
    const-string/jumbo v2, "xxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2692
    goto :goto_1fb

    .line 2688
    :sswitch_1d7
    const-string/jumbo v2, "xhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2689
    goto :goto_1fb

    .line 2685
    :sswitch_1de
    const-string/jumbo v2, "hdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2686
    goto :goto_1fb

    .line 2682
    :sswitch_1e5
    const-string/jumbo v2, "tvdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2683
    goto :goto_1fb

    .line 2679
    :sswitch_1ec
    const-string/jumbo v2, "mdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2680
    goto :goto_1fb

    .line 2676
    :sswitch_1f3
    const-string/jumbo v2, "ldpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2677
    goto :goto_1fb

    .line 2674
    :sswitch_1fa
    nop

    .line 2707
    :goto_1fb
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_346

    :pswitch_200
    goto :goto_20e

    .line 2712
    :pswitch_201
    const-string v2, "finger"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2713
    goto :goto_20e

    .line 2709
    :pswitch_207
    const-string/jumbo v2, "notouch"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2710
    nop

    .line 2718
    :goto_20e
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_350

    goto :goto_229

    .line 2726
    :pswitch_214
    const-string/jumbo v2, "keyssoft"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2727
    goto :goto_229

    .line 2723
    :pswitch_21b
    const-string/jumbo v2, "keyshidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2724
    goto :goto_229

    .line 2720
    :pswitch_222
    const-string/jumbo v2, "keysexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2721
    nop

    .line 2732
    :goto_229
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_35a

    goto :goto_243

    .line 2740
    :pswitch_22f
    const-string v2, "12key"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2741
    goto :goto_243

    .line 2737
    :pswitch_235
    const-string/jumbo v2, "qwerty"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2738
    goto :goto_243

    .line 2734
    :pswitch_23c
    const-string/jumbo v2, "nokeys"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2735
    nop

    .line 2746
    :goto_243
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_364

    goto :goto_257

    .line 2751
    :pswitch_249
    const-string/jumbo v2, "navhidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2752
    goto :goto_257

    .line 2748
    :pswitch_250
    const-string/jumbo v2, "navexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2749
    nop

    .line 2757
    :goto_257
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_36c

    goto :goto_278

    .line 2768
    :pswitch_25d
    const-string/jumbo v2, "wheel"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2769
    goto :goto_278

    .line 2765
    :pswitch_264
    const-string/jumbo v2, "trackball"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2766
    goto :goto_278

    .line 2762
    :pswitch_26b
    const-string v2, "dpad"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2763
    goto :goto_278

    .line 2759
    :pswitch_271
    const-string/jumbo v2, "nonav"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2760
    nop

    .line 2774
    :goto_278
    if-eqz p1, :cond_2a4

    .line 2776
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_285

    .line 2777
    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2778
    .local v2, "width":I
    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v3, "height":I
    goto :goto_289

    .line 2781
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_285
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2783
    .restart local v2    # "width":I
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2785
    .restart local v3    # "height":I
    :goto_289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2788
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_2a4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2789
    const-string v2, "-"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_2c4
    .packed-switch 0x1
        :pswitch_69
        :pswitch_63
        :pswitch_5c
    .end packed-switch

    :sswitch_data_2ce
    .sparse-switch
        0x40 -> :sswitch_7f
        0x80 -> :sswitch_78
    .end sparse-switch

    :pswitch_data_2d8
    .packed-switch 0x1
        :pswitch_108
        :pswitch_101
        :pswitch_fa
        :pswitch_f3
    .end packed-switch

    :sswitch_data_2e4
    .sparse-switch
        0x10 -> :sswitch_11e
        0x20 -> :sswitch_117
    .end sparse-switch

    :sswitch_data_2ee
    .sparse-switch
        0x100 -> :sswitch_134
        0x200 -> :sswitch_12d
    .end sparse-switch

    :pswitch_data_2f8
    .packed-switch 0x1
        :pswitch_14a
        :pswitch_143
    .end packed-switch

    :sswitch_data_300
    .sparse-switch
        0x4 -> :sswitch_160
        0x8 -> :sswitch_159
    .end sparse-switch

    :pswitch_data_30a
    .packed-switch 0x1
        :pswitch_174
        :pswitch_16d
    .end packed-switch

    :sswitch_data_312
    .sparse-switch
        0x10 -> :sswitch_197
        0x20 -> :sswitch_190
    .end sparse-switch

    :sswitch_data_31c
    .sparse-switch
        0x0 -> :sswitch_1fa
        0x78 -> :sswitch_1f3
        0xa0 -> :sswitch_1ec
        0xd5 -> :sswitch_1e5
        0xf0 -> :sswitch_1de
        0x140 -> :sswitch_1d7
        0x1e0 -> :sswitch_1d0
        0x280 -> :sswitch_1c9
        0xfffe -> :sswitch_1c3
        0xffff -> :sswitch_1bc
    .end sparse-switch

    :pswitch_data_346
    .packed-switch 0x1
        :pswitch_207
        :pswitch_200
        :pswitch_201
    .end packed-switch

    :pswitch_data_350
    .packed-switch 0x1
        :pswitch_222
        :pswitch_21b
        :pswitch_214
    .end packed-switch

    :pswitch_data_35a
    .packed-switch 0x1
        :pswitch_23c
        :pswitch_235
        :pswitch_22f
    .end packed-switch

    :pswitch_data_364
    .packed-switch 0x1
        :pswitch_250
        :pswitch_249
    .end packed-switch

    :pswitch_data_36c
    .packed-switch 0x1
        :pswitch_271
        :pswitch_26b
        :pswitch_264
        :pswitch_25d
    .end packed-switch
.end method

.method public static greylist-max-o uiModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "uiMode"    # I

    .line 1547
    packed-switch p0, :pswitch_data_20

    .line 1565
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1563
    :pswitch_8
    const-string v0, "UI_MODE_TYPE_VR_HEADSET"

    return-object v0

    .line 1561
    :pswitch_b
    const-string v0, "UI_MODE_TYPE_WATCH"

    return-object v0

    .line 1559
    :pswitch_e
    const-string v0, "UI_MODE_TYPE_APPLIANCE"

    return-object v0

    .line 1557
    :pswitch_11
    const-string v0, "UI_MODE_TYPE_TELEVISION"

    return-object v0

    .line 1555
    :pswitch_14
    const-string v0, "UI_MODE_TYPE_CAR"

    return-object v0

    .line 1553
    :pswitch_17
    const-string v0, "UI_MODE_TYPE_DESK"

    return-object v0

    .line 1551
    :pswitch_1a
    const-string v0, "UI_MODE_TYPE_NORMAL"

    return-object v0

    .line 1549
    :pswitch_1d
    const-string v0, "UI_MODE_TYPE_UNDEFINED"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o clearLocales()V
    .registers 2

    .line 2393
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2394
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2395
    return-void
.end method

.method public whitelist compareTo(Landroid/content/res/Configuration;)I
    .registers 11
    .param p1, "that"    # Landroid/content/res/Configuration;

    .line 2188
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2189
    .local v0, "a":F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 2190
    .local v1, "b":F
    cmpg-float v2, v0, v1

    const/4 v3, -0x1

    if-gez v2, :cond_a

    return v3

    .line 2191
    :cond_a
    cmpl-float v2, v0, v1

    const/4 v4, 0x1

    if-lez v2, :cond_10

    return v4

    .line 2192
    :cond_10
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v5, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int/2addr v2, v5

    .line 2193
    .local v2, "n":I
    if-eqz v2, :cond_18

    return v2

    .line 2194
    :cond_18
    iget v5, p0, Landroid/content/res/Configuration;->mnc:I

    iget v6, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int/2addr v5, v6

    .line 2195
    .end local v2    # "n":I
    .local v5, "n":I
    if-eqz v5, :cond_20

    return v5

    .line 2197
    :cond_20
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2198
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2201
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2202
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_af

    return v4

    .line 2203
    :cond_37
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2204
    return v3

    .line 2206
    :cond_40
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v2

    iget-object v3, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2207
    .local v2, "minSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_51
    if-ge v3, v2, :cond_9e

    .line 2208
    iget-object v4, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v4, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    .line 2209
    .local v4, "thisLocale":Ljava/util/Locale;
    iget-object v6, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v6, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    .line 2210
    .local v6, "thatLocale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2211
    if-eqz v5, :cond_6e

    return v5

    .line 2212
    :cond_6e
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2213
    if-eqz v5, :cond_7d

    return v5

    .line 2214
    :cond_7d
    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2215
    if-eqz v5, :cond_8c

    return v5

    .line 2216
    :cond_8c
    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 2217
    if-eqz v5, :cond_9b

    return v5

    .line 2207
    .end local v4    # "thisLocale":Ljava/util/Locale;
    .end local v6    # "thatLocale":Ljava/util/Locale;
    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 2219
    .end local v3    # "i":I
    :cond_9e
    iget-object v3, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v3

    iget-object v4, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    move-result v4

    sub-int v5, v3, v4

    .line 2220
    if-eqz v5, :cond_af

    return v5

    .line 2223
    .end local v2    # "minSize":I
    :cond_af
    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v3, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    sub-int/2addr v2, v3

    .line 2224
    .end local v5    # "n":I
    .local v2, "n":I
    if-eqz v2, :cond_b7

    return v2

    .line 2225
    :cond_b7
    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int/2addr v3, v4

    .line 2226
    .end local v2    # "n":I
    .local v3, "n":I
    if-eqz v3, :cond_bf

    return v3

    .line 2227
    :cond_bf
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int/2addr v2, v4

    .line 2228
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_c7

    return v2

    .line 2229
    :cond_c7
    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int/2addr v3, v4

    .line 2230
    .end local v2    # "n":I
    .restart local v3    # "n":I
    if-eqz v3, :cond_cf

    return v3

    .line 2231
    :cond_cf
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int/2addr v2, v4

    .line 2232
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_d7

    return v2

    .line 2233
    :cond_d7
    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int/2addr v3, v4

    .line 2234
    .end local v2    # "n":I
    .restart local v3    # "n":I
    if-eqz v3, :cond_df

    return v3

    .line 2235
    :cond_df
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int/2addr v2, v4

    .line 2236
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_e7

    return v2

    .line 2237
    :cond_e7
    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int/2addr v3, v4

    .line 2238
    .end local v2    # "n":I
    .restart local v3    # "n":I
    if-eqz v3, :cond_ef

    return v3

    .line 2239
    :cond_ef
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    iget v4, p1, Landroid/content/res/Configuration;->colorMode:I

    sub-int/2addr v2, v4

    .line 2240
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_f7

    return v2

    .line 2241
    :cond_f7
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int/2addr v3, v4

    .line 2242
    .end local v2    # "n":I
    .restart local v3    # "n":I
    if-eqz v3, :cond_ff

    return v3

    .line 2243
    :cond_ff
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int/2addr v2, v4

    .line 2244
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_107

    return v2

    .line 2245
    :cond_107
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int/2addr v3, v4

    .line 2246
    .end local v2    # "n":I
    .restart local v3    # "n":I
    if-eqz v3, :cond_10f

    return v3

    .line 2247
    :cond_10f
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int/2addr v2, v4

    .line 2248
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_117

    return v2

    .line 2249
    :cond_117
    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int/2addr v3, v4

    .line 2250
    .end local v2    # "n":I
    .restart local v3    # "n":I
    if-eqz v3, :cond_11f

    return v3

    .line 2251
    :cond_11f
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int/2addr v2, v4

    .line 2252
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_127

    return v2

    .line 2253
    :cond_127
    iget v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v4, p1, Landroid/content/res/Configuration;->assetsSeq:I

    sub-int/2addr v3, v4

    .line 2254
    .end local v2    # "n":I
    .restart local v3    # "n":I
    if-eqz v3, :cond_12f

    return v3

    .line 2255
    :cond_12f
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v4}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result v2

    .line 2256
    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v2, :cond_13a

    return v2

    .line 2257
    :cond_13a
    iget v3, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v4, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    sub-int/2addr v3, v4

    .line 2258
    .end local v2    # "n":I
    .restart local v3    # "n":I
    return v3
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 93
    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2086
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist diff(Landroid/content/res/Configuration;)I
    .registers 3
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 1899
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o diff(Landroid/content/res/Configuration;ZZ)I
    .registers 10
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "compareUndefined"    # Z
    .param p3, "publicOnly"    # Z

    .line 1920
    const/4 v0, 0x0

    .line 1921
    .local v0, "changed":I
    if-nez p2, :cond_a

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    :cond_a
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_15

    .line 1922
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 1924
    :cond_15
    if-nez p2, :cond_1b

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_23

    :cond_1b
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_23

    .line 1925
    or-int/lit8 v0, v0, 0x1

    .line 1927
    :cond_23
    if-nez p2, :cond_29

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_31

    :cond_29
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_31

    .line 1928
    or-int/lit8 v0, v0, 0x2

    .line 1930
    :cond_31
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1931
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1932
    if-nez p2, :cond_41

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    :cond_41
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1933
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1934
    or-int/lit8 v0, v0, 0x4

    .line 1935
    or-int/lit16 v0, v0, 0x2000

    .line 1937
    :cond_4f
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    .line 1938
    .local v1, "deltaScreenLayoutDir":I
    if-nez p2, :cond_57

    if-eqz v1, :cond_5f

    :cond_57
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_5f

    .line 1940
    or-int/lit16 v0, v0, 0x2000

    .line 1942
    :cond_5f
    if-nez p2, :cond_65

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_6d

    :cond_65
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_6d

    .line 1944
    or-int/lit8 v0, v0, 0x8

    .line 1946
    :cond_6d
    if-nez p2, :cond_73

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_7b

    :cond_73
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_7b

    .line 1948
    or-int/lit8 v0, v0, 0x10

    .line 1950
    :cond_7b
    if-nez p2, :cond_81

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_89

    :cond_81
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_89

    .line 1952
    or-int/lit8 v0, v0, 0x20

    .line 1954
    :cond_89
    if-nez p2, :cond_8f

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_97

    :cond_8f
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v3, :cond_97

    .line 1956
    or-int/lit8 v0, v0, 0x20

    .line 1958
    :cond_97
    if-nez p2, :cond_9d

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_a5

    :cond_9d
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_a5

    .line 1960
    or-int/lit8 v0, v0, 0x40

    .line 1962
    :cond_a5
    if-nez p2, :cond_ab

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_b3

    :cond_ab
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_b3

    .line 1964
    or-int/lit8 v0, v0, 0x20

    .line 1966
    :cond_b3
    if-nez p2, :cond_b9

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_c1

    :cond_b9
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_c1

    .line 1968
    or-int/lit16 v0, v0, 0x80

    .line 1970
    :cond_c1
    if-nez p2, :cond_cb

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eqz v2, :cond_db

    :cond_cb
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1972
    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 1973
    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eq v2, v3, :cond_db

    .line 1974
    or-int/lit16 v0, v0, 0x100

    .line 1976
    :cond_db
    if-nez p2, :cond_e3

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_ef

    :cond_e3
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    if-eq v2, v3, :cond_ef

    .line 1980
    or-int/lit16 v0, v0, 0x4000

    .line 1982
    :cond_ef
    if-nez p2, :cond_f7

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_103

    :cond_f7
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    if-eq v2, v3, :cond_103

    .line 1987
    or-int/lit16 v0, v0, 0x4000

    .line 1989
    :cond_103
    if-nez p2, :cond_109

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_111

    :cond_109
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v3, :cond_111

    .line 1991
    or-int/lit16 v0, v0, 0x200

    .line 1993
    :cond_111
    if-nez p2, :cond_117

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_11f

    :cond_117
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v3, :cond_11f

    .line 1995
    or-int/lit16 v0, v0, 0x400

    .line 1997
    :cond_11f
    if-nez p2, :cond_125

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_12d

    :cond_125
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v3, :cond_12d

    .line 1999
    or-int/lit16 v0, v0, 0x400

    .line 2001
    :cond_12d
    if-nez p2, :cond_133

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_13b

    :cond_133
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v3, :cond_13b

    .line 2003
    or-int/lit16 v0, v0, 0x800

    .line 2005
    :cond_13b
    if-nez p2, :cond_141

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_149

    :cond_141
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_149

    .line 2007
    or-int/lit16 v0, v0, 0x1000

    .line 2009
    :cond_149
    if-nez p2, :cond_14f

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v2, :cond_158

    :cond_14f
    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v2, v3, :cond_158

    .line 2011
    const/high16 v2, -0x80000000

    or-int/2addr v0, v2

    .line 2015
    :cond_158
    if-nez p3, :cond_16b

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2016
    invoke-virtual {v2, v3, p2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16b

    .line 2017
    const/high16 v2, 0x20000000

    or-int/2addr v0, v2

    .line 2020
    :cond_16b
    if-nez p2, :cond_174

    iget v2, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_17d

    :cond_174
    iget v2, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v3, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v2, v3, :cond_17d

    .line 2022
    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    .line 2025
    :cond_17d
    if-nez p2, :cond_184

    iget v2, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18e

    :cond_184
    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v3, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-eq v2, v3, :cond_18e

    .line 2027
    const v2, 0x8000

    or-int/2addr v0, v2

    .line 2029
    :cond_18e
    return v0
.end method

.method public greylist-max-o diffPublicOnly(Landroid/content/res/Configuration;)I
    .registers 4
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 1911
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1347
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    .end local p2    # "fieldId":J
    .local v1, "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    .local v2, "fieldId":J
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V

    .line 1348
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 11
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "critical"    # Z

    .line 1360
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    .end local p1    # "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    .end local p2    # "fieldId":J
    .end local p4    # "critical":Z
    .local v1, "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    .local v2, "fieldId":J
    .local v5, "critical":Z
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V

    .line 1361
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZ)V
    .registers 11
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "persisted"    # Z
    .param p5, "critical"    # Z

    .line 1306
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1307
    .local v0, "token":J
    if-nez p5, :cond_be

    .line 1308
    const-wide v2, 0x10200000001L

    iget v4, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1309
    const-wide v2, 0x10d00000002L

    iget v4, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1310
    const-wide v2, 0x10d00000003L

    iget v4, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1311
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    if-eqz v2, :cond_36

    .line 1312
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000014L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1314
    :cond_36
    const-wide v2, 0x10d00000005L

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1315
    const-wide v2, 0x10d00000006L

    iget v4, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1316
    const-wide v2, 0x10d00000007L

    iget v4, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1317
    const-wide v2, 0x10d00000008L

    iget v4, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1318
    const-wide v2, 0x10d00000009L

    iget v4, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1319
    const-wide v2, 0x10d0000000aL

    iget v4, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1320
    const-wide v2, 0x10d0000000bL

    iget v4, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1321
    const-wide v2, 0x10d0000000cL

    iget v4, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1322
    const-wide v2, 0x10d0000000eL

    iget v4, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1323
    const-wide v2, 0x10d00000011L

    iget v4, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1324
    const-wide v2, 0x10d00000012L

    iget v4, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1326
    if-nez p4, :cond_b4

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v2, :cond_b4

    .line 1327
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const-wide v3, 0x10b00000013L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/WindowConfiguration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1329
    :cond_b4
    const-wide v2, 0x10d00000015L

    iget v4, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1331
    :cond_be
    const-wide v2, 0x10d0000000dL

    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1332
    const-wide v2, 0x10d0000000fL

    iget v4, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1333
    const-wide v2, 0x10d00000010L

    iget v4, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1334
    const-wide v2, 0x10d00000016L

    iget v4, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1335
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1336
    return-void
.end method

.method public whitelist equals(Landroid/content/res/Configuration;)Z
    .registers 5
    .param p1, "that"    # Landroid/content/res/Configuration;

    .line 2262
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2263
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 2264
    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "that"    # Ljava/lang/Object;

    .line 2269
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_8

    return v0

    .line 2270
    :catch_8
    move-exception v0

    .line 2272
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGrammaticalGender()I
    .registers 3

    .line 2312
    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 2313
    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 2312
    :goto_9
    return v0
.end method

.method public blacklist getGrammaticalGenderRaw()I
    .registers 2

    .line 2323
    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    return v0
.end method

.method public whitelist getLayoutDirection()I
    .registers 3

    .line 2405
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    .line 2406
    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 2405
    :goto_b
    return v0
.end method

.method public whitelist getLocales()Landroid/os/LocaleList;
    .registers 2

    .line 2345
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2346
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 2276
    const/16 v0, 0x11

    .line 2277
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 2278
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    add-int/2addr v0, v2

    .line 2279
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    add-int/2addr v1, v2

    .line 2280
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 2281
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int/2addr v1, v2

    .line 2282
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int/2addr v0, v2

    .line 2283
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int/2addr v1, v2

    .line 2284
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int/2addr v0, v2

    .line 2285
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    add-int/2addr v1, v2

    .line 2286
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int/2addr v0, v2

    .line 2287
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    add-int/2addr v1, v2

    .line 2288
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int/2addr v0, v2

    .line 2289
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    add-int/2addr v1, v2

    .line 2290
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int/2addr v0, v2

    .line 2291
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int/2addr v1, v2

    .line 2292
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int/2addr v0, v2

    .line 2293
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int/2addr v1, v2

    .line 2294
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int/2addr v0, v2

    .line 2295
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    add-int/2addr v1, v2

    .line 2296
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    add-int/2addr v0, v2

    .line 2297
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    add-int/2addr v1, v2

    .line 2298
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist isLayoutSizeAtLeast(I)Z
    .registers 4
    .param p1, "size"    # I

    .line 567
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 568
    .local v0, "cur":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 569
    :cond_8
    if-lt v0, p1, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public whitelist isNightModeActive()Z
    .registers 3

    .line 2183
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .registers 7
    .param p1, "other"    # Landroid/content/res/Configuration;

    .line 2059
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2061
    return v0

    .line 2063
    :cond_4
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 2066
    return v2

    .line 2068
    :cond_a
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-nez v1, :cond_f

    .line 2071
    return v2

    .line 2073
    :cond_f
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    sub-int/2addr v1, v3

    .line 2074
    .local v1, "diff":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/high16 v4, 0x10000000

    if-le v3, v4, :cond_20

    .line 2077
    if-gez v1, :cond_1f

    move v0, v2

    :cond_1f
    return v0

    .line 2079
    :cond_20
    if-lez v1, :cond_23

    move v0, v2

    :cond_23
    return v0
.end method

.method public whitelist isScreenHdr()Z
    .registers 3

    .line 2462
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isScreenRound()Z
    .registers 3

    .line 2438
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0x300

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isScreenWideColorGamut()Z
    .registers 3

    .line 2453
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist makeDefault()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1611
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1612
    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2127
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 2128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 2129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 2131
    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2132
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    move v1, v2

    :cond_2d
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 2135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 2136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 2137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 2140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 2142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 2144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 2145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 2150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 2151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 2152
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 2153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 2154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 2155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 2156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 2157
    return-void
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 30
    .param p1, "protoInputStream"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1372
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ") found when trying to add: "

    const-string v4, ";script-"

    const-string v5, "Repeated locale ("

    const-string v6, ";variant-"

    const-string v7, ";country-"

    const-string/jumbo v8, "readFromProto error building locale with: language-"

    const-string v9, ""

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10

    .line 1373
    .local v10, "token":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 1375
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :goto_1d
    :try_start_1d
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_45a

    const/4 v13, -0x1

    if-eq v0, v13, :cond_437

    .line 1376
    :try_start_24
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_431

    const-string v14, "Configuration"

    packed-switch v0, :pswitch_data_47a

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    move-object v10, v5

    .end local v10    # "token":J
    .local v20, "token":J
    goto/16 :goto_42a

    .line 1498
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :pswitch_34
    const-wide v13, 0x10d00000016L

    :try_start_39
    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    move-object v10, v5

    goto/16 :goto_42a

    .line 1495
    :pswitch_46
    const-wide v13, 0x10d00000015L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->fontWeightAdjustment:I
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_58

    .line 1496
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    move-object v10, v5

    goto/16 :goto_42a

    .line 1504
    :catchall_58
    move-exception v0

    move-wide v3, v10

    goto/16 :goto_45c

    .line 1488
    :pswitch_5c
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .local v15, "token":J
    const-wide v9, 0x10900000014L

    :try_start_63
    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6e} :catch_75
    .catchall {:try_start_63 .. :try_end_6e} :catchall_1ad

    .line 1492
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1490
    :catch_75
    move-exception v0

    .line 1491
    .local v0, "e":Ljava/lang/Exception;
    :try_start_76
    const-string v9, "error parsing locale list in configuration."

    invoke-static {v14, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1493
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_42a

    .line 1484
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_82
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    iget-object v0, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const-wide v9, 0x10b00000013L

    invoke-virtual {v0, v2, v9, v10}, Landroid/app/WindowConfiguration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 1485
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1481
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_95
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x10d00000012L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 1482
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1478
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_a9
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x10d00000011L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1479
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1475
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_bd
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x10d00000010L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1476
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1472
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_d1
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x10d0000000fL

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1473
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1469
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_e5
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x10d0000000eL

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 1470
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1466
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_f9
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x10d0000000dL

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1467
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1463
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_10d
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x10d0000000cL

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1464
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1460
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_121
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x10d0000000bL

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->navigation:I

    .line 1461
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1457
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_135
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x10d0000000aL

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1458
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1454
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_149
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x10d00000009L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1455
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1451
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_15d
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x10d00000008L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->keyboard:I

    .line 1452
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1448
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_171
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x10d00000007L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->touchscreen:I

    .line 1449
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1445
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_185
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x10d00000006L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->colorMode:I

    .line 1446
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1442
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_199
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x10d00000005L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_1a6
    .catchall {:try_start_76 .. :try_end_1a6} :catchall_1ad

    .line 1443
    move-object v10, v5

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    goto/16 :goto_42a

    .line 1504
    :catchall_1ad
    move-exception v0

    move-wide v3, v15

    goto/16 :goto_45c

    .line 1389
    .end local v15    # "token":J
    .restart local v10    # "token":J
    :pswitch_1b1
    move-wide v15, v10

    move-object v11, v9

    .end local v10    # "token":J
    .restart local v15    # "token":J
    const-wide v9, 0x20b00000004L

    :try_start_1b8
    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v9
    :try_end_1bc
    .catchall {:try_start_1b8 .. :try_end_1bc} :catchall_3e4

    .line 1390
    .local v9, "localeToken":J
    move-object v0, v11

    .line 1391
    .local v0, "language":Ljava/lang/String;
    move-object/from16 v17, v11

    .line 1392
    .local v17, "country":Ljava/lang/String;
    move-object/from16 v18, v11

    .line 1393
    .local v18, "variant":Ljava/lang/String;
    move-object/from16 v19, v11

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    move-object/from16 v22, v18

    move-object/from16 v23, v19

    .line 1395
    .end local v0    # "language":Ljava/lang/String;
    .end local v17    # "country":Ljava/lang/String;
    .end local v18    # "variant":Ljava/lang/String;
    .local v20, "language":Ljava/lang/String;
    .local v21, "country":Ljava/lang/String;
    .local v22, "variant":Ljava/lang/String;
    .local v23, "script":Ljava/lang/String;
    :goto_1cb
    :try_start_1cb
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_1cf
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_1cb .. :try_end_1cf} :catch_343
    .catchall {:try_start_1cb .. :try_end_1cf} :catchall_331

    if-eq v0, v13, :cond_242

    .line 1397
    :try_start_1d1
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0
    :try_end_1d5
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_1d1 .. :try_end_1d5} :catch_22f
    .catchall {:try_start_1d1 .. :try_end_1d5} :catchall_21b

    packed-switch v0, :pswitch_data_4aa

    move-object/from16 v18, v14

    goto :goto_217

    .line 1409
    :pswitch_1db
    move-object/from16 v18, v14

    const-wide v13, 0x10900000004L

    :try_start_1e2
    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .end local v23    # "script":Ljava/lang/String;
    .local v0, "script":Ljava/lang/String;
    goto :goto_217

    .line 1406
    .end local v0    # "script":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :pswitch_1e9
    move-object/from16 v18, v14

    const-wide v13, 0x10900000003L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1407
    .end local v22    # "variant":Ljava/lang/String;
    .local v0, "variant":Ljava/lang/String;
    move-object/from16 v22, v0

    goto :goto_217

    .line 1403
    .end local v0    # "variant":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    :pswitch_1f7
    move-object/from16 v18, v14

    const-wide v13, 0x10900000002L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 1404
    .end local v21    # "country":Ljava/lang/String;
    .local v0, "country":Ljava/lang/String;
    move-object/from16 v21, v0

    goto :goto_217

    .line 1399
    .end local v0    # "country":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    :pswitch_205
    move-object/from16 v18, v14

    const-wide v13, 0x10900000001L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_210
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_1e2 .. :try_end_210} :catch_215
    .catchall {:try_start_1e2 .. :try_end_210} :catchall_213

    .line 1401
    .end local v20    # "language":Ljava/lang/String;
    .local v0, "language":Ljava/lang/String;
    move-object/from16 v20, v0

    goto :goto_217

    .line 1417
    .end local v0    # "language":Ljava/lang/String;
    .restart local v20    # "language":Ljava/lang/String;
    :catchall_213
    move-exception v0

    goto :goto_21e

    .line 1413
    :catch_215
    move-exception v0

    goto :goto_232

    .line 1410
    :goto_217
    move-object/from16 v14, v18

    const/4 v13, -0x1

    goto :goto_1cb

    .line 1417
    :catchall_21b
    move-exception v0

    move-object/from16 v18, v14

    :goto_21e
    move-object v1, v0

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v11, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto/16 :goto_357

    .line 1413
    :catch_22f
    move-exception v0

    move-object/from16 v18, v14

    :goto_232
    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v11, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto/16 :goto_353

    .line 1417
    :cond_242
    move-object/from16 v18, v14

    :try_start_244
    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_247
    .catchall {:try_start_244 .. :try_end_247} :catchall_328

    .line 1419
    :try_start_247
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V
    :try_end_24c
    .catch Ljava/util/IllformedLocaleException; {:try_start_247 .. :try_end_24c} :catch_2db
    .catchall {:try_start_247 .. :try_end_24c} :catchall_328

    .line 1420
    move-object/from16 v13, v20

    .end local v20    # "language":Ljava/lang/String;
    .local v13, "language":Ljava/lang/String;
    :try_start_24e
    invoke-virtual {v0, v13}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_252
    .catch Ljava/util/IllformedLocaleException; {:try_start_24e .. :try_end_252} :catch_2cb
    .catchall {:try_start_24e .. :try_end_252} :catchall_328

    .line 1421
    move-object/from16 v14, v21

    .end local v21    # "country":Ljava/lang/String;
    .local v14, "country":Ljava/lang/String;
    :try_start_254
    invoke-virtual {v0, v14}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_258
    .catch Ljava/util/IllformedLocaleException; {:try_start_254 .. :try_end_258} :catch_2bd
    .catchall {:try_start_254 .. :try_end_258} :catchall_328

    .line 1422
    move-object/from16 v19, v11

    move-object/from16 v11, v22

    .end local v22    # "variant":Ljava/lang/String;
    .local v11, "variant":Ljava/lang/String;
    :try_start_25c
    invoke-virtual {v0, v11}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0
    :try_end_260
    .catch Ljava/util/IllformedLocaleException; {:try_start_25c .. :try_end_260} :catch_2b3
    .catchall {:try_start_25c .. :try_end_260} :catchall_328

    .line 1423
    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    .end local v23    # "script":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    :try_start_264
    invoke-virtual {v0, v15}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1424
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 1427
    .local v0, "locale":Ljava/util/Locale;
    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v16

    move/from16 v22, v16

    .line 1428
    .local v22, "inListIndex":I
    move/from16 v1, v22

    const/4 v2, -0x1

    .end local v22    # "inListIndex":I
    .local v1, "inListIndex":I
    if-eq v1, v2, :cond_2a2

    .line 1429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_280
    .catch Ljava/util/IllformedLocaleException; {:try_start_264 .. :try_end_280} :catch_2ad
    .catchall {:try_start_264 .. :try_end_280} :catchall_321

    move-object/from16 v16, v5

    :try_start_282
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1430
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_29a
    .catch Ljava/util/IllformedLocaleException; {:try_start_282 .. :try_end_29a} :catch_2a0
    .catchall {:try_start_282 .. :try_end_29a} :catchall_321

    .line 1429
    move-object/from16 v5, v18

    :try_start_29c
    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a9

    .line 1434
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "inListIndex":I
    :catch_2a0
    move-exception v0

    goto :goto_2b0

    .line 1432
    .restart local v0    # "locale":Ljava/util/Locale;
    .restart local v1    # "inListIndex":I
    :cond_2a2
    move-object/from16 v16, v5

    move-object/from16 v5, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a9
    .catch Ljava/util/IllformedLocaleException; {:try_start_29c .. :try_end_2a9} :catch_2ab
    .catchall {:try_start_29c .. :try_end_2a9} :catchall_321

    .line 1438
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "inListIndex":I
    :goto_2a9
    goto/16 :goto_319

    .line 1434
    :catch_2ab
    move-exception v0

    goto :goto_2ec

    :catch_2ad
    move-exception v0

    move-object/from16 v16, v5

    :goto_2b0
    move-object/from16 v5, v18

    goto :goto_2ec

    .end local v20    # "token":J
    .local v15, "token":J
    .restart local v23    # "script":Ljava/lang/String;
    :catch_2b3
    move-exception v0

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .end local v23    # "script":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .restart local v20    # "token":J
    goto :goto_2ec

    .end local v11    # "variant":Ljava/lang/String;
    .end local v20    # "token":J
    .local v15, "token":J
    .local v22, "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_2bd
    move-exception v0

    move-object/from16 v19, v11

    move-wide/from16 v20, v15

    move-object/from16 v11, v22

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .restart local v11    # "variant":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .restart local v20    # "token":J
    goto :goto_2ec

    .end local v11    # "variant":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .end local v20    # "token":J
    .local v15, "token":J
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_2cb
    move-exception v0

    move-object/from16 v19, v11

    move-object/from16 v14, v21

    move-object/from16 v11, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .restart local v11    # "variant":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .restart local v20    # "token":J
    goto :goto_2ec

    .end local v11    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .local v15, "token":J
    .local v20, "language":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_2db
    move-exception v0

    move-object/from16 v19, v11

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v11, v22

    move-wide/from16 v20, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    .line 1435
    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .local v0, "e":Ljava/util/IllformedLocaleException;
    .restart local v11    # "variant":Ljava/lang/String;
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    :goto_2ec
    :try_start_2ec
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_318
    .catchall {:try_start_2ec .. :try_end_318} :catchall_321

    .line 1439
    nop

    .line 1440
    .end local v0    # "e":Ljava/util/IllformedLocaleException;
    :goto_319
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, v16

    goto/16 :goto_42a

    .line 1504
    .end local v9    # "localeToken":J
    .end local v11    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .end local v15    # "script":Ljava/lang/String;
    :catchall_321
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_427

    .end local v20    # "token":J
    .local v15, "token":J
    :catchall_328
    move-exception v0

    move-wide/from16 v20, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_3e9

    .line 1417
    .restart local v9    # "localeToken":J
    .local v20, "language":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catchall_331
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v11, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    move-object v1, v0

    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .restart local v11    # "variant":Ljava/lang/String;
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    goto :goto_357

    .line 1413
    .end local v11    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .local v15, "token":J
    .local v20, "language":Ljava/lang/String;
    .restart local v21    # "country":Ljava/lang/String;
    .restart local v22    # "variant":Ljava/lang/String;
    .restart local v23    # "script":Ljava/lang/String;
    :catch_343
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v11, v22

    move-wide/from16 v24, v15

    move-object/from16 v16, v5

    move-object v5, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v23

    move-wide/from16 v20, v24

    .line 1415
    .end local v21    # "country":Ljava/lang/String;
    .end local v22    # "variant":Ljava/lang/String;
    .end local v23    # "script":Ljava/lang/String;
    .local v0, "wtme":Landroid/util/proto/WireTypeMismatchException;
    .restart local v11    # "variant":Ljava/lang/String;
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .local v15, "script":Ljava/lang/String;
    .local v20, "token":J
    :goto_353
    nop

    .end local v9    # "localeToken":J
    .end local v11    # "variant":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .end local v15    # "script":Ljava/lang/String;
    .end local v20    # "token":J
    .end local p0    # "this":Landroid/content/res/Configuration;
    .end local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .end local p2    # "fieldId":J
    :try_start_354
    throw v0
    :try_end_355
    .catchall {:try_start_354 .. :try_end_355} :catchall_355

    .line 1417
    .end local v0    # "wtme":Landroid/util/proto/WireTypeMismatchException;
    .restart local v9    # "localeToken":J
    .restart local v11    # "variant":Ljava/lang/String;
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v13    # "language":Ljava/lang/String;
    .restart local v14    # "country":Ljava/lang/String;
    .restart local v15    # "script":Ljava/lang/String;
    .restart local v20    # "token":J
    .restart local p0    # "this":Landroid/content/res/Configuration;
    .restart local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .restart local p2    # "fieldId":J
    :catchall_355
    move-exception v0

    move-object v1, v0

    :goto_357
    move-object/from16 v2, p1

    :try_start_359
    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_35c
    .catchall {:try_start_359 .. :try_end_35c} :catchall_400

    .line 1419
    :try_start_35c
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    .line 1420
    invoke-virtual {v0, v13}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1421
    invoke-virtual {v0, v14}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1422
    invoke-virtual {v0, v11}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1423
    invoke-virtual {v0, v15}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 1424
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 1427
    .local v0, "locale":Ljava/util/Locale;
    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v18
    :try_end_379
    .catch Ljava/util/IllformedLocaleException; {:try_start_35c .. :try_end_379} :catch_3b1
    .catchall {:try_start_35c .. :try_end_379} :catchall_400

    move/from16 v19, v18

    .line 1428
    .local v19, "inListIndex":I
    move-object/from16 v18, v1

    move-wide/from16 v22, v9

    move/from16 v1, v19

    const/4 v9, -0x1

    .end local v9    # "localeToken":J
    .end local v19    # "inListIndex":I
    .restart local v1    # "inListIndex":I
    .local v22, "localeToken":J
    if-eq v1, v9, :cond_3ab

    .line 1429
    :try_start_384
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v16

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1430
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1429
    invoke-static {v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3ae

    .line 1432
    :cond_3ab
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3ae
    .catch Ljava/util/IllformedLocaleException; {:try_start_384 .. :try_end_3ae} :catch_3af
    .catchall {:try_start_384 .. :try_end_3ae} :catchall_400

    .line 1438
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "inListIndex":I
    :goto_3ae
    goto :goto_3e2

    .line 1434
    :catch_3af
    move-exception v0

    goto :goto_3b6

    .end local v22    # "localeToken":J
    .restart local v9    # "localeToken":J
    :catch_3b1
    move-exception v0

    move-object/from16 v18, v1

    move-wide/from16 v22, v9

    .line 1435
    .end local v9    # "localeToken":J
    .local v0, "e":Ljava/util/IllformedLocaleException;
    .restart local v22    # "localeToken":J
    :goto_3b6
    :try_start_3b6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    .end local v0    # "e":Ljava/util/IllformedLocaleException;
    :goto_3e2
    nop

    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v20    # "token":J
    .end local p0    # "this":Landroid/content/res/Configuration;
    .end local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .end local p2    # "fieldId":J
    throw v18

    .line 1504
    .end local v11    # "variant":Ljava/lang/String;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "country":Ljava/lang/String;
    .end local v22    # "localeToken":J
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .local v15, "token":J
    .restart local p0    # "this":Landroid/content/res/Configuration;
    .restart local p1    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .restart local p2    # "fieldId":J
    :catchall_3e4
    move-exception v0

    move-wide/from16 v20, v15

    move-object/from16 v1, p0

    :goto_3e9
    move-wide/from16 v3, v20

    .end local v15    # "token":J
    .restart local v20    # "token":J
    goto/16 :goto_45c

    .line 1384
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :pswitch_3ed
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    move-object v10, v5

    .end local v10    # "token":J
    .restart local v20    # "token":J
    const-wide v0, 0x10d00000003L

    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0
    :try_end_3fb
    .catchall {:try_start_3b6 .. :try_end_3fb} :catchall_400

    move-object/from16 v1, p0

    :try_start_3fd
    iput v0, v1, Landroid/content/res/Configuration;->mnc:I

    .line 1385
    goto :goto_42a

    .line 1504
    :catchall_400
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_427

    .line 1381
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :pswitch_404
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    move-object v10, v5

    .end local v10    # "token":J
    .restart local v20    # "token":J
    const-wide v13, 0x10d00000002L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->mcc:I

    .line 1382
    goto :goto_42a

    .line 1378
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :pswitch_415
    move-object/from16 v19, v9

    move-wide/from16 v20, v10

    move-object v10, v5

    .end local v10    # "token":J
    .restart local v20    # "token":J
    const-wide v13, 0x10200000001L

    invoke-virtual {v2, v13, v14}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F
    :try_end_425
    .catchall {:try_start_3fd .. :try_end_425} :catchall_426

    .line 1379
    goto :goto_42a

    .line 1504
    :catchall_426
    move-exception v0

    :goto_427
    move-wide/from16 v3, v20

    goto :goto_45c

    .line 1499
    :goto_42a
    move-object v5, v10

    move-object/from16 v9, v19

    move-wide/from16 v10, v20

    goto/16 :goto_1d

    .line 1504
    .end local v20    # "token":J
    .restart local v10    # "token":J
    :catchall_431
    move-exception v0

    move-wide/from16 v20, v10

    move-wide/from16 v3, v20

    .end local v10    # "token":J
    .restart local v20    # "token":J
    goto :goto_45c

    .end local v20    # "token":J
    .restart local v10    # "token":J
    :cond_437
    move-wide/from16 v20, v10

    .end local v10    # "token":J
    .restart local v20    # "token":J
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_453

    .line 1506
    new-instance v0, Landroid/os/LocaleList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/Locale;

    invoke-interface {v12, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Locale;

    invoke-direct {v0, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1508
    :cond_453
    move-wide/from16 v3, v20

    .end local v20    # "token":J
    .local v3, "token":J
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1509
    nop

    .line 1510
    return-void

    .line 1504
    .end local v3    # "token":J
    .restart local v10    # "token":J
    :catchall_45a
    move-exception v0

    move-wide v3, v10

    .end local v10    # "token":J
    .restart local v3    # "token":J
    :goto_45c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_476

    .line 1506
    new-instance v5, Landroid/os/LocaleList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/util/Locale;

    invoke-interface {v12, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    invoke-direct {v5, v6}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1508
    :cond_476
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1509
    throw v0

    :pswitch_data_47a
    .packed-switch 0x1
        :pswitch_415
        :pswitch_404
        :pswitch_3ed
        :pswitch_1b1
        :pswitch_199
        :pswitch_185
        :pswitch_171
        :pswitch_15d
        :pswitch_149
        :pswitch_135
        :pswitch_121
        :pswitch_10d
        :pswitch_f9
        :pswitch_e5
        :pswitch_d1
        :pswitch_bd
        :pswitch_a9
        :pswitch_95
        :pswitch_82
        :pswitch_5c
        :pswitch_46
        :pswitch_34
    .end packed-switch

    :pswitch_data_4aa
    .packed-switch 0x1
        :pswitch_205
        :pswitch_1f7
        :pswitch_1e9
        :pswitch_1db
    .end packed-switch
.end method

.method public blacklist setGrammaticalGender(I)V
    .registers 2
    .param p1, "grammaticalGender"    # I

    .line 2335
    iput p1, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 2336
    return-void
.end method

.method public whitelist setLayoutDirection(Ljava/util/Locale;)V
    .registers 5
    .param p1, "loc"    # Ljava/util/Locale;

    .line 2422
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2423
    .local v0, "layoutDirection":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 2425
    return-void
.end method

.method public whitelist setLocale(Ljava/util/Locale;)V
    .registers 5
    .param p1, "loc"    # Ljava/util/Locale;

    .line 2384
    if-nez p1, :cond_7

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    goto :goto_12

    :cond_7
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :goto_12
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 2385
    return-void
.end method

.method public whitelist setLocales(Landroid/os/LocaleList;)V
    .registers 5
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 2361
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2362
    .local v0, "oldList":Landroid/os/LocaleList;
    if-nez p1, :cond_9

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    goto :goto_a

    :cond_9
    move-object v1, p1

    :goto_a
    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 2363
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2364
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 2365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating configuration, locales updated from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Configuration"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    :cond_41
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 2369
    return-void
.end method

.method public whitelist setTo(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "o"    # Landroid/content/res/Configuration;

    .line 1085
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1086
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1087
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1088
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_14

    .line 1089
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_28

    .line 1090
    :cond_14
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1093
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1095
    :cond_28
    :goto_28
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1096
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1097
    iget v0, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 1098
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1099
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1100
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1101
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1102
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1103
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1104
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1105
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1106
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1107
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1108
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1109
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1110
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1111
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1112
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1113
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1114
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1115
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1116
    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1117
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1118
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 1119
    iget v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1120
    return-void
.end method

.method public blacklist setTo(Landroid/content/res/Configuration;II)V
    .registers 6
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "mask"    # I
    .param p3, "windowMask"    # I

    .line 1815
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    .line 1816
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1818
    :cond_9
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_11

    .line 1819
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1821
    :cond_11
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_19

    .line 1822
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1824
    :cond_19
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3d

    .line 1825
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1826
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1827
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1829
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1833
    :cond_3d
    and-int/lit16 v0, p2, 0x2000

    if-eqz v0, :cond_4c

    .line 1834
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    .line 1835
    .local v0, "deltaScreenLayoutDir":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    or-int/2addr v1, v0

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1837
    .end local v0    # "deltaScreenLayoutDir":I
    :cond_4c
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_54

    .line 1838
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1840
    :cond_54
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5c

    .line 1841
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1843
    :cond_5c
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_64

    .line 1844
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1846
    :cond_64
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_74

    .line 1847
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1848
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1849
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1851
    :cond_74
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_7c

    .line 1852
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1854
    :cond_7c
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_84

    .line 1855
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1857
    :cond_84
    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_91

    .line 1859
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1861
    :cond_91
    and-int/lit16 v0, p2, 0x4000

    if-eqz v0, :cond_99

    .line 1862
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1864
    :cond_99
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_a1

    .line 1865
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1867
    :cond_a1
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_ad

    .line 1868
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1869
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1871
    :cond_ad
    and-int/lit16 v0, p2, 0x800

    if-eqz v0, :cond_b5

    .line 1872
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1874
    :cond_b5
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_bd

    .line 1875
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1877
    :cond_bd
    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_c6

    .line 1878
    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1880
    :cond_c6
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_d2

    .line 1881
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1, p3}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;I)V

    .line 1883
    :cond_d2
    const/high16 v0, 0x10000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_db

    .line 1884
    iget v0, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1886
    :cond_db
    const v0, 0x8000

    and-int/2addr v0, p2

    if-eqz v0, :cond_e5

    .line 1887
    iget v0, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 1889
    :cond_e5
    return-void
.end method

.method public whitelist setToDefaults()V
    .registers 3

    .line 1573
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1574
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1575
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1576
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1577
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1578
    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1579
    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1580
    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1581
    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1582
    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1583
    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1584
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1585
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1586
    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1587
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1588
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1589
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1590
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1591
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1592
    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1593
    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1594
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 1595
    const v0, 0x7fffffff

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1596
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 1597
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1124
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1126
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_27

    .line 1128
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1129
    const-string/jumbo v2, "mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 1131
    :cond_27
    const-string v2, "?mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    :goto_2c
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    const v3, 0xffff

    if-eq v2, v3, :cond_3f

    .line 1134
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1135
    const-string/jumbo v2, "mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 1137
    :cond_3f
    const-string v2, "?mnc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    :goto_44
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1140
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    .line 1141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 1144
    :cond_58
    const-string v2, " ?localeList"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    :goto_5d
    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-lez v2, :cond_7d

    .line 1147
    iget v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    packed-switch v2, :pswitch_data_32c

    .line 1151
    const-string v2, " ?grgend"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 1150
    :pswitch_6c
    const-string v2, " masculine"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 1149
    :pswitch_72
    const-string v2, " feminine"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 1148
    :pswitch_78
    const-string v2, " neuter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    :cond_7d
    :goto_7d
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    .line 1155
    .local v2, "layoutDir":I
    sparse-switch v2, :sswitch_data_336

    .line 1159
    const-string v3, " layoutDir="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    shr-int/lit8 v3, v2, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a0

    .line 1158
    :sswitch_8f
    const-string v3, " ldrtl"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0

    .line 1157
    :sswitch_95
    const-string v3, " ldltr"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0

    .line 1156
    :sswitch_9b
    const-string v3, " ?layoutDir"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    :goto_a0
    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v4, "dp"

    if-eqz v3, :cond_b4

    .line 1163
    const-string v3, " sw"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b9

    .line 1165
    :cond_b4
    const-string v3, " ?swdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    :goto_b9
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v3, :cond_cb

    .line 1168
    const-string v3, " w"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d0

    .line 1170
    :cond_cb
    const-string v3, " ?wdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    :goto_d0
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v3, :cond_e2

    .line 1173
    const-string v3, " h"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e7

    .line 1175
    :cond_e2
    const-string v3, " ?hdp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    :goto_e7
    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v3, :cond_f9

    .line 1178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fe

    .line 1180
    :cond_f9
    const-string v1, " ?density"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    :goto_fe
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_344

    .line 1188
    const-string v1, " layoutSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_12f

    .line 1187
    :pswitch_112
    const-string v1, " xlrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12f

    .line 1186
    :pswitch_118
    const-string v1, " lrg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12f

    .line 1185
    :pswitch_11e
    const-string v1, " nrml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12f

    .line 1184
    :pswitch_124
    const-string v1, " smll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12f

    .line 1183
    :pswitch_12a
    const-string v1, " ?lsize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    :goto_12f
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_352

    .line 1195
    const-string v1, " layoutLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14f

    .line 1194
    :sswitch_143
    const-string v1, " long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14f

    .line 1193
    :sswitch_149
    goto :goto_14f

    .line 1192
    :sswitch_14a
    const-string v1, " ?long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    :goto_14f
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    sparse-switch v1, :sswitch_data_360

    .line 1202
    const-string v1, " dynamicRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_16f

    .line 1201
    :sswitch_163
    const-string v1, " hdr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16f

    .line 1200
    :sswitch_169
    goto :goto_16f

    .line 1199
    :sswitch_16a
    const-string v1, " ?ldr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    :goto_16f
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_36e

    .line 1209
    const-string v1, " wideColorGamut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_18f

    .line 1208
    :pswitch_183
    const-string v1, " widecg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18f

    .line 1207
    :pswitch_189
    goto :goto_18f

    .line 1206
    :pswitch_18a
    const-string v1, " ?wideColorGamut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    :goto_18f
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_378

    .line 1216
    const-string v1, " orien="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1b0

    .line 1214
    :pswitch_19f
    const-string v1, " land"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b0

    .line 1215
    :pswitch_1a5
    const-string v1, " port"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b0

    .line 1213
    :pswitch_1ab
    const-string v1, " ?orien"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    :goto_1b0
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_382

    .line 1227
    const-string v1, " uimode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1ee

    .line 1226
    :pswitch_1c4
    const-string v1, " vrheadset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ee

    .line 1225
    :pswitch_1ca
    const-string v1, " watch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ee

    .line 1224
    :pswitch_1d0
    const-string v1, " appliance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ee

    .line 1223
    :pswitch_1d6
    const-string v1, " television"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ee

    .line 1222
    :pswitch_1dc
    const-string v1, " car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ee

    .line 1221
    :pswitch_1e2
    const-string v1, " desk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ee

    .line 1220
    :pswitch_1e8
    goto :goto_1ee

    .line 1219
    :pswitch_1e9
    const-string v1, " ?uimode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    :goto_1ee
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    sparse-switch v1, :sswitch_data_396

    .line 1233
    const-string v1, " night="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_20e

    .line 1232
    :sswitch_202
    const-string v1, " night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20e

    .line 1231
    :sswitch_208
    goto :goto_20e

    .line 1230
    :sswitch_209
    const-string v1, " ?night"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    :goto_20e
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v1, :pswitch_data_3a4

    .line 1240
    const-string v1, " touch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_235

    .line 1239
    :pswitch_21e
    const-string v1, " finger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_235

    .line 1238
    :pswitch_224
    const-string v1, " stylus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_235

    .line 1237
    :pswitch_22a
    const-string v1, " -touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_235

    .line 1236
    :pswitch_230
    const-string v1, " ?touch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    :goto_235
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v1, :pswitch_data_3b0

    .line 1247
    const-string v1, " keys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_25c

    .line 1246
    :pswitch_245
    const-string v1, " 12key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25c

    .line 1245
    :pswitch_24b
    const-string v1, " qwerty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25c

    .line 1244
    :pswitch_251
    const-string v1, " -keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25c

    .line 1243
    :pswitch_257
    const-string v1, " ?keyb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    :goto_25c
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    const-string v3, "/"

    const-string v4, "/h"

    const-string v5, "/v"

    const-string v6, "/?"

    packed-switch v1, :pswitch_data_3bc

    .line 1254
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_283

    .line 1253
    :pswitch_272
    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_283

    .line 1252
    :pswitch_278
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_283

    .line 1251
    :pswitch_27c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_283

    .line 1250
    :pswitch_280
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    :goto_283
    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v1, :pswitch_data_3c8

    .line 1260
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_29c

    .line 1259
    :pswitch_291
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29c

    .line 1258
    :pswitch_295
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29c

    .line 1257
    :pswitch_299
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    :goto_29c
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v1, :pswitch_data_3d2

    .line 1268
    const-string v1, " nav="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2c9

    .line 1267
    :pswitch_2ac
    const-string v1, " wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c9

    .line 1266
    :pswitch_2b2
    const-string v1, " tball"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c9

    .line 1265
    :pswitch_2b8
    const-string v1, " dpad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c9

    .line 1264
    :pswitch_2be
    const-string v1, " -nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c9

    .line 1263
    :pswitch_2c4
    const-string v1, " ?nav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    :goto_2c9
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v1, :pswitch_data_3e0

    .line 1274
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2e2

    .line 1273
    :pswitch_2d7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e2

    .line 1272
    :pswitch_2db
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e2

    .line 1271
    :pswitch_2df
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    :goto_2e2
    const-string v1, " winConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1277
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v1, :cond_2fb

    .line 1278
    const-string v1, " as."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1280
    :cond_2fb
    iget v1, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v1, :cond_30a

    .line 1281
    const-string v1, " s."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1283
    :cond_30a
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_31c

    .line 1284
    const-string v1, " fontWeightAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_321

    .line 1287
    :cond_31c
    const-string v1, " ?fontWeightAdjustment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    :goto_321
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_32c
    .packed-switch 0x1
        :pswitch_78
        :pswitch_72
        :pswitch_6c
    .end packed-switch

    :sswitch_data_336
    .sparse-switch
        0x0 -> :sswitch_9b
        0x40 -> :sswitch_95
        0x80 -> :sswitch_8f
    .end sparse-switch

    :pswitch_data_344
    .packed-switch 0x0
        :pswitch_12a
        :pswitch_124
        :pswitch_11e
        :pswitch_118
        :pswitch_112
    .end packed-switch

    :sswitch_data_352
    .sparse-switch
        0x0 -> :sswitch_14a
        0x10 -> :sswitch_149
        0x20 -> :sswitch_143
    .end sparse-switch

    :sswitch_data_360
    .sparse-switch
        0x0 -> :sswitch_16a
        0x4 -> :sswitch_169
        0x8 -> :sswitch_163
    .end sparse-switch

    :pswitch_data_36e
    .packed-switch 0x0
        :pswitch_18a
        :pswitch_189
        :pswitch_183
    .end packed-switch

    :pswitch_data_378
    .packed-switch 0x0
        :pswitch_1ab
        :pswitch_1a5
        :pswitch_19f
    .end packed-switch

    :pswitch_data_382
    .packed-switch 0x0
        :pswitch_1e9
        :pswitch_1e8
        :pswitch_1e2
        :pswitch_1dc
        :pswitch_1d6
        :pswitch_1d0
        :pswitch_1ca
        :pswitch_1c4
    .end packed-switch

    :sswitch_data_396
    .sparse-switch
        0x0 -> :sswitch_209
        0x10 -> :sswitch_208
        0x20 -> :sswitch_202
    .end sparse-switch

    :pswitch_data_3a4
    .packed-switch 0x0
        :pswitch_230
        :pswitch_22a
        :pswitch_224
        :pswitch_21e
    .end packed-switch

    :pswitch_data_3b0
    .packed-switch 0x0
        :pswitch_257
        :pswitch_251
        :pswitch_24b
        :pswitch_245
    .end packed-switch

    :pswitch_data_3bc
    .packed-switch 0x0
        :pswitch_280
        :pswitch_27c
        :pswitch_278
        :pswitch_272
    .end packed-switch

    :pswitch_data_3c8
    .packed-switch 0x0
        :pswitch_299
        :pswitch_295
        :pswitch_291
    .end packed-switch

    :pswitch_data_3d2
    .packed-switch 0x0
        :pswitch_2c4
        :pswitch_2be
        :pswitch_2b8
        :pswitch_2b2
        :pswitch_2ac
    .end packed-switch

    :pswitch_data_3e0
    .packed-switch 0x0
        :pswitch_2df
        :pswitch_2db
        :pswitch_2d7
    .end packed-switch
.end method

.method public greylist-max-o unset()V
    .registers 2

    .line 1604
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1605
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1606
    return-void
.end method

.method public whitelist updateFrom(Landroid/content/res/Configuration;)I
    .registers 7
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .line 1622
    const/4 v0, 0x0

    .line 1623
    .local v0, "changed":I
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_17

    .line 1624
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 1625
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1627
    :cond_17
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v1, :cond_27

    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_27

    .line 1628
    or-int/lit8 v0, v0, 0x1

    .line 1629
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1631
    :cond_27
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v1, :cond_37

    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_37

    .line 1632
    or-int/lit8 v0, v0, 0x2

    .line 1633
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1635
    :cond_37
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1636
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 1637
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_70

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 1638
    or-int/lit8 v0, v0, 0x4

    .line 1639
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    .line 1641
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 1642
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1644
    or-int/lit16 v0, v0, 0x2000

    .line 1647
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1650
    :cond_70
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    .line 1651
    .local v1, "deltaScreenLayoutDir":I
    if-eqz v1, :cond_85

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_85

    .line 1653
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, -0xc1

    or-int/2addr v2, v1

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1654
    or-int/lit16 v0, v0, 0x2000

    .line 1656
    :cond_85
    iget-boolean v2, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_96

    iget-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_91

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_96

    .line 1658
    :cond_91
    or-int/lit8 v0, v0, 0x4

    .line 1659
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1661
    :cond_96
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_a6

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_a6

    .line 1663
    or-int/lit8 v0, v0, 0x8

    .line 1664
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1666
    :cond_a6
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_b6

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_b6

    .line 1668
    or-int/lit8 v0, v0, 0x10

    .line 1669
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v2, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1671
    :cond_b6
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_c6

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_c6

    .line 1673
    or-int/lit8 v0, v0, 0x20

    .line 1674
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1676
    :cond_c6
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_d6

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v3, :cond_d6

    .line 1678
    or-int/lit8 v0, v0, 0x20

    .line 1679
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1681
    :cond_d6
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_e6

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_e6

    .line 1683
    or-int/lit8 v0, v0, 0x40

    .line 1684
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    iput v2, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1686
    :cond_e6
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_f6

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_f6

    .line 1688
    or-int/lit8 v0, v0, 0x20

    .line 1689
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1691
    :cond_f6
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_106

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_106

    .line 1693
    or-int/lit16 v0, v0, 0x80

    .line 1694
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1696
    :cond_106
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_123

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    if-eq v2, v3, :cond_123

    .line 1699
    or-int/lit16 v0, v0, 0x100

    .line 1700
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, -0x10

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1703
    :cond_123
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    if-eqz v2, :cond_140

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x30

    if-eq v2, v3, :cond_140

    .line 1706
    or-int/lit16 v0, v0, 0x100

    .line 1707
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, -0x31

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1710
    :cond_140
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    if-eqz v2, :cond_15d

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0x300

    if-eq v2, v3, :cond_15d

    .line 1713
    or-int/lit16 v0, v0, 0x100

    .line 1714
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, -0x301

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0x300

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1717
    :cond_15d
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    iget v4, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/2addr v4, v3

    if-eq v2, v4, :cond_179

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eqz v2, :cond_179

    .line 1720
    or-int/lit16 v0, v0, 0x100

    .line 1721
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    const v4, -0x10000001

    and-int/2addr v2, v4

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1725
    :cond_179
    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_196

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    iget v4, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0x3

    if-eq v2, v4, :cond_196

    .line 1729
    or-int/lit16 v0, v0, 0x4000

    .line 1730
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, -0x4

    iget v4, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1734
    :cond_196
    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_1b3

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    iget v4, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0xc

    if-eq v2, v4, :cond_1b3

    .line 1737
    or-int/lit16 v0, v0, 0x4000

    .line 1738
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, -0xd

    iget v4, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->colorMode:I

    .line 1742
    :cond_1b3
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_1e1

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v4, :cond_1e1

    .line 1744
    or-int/lit16 v0, v0, 0x200

    .line 1745
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_1d0

    .line 1746
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x10

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1749
    :cond_1d0
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eqz v2, :cond_1e1

    .line 1750
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    or-int/2addr v2, v4

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1754
    :cond_1e1
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_1f1

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v4, :cond_1f1

    .line 1756
    or-int/lit16 v0, v0, 0x400

    .line 1757
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1759
    :cond_1f1
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_201

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v4, :cond_201

    .line 1761
    or-int/lit16 v0, v0, 0x400

    .line 1762
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1764
    :cond_201
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_211

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v4, :cond_211

    .line 1766
    or-int/lit16 v0, v0, 0x800

    .line 1767
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1769
    :cond_211
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_221

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v4, :cond_221

    .line 1771
    or-int/lit16 v0, v0, 0x1000

    .line 1772
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1774
    :cond_221
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v2, :cond_229

    .line 1775
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1777
    :cond_229
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v2, :cond_231

    .line 1778
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1780
    :cond_231
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v2, :cond_239

    .line 1781
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1783
    :cond_239
    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v2, :cond_24a

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iget v4, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v2, v4, :cond_24a

    .line 1784
    const/high16 v2, -0x80000000

    or-int/2addr v0, v2

    .line 1785
    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1787
    :cond_24a
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_252

    .line 1788
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    iput v2, p0, Landroid/content/res/Configuration;->seq:I

    .line 1790
    :cond_252
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v4}, Landroid/app/WindowConfiguration;->updateFrom(Landroid/app/WindowConfiguration;)I

    move-result v2

    if-eqz v2, :cond_25f

    .line 1791
    const/high16 v2, 0x20000000

    or-int/2addr v0, v2

    .line 1794
    :cond_25f
    iget v2, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_271

    iget v2, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iget v4, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eq v2, v4, :cond_271

    .line 1796
    or-int/2addr v0, v3

    .line 1797
    iget v2, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    iput v2, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1799
    :cond_271
    iget v2, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_284

    iget v2, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iget v3, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    if-eq v2, v3, :cond_284

    .line 1801
    const v2, 0x8000

    or-int/2addr v0, v2

    .line 1802
    iget v2, p1, Landroid/content/res/Configuration;->mGrammaticalGender:I

    iput v2, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    .line 1805
    :cond_284
    return v0
.end method

.method public greylist-max-o writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V
    .registers 12
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "metrics"    # Landroid/util/DisplayMetrics;

    .line 1524
    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v0, v1, :cond_b

    .line 1525
    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1526
    .local v0, "width":I
    iget v1, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v1, "height":I
    goto :goto_f

    .line 1529
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_b
    iget v0, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1531
    .restart local v0    # "width":I
    iget v1, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1534
    .restart local v1    # "height":I
    :goto_f
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1535
    .local v2, "token":J
    const-wide v4, 0x10b00000001L

    invoke-virtual {p0, p1, v4, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1536
    const-wide v4, 0x10d00000002L

    sget v6, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1537
    const-wide v4, 0x10d00000003L

    invoke-virtual {p1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1538
    const-wide v4, 0x10d00000004L

    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1539
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1540
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2090
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2091
    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2094
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    .line 2095
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2097
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_20

    .line 2098
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 2100
    :cond_20
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2102
    :goto_24
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2103
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2104
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2105
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2106
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2107
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2108
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2110
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2111
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2112
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2113
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2114
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2115
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2116
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2117
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2118
    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2119
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/app/WindowConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2120
    iget v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2121
    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2122
    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2123
    iget v0, p0, Landroid/content/res/Configuration;->mGrammaticalGender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2124
    return-void
.end method
