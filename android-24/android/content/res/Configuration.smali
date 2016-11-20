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

.field private static final XML_ATTR_LOCALES:Ljava/lang/String; = "locales"

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mLocaleList:Landroid/os/LocaleList;

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
    .line 55
    new-instance v0, Landroid/content/res/Configuration;

    #@2
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@5
    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@7
    .line 1324
    new-instance v0, Landroid/content/res/Configuration$1;

    #@9
    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    #@c
    .line 1323
    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 732
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    #@6
    .line 731
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "o"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 739
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@6
    .line 738
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1338
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 1337
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

.method public static configurationDiffToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "diff"    # I

    #@0
    .prologue
    .line 306
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 307
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v4, p0, 0x1

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 308
    const-string/jumbo v4, "CONFIG_MCC"

    #@c
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f
    .line 310
    :cond_0
    and-int/lit8 v4, p0, 0x2

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 311
    const-string/jumbo v4, "CONFIG_MNC"

    #@16
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19
    .line 313
    :cond_1
    and-int/lit8 v4, p0, 0x4

    #@1b
    if-eqz v4, :cond_2

    #@1d
    .line 314
    const-string/jumbo v4, "CONFIG_LOCALE"

    #@20
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 316
    :cond_2
    and-int/lit8 v4, p0, 0x8

    #@25
    if-eqz v4, :cond_3

    #@27
    .line 317
    const-string/jumbo v4, "CONFIG_TOUCHSCREEN"

    #@2a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 319
    :cond_3
    and-int/lit8 v4, p0, 0x10

    #@2f
    if-eqz v4, :cond_4

    #@31
    .line 320
    const-string/jumbo v4, "CONFIG_KEYBOARD"

    #@34
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 322
    :cond_4
    and-int/lit8 v4, p0, 0x20

    #@39
    if-eqz v4, :cond_5

    #@3b
    .line 323
    const-string/jumbo v4, "CONFIG_KEYBOARD_HIDDEN"

    #@3e
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 325
    :cond_5
    and-int/lit8 v4, p0, 0x40

    #@43
    if-eqz v4, :cond_6

    #@45
    .line 326
    const-string/jumbo v4, "CONFIG_NAVIGATION"

    #@48
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4b
    .line 328
    :cond_6
    and-int/lit16 v4, p0, 0x80

    #@4d
    if-eqz v4, :cond_7

    #@4f
    .line 329
    const-string/jumbo v4, "CONFIG_ORIENTATION"

    #@52
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@55
    .line 331
    :cond_7
    and-int/lit16 v4, p0, 0x100

    #@57
    if-eqz v4, :cond_8

    #@59
    .line 332
    const-string/jumbo v4, "CONFIG_SCREEN_LAYOUT"

    #@5c
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f
    .line 334
    :cond_8
    and-int/lit16 v4, p0, 0x200

    #@61
    if-eqz v4, :cond_9

    #@63
    .line 335
    const-string/jumbo v4, "CONFIG_UI_MODE"

    #@66
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@69
    .line 337
    :cond_9
    and-int/lit16 v4, p0, 0x400

    #@6b
    if-eqz v4, :cond_a

    #@6d
    .line 338
    const-string/jumbo v4, "CONFIG_SCREEN_SIZE"

    #@70
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@73
    .line 340
    :cond_a
    and-int/lit16 v4, p0, 0x800

    #@75
    if-eqz v4, :cond_b

    #@77
    .line 341
    const-string/jumbo v4, "CONFIG_SMALLEST_SCREEN_SIZE"

    #@7a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7d
    .line 343
    :cond_b
    and-int/lit16 v4, p0, 0x2000

    #@7f
    if-eqz v4, :cond_c

    #@81
    .line 344
    const-string/jumbo v4, "CONFIG_LAYOUT_DIRECTION"

    #@84
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@87
    .line 346
    :cond_c
    const/high16 v4, 0x40000000    # 2.0f

    #@89
    and-int/2addr v4, p0

    #@8a
    if-eqz v4, :cond_d

    #@8c
    .line 347
    const-string/jumbo v4, "CONFIG_FONT_SCALE"

    #@8f
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@92
    .line 349
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    #@94
    const-string/jumbo v4, "{"

    #@97
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9a
    .line 350
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@9b
    .local v1, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@9e
    move-result v3

    #@9f
    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_f

    #@a1
    .line 351
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a4
    move-result-object v4

    #@a5
    check-cast v4, Ljava/lang/String;

    #@a7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    .line 352
    add-int/lit8 v4, v3, -0x1

    #@ac
    if-eq v1, v4, :cond_e

    #@ae
    .line 353
    const-string/jumbo v4, ", "

    #@b1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    .line 350
    :cond_e
    add-int/lit8 v1, v1, 0x1

    #@b6
    goto :goto_0

    #@b7
    .line 356
    :cond_f
    const-string/jumbo v4, "}"

    #@ba
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v4

    #@c1
    return-object v4
.end method

.method private fixUpLocaleList()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 745
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@3
    if-nez v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@7
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 746
    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@f
    if-eqz v0, :cond_1

    #@11
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@13
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@15
    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 744
    :cond_1
    :goto_0
    return-void

    #@20
    .line 747
    :cond_2
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@22
    if-nez v0, :cond_3

    #@24
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    #@27
    move-result-object v0

    #@28
    :goto_1
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@2a
    goto :goto_0

    #@2b
    :cond_3
    new-instance v0, Landroid/os/LocaleList;

    #@2d
    const/4 v1, 0x1

    #@2e
    new-array v1, v1, [Ljava/util/Locale;

    #@30
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@32
    aput-object v2, v1, v3

    #@34
    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    #@37
    goto :goto_1
.end method

.method public static generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 3
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "change"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1817
    new-instance v0, Landroid/content/res/Configuration;

    #@2
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@5
    .line 1818
    .local v0, "delta":Landroid/content/res/Configuration;
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    #@7
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    #@9
    cmpl-float v1, v1, v2

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1819
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    #@f
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    #@11
    .line 1822
    :cond_0
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    #@13
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    #@15
    if-eq v1, v2, :cond_1

    #@17
    .line 1823
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    #@19
    iput v1, v0, Landroid/content/res/Configuration;->mcc:I

    #@1b
    .line 1826
    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    #@1d
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    #@1f
    if-eq v1, v2, :cond_2

    #@21
    .line 1827
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    #@23
    iput v1, v0, Landroid/content/res/Configuration;->mnc:I

    #@25
    .line 1830
    :cond_2
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    #@28
    .line 1831
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    #@2b
    .line 1832
    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@2d
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@2f
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v1

    #@33
    if-nez v1, :cond_3

    #@35
    .line 1833
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@37
    iput-object v1, v0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@39
    .line 1834
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@3b
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@3d
    .line 1837
    :cond_3
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@3f
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@41
    if-eq v1, v2, :cond_4

    #@43
    .line 1838
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@45
    iput v1, v0, Landroid/content/res/Configuration;->touchscreen:I

    #@47
    .line 1841
    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    #@49
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    #@4b
    if-eq v1, v2, :cond_5

    #@4d
    .line 1842
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    #@4f
    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    #@51
    .line 1845
    :cond_5
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@53
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@55
    if-eq v1, v2, :cond_6

    #@57
    .line 1846
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@59
    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@5b
    .line 1849
    :cond_6
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    #@5d
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    #@5f
    if-eq v1, v2, :cond_7

    #@61
    .line 1850
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    #@63
    iput v1, v0, Landroid/content/res/Configuration;->navigation:I

    #@65
    .line 1853
    :cond_7
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@67
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@69
    if-eq v1, v2, :cond_8

    #@6b
    .line 1854
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@6d
    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    #@6f
    .line 1857
    :cond_8
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    #@71
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    #@73
    if-eq v1, v2, :cond_9

    #@75
    .line 1858
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    #@77
    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    #@79
    .line 1861
    :cond_9
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@7b
    and-int/lit8 v1, v1, 0xf

    #@7d
    .line 1862
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@7f
    and-int/lit8 v2, v2, 0xf

    #@81
    .line 1861
    if-eq v1, v2, :cond_a

    #@83
    .line 1863
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@85
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@87
    and-int/lit8 v2, v2, 0xf

    #@89
    or-int/2addr v1, v2

    #@8a
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@8c
    .line 1866
    :cond_a
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@8e
    and-int/lit16 v1, v1, 0xc0

    #@90
    .line 1867
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@92
    and-int/lit16 v2, v2, 0xc0

    #@94
    .line 1866
    if-eq v1, v2, :cond_b

    #@96
    .line 1868
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@98
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@9a
    and-int/lit16 v2, v2, 0xc0

    #@9c
    or-int/2addr v1, v2

    #@9d
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@9f
    .line 1871
    :cond_b
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@a1
    and-int/lit8 v1, v1, 0x30

    #@a3
    .line 1872
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@a5
    and-int/lit8 v2, v2, 0x30

    #@a7
    .line 1871
    if-eq v1, v2, :cond_c

    #@a9
    .line 1873
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@ab
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@ad
    and-int/lit8 v2, v2, 0x30

    #@af
    or-int/2addr v1, v2

    #@b0
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@b2
    .line 1876
    :cond_c
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@b4
    and-int/lit16 v1, v1, 0x300

    #@b6
    .line 1877
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@b8
    and-int/lit16 v2, v2, 0x300

    #@ba
    .line 1876
    if-eq v1, v2, :cond_d

    #@bc
    .line 1878
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@be
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@c0
    and-int/lit16 v2, v2, 0x300

    #@c2
    or-int/2addr v1, v2

    #@c3
    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    #@c5
    .line 1881
    :cond_d
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    #@c7
    and-int/lit8 v1, v1, 0xf

    #@c9
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@cb
    and-int/lit8 v2, v2, 0xf

    #@cd
    if-eq v1, v2, :cond_e

    #@cf
    .line 1882
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    #@d1
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@d3
    and-int/lit8 v2, v2, 0xf

    #@d5
    or-int/2addr v1, v2

    #@d6
    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    #@d8
    .line 1885
    :cond_e
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    #@da
    and-int/lit8 v1, v1, 0x30

    #@dc
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@de
    and-int/lit8 v2, v2, 0x30

    #@e0
    if-eq v1, v2, :cond_f

    #@e2
    .line 1886
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    #@e4
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@e6
    and-int/lit8 v2, v2, 0x30

    #@e8
    or-int/2addr v1, v2

    #@e9
    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    #@eb
    .line 1889
    :cond_f
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@ed
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@ef
    if-eq v1, v2, :cond_10

    #@f1
    .line 1890
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@f3
    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@f5
    .line 1893
    :cond_10
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@f7
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@f9
    if-eq v1, v2, :cond_11

    #@fb
    .line 1894
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@fd
    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@ff
    .line 1897
    :cond_11
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@101
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@103
    if-eq v1, v2, :cond_12

    #@105
    .line 1898
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@107
    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@109
    .line 1901
    :cond_12
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@10b
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@10d
    if-eq v1, v2, :cond_13

    #@10f
    .line 1902
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@111
    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    #@113
    .line 1904
    :cond_13
    return-object v0
.end method

.method private static getScreenLayoutNoDirection(I)I
    .locals 1
    .param p0, "screenLayout"    # I

    #@0
    .prologue
    .line 1528
    and-int/lit16 v0, p0, -0xc1

    #@2
    return v0
.end method

.method public static localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;
    .locals 9
    .param p0, "locs"    # Landroid/os/LocaleList;

    #@0
    .prologue
    .line 1546
    new-instance v5, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1547
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    #@9
    move-result v7

    #@a
    if-ge v1, v7, :cond_6

    #@c
    .line 1548
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@f
    move-result-object v3

    #@10
    .line 1549
    .local v3, "loc":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@13
    move-result-object v7

    #@14
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@17
    move-result v7

    #@18
    if-eqz v7, :cond_2

    #@1a
    const/4 v2, 0x1

    #@1b
    .line 1550
    .local v2, "l":Z
    :goto_1
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@22
    move-result v7

    #@23
    if-eqz v7, :cond_3

    #@25
    const/4 v0, 0x1

    #@26
    .line 1551
    .local v0, "c":Z
    :goto_2
    invoke-virtual {v3}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_4

    #@30
    const/4 v4, 0x1

    #@31
    .line 1552
    .local v4, "s":Z
    :goto_3
    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_5

    #@3b
    const/4 v6, 0x1

    #@3c
    .line 1554
    .local v6, "v":Z
    :goto_4
    if-eqz v2, :cond_1

    #@3e
    .line 1555
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@41
    move-result v7

    #@42
    if-eqz v7, :cond_0

    #@44
    .line 1556
    const-string/jumbo v7, ","

    #@47
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 1558
    :cond_0
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 1559
    if-eqz v0, :cond_1

    #@53
    .line 1560
    const-string/jumbo v7, "-r"

    #@56
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 1561
    if-eqz v4, :cond_1

    #@63
    .line 1562
    const-string/jumbo v7, "-s"

    #@66
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v7

    #@6a
    invoke-virtual {v3}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    #@6d
    move-result-object v8

    #@6e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 1563
    if-eqz v6, :cond_1

    #@73
    .line 1564
    const-string/jumbo v7, "-v"

    #@76
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v7

    #@7a
    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 1547
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@83
    goto :goto_0

    #@84
    .line 1549
    .end local v0    # "c":Z
    .end local v2    # "l":Z
    .end local v4    # "s":Z
    .end local v6    # "v":Z
    :cond_2
    const/4 v2, 0x0

    #@85
    .restart local v2    # "l":Z
    goto :goto_1

    #@86
    .line 1550
    :cond_3
    const/4 v0, 0x0

    #@87
    .restart local v0    # "c":Z
    goto :goto_2

    #@88
    .line 1551
    :cond_4
    const/4 v4, 0x0

    #@89
    .restart local v4    # "s":Z
    goto :goto_3

    #@8a
    .line 1552
    :cond_5
    const/4 v6, 0x0

    #@8b
    .restart local v6    # "v":Z
    goto :goto_4

    #@8c
    .line 1570
    .end local v0    # "c":Z
    .end local v2    # "l":Z
    .end local v3    # "loc":Ljava/util/Locale;
    .end local v4    # "s":Z
    .end local v6    # "v":Z
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v7

    #@90
    return-object v7
.end method

.method public static needNewResources(II)Z
    .locals 2
    .param p0, "configChanges"    # I
    .param p1, "interestingChanges"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1214
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
    .line 1936
    const-string/jumbo v1, "fs"

    #@4
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@7
    move-result v1

    #@8
    .line 1935
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@b
    move-result v1

    #@c
    iput v1, p1, Landroid/content/res/Configuration;->fontScale:F

    #@e
    .line 1937
    const-string/jumbo v1, "mcc"

    #@11
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@14
    move-result v1

    #@15
    iput v1, p1, Landroid/content/res/Configuration;->mcc:I

    #@17
    .line 1938
    const-string/jumbo v1, "mnc"

    #@1a
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@1d
    move-result v1

    #@1e
    iput v1, p1, Landroid/content/res/Configuration;->mnc:I

    #@20
    .line 1940
    const-string/jumbo v1, "locales"

    #@23
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 1941
    .local v0, "localesStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@2d
    .line 1942
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@2f
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@35
    .line 1944
    const-string/jumbo v1, "touch"

    #@38
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@3b
    move-result v1

    #@3c
    iput v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@3e
    .line 1946
    const-string/jumbo v1, "key"

    #@41
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@44
    move-result v1

    #@45
    iput v1, p1, Landroid/content/res/Configuration;->keyboard:I

    #@47
    .line 1948
    const-string/jumbo v1, "keyHid"

    #@4a
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@4d
    move-result v1

    #@4e
    iput v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@50
    .line 1951
    const-string/jumbo v1, "hardKeyHid"

    #@53
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@56
    move-result v1

    #@57
    .line 1950
    iput v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@59
    .line 1953
    const-string/jumbo v1, "nav"

    #@5c
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@5f
    move-result v1

    #@60
    iput v1, p1, Landroid/content/res/Configuration;->navigation:I

    #@62
    .line 1955
    const-string/jumbo v1, "navHid"

    #@65
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@68
    move-result v1

    #@69
    iput v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@6b
    .line 1957
    const-string/jumbo v1, "ori"

    #@6e
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@71
    move-result v1

    #@72
    iput v1, p1, Landroid/content/res/Configuration;->orientation:I

    #@74
    .line 1959
    const-string/jumbo v1, "scrLay"

    #@77
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@7a
    move-result v1

    #@7b
    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@7d
    .line 1961
    const-string/jumbo v1, "ui"

    #@80
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@83
    move-result v1

    #@84
    iput v1, p1, Landroid/content/res/Configuration;->uiMode:I

    #@86
    .line 1962
    const-string/jumbo v1, "width"

    #@89
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@8c
    move-result v1

    #@8d
    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@8f
    .line 1964
    const-string/jumbo v1, "height"

    #@92
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@95
    move-result v1

    #@96
    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@98
    .line 1967
    const-string/jumbo v1, "sw"

    #@9b
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@9e
    move-result v1

    #@9f
    .line 1966
    iput v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@a1
    .line 1969
    const-string/jumbo v1, "density"

    #@a4
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@a7
    move-result v1

    #@a8
    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@aa
    .line 1934
    return-void
.end method

.method public static reduceScreenLayout(III)I
    .locals 6
    .param p0, "curLayout"    # I
    .param p1, "longSizeDp"    # I
    .param p2, "shortSizeDp"    # I

    #@0
    .prologue
    .line 251
    const/16 v4, 0x1d6

    #@2
    if-ge p1, v4, :cond_3

    #@4
    .line 254
    const/4 v3, 0x1

    #@5
    .line 255
    .local v3, "screenLayoutSize":I
    const/4 v2, 0x0

    #@6
    .line 256
    .local v2, "screenLayoutLong":Z
    const/4 v1, 0x0

    #@7
    .line 291
    .local v1, "screenLayoutCompatNeeded":Z
    :goto_0
    if-nez v2, :cond_0

    #@9
    .line 292
    and-int/lit8 v4, p0, -0x31

    #@b
    or-int/lit8 p0, v4, 0x10

    #@d
    .line 294
    :cond_0
    if-eqz v1, :cond_1

    #@f
    .line 295
    const/high16 v4, 0x10000000

    #@11
    or-int/2addr p0, v4

    #@12
    .line 297
    :cond_1
    and-int/lit8 v0, p0, 0xf

    #@14
    .line 298
    .local v0, "curSize":I
    if-ge v3, v0, :cond_2

    #@16
    .line 299
    and-int/lit8 v4, p0, -0x10

    #@18
    or-int p0, v4, v3

    #@1a
    .line 301
    :cond_2
    return p0

    #@1b
    .line 259
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
    .line 262
    const/4 v3, 0x4

    #@24
    .line 274
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
    .line 275
    :cond_4
    const/4 v1, 0x1

    #@2d
    .line 281
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
    .line 283
    const/4 v2, 0x1

    #@36
    .restart local v2    # "screenLayoutLong":Z
    goto :goto_0

    #@37
    .line 263
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
    .line 266
    const/4 v3, 0x3

    #@40
    .line 263
    .restart local v3    # "screenLayoutSize":I
    goto :goto_1

    #@41
    .line 268
    .end local v3    # "screenLayoutSize":I
    :cond_6
    const/4 v3, 0x2

    #@42
    .restart local v3    # "screenLayoutSize":I
    goto :goto_1

    #@43
    .line 277
    :cond_7
    const/4 v1, 0x0

    #@44
    .restart local v1    # "screenLayoutCompatNeeded":Z
    goto :goto_2

    #@45
    .line 285
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
    .line 236
    const v0, -0x10000040

    #@3
    and-int/2addr v0, p0

    #@4
    or-int/lit8 v0, v0, 0x24

    #@6
    return v0
.end method

.method public static resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 4
    .param p0, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1581
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1583
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1584
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "mcc"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    .line 1585
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    #@24
    if-eqz v2, :cond_0

    #@26
    .line 1586
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "mnc"

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f
    .line 1590
    :cond_0
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@41
    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_1

    #@47
    .line 1591
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@49
    invoke-static {v2}, Landroid/content/res/Configuration;->localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .line 1592
    .local v1, "resourceQualifier":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@50
    move-result v2

    #@51
    if-nez v2, :cond_1

    #@53
    .line 1593
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    .line 1597
    .end local v1    # "resourceQualifier":Ljava/lang/String;
    :cond_1
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@58
    and-int/lit16 v2, v2, 0xc0

    #@5a
    sparse-switch v2, :sswitch_data_0

    #@5d
    .line 1608
    :goto_0
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@5f
    if-eqz v2, :cond_2

    #@61
    .line 1609
    new-instance v2, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v3, "sw"

    #@69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@6f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    const-string/jumbo v3, "dp"

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v2

    #@7e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@81
    .line 1612
    :cond_2
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@83
    if-eqz v2, :cond_3

    #@85
    .line 1613
    new-instance v2, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v3, "w"

    #@8d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v2

    #@91
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    const-string/jumbo v3, "dp"

    #@9a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a5
    .line 1616
    :cond_3
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@a7
    if-eqz v2, :cond_4

    #@a9
    .line 1617
    new-instance v2, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v3, "h"

    #@b1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@b7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v2

    #@bb
    const-string/jumbo v3, "dp"

    #@be
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v2

    #@c2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v2

    #@c6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c9
    .line 1620
    :cond_4
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@cb
    and-int/lit8 v2, v2, 0xf

    #@cd
    packed-switch v2, :pswitch_data_0

    #@d0
    .line 1637
    :goto_1
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@d2
    and-int/lit8 v2, v2, 0x30

    #@d4
    sparse-switch v2, :sswitch_data_1

    #@d7
    .line 1648
    :goto_2
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@d9
    and-int/lit16 v2, v2, 0x300

    #@db
    sparse-switch v2, :sswitch_data_2

    #@de
    .line 1659
    :goto_3
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    #@e0
    packed-switch v2, :pswitch_data_1

    #@e3
    .line 1670
    :goto_4
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@e5
    and-int/lit8 v2, v2, 0xf

    #@e7
    packed-switch v2, :pswitch_data_2

    #@ea
    .line 1690
    :goto_5
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@ec
    and-int/lit8 v2, v2, 0x30

    #@ee
    sparse-switch v2, :sswitch_data_3

    #@f1
    .line 1701
    :goto_6
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@f3
    sparse-switch v2, :sswitch_data_4

    #@f6
    .line 1731
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@fd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@100
    move-result-object v2

    #@101
    const-string/jumbo v3, "dpi"

    #@104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v2

    #@108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v2

    #@10c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10f
    .line 1735
    :goto_8
    :sswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@111
    packed-switch v2, :pswitch_data_3

    #@114
    .line 1746
    :goto_9
    :pswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@116
    packed-switch v2, :pswitch_data_4

    #@119
    .line 1760
    :goto_a
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    #@11b
    packed-switch v2, :pswitch_data_5

    #@11e
    .line 1774
    :goto_b
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@120
    packed-switch v2, :pswitch_data_6

    #@123
    .line 1785
    :goto_c
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    #@125
    packed-switch v2, :pswitch_data_7

    #@128
    .line 1802
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v3, "v"

    #@130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v2

    #@134
    sget v3, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    #@136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@139
    move-result-object v2

    #@13a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v2

    #@13e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@141
    .line 1803
    const-string/jumbo v2, "-"

    #@144
    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@147
    move-result-object v2

    #@148
    return-object v2

    #@149
    .line 1599
    :sswitch_1
    const-string/jumbo v2, "ldltr"

    #@14c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14f
    goto/16 :goto_0

    #@151
    .line 1602
    :sswitch_2
    const-string/jumbo v2, "ldrtl"

    #@154
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@157
    goto/16 :goto_0

    #@159
    .line 1622
    :pswitch_1
    const-string/jumbo v2, "small"

    #@15c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15f
    goto/16 :goto_1

    #@161
    .line 1625
    :pswitch_2
    const-string/jumbo v2, "normal"

    #@164
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@167
    goto/16 :goto_1

    #@169
    .line 1628
    :pswitch_3
    const-string/jumbo v2, "large"

    #@16c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16f
    goto/16 :goto_1

    #@171
    .line 1631
    :pswitch_4
    const-string/jumbo v2, "xlarge"

    #@174
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@177
    goto/16 :goto_1

    #@179
    .line 1639
    :sswitch_3
    const-string/jumbo v2, "long"

    #@17c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17f
    goto/16 :goto_2

    #@181
    .line 1642
    :sswitch_4
    const-string/jumbo v2, "notlong"

    #@184
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@187
    goto/16 :goto_2

    #@189
    .line 1650
    :sswitch_5
    const-string/jumbo v2, "round"

    #@18c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18f
    goto/16 :goto_3

    #@191
    .line 1653
    :sswitch_6
    const-string/jumbo v2, "notround"

    #@194
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@197
    goto/16 :goto_3

    #@199
    .line 1661
    :pswitch_5
    const-string/jumbo v2, "land"

    #@19c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19f
    goto/16 :goto_4

    #@1a1
    .line 1664
    :pswitch_6
    const-string/jumbo v2, "port"

    #@1a4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a7
    goto/16 :goto_4

    #@1a9
    .line 1672
    :pswitch_7
    const-string/jumbo v2, "appliance"

    #@1ac
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1af
    goto/16 :goto_5

    #@1b1
    .line 1675
    :pswitch_8
    const-string/jumbo v2, "desk"

    #@1b4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b7
    goto/16 :goto_5

    #@1b9
    .line 1678
    :pswitch_9
    const-string/jumbo v2, "television"

    #@1bc
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1bf
    goto/16 :goto_5

    #@1c1
    .line 1681
    :pswitch_a
    const-string/jumbo v2, "car"

    #@1c4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c7
    goto/16 :goto_5

    #@1c9
    .line 1684
    :pswitch_b
    const-string/jumbo v2, "watch"

    #@1cc
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1cf
    goto/16 :goto_5

    #@1d1
    .line 1692
    :sswitch_7
    const-string/jumbo v2, "night"

    #@1d4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1d7
    goto/16 :goto_6

    #@1d9
    .line 1695
    :sswitch_8
    const-string/jumbo v2, "notnight"

    #@1dc
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1df
    goto/16 :goto_6

    #@1e1
    .line 1705
    :sswitch_9
    const-string/jumbo v2, "ldpi"

    #@1e4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e7
    goto/16 :goto_8

    #@1e9
    .line 1708
    :sswitch_a
    const-string/jumbo v2, "mdpi"

    #@1ec
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ef
    goto/16 :goto_8

    #@1f1
    .line 1711
    :sswitch_b
    const-string/jumbo v2, "tvdpi"

    #@1f4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f7
    goto/16 :goto_8

    #@1f9
    .line 1714
    :sswitch_c
    const-string/jumbo v2, "hdpi"

    #@1fc
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ff
    goto/16 :goto_8

    #@201
    .line 1717
    :sswitch_d
    const-string/jumbo v2, "xhdpi"

    #@204
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@207
    goto/16 :goto_8

    #@209
    .line 1720
    :sswitch_e
    const-string/jumbo v2, "xxhdpi"

    #@20c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20f
    goto/16 :goto_8

    #@211
    .line 1723
    :sswitch_f
    const-string/jumbo v2, "xxxhdpi"

    #@214
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@217
    goto/16 :goto_8

    #@219
    .line 1726
    :sswitch_10
    const-string/jumbo v2, "anydpi"

    #@21c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21f
    goto/16 :goto_8

    #@221
    .line 1729
    :sswitch_11
    const-string/jumbo v2, "nodpi"

    #@224
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@227
    goto/16 :goto_7

    #@229
    .line 1737
    :pswitch_c
    const-string/jumbo v2, "notouch"

    #@22c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22f
    goto/16 :goto_9

    #@231
    .line 1740
    :pswitch_d
    const-string/jumbo v2, "finger"

    #@234
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@237
    goto/16 :goto_9

    #@239
    .line 1748
    :pswitch_e
    const-string/jumbo v2, "keysexposed"

    #@23c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23f
    goto/16 :goto_a

    #@241
    .line 1751
    :pswitch_f
    const-string/jumbo v2, "keyshidden"

    #@244
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@247
    goto/16 :goto_a

    #@249
    .line 1754
    :pswitch_10
    const-string/jumbo v2, "keyssoft"

    #@24c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24f
    goto/16 :goto_a

    #@251
    .line 1762
    :pswitch_11
    const-string/jumbo v2, "nokeys"

    #@254
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@257
    goto/16 :goto_b

    #@259
    .line 1765
    :pswitch_12
    const-string/jumbo v2, "qwerty"

    #@25c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25f
    goto/16 :goto_b

    #@261
    .line 1768
    :pswitch_13
    const-string/jumbo v2, "12key"

    #@264
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@267
    goto/16 :goto_b

    #@269
    .line 1776
    :pswitch_14
    const-string/jumbo v2, "navexposed"

    #@26c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26f
    goto/16 :goto_c

    #@271
    .line 1779
    :pswitch_15
    const-string/jumbo v2, "navhidden"

    #@274
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@277
    goto/16 :goto_c

    #@279
    .line 1787
    :pswitch_16
    const-string/jumbo v2, "nonav"

    #@27c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27f
    goto/16 :goto_d

    #@281
    .line 1790
    :pswitch_17
    const-string/jumbo v2, "dpad"

    #@284
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@287
    goto/16 :goto_d

    #@289
    .line 1793
    :pswitch_18
    const-string/jumbo v2, "trackball"

    #@28c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28f
    goto/16 :goto_d

    #@291
    .line 1796
    :pswitch_19
    const-string/jumbo v2, "wheel"

    #@294
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@297
    goto/16 :goto_d

    #@299
    .line 1597
    nop

    #@29a
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
    .end sparse-switch

    #@2a4
    .line 1620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@2b0
    .line 1637
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_4
        0x20 -> :sswitch_3
    .end sparse-switch

    #@2ba
    .line 1648
    :sswitch_data_2
    .sparse-switch
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
    .end sparse-switch

    #@2c4
    .line 1659
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch

    #@2cc
    .line 1670
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_b
    .end packed-switch

    #@2da
    .line 1690
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_8
        0x20 -> :sswitch_7
    .end sparse-switch

    #@2e4
    .line 1701
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

    #@30e
    .line 1735
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch

    #@318
    .line 1746
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    #@322
    .line 1760
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    #@32c
    .line 1774
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
    .end packed-switch

    #@334
    .line 1785
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
    .line 1984
    const-string/jumbo v0, "fs"

    #@3
    .line 1985
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    #@5
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@8
    move-result v1

    #@9
    .line 1984
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@c
    .line 1986
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1987
    const-string/jumbo v0, "mcc"

    #@13
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    #@15
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@18
    .line 1989
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 1990
    const-string/jumbo v0, "mnc"

    #@1f
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    #@21
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@24
    .line 1992
    :cond_1
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    #@27
    .line 1993
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@29
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_2

    #@2f
    .line 1994
    const-string/jumbo v0, "locales"

    #@32
    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@34
    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    .line 1996
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@3d
    if-eqz v0, :cond_3

    #@3f
    .line 1997
    const-string/jumbo v0, "touch"

    #@42
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@44
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@47
    .line 1999
    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    #@49
    if-eqz v0, :cond_4

    #@4b
    .line 2000
    const-string/jumbo v0, "key"

    #@4e
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    #@50
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@53
    .line 2002
    :cond_4
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@55
    if-eqz v0, :cond_5

    #@57
    .line 2003
    const-string/jumbo v0, "keyHid"

    #@5a
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@5c
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@5f
    .line 2005
    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@61
    if-eqz v0, :cond_6

    #@63
    .line 2006
    const-string/jumbo v0, "hardKeyHid"

    #@66
    .line 2007
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@68
    .line 2006
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@6b
    .line 2009
    :cond_6
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    #@6d
    if-eqz v0, :cond_7

    #@6f
    .line 2010
    const-string/jumbo v0, "nav"

    #@72
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    #@74
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@77
    .line 2012
    :cond_7
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@79
    if-eqz v0, :cond_8

    #@7b
    .line 2013
    const-string/jumbo v0, "navHid"

    #@7e
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@80
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@83
    .line 2015
    :cond_8
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    #@85
    if-eqz v0, :cond_9

    #@87
    .line 2016
    const-string/jumbo v0, "ori"

    #@8a
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    #@8c
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@8f
    .line 2018
    :cond_9
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@91
    if-eqz v0, :cond_a

    #@93
    .line 2019
    const-string/jumbo v0, "scrLay"

    #@96
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@98
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@9b
    .line 2021
    :cond_a
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    #@9d
    if-eqz v0, :cond_b

    #@9f
    .line 2022
    const-string/jumbo v0, "ui"

    #@a2
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    #@a4
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@a7
    .line 2024
    :cond_b
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@a9
    if-eqz v0, :cond_c

    #@ab
    .line 2025
    const-string/jumbo v0, "width"

    #@ae
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@b0
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@b3
    .line 2027
    :cond_c
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@b5
    if-eqz v0, :cond_d

    #@b7
    .line 2028
    const-string/jumbo v0, "height"

    #@ba
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@bc
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@bf
    .line 2030
    :cond_d
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@c1
    if-eqz v0, :cond_e

    #@c3
    .line 2031
    const-string/jumbo v0, "sw"

    #@c6
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@c8
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@cb
    .line 2033
    :cond_e
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@cd
    if-eqz v0, :cond_f

    #@cf
    .line 2034
    const-string/jumbo v0, "density"

    #@d2
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@d4
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@d7
    .line 1983
    :cond_f
    return-void
.end method


# virtual methods
.method public clearLocales()V
    .locals 1

    #@0
    .prologue
    .line 1493
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@6
    .line 1494
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@9
    .line 1492
    return-void
.end method

.method public compareTo(Landroid/content/res/Configuration;)I
    .locals 11
    .param p1, "that"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, -0x1

    #@2
    .line 1343
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    #@4
    .line 1344
    .local v0, "a":F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    #@6
    .line 1345
    .local v1, "b":F
    cmpg-float v7, v0, v1

    #@8
    if-gez v7, :cond_0

    #@a
    return v9

    #@b
    .line 1346
    :cond_0
    cmpl-float v7, v0, v1

    #@d
    if-lez v7, :cond_1

    #@f
    return v10

    #@10
    .line 1347
    :cond_1
    iget v7, p0, Landroid/content/res/Configuration;->mcc:I

    #@12
    iget v8, p1, Landroid/content/res/Configuration;->mcc:I

    #@14
    sub-int v4, v7, v8

    #@16
    .line 1348
    .local v4, "n":I
    if-eqz v4, :cond_2

    #@18
    return v4

    #@19
    .line 1349
    :cond_2
    iget v7, p0, Landroid/content/res/Configuration;->mnc:I

    #@1b
    iget v8, p1, Landroid/content/res/Configuration;->mnc:I

    #@1d
    sub-int v4, v7, v8

    #@1f
    .line 1350
    if-eqz v4, :cond_3

    #@21
    return v4

    #@22
    .line 1352
    :cond_3
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    #@25
    .line 1353
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    #@28
    .line 1356
    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@2a
    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_4

    #@30
    .line 1357
    iget-object v7, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@32
    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    #@35
    move-result v7

    #@36
    if-nez v7, :cond_b

    #@38
    return v10

    #@39
    .line 1358
    :cond_4
    iget-object v7, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@3b
    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    #@3e
    move-result v7

    #@3f
    if-eqz v7, :cond_5

    #@41
    .line 1359
    return v9

    #@42
    .line 1361
    :cond_5
    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@44
    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    #@47
    move-result v7

    #@48
    iget-object v8, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@4a
    invoke-virtual {v8}, Landroid/os/LocaleList;->size()I

    #@4d
    move-result v8

    #@4e
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    #@51
    move-result v3

    #@52
    .line 1362
    .local v3, "minSize":I
    const/4 v2, 0x0

    #@53
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_a

    #@55
    .line 1363
    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@57
    invoke-virtual {v7, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@5a
    move-result-object v6

    #@5b
    .line 1364
    .local v6, "thisLocale":Ljava/util/Locale;
    iget-object v7, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@5d
    invoke-virtual {v7, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@60
    move-result-object v5

    #@61
    .line 1365
    .local v5, "thatLocale":Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@68
    move-result-object v8

    #@69
    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@6c
    move-result v4

    #@6d
    .line 1366
    if-eqz v4, :cond_6

    #@6f
    return v4

    #@70
    .line 1367
    :cond_6
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@7b
    move-result v4

    #@7c
    .line 1368
    if-eqz v4, :cond_7

    #@7e
    return v4

    #@7f
    .line 1369
    :cond_7
    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@82
    move-result-object v7

    #@83
    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@86
    move-result-object v8

    #@87
    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@8a
    move-result v4

    #@8b
    .line 1370
    if-eqz v4, :cond_8

    #@8d
    return v4

    #@8e
    .line 1371
    :cond_8
    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@91
    move-result-object v7

    #@92
    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@95
    move-result-object v8

    #@96
    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@99
    move-result v4

    #@9a
    .line 1372
    if-eqz v4, :cond_9

    #@9c
    return v4

    #@9d
    .line 1362
    :cond_9
    add-int/lit8 v2, v2, 0x1

    #@9f
    goto :goto_0

    #@a0
    .line 1374
    .end local v5    # "thatLocale":Ljava/util/Locale;
    .end local v6    # "thisLocale":Ljava/util/Locale;
    :cond_a
    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@a2
    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    #@a5
    move-result v7

    #@a6
    iget-object v8, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@a8
    invoke-virtual {v8}, Landroid/os/LocaleList;->size()I

    #@ab
    move-result v8

    #@ac
    sub-int v4, v7, v8

    #@ae
    .line 1375
    if-eqz v4, :cond_b

    #@b0
    return v4

    #@b1
    .line 1378
    .end local v2    # "i":I
    .end local v3    # "minSize":I
    :cond_b
    iget v7, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@b3
    iget v8, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@b5
    sub-int v4, v7, v8

    #@b7
    .line 1379
    if-eqz v4, :cond_c

    #@b9
    return v4

    #@ba
    .line 1380
    :cond_c
    iget v7, p0, Landroid/content/res/Configuration;->keyboard:I

    #@bc
    iget v8, p1, Landroid/content/res/Configuration;->keyboard:I

    #@be
    sub-int v4, v7, v8

    #@c0
    .line 1381
    if-eqz v4, :cond_d

    #@c2
    return v4

    #@c3
    .line 1382
    :cond_d
    iget v7, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@c5
    iget v8, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@c7
    sub-int v4, v7, v8

    #@c9
    .line 1383
    if-eqz v4, :cond_e

    #@cb
    return v4

    #@cc
    .line 1384
    :cond_e
    iget v7, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@ce
    iget v8, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@d0
    sub-int v4, v7, v8

    #@d2
    .line 1385
    if-eqz v4, :cond_f

    #@d4
    return v4

    #@d5
    .line 1386
    :cond_f
    iget v7, p0, Landroid/content/res/Configuration;->navigation:I

    #@d7
    iget v8, p1, Landroid/content/res/Configuration;->navigation:I

    #@d9
    sub-int v4, v7, v8

    #@db
    .line 1387
    if-eqz v4, :cond_10

    #@dd
    return v4

    #@de
    .line 1388
    :cond_10
    iget v7, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@e0
    iget v8, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@e2
    sub-int v4, v7, v8

    #@e4
    .line 1389
    if-eqz v4, :cond_11

    #@e6
    return v4

    #@e7
    .line 1390
    :cond_11
    iget v7, p0, Landroid/content/res/Configuration;->orientation:I

    #@e9
    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    #@eb
    sub-int v4, v7, v8

    #@ed
    .line 1391
    if-eqz v4, :cond_12

    #@ef
    return v4

    #@f0
    .line 1392
    :cond_12
    iget v7, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@f2
    iget v8, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@f4
    sub-int v4, v7, v8

    #@f6
    .line 1393
    if-eqz v4, :cond_13

    #@f8
    return v4

    #@f9
    .line 1394
    :cond_13
    iget v7, p0, Landroid/content/res/Configuration;->uiMode:I

    #@fb
    iget v8, p1, Landroid/content/res/Configuration;->uiMode:I

    #@fd
    sub-int v4, v7, v8

    #@ff
    .line 1395
    if-eqz v4, :cond_14

    #@101
    return v4

    #@102
    .line 1396
    :cond_14
    iget v7, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@104
    iget v8, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@106
    sub-int v4, v7, v8

    #@108
    .line 1397
    if-eqz v4, :cond_15

    #@10a
    return v4

    #@10b
    .line 1398
    :cond_15
    iget v7, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@10d
    iget v8, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@10f
    sub-int v4, v7, v8

    #@111
    .line 1399
    if-eqz v4, :cond_16

    #@113
    return v4

    #@114
    .line 1400
    :cond_16
    iget v7, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@116
    iget v8, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@118
    sub-int v4, v7, v8

    #@11a
    .line 1401
    if-eqz v4, :cond_17

    #@11c
    return v4

    #@11d
    .line 1402
    :cond_17
    iget v7, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@11f
    iget v8, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@121
    sub-int v4, v7, v8

    #@123
    .line 1404
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1341
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
    .line 1250
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .locals 4
    .param p1, "delta"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1121
    const/4 v0, 0x0

    #@1
    .line 1122
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
    .line 1123
    const/high16 v0, 0x40000000    # 2.0f

    #@12
    .line 1125
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
    .line 1126
    or-int/lit8 v0, v0, 0x1

    #@1e
    .line 1128
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
    .line 1129
    or-int/lit8 v0, v0, 0x2

    #@2a
    .line 1131
    :cond_2
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    #@2d
    .line 1132
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    #@30
    .line 1133
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@32
    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    #@35
    move-result v2

    #@36
    if-nez v2, :cond_3

    #@38
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@3a
    iget-object v3, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@3c
    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_12

    #@42
    .line 1137
    :cond_3
    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@44
    and-int/lit16 v1, v2, 0xc0

    #@46
    .line 1138
    .local v1, "deltaScreenLayoutDir":I
    if-eqz v1, :cond_4

    #@48
    .line 1139
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@4a
    and-int/lit16 v2, v2, 0xc0

    #@4c
    if-eq v1, v2, :cond_4

    #@4e
    .line 1140
    or-int/lit16 v0, v0, 0x2000

    #@50
    .line 1142
    :cond_4
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@52
    if-eqz v2, :cond_5

    #@54
    .line 1143
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@56
    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@58
    if-eq v2, v3, :cond_5

    #@5a
    .line 1144
    or-int/lit8 v0, v0, 0x8

    #@5c
    .line 1146
    :cond_5
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    #@5e
    if-eqz v2, :cond_6

    #@60
    .line 1147
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    #@62
    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    #@64
    if-eq v2, v3, :cond_6

    #@66
    .line 1148
    or-int/lit8 v0, v0, 0x10

    #@68
    .line 1150
    :cond_6
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@6a
    if-eqz v2, :cond_7

    #@6c
    .line 1151
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@6e
    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@70
    if-eq v2, v3, :cond_7

    #@72
    .line 1152
    or-int/lit8 v0, v0, 0x20

    #@74
    .line 1154
    :cond_7
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@76
    if-eqz v2, :cond_8

    #@78
    .line 1155
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@7a
    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@7c
    if-eq v2, v3, :cond_8

    #@7e
    .line 1156
    or-int/lit8 v0, v0, 0x20

    #@80
    .line 1158
    :cond_8
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    #@82
    if-eqz v2, :cond_9

    #@84
    .line 1159
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    #@86
    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    #@88
    if-eq v2, v3, :cond_9

    #@8a
    .line 1160
    or-int/lit8 v0, v0, 0x40

    #@8c
    .line 1162
    :cond_9
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@8e
    if-eqz v2, :cond_a

    #@90
    .line 1163
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@92
    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@94
    if-eq v2, v3, :cond_a

    #@96
    .line 1164
    or-int/lit8 v0, v0, 0x20

    #@98
    .line 1166
    :cond_a
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    #@9a
    if-eqz v2, :cond_b

    #@9c
    .line 1167
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    #@9e
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    #@a0
    if-eq v2, v3, :cond_b

    #@a2
    .line 1168
    or-int/lit16 v0, v0, 0x80

    #@a4
    .line 1170
    :cond_b
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@a6
    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    #@a9
    move-result v2

    #@aa
    if-eqz v2, :cond_c

    #@ac
    .line 1172
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@ae
    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    #@b1
    move-result v2

    #@b2
    .line 1173
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@b4
    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    #@b7
    move-result v3

    #@b8
    .line 1172
    if-eq v2, v3, :cond_c

    #@ba
    .line 1174
    or-int/lit16 v0, v0, 0x100

    #@bc
    .line 1176
    :cond_c
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@be
    if-eqz v2, :cond_d

    #@c0
    .line 1177
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@c2
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    #@c4
    if-eq v2, v3, :cond_d

    #@c6
    .line 1178
    or-int/lit16 v0, v0, 0x200

    #@c8
    .line 1180
    :cond_d
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@ca
    if-eqz v2, :cond_e

    #@cc
    .line 1181
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@ce
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@d0
    if-eq v2, v3, :cond_e

    #@d2
    .line 1182
    or-int/lit16 v0, v0, 0x400

    #@d4
    .line 1184
    :cond_e
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@d6
    if-eqz v2, :cond_f

    #@d8
    .line 1185
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@da
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@dc
    if-eq v2, v3, :cond_f

    #@de
    .line 1186
    or-int/lit16 v0, v0, 0x400

    #@e0
    .line 1188
    :cond_f
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@e2
    if-eqz v2, :cond_10

    #@e4
    .line 1189
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@e6
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@e8
    if-eq v2, v3, :cond_10

    #@ea
    .line 1190
    or-int/lit16 v0, v0, 0x800

    #@ec
    .line 1192
    :cond_10
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@ee
    if-eqz v2, :cond_11

    #@f0
    .line 1193
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@f2
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@f4
    if-eq v2, v3, :cond_11

    #@f6
    .line 1194
    or-int/lit16 v0, v0, 0x1000

    #@f8
    .line 1197
    :cond_11
    return v0

    #@f9
    .line 1134
    .end local v1    # "deltaScreenLayoutDir":I
    :cond_12
    or-int/lit8 v0, v0, 0x4

    #@fb
    .line 1135
    or-int/lit16 v0, v0, 0x2000

    #@fd
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
    .line 1408
    if-nez p1, :cond_0

    #@4
    return v1

    #@5
    .line 1409
    :cond_0
    if-ne p1, p0, :cond_1

    #@7
    return v0

    #@8
    .line 1410
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
    .line 1415
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
    .line 1416
    :catch_0
    move-exception v0

    #@8
    .line 1418
    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getLayoutDirection()I
    .locals 2

    #@0
    .prologue
    .line 1505
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@2
    and-int/lit16 v0, v0, 0xc0

    #@4
    const/16 v1, 0x80

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 1506
    const/4 v0, 0x1

    #@9
    .line 1505
    :goto_0
    return v0

    #@a
    .line 1506
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public getLocales()Landroid/os/LocaleList;
    .locals 1

    #@0
    .prologue
    .line 1450
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    #@3
    .line 1451
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@5
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 1423
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    #@2
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@5
    move-result v1

    #@6
    add-int/lit16 v0, v1, 0x20f

    #@8
    .line 1424
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    #@c
    add-int v0, v1, v2

    #@e
    .line 1425
    mul-int/lit8 v1, v0, 0x1f

    #@10
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    #@12
    add-int v0, v1, v2

    #@14
    .line 1426
    mul-int/lit8 v1, v0, 0x1f

    #@16
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@18
    invoke-virtual {v2}, Landroid/os/LocaleList;->hashCode()I

    #@1b
    move-result v2

    #@1c
    add-int v0, v1, v2

    #@1e
    .line 1427
    mul-int/lit8 v1, v0, 0x1f

    #@20
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@22
    add-int v0, v1, v2

    #@24
    .line 1428
    mul-int/lit8 v1, v0, 0x1f

    #@26
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    #@28
    add-int v0, v1, v2

    #@2a
    .line 1429
    mul-int/lit8 v1, v0, 0x1f

    #@2c
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@2e
    add-int v0, v1, v2

    #@30
    .line 1430
    mul-int/lit8 v1, v0, 0x1f

    #@32
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@34
    add-int v0, v1, v2

    #@36
    .line 1431
    mul-int/lit8 v1, v0, 0x1f

    #@38
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    #@3a
    add-int v0, v1, v2

    #@3c
    .line 1432
    mul-int/lit8 v1, v0, 0x1f

    #@3e
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@40
    add-int v0, v1, v2

    #@42
    .line 1433
    mul-int/lit8 v1, v0, 0x1f

    #@44
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    #@46
    add-int v0, v1, v2

    #@48
    .line 1434
    mul-int/lit8 v1, v0, 0x1f

    #@4a
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@4c
    add-int v0, v1, v2

    #@4e
    .line 1435
    mul-int/lit8 v1, v0, 0x1f

    #@50
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@52
    add-int v0, v1, v2

    #@54
    .line 1436
    mul-int/lit8 v1, v0, 0x1f

    #@56
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@58
    add-int v0, v1, v2

    #@5a
    .line 1437
    mul-int/lit8 v1, v0, 0x1f

    #@5c
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@5e
    add-int v0, v1, v2

    #@60
    .line 1438
    mul-int/lit8 v1, v0, 0x1f

    #@62
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@64
    add-int v0, v1, v2

    #@66
    .line 1439
    mul-int/lit8 v1, v0, 0x1f

    #@68
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@6a
    add-int v0, v1, v2

    #@6c
    .line 1440
    return v0
.end method

.method public isLayoutSizeAtLeast(I)Z
    .locals 3
    .param p1, "size"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 371
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@3
    and-int/lit8 v0, v2, 0xf

    #@5
    .line 372
    .local v0, "cur":I
    if-nez v0, :cond_0

    #@7
    return v1

    #@8
    .line 373
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
    .line 1223
    if-nez p1, :cond_0

    #@4
    .line 1225
    return v2

    #@5
    .line 1227
    :cond_0
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    #@7
    if-nez v3, :cond_1

    #@9
    .line 1230
    return v1

    #@a
    .line 1232
    :cond_1
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    #@c
    if-nez v3, :cond_2

    #@e
    .line 1235
    return v1

    #@f
    .line 1237
    :cond_2
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    #@11
    iget v4, p0, Landroid/content/res/Configuration;->seq:I

    #@13
    sub-int v0, v3, v4

    #@15
    .line 1238
    .local v0, "diff":I
    const/high16 v3, 0x10000

    #@17
    if-le v0, v3, :cond_3

    #@19
    .line 1241
    return v2

    #@1a
    .line 1243
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
    .line 1538
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
    .line 944
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    #@3
    .line 943
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1291
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@5
    move-result v5

    #@6
    iput v5, p0, Landroid/content/res/Configuration;->fontScale:F

    #@8
    .line 1292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v5

    #@c
    iput v5, p0, Landroid/content/res/Configuration;->mcc:I

    #@e
    .line 1293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v5

    #@12
    iput v5, p0, Landroid/content/res/Configuration;->mnc:I

    #@14
    .line 1295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v2

    #@18
    .line 1296
    .local v2, "localeListSize":I
    new-array v1, v2, [Ljava/util/Locale;

    #@1a
    .line 1297
    .local v1, "localeArray":[Ljava/util/Locale;
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@1d
    .line 1298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@24
    move-result-object v5

    #@25
    aput-object v5, v1, v0

    #@27
    .line 1297
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1300
    :cond_0
    new-instance v5, Landroid/os/LocaleList;

    #@2c
    invoke-direct {v5, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    #@2f
    iput-object v5, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@31
    .line 1301
    iget-object v5, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@33
    invoke-virtual {v5, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@36
    move-result-object v5

    #@37
    iput-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@39
    .line 1303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v5

    #@3d
    if-ne v5, v3, :cond_1

    #@3f
    :goto_1
    iput-boolean v3, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    #@41
    .line 1304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v3

    #@45
    iput v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@47
    .line 1305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v3

    #@4b
    iput v3, p0, Landroid/content/res/Configuration;->keyboard:I

    #@4d
    .line 1306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v3

    #@51
    iput v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@53
    .line 1307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v3

    #@57
    iput v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@59
    .line 1308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v3

    #@5d
    iput v3, p0, Landroid/content/res/Configuration;->navigation:I

    #@5f
    .line 1309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v3

    #@63
    iput v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@65
    .line 1310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v3

    #@69
    iput v3, p0, Landroid/content/res/Configuration;->orientation:I

    #@6b
    .line 1311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v3

    #@6f
    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@71
    .line 1312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@74
    move-result v3

    #@75
    iput v3, p0, Landroid/content/res/Configuration;->uiMode:I

    #@77
    .line 1313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v3

    #@7b
    iput v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@7d
    .line 1314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v3

    #@81
    iput v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@83
    .line 1315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@86
    move-result v3

    #@87
    iput v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@89
    .line 1316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v3

    #@8d
    iput v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@8f
    .line 1317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@92
    move-result v3

    #@93
    iput v3, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@95
    .line 1318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@98
    move-result v3

    #@99
    iput v3, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@9b
    .line 1319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9e
    move-result v3

    #@9f
    iput v3, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@a1
    .line 1320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a4
    move-result v3

    #@a5
    iput v3, p0, Landroid/content/res/Configuration;->seq:I

    #@a7
    .line 1290
    return-void

    #@a8
    :cond_1
    move v3, v4

    #@a9
    .line 1303
    goto :goto_1
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1522
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    #@3
    move-result v1

    #@4
    add-int/lit8 v0, v1, 0x1

    #@6
    .line 1523
    .local v0, "layoutDirection":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@8
    and-int/lit16 v1, v1, -0xc1

    #@a
    .line 1524
    shl-int/lit8 v2, v0, 0x6

    #@c
    .line 1523
    or-int/2addr v1, v2

    #@d
    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@f
    .line 1519
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1484
    if-nez p1, :cond_0

    #@2
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    #@5
    move-result-object v0

    #@6
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    #@9
    .line 1483
    return-void

    #@a
    .line 1484
    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    #@c
    const/4 v1, 0x1

    #@d
    new-array v1, v1, [Ljava/util/Locale;

    #@f
    const/4 v2, 0x0

    #@10
    aput-object p1, v1, v2

    #@12
    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    #@15
    goto :goto_0
.end method

.method public setLocales(Landroid/os/LocaleList;)V
    .locals 2
    .param p1, "locales"    # Landroid/os/LocaleList;

    #@0
    .prologue
    .line 1466
    if-nez p1, :cond_0

    #@2
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    #@5
    move-result-object p1

    #@6
    .end local p1    # "locales":Landroid/os/LocaleList;
    :cond_0
    iput-object p1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@8
    .line 1467
    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@11
    .line 1468
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@13
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    #@16
    .line 1465
    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "o"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 752
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    #@3
    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    #@5
    .line 753
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    #@7
    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    #@9
    .line 754
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    #@b
    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    #@d
    .line 755
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@f
    if-nez v1, :cond_0

    #@11
    :goto_0
    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@13
    .line 756
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    #@16
    .line 757
    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@18
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@1a
    .line 758
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    #@1c
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    #@1e
    .line 759
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@20
    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@22
    .line 760
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    #@24
    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    #@26
    .line 761
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@28
    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@2a
    .line 762
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@2c
    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@2e
    .line 763
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    #@30
    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    #@32
    .line 764
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@34
    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@36
    .line 765
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    #@38
    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    #@3a
    .line 766
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@3c
    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@3e
    .line 767
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    #@40
    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    #@42
    .line 768
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@44
    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@46
    .line 769
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@48
    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@4a
    .line 770
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@4c
    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@4e
    .line 771
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@50
    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@52
    .line 772
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@54
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@56
    .line 773
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@58
    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@5a
    .line 774
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@5c
    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@5e
    .line 775
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    #@60
    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    #@62
    .line 751
    return-void

    #@63
    .line 755
    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@65
    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    #@68
    move-result-object v0

    #@69
    check-cast v0, Ljava/util/Locale;

    #@6b
    goto :goto_0
.end method

.method public setToDefaults()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 921
    const/high16 v0, 0x3f800000    # 1.0f

    #@3
    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    #@5
    .line 922
    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    #@7
    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    #@9
    .line 923
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@f
    .line 924
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@12
    .line 925
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    #@14
    .line 926
    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@16
    .line 927
    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    #@18
    .line 928
    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@1a
    .line 929
    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@1c
    .line 930
    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    #@1e
    .line 931
    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@20
    .line 932
    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    #@22
    .line 933
    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@24
    .line 934
    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    #@26
    .line 935
    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@28
    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@2a
    .line 936
    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@2c
    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@2e
    .line 937
    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@30
    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@32
    .line 938
    iput v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@34
    .line 939
    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    #@36
    .line 920
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const/16 v2, 0x80

    #@4
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 780
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 781
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@12
    .line 782
    const-string/jumbo v2, " "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 783
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 784
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    .line 785
    const-string/jumbo v2, "mcc"

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 789
    :goto_0
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 790
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    .line 791
    const-string/jumbo v2, "mnc"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 795
    :goto_1
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    #@39
    .line 796
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@3b
    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    #@3e
    move-result v2

    #@3f
    if-nez v2, :cond_3

    #@41
    .line 797
    const-string/jumbo v2, " "

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 798
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    .line 802
    :goto_2
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@4e
    and-int/lit16 v0, v2, 0xc0

    #@50
    .line 803
    .local v0, "layoutDir":I
    sparse-switch v0, :sswitch_data_0

    #@53
    .line 807
    const-string/jumbo v2, " layoutDir="

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 808
    shr-int/lit8 v2, v0, 0x6

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    .line 810
    :goto_3
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@60
    if-eqz v2, :cond_4

    #@62
    .line 811
    const-string/jumbo v2, " sw"

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    const-string/jumbo v2, "dp"

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 815
    :goto_4
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@75
    if-eqz v2, :cond_5

    #@77
    .line 816
    const-string/jumbo v2, " w"

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    const-string/jumbo v2, "dp"

    #@85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    .line 820
    :goto_5
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@8a
    if-eqz v2, :cond_6

    #@8c
    .line 821
    const-string/jumbo v2, " h"

    #@8f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    const-string/jumbo v2, "dp"

    #@9a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    .line 825
    :goto_6
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@9f
    if-eqz v2, :cond_7

    #@a1
    .line 826
    const-string/jumbo v2, " "

    #@a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@a9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ac
    const-string/jumbo v2, "dpi"

    #@af
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    .line 830
    :goto_7
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@b4
    and-int/lit8 v2, v2, 0xf

    #@b6
    packed-switch v2, :pswitch_data_0

    #@b9
    .line 836
    const-string/jumbo v2, " layoutSize="

    #@bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    .line 837
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@c1
    and-int/lit8 v2, v2, 0xf

    #@c3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c6
    .line 839
    :goto_8
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@c8
    and-int/lit8 v2, v2, 0x30

    #@ca
    sparse-switch v2, :sswitch_data_1

    #@cd
    .line 843
    const-string/jumbo v2, " layoutLong="

    #@d0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    .line 844
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@d5
    and-int/lit8 v2, v2, 0x30

    #@d7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@da
    .line 846
    :goto_9
    :sswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    #@dc
    packed-switch v2, :pswitch_data_1

    #@df
    .line 850
    const-string/jumbo v2, " orien="

    #@e2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    #@e7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ea
    .line 852
    :goto_a
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@ec
    and-int/lit8 v2, v2, 0xf

    #@ee
    packed-switch v2, :pswitch_data_2

    #@f1
    .line 860
    const-string/jumbo v2, " uimode="

    #@f4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@f9
    and-int/lit8 v2, v2, 0xf

    #@fb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fe
    .line 862
    :goto_b
    :pswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@100
    and-int/lit8 v2, v2, 0x30

    #@102
    sparse-switch v2, :sswitch_data_2

    #@105
    .line 866
    const-string/jumbo v2, " night="

    #@108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@10d
    and-int/lit8 v2, v2, 0x30

    #@10f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@112
    .line 868
    :goto_c
    :sswitch_1
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@114
    packed-switch v2, :pswitch_data_3

    #@117
    .line 873
    const-string/jumbo v2, " touch="

    #@11a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@11f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@122
    .line 875
    :goto_d
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    #@124
    packed-switch v2, :pswitch_data_4

    #@127
    .line 880
    const-string/jumbo v2, " keys="

    #@12a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    #@12f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@132
    .line 882
    :goto_e
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@134
    packed-switch v2, :pswitch_data_5

    #@137
    .line 887
    const-string/jumbo v2, "/"

    #@13a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@13f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@142
    .line 889
    :goto_f
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@144
    packed-switch v2, :pswitch_data_6

    #@147
    .line 893
    const-string/jumbo v2, "/"

    #@14a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@14f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@152
    .line 895
    :goto_10
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    #@154
    packed-switch v2, :pswitch_data_7

    #@157
    .line 901
    const-string/jumbo v2, " nav="

    #@15a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    #@15f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@162
    .line 903
    :goto_11
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@164
    packed-switch v2, :pswitch_data_8

    #@167
    .line 907
    const-string/jumbo v2, "/"

    #@16a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@16f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@172
    .line 909
    :goto_12
    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    #@174
    if-eqz v2, :cond_0

    #@176
    .line 910
    const-string/jumbo v2, " s."

    #@179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    .line 911
    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    #@17e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@181
    .line 913
    :cond_0
    const/16 v2, 0x7d

    #@183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@186
    .line 914
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v2

    #@18a
    return-object v2

    #@18b
    .line 787
    .end local v0    # "layoutDir":I
    :cond_1
    const-string/jumbo v2, "?mcc"

    #@18e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    goto/16 :goto_0

    #@193
    .line 793
    :cond_2
    const-string/jumbo v2, "?mnc"

    #@196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    goto/16 :goto_1

    #@19b
    .line 800
    :cond_3
    const-string/jumbo v2, " ?localeList"

    #@19e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    goto/16 :goto_2

    #@1a3
    .line 804
    .restart local v0    # "layoutDir":I
    :sswitch_2
    const-string/jumbo v2, " ?layoutDir"

    #@1a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    goto/16 :goto_3

    #@1ab
    .line 805
    :sswitch_3
    const-string/jumbo v2, " ldltr"

    #@1ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    goto/16 :goto_3

    #@1b3
    .line 806
    :sswitch_4
    const-string/jumbo v2, " ldrtl"

    #@1b6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    goto/16 :goto_3

    #@1bb
    .line 813
    :cond_4
    const-string/jumbo v2, " ?swdp"

    #@1be
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    goto/16 :goto_4

    #@1c3
    .line 818
    :cond_5
    const-string/jumbo v2, " ?wdp"

    #@1c6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    goto/16 :goto_5

    #@1cb
    .line 823
    :cond_6
    const-string/jumbo v2, " ?hdp"

    #@1ce
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    goto/16 :goto_6

    #@1d3
    .line 828
    :cond_7
    const-string/jumbo v2, " ?density"

    #@1d6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d9
    goto/16 :goto_7

    #@1db
    .line 831
    :pswitch_1
    const-string/jumbo v2, " ?lsize"

    #@1de
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    goto/16 :goto_8

    #@1e3
    .line 832
    :pswitch_2
    const-string/jumbo v2, " smll"

    #@1e6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e9
    goto/16 :goto_8

    #@1eb
    .line 833
    :pswitch_3
    const-string/jumbo v2, " nrml"

    #@1ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    goto/16 :goto_8

    #@1f3
    .line 834
    :pswitch_4
    const-string/jumbo v2, " lrg"

    #@1f6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    goto/16 :goto_8

    #@1fb
    .line 835
    :pswitch_5
    const-string/jumbo v2, " xlrg"

    #@1fe
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    goto/16 :goto_8

    #@203
    .line 840
    :sswitch_5
    const-string/jumbo v2, " ?long"

    #@206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@209
    goto/16 :goto_9

    #@20b
    .line 842
    :sswitch_6
    const-string/jumbo v2, " long"

    #@20e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    goto/16 :goto_9

    #@213
    .line 847
    :pswitch_6
    const-string/jumbo v2, " ?orien"

    #@216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@219
    goto/16 :goto_a

    #@21b
    .line 848
    :pswitch_7
    const-string/jumbo v2, " land"

    #@21e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    goto/16 :goto_a

    #@223
    .line 849
    :pswitch_8
    const-string/jumbo v2, " port"

    #@226
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@229
    goto/16 :goto_a

    #@22b
    .line 853
    :pswitch_9
    const-string/jumbo v2, " ?uimode"

    #@22e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@231
    goto/16 :goto_b

    #@233
    .line 855
    :pswitch_a
    const-string/jumbo v2, " desk"

    #@236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    goto/16 :goto_b

    #@23b
    .line 856
    :pswitch_b
    const-string/jumbo v2, " car"

    #@23e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@241
    goto/16 :goto_b

    #@243
    .line 857
    :pswitch_c
    const-string/jumbo v2, " television"

    #@246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@249
    goto/16 :goto_b

    #@24b
    .line 858
    :pswitch_d
    const-string/jumbo v2, " appliance"

    #@24e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@251
    goto/16 :goto_b

    #@253
    .line 859
    :pswitch_e
    const-string/jumbo v2, " watch"

    #@256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@259
    goto/16 :goto_b

    #@25b
    .line 863
    :sswitch_7
    const-string/jumbo v2, " ?night"

    #@25e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@261
    goto/16 :goto_c

    #@263
    .line 865
    :sswitch_8
    const-string/jumbo v2, " night"

    #@266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@269
    goto/16 :goto_c

    #@26b
    .line 869
    :pswitch_f
    const-string/jumbo v2, " ?touch"

    #@26e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@271
    goto/16 :goto_d

    #@273
    .line 870
    :pswitch_10
    const-string/jumbo v2, " -touch"

    #@276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@279
    goto/16 :goto_d

    #@27b
    .line 871
    :pswitch_11
    const-string/jumbo v2, " stylus"

    #@27e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@281
    goto/16 :goto_d

    #@283
    .line 872
    :pswitch_12
    const-string/jumbo v2, " finger"

    #@286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@289
    goto/16 :goto_d

    #@28b
    .line 876
    :pswitch_13
    const-string/jumbo v2, " ?keyb"

    #@28e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@291
    goto/16 :goto_e

    #@293
    .line 877
    :pswitch_14
    const-string/jumbo v2, " -keyb"

    #@296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@299
    goto/16 :goto_e

    #@29b
    .line 878
    :pswitch_15
    const-string/jumbo v2, " qwerty"

    #@29e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a1
    goto/16 :goto_e

    #@2a3
    .line 879
    :pswitch_16
    const-string/jumbo v2, " 12key"

    #@2a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a9
    goto/16 :goto_e

    #@2ab
    .line 883
    :pswitch_17
    const-string/jumbo v2, "/?"

    #@2ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b1
    goto/16 :goto_f

    #@2b3
    .line 884
    :pswitch_18
    const-string/jumbo v2, "/v"

    #@2b6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b9
    goto/16 :goto_f

    #@2bb
    .line 885
    :pswitch_19
    const-string/jumbo v2, "/h"

    #@2be
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c1
    goto/16 :goto_f

    #@2c3
    .line 886
    :pswitch_1a
    const-string/jumbo v2, "/s"

    #@2c6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c9
    goto/16 :goto_f

    #@2cb
    .line 890
    :pswitch_1b
    const-string/jumbo v2, "/?"

    #@2ce
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d1
    goto/16 :goto_10

    #@2d3
    .line 891
    :pswitch_1c
    const-string/jumbo v2, "/v"

    #@2d6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d9
    goto/16 :goto_10

    #@2db
    .line 892
    :pswitch_1d
    const-string/jumbo v2, "/h"

    #@2de
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e1
    goto/16 :goto_10

    #@2e3
    .line 896
    :pswitch_1e
    const-string/jumbo v2, " ?nav"

    #@2e6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e9
    goto/16 :goto_11

    #@2eb
    .line 897
    :pswitch_1f
    const-string/jumbo v2, " -nav"

    #@2ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f1
    goto/16 :goto_11

    #@2f3
    .line 898
    :pswitch_20
    const-string/jumbo v2, " dpad"

    #@2f6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f9
    goto/16 :goto_11

    #@2fb
    .line 899
    :pswitch_21
    const-string/jumbo v2, " tball"

    #@2fe
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@301
    goto/16 :goto_11

    #@303
    .line 900
    :pswitch_22
    const-string/jumbo v2, " wheel"

    #@306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@309
    goto/16 :goto_11

    #@30b
    .line 904
    :pswitch_23
    const-string/jumbo v2, "/?"

    #@30e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@311
    goto/16 :goto_12

    #@313
    .line 905
    :pswitch_24
    const-string/jumbo v2, "/v"

    #@316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@319
    goto/16 :goto_12

    #@31b
    .line 906
    :pswitch_25
    const-string/jumbo v2, "/h"

    #@31e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@321
    goto/16 :goto_12

    #@323
    .line 803
    nop

    #@324
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    #@332
    .line 830
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    #@340
    .line 839
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x10 -> :sswitch_0
        0x20 -> :sswitch_6
    .end sparse-switch

    #@34e
    .line 846
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch

    #@358
    .line 852
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

    #@36a
    .line 862
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x10 -> :sswitch_1
        0x20 -> :sswitch_8
    .end sparse-switch

    #@378
    .line 868
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    #@384
    .line 875
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    #@390
    .line 882
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    #@39c
    .line 889
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    #@3a6
    .line 895
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch

    #@3b4
    .line 903
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_23
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .locals 4
    .param p1, "delta"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 955
    const/4 v0, 0x0

    #@1
    .line 956
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
    .line 957
    const/high16 v0, 0x40000000    # 2.0f

    #@12
    .line 958
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    #@14
    iput v2, p0, Landroid/content/res/Configuration;->fontScale:F

    #@16
    .line 960
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    #@18
    if-eqz v2, :cond_1

    #@1a
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    #@1c
    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    #@1e
    if-eq v2, v3, :cond_1

    #@20
    .line 961
    or-int/lit8 v0, v0, 0x1

    #@22
    .line 962
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    #@24
    iput v2, p0, Landroid/content/res/Configuration;->mcc:I

    #@26
    .line 964
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    #@28
    if-eqz v2, :cond_2

    #@2a
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    #@2c
    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    #@2e
    if-eq v2, v3, :cond_2

    #@30
    .line 965
    or-int/lit8 v0, v0, 0x2

    #@32
    .line 966
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    #@34
    iput v2, p0, Landroid/content/res/Configuration;->mnc:I

    #@36
    .line 968
    :cond_2
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    #@39
    .line 969
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    #@3c
    .line 970
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@3e
    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    #@41
    move-result v2

    #@42
    if-nez v2, :cond_3

    #@44
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@46
    iget-object v3, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@48
    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_19

    #@4e
    .line 983
    :cond_3
    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@50
    and-int/lit16 v1, v2, 0xc0

    #@52
    .line 984
    .local v1, "deltaScreenLayoutDir":I
    if-eqz v1, :cond_4

    #@54
    .line 985
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@56
    and-int/lit16 v2, v2, 0xc0

    #@58
    if-eq v1, v2, :cond_4

    #@5a
    .line 986
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@5c
    and-int/lit16 v2, v2, -0xc1

    #@5e
    or-int/2addr v2, v1

    #@5f
    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@61
    .line 987
    or-int/lit16 v0, v0, 0x2000

    #@63
    .line 989
    :cond_4
    iget-boolean v2, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    #@65
    if-eqz v2, :cond_6

    #@67
    iget-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    #@69
    if-eqz v2, :cond_5

    #@6b
    and-int/lit8 v2, v0, 0x4

    #@6d
    if-eqz v2, :cond_6

    #@6f
    .line 991
    :cond_5
    or-int/lit8 v0, v0, 0x4

    #@71
    .line 992
    const/4 v2, 0x1

    #@72
    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    #@74
    .line 994
    :cond_6
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@76
    if-eqz v2, :cond_7

    #@78
    .line 995
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@7a
    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@7c
    if-eq v2, v3, :cond_7

    #@7e
    .line 996
    or-int/lit8 v0, v0, 0x8

    #@80
    .line 997
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    #@82
    iput v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@84
    .line 999
    :cond_7
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    #@86
    if-eqz v2, :cond_8

    #@88
    .line 1000
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    #@8a
    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    #@8c
    if-eq v2, v3, :cond_8

    #@8e
    .line 1001
    or-int/lit8 v0, v0, 0x10

    #@90
    .line 1002
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    #@92
    iput v2, p0, Landroid/content/res/Configuration;->keyboard:I

    #@94
    .line 1004
    :cond_8
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@96
    if-eqz v2, :cond_9

    #@98
    .line 1005
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@9a
    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@9c
    if-eq v2, v3, :cond_9

    #@9e
    .line 1006
    or-int/lit8 v0, v0, 0x20

    #@a0
    .line 1007
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    #@a2
    iput v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@a4
    .line 1009
    :cond_9
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@a6
    if-eqz v2, :cond_a

    #@a8
    .line 1010
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@aa
    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@ac
    if-eq v2, v3, :cond_a

    #@ae
    .line 1011
    or-int/lit8 v0, v0, 0x20

    #@b0
    .line 1012
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@b2
    iput v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@b4
    .line 1014
    :cond_a
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    #@b6
    if-eqz v2, :cond_b

    #@b8
    .line 1015
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    #@ba
    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    #@bc
    if-eq v2, v3, :cond_b

    #@be
    .line 1016
    or-int/lit8 v0, v0, 0x40

    #@c0
    .line 1017
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    #@c2
    iput v2, p0, Landroid/content/res/Configuration;->navigation:I

    #@c4
    .line 1019
    :cond_b
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@c6
    if-eqz v2, :cond_c

    #@c8
    .line 1020
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@ca
    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@cc
    if-eq v2, v3, :cond_c

    #@ce
    .line 1021
    or-int/lit8 v0, v0, 0x20

    #@d0
    .line 1022
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    #@d2
    iput v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@d4
    .line 1024
    :cond_c
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    #@d6
    if-eqz v2, :cond_d

    #@d8
    .line 1025
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    #@da
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    #@dc
    if-eq v2, v3, :cond_d

    #@de
    .line 1026
    or-int/lit16 v0, v0, 0x80

    #@e0
    .line 1027
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    #@e2
    iput v2, p0, Landroid/content/res/Configuration;->orientation:I

    #@e4
    .line 1029
    :cond_d
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@e6
    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    #@e9
    move-result v2

    #@ea
    if-eqz v2, :cond_e

    #@ec
    .line 1031
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@ee
    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    #@f1
    move-result v2

    #@f2
    .line 1032
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@f4
    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    #@f7
    move-result v3

    #@f8
    .line 1031
    if-eq v2, v3, :cond_e

    #@fa
    .line 1033
    or-int/lit16 v0, v0, 0x100

    #@fc
    .line 1035
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@fe
    and-int/lit16 v2, v2, 0xc0

    #@100
    if-nez v2, :cond_1a

    #@102
    .line 1036
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@104
    and-int/lit16 v2, v2, 0xc0

    #@106
    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@108
    or-int/2addr v2, v3

    #@109
    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@10b
    .line 1041
    :cond_e
    :goto_1
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@10d
    if-eqz v2, :cond_10

    #@10f
    .line 1042
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@111
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    #@113
    if-eq v2, v3, :cond_10

    #@115
    .line 1043
    or-int/lit16 v0, v0, 0x200

    #@117
    .line 1044
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@119
    and-int/lit8 v2, v2, 0xf

    #@11b
    if-eqz v2, :cond_f

    #@11d
    .line 1045
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@11f
    and-int/lit8 v2, v2, -0x10

    #@121
    .line 1046
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    #@123
    and-int/lit8 v3, v3, 0xf

    #@125
    .line 1045
    or-int/2addr v2, v3

    #@126
    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@128
    .line 1048
    :cond_f
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    #@12a
    and-int/lit8 v2, v2, 0x30

    #@12c
    if-eqz v2, :cond_10

    #@12e
    .line 1049
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@130
    and-int/lit8 v2, v2, -0x31

    #@132
    .line 1050
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    #@134
    and-int/lit8 v3, v3, 0x30

    #@136
    .line 1049
    or-int/2addr v2, v3

    #@137
    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    #@139
    .line 1053
    :cond_10
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@13b
    if-eqz v2, :cond_11

    #@13d
    .line 1054
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@13f
    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@141
    if-eq v2, v3, :cond_11

    #@143
    .line 1055
    or-int/lit16 v0, v0, 0x400

    #@145
    .line 1056
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@147
    iput v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@149
    .line 1058
    :cond_11
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@14b
    if-eqz v2, :cond_12

    #@14d
    .line 1059
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@14f
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@151
    if-eq v2, v3, :cond_12

    #@153
    .line 1060
    or-int/lit16 v0, v0, 0x400

    #@155
    .line 1061
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@157
    iput v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@159
    .line 1063
    :cond_12
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@15b
    if-eqz v2, :cond_13

    #@15d
    .line 1064
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@15f
    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@161
    if-eq v2, v3, :cond_13

    #@163
    .line 1065
    or-int/lit16 v0, v0, 0x800

    #@165
    .line 1066
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@167
    iput v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@169
    .line 1068
    :cond_13
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@16b
    if-eqz v2, :cond_14

    #@16d
    .line 1069
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@16f
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@171
    if-eq v2, v3, :cond_14

    #@173
    .line 1070
    or-int/lit16 v0, v0, 0x1000

    #@175
    .line 1071
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    #@177
    iput v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@179
    .line 1073
    :cond_14
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@17b
    if-eqz v2, :cond_15

    #@17d
    .line 1074
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@17f
    iput v2, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@181
    .line 1076
    :cond_15
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@183
    if-eqz v2, :cond_16

    #@185
    .line 1077
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@187
    iput v2, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@189
    .line 1079
    :cond_16
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@18b
    if-eqz v2, :cond_17

    #@18d
    .line 1080
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@18f
    iput v2, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@191
    .line 1082
    :cond_17
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    #@193
    if-eqz v2, :cond_18

    #@195
    .line 1083
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    #@197
    iput v2, p0, Landroid/content/res/Configuration;->seq:I

    #@199
    .line 1086
    :cond_18
    return v0

    #@19a
    .line 971
    .end local v1    # "deltaScreenLayoutDir":I
    :cond_19
    or-int/lit8 v0, v0, 0x4

    #@19c
    .line 972
    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@19e
    iput-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@1a0
    .line 974
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@1a2
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@1a4
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@1a7
    move-result v2

    #@1a8
    if-nez v2, :cond_3

    #@1aa
    .line 975
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@1ac
    invoke-virtual {v2}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    #@1af
    move-result-object v2

    #@1b0
    check-cast v2, Ljava/util/Locale;

    #@1b2
    iput-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@1b4
    .line 977
    or-int/lit16 v0, v0, 0x2000

    #@1b6
    .line 980
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@1b8
    invoke-virtual {p0, v2}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    #@1bb
    goto/16 :goto_0

    #@1bd
    .line 1038
    .restart local v1    # "deltaScreenLayoutDir":I
    :cond_1a
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@1bf
    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@1c1
    goto/16 :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1254
    iget v3, p0, Landroid/content/res/Configuration;->fontScale:F

    #@2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    #@5
    .line 1255
    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    #@7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1256
    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    #@c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1258
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    #@12
    .line 1259
    iget-object v3, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@14
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    #@17
    move-result v2

    #@18
    .line 1260
    .local v2, "localeListSize":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1261
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@1e
    .line 1262
    iget-object v3, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    #@20
    invoke-virtual {v3, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@23
    move-result-object v1

    #@24
    .line 1263
    .local v1, "l":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2b
    .line 1261
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1266
    .end local v1    # "l":Ljava/util/Locale;
    :cond_0
    iget-boolean v3, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    #@30
    if-eqz v3, :cond_1

    #@32
    .line 1267
    const/4 v3, 0x1

    #@33
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 1271
    :goto_1
    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    #@38
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 1272
    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    #@3d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 1273
    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    #@42
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@45
    .line 1274
    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@47
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 1275
    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    #@4c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 1276
    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    #@51
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@54
    .line 1277
    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    #@56
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@59
    .line 1278
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@5b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5e
    .line 1279
    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    #@60
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@63
    .line 1280
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@65
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@68
    .line 1281
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@6a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6d
    .line 1282
    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@6f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@72
    .line 1283
    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    #@74
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@77
    .line 1284
    iget v3, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    #@79
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7c
    .line 1285
    iget v3, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    #@7e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@81
    .line 1286
    iget v3, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    #@83
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@86
    .line 1287
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    #@88
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@8b
    .line 1253
    return-void

    #@8c
    .line 1269
    :cond_1
    const/4 v3, 0x0

    #@8d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@90
    goto :goto_1
.end method
