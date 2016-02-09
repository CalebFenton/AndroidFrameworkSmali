.class public abstract Landroid_maps_conflict_avoidance/com/google/common/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static ADS_CLIENT:Ljava/lang/String;

.field protected static ALT_ARROWS_ENABLED:Z

.field protected static ALT_DOWN:I

.field protected static ALT_LEFT:I

.field private static ALT_NUMBER_KEYS:[I

.field protected static ALT_RIGHT:I

.field protected static ALT_UP:I

.field private static CARRIER:Ljava/lang/String;

.field private static DISTRIBUTION_CHANNEL:Ljava/lang/String;

.field public static KEY_BACK:I

.field public static KEY_CLEAR:I

.field public static KEY_MENU:I

.field public static KEY_OK:I

.field public static KEY_POUND:I

.field public static KEY_SIDE_DOWN:I

.field public static KEY_SIDE_SELECT:I

.field public static KEY_SIDE_UP:I

.field public static KEY_SOFT_LEFT:I

.field public static KEY_SOFT_MIDDLE:I

.field public static KEY_SOFT_RIGHT:I

.field public static KEY_STAR:I

.field public static KEY_TALK:I

.field public static KEY_VOICE_SEARCH:I

.field public static QWERTY_KEYBOARD:Z

.field public static REVERSE_SOFTKEYS:Z

.field public static SOFTKEYS_ON_SIDE_IN_LANDSCAPE:Z

.field public static SOFTKEY_HEIGHT:I

.field public static USE_NATIVE_COMMANDS:Z

.field public static USE_NATIVE_MENUS:Z

.field private static instance:Landroid_maps_conflict_avoidance/com/google/common/Config;


# instance fields
.field private final applicationStartTime:J

.field private final clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field private countryCode:Ljava/lang/String;

.field private i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, -0x270f

    #@2
    .line 50
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_BACK:I

    #@4
    .line 59
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    #@6
    .line 65
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_MIDDLE:I

    #@8
    .line 72
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    #@a
    const/16 v0, 0x2a

    #@c
    .line 73
    sput v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_STAR:I

    #@e
    const/16 v0, 0x23

    #@10
    .line 74
    sput v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_POUND:I

    #@12
    .line 75
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_MENU:I

    #@14
    .line 76
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_OK:I

    #@16
    .line 77
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_TALK:I

    #@18
    .line 78
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_VOICE_SEARCH:I

    #@1a
    .line 87
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_CLEAR:I

    #@1c
    .line 95
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_UP:I

    #@1e
    .line 96
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_DOWN:I

    #@20
    .line 97
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_SELECT:I

    #@22
    .line 100
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_UP:I

    #@24
    .line 101
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_DOWN:I

    #@26
    .line 102
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_LEFT:I

    #@28
    .line 103
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_RIGHT:I

    #@2a
    .line 109
    const/4 v0, 0x0

    #@2b
    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_ARROWS_ENABLED:Z

    #@2d
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string/jumbo v0, ""

    #@6
    .line 221
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->countryCode:Ljava/lang/String;

    #@8
    .line 249
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/GenericClock;

    #@a
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/GenericClock;-><init>()V

    #@d
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@f
    .line 256
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@11
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    #@14
    move-result-wide v0

    #@15
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->applicationStartTime:J

    #@17
    return-void
.end method

.method public static getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;
    .locals 1

    #@0
    .prologue
    .line 236
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->instance:Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@2
    return-object v0
.end method

.method public static declared-synchronized getLocale()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const-class v1, Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@2
    monitor-enter v1

    #@3
    .line 638
    :try_start_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->instance:Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@5
    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    #@7
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->getUiLocale()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public static isChinaVersion()Z
    .locals 1

    #@0
    .prologue
    .line 733
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method private static parseAltArrowKeys(Ljava/lang/String;)V
    .locals 3
    .param p0, "altArrowKeys"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x4

    #@2
    .line 412
    invoke-static {v1, p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->parseAltKeys(ILjava/lang/String;)[I

    #@5
    move-result-object v0

    #@6
    .line 413
    .local v0, "altKeys":[I
    if-nez v0, :cond_0

    #@8
    .line 420
    :goto_0
    return-void

    #@9
    .line 414
    :cond_0
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_ARROWS_ENABLED:Z

    #@b
    const/4 v1, 0x0

    #@c
    .line 415
    aget v1, v0, v1

    #@e
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_UP:I

    #@10
    .line 416
    aget v1, v0, v2

    #@12
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_LEFT:I

    #@14
    const/4 v1, 0x2

    #@15
    .line 417
    aget v1, v0, v1

    #@17
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_DOWN:I

    #@19
    const/4 v1, 0x3

    #@1a
    .line 418
    aget v1, v0, v1

    #@1c
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_RIGHT:I

    #@1e
    goto :goto_0
.end method

.method private static parseAltKeys(ILjava/lang/String;)[I
    .locals 10
    .param p0, "numberOfKeys"    # I
    .param p1, "altKeys"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 438
    if-nez p1, :cond_1

    #@3
    .line 439
    :cond_0
    return-object v9

    #@4
    .line 438
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v8

    #@8
    if-eqz v8, :cond_0

    #@a
    .line 443
    :try_start_0
    new-array v5, p0, [I

    #@c
    .local v5, "keyCodes":[I
    const/4 v6, 0x0

    #@d
    .local v6, "lastComma":I
    const/4 v2, 0x0

    #@e
    .local v2, "index":I
    const/4 v7, 0x0

    #@f
    .local v7, "nextComma":I
    move v3, v2

    #@10
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    const-string/jumbo v8, ","

    #@13
    .line 447
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@16
    move-result v7

    #@17
    const/4 v8, -0x1

    #@18
    if-ne v7, v8, :cond_2

    #@1a
    .line 454
    add-int/lit8 v2, v3, 0x1

    #@1c
    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@23
    move-result v8

    #@24
    aput v8, v5, v3

    #@26
    .line 457
    if-ne v2, p0, :cond_3

    #@28
    .line 463
    return-object v5

    #@29
    .line 448
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_2
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .line 449
    .local v4, "key":Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    #@2f
    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@32
    move-result v8

    #@33
    aput v8, v5, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    #@35
    .line 450
    add-int/lit8 v6, v7, 0x1

    #@37
    move v3, v2

    #@38
    .line 451
    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    #@39
    .line 460
    .end local v3    # "index":I
    .end local v4    # "key":Ljava/lang/String;
    .restart local v2    # "index":I
    :cond_3
    return-object v9

    #@3a
    .line 463
    .end local v2    # "index":I
    .end local v5    # "keyCodes":[I
    .end local v6    # "lastComma":I
    .end local v7    # "nextComma":I
    :catch_0
    move-exception v1

    #@3b
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v8, "CONFIG"

    #@3e
    .line 465
    invoke-static {v8, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@41
    .line 470
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    return-object v9

    #@42
    .line 468
    :catch_1
    move-exception v0

    #@43
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v8, "CONFIG"

    #@46
    .line 467
    invoke-static {v8, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@49
    goto :goto_1
.end method

.method private static parseAltNumberKeys(Ljava/lang/String;)V
    .locals 1
    .param p0, "altNumberKeys"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v0, 0xc

    #@2
    .line 427
    invoke-static {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->parseAltKeys(ILjava/lang/String;)[I

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/Config;->ALT_NUMBER_KEYS:[I

    #@8
    .line 428
    return-void
.end method

.method public static setConfig(Landroid_maps_conflict_avoidance/com/google/common/Config;)V
    .locals 0
    .param p0, "config"    # Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@0
    .prologue
    .line 228
    sput-object p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->instance:Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@2
    .line 229
    return-void
.end method


# virtual methods
.method protected getAdsClientInternal()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    const-string/jumbo v0, "AdsClient"

    #@3
    .line 380
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public abstract getAppProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 839
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 840
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    #@7
    .line 854
    :cond_0
    return p2

    #@8
    :cond_1
    const-string/jumbo v1, "true"

    #@b
    .line 841
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_2

    #@11
    const-string/jumbo v1, "false"

    #@14
    .line 843
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 844
    return v2

    #@1b
    .line 842
    :cond_2
    const/4 v1, 0x1

    #@1c
    return v1
.end method

.method public getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .locals 1

    #@0
    .prologue
    .line 995
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@2
    return-object v0
.end method

.method public abstract getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    const-string/jumbo v0, "DistributionChannel"

    #@3
    .line 371
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method protected getI18n()Landroid_maps_conflict_avoidance/com/google/common/I18n;
    .locals 1

    #@0
    .prologue
    .line 646
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    #@2
    return-object v0
.end method

.method public abstract getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;
.end method

.method public abstract getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getIntProperty(Ljava/lang/String;I)I
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 819
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 820
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 831
    :goto_0
    return p2

    #@7
    .line 822
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    return v1

    #@c
    :catch_0
    move-exception v1

    #@d
    goto :goto_0
.end method

.method public abstract getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
.end method

.method public abstract getPixelsPerInch()I
.end method

.method protected init()V
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 264
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    #@4
    if-eqz v2, :cond_2

    #@6
    :goto_0
    const-string/jumbo v2, "microedition.platform"

    #@9
    .line 271
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 272
    .local v0, "platform":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@f
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 273
    :goto_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getDistributionChannelInternal()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    #@19
    .line 274
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    #@1b
    if-eqz v2, :cond_4

    #@1d
    .line 277
    :goto_2
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAdsClientInternal()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    #@23
    .line 278
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    #@25
    if-eqz v2, :cond_5

    #@27
    :goto_3
    const-string/jumbo v2, "Carrier"

    #@2a
    .line 281
    invoke-virtual {p0, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->CARRIER:Ljava/lang/String;

    #@30
    .line 282
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->CARRIER:Ljava/lang/String;

    #@32
    if-eqz v2, :cond_6

    #@34
    :goto_4
    const-string/jumbo v2, "BackKey"

    #@37
    .line 285
    sget v5, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_BACK:I

    #@39
    invoke-virtual {p0, v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    #@3c
    move-result v2

    #@3d
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_BACK:I

    #@3f
    const-string/jumbo v2, "LeftSoftKey"

    #@42
    .line 286
    sget v5, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    #@44
    invoke-virtual {p0, v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    #@47
    move-result v2

    #@48
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    #@4a
    const-string/jumbo v2, "MiddleSoftKey"

    #@4d
    .line 287
    sget v5, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_MIDDLE:I

    #@4f
    invoke-virtual {p0, v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    #@52
    move-result v2

    #@53
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_MIDDLE:I

    #@55
    const-string/jumbo v2, "RightSoftKey"

    #@58
    .line 288
    sget v5, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    #@5a
    invoke-virtual {p0, v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    #@5d
    move-result v2

    #@5e
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    #@60
    const-string/jumbo v2, "ReverseSoftkeys"

    #@63
    const-string/jumbo v5, "nokia"

    #@66
    .line 289
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@69
    move-result v5

    #@6a
    invoke-virtual {p0, v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@6d
    move-result v2

    #@6e
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->REVERSE_SOFTKEYS:Z

    #@70
    const-string/jumbo v2, "SoftkeysOnSideInLandscape"

    #@73
    .line 291
    invoke-virtual {p0, v2, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@76
    move-result v2

    #@77
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->SOFTKEYS_ON_SIDE_IN_LANDSCAPE:Z

    #@79
    const-string/jumbo v2, "SideUpKey"

    #@7c
    .line 293
    sget v5, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_UP:I

    #@7e
    invoke-virtual {p0, v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    #@81
    move-result v2

    #@82
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_UP:I

    #@84
    const-string/jumbo v2, "SideDownKey"

    #@87
    .line 294
    sget v5, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_DOWN:I

    #@89
    invoke-virtual {p0, v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    #@8c
    move-result v2

    #@8d
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_DOWN:I

    #@8f
    const-string/jumbo v2, "SideSelectKey"

    #@92
    .line 295
    sget v5, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_SELECT:I

    #@94
    invoke-virtual {p0, v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    #@97
    move-result v2

    #@98
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SIDE_SELECT:I

    #@9a
    const-string/jumbo v2, "QwertyKeyboard"

    #@9d
    .line 296
    invoke-virtual {p0, v2, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@a0
    move-result v2

    #@a1
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->QWERTY_KEYBOARD:Z

    #@a3
    .line 300
    sget-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->REVERSE_SOFTKEYS:Z

    #@a5
    if-nez v2, :cond_7

    #@a7
    :goto_5
    const-string/jumbo v2, "MenuKey"

    #@aa
    .line 306
    sget v5, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_MENU:I

    #@ac
    invoke-virtual {p0, v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    #@af
    move-result v2

    #@b0
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_MENU:I

    #@b2
    const-string/jumbo v2, "SelectKey"

    #@b5
    .line 307
    sget v5, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_OK:I

    #@b7
    invoke-virtual {p0, v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    #@ba
    move-result v2

    #@bb
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_OK:I

    #@bd
    const-string/jumbo v2, "TalkKey"

    #@c0
    .line 308
    sget v5, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_TALK:I

    #@c2
    invoke-virtual {p0, v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    #@c5
    move-result v2

    #@c6
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_TALK:I

    #@c8
    const-string/jumbo v2, "VoiceSearchKey"

    #@cb
    .line 312
    sget v5, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_VOICE_SEARCH:I

    #@cd
    invoke-virtual {p0, v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    #@d0
    move-result v2

    #@d1
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_VOICE_SEARCH:I

    #@d3
    const-string/jumbo v2, "ClearKey"

    #@d6
    .line 313
    sget v5, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_CLEAR:I

    #@d8
    invoke-virtual {p0, v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    #@db
    move-result v2

    #@dc
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_CLEAR:I

    #@de
    const-string/jumbo v5, "UseNativeCommands"

    #@e1
    const-string/jumbo v2, "nokia"

    #@e4
    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e7
    move-result v2

    #@e8
    if-eqz v2, :cond_8

    #@ea
    :cond_0
    move v2, v4

    #@eb
    :goto_6
    invoke-virtual {p0, v5, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@ee
    move-result v2

    #@ef
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_COMMANDS:Z

    #@f1
    const-string/jumbo v2, "UseNativeMenus"

    #@f4
    .line 319
    invoke-virtual {p0, v2, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@f7
    move-result v2

    #@f8
    sput-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_MENUS:Z

    #@fa
    const-string/jumbo v2, "SoftkeyHeight"

    #@fd
    .line 320
    invoke-virtual {p0, v2, v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getIntProperty(Ljava/lang/String;I)I

    #@100
    move-result v2

    #@101
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->SOFTKEY_HEIGHT:I

    #@103
    const-string/jumbo v2, "AltNumberKeys"

    #@106
    .line 322
    invoke-virtual {p0, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    #@109
    move-result-object v2

    #@10a
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->parseAltNumberKeys(Ljava/lang/String;)V

    #@10d
    const-string/jumbo v2, "AltArrowKeys"

    #@110
    .line 323
    invoke-virtual {p0, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    #@113
    move-result-object v2

    #@114
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->parseAltArrowKeys(Ljava/lang/String;)V

    #@117
    .line 325
    sget-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_MENUS:Z

    #@119
    if-nez v2, :cond_9

    #@11b
    .line 333
    :cond_1
    :goto_7
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->setupGzipper()V

    #@11e
    .line 334
    return-void

    #@11f
    .end local v0    # "platform":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "DownloadLocale"

    #@122
    .line 268
    invoke-virtual {p0, v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    #@125
    move-result-object v2

    #@126
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->init(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/I18n;

    #@129
    move-result-object v2

    #@12a
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/Config;->i18n:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    #@12c
    goto/16 :goto_0

    #@12e
    .restart local v0    # "platform":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, ""

    #@131
    goto/16 :goto_1

    #@133
    :cond_4
    const-string/jumbo v2, "unknown"

    #@136
    .line 275
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    #@138
    goto/16 :goto_2

    #@13a
    :cond_5
    const-string/jumbo v2, "unknown"

    #@13d
    .line 279
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->ADS_CLIENT:Ljava/lang/String;

    #@13f
    goto/16 :goto_3

    #@141
    :cond_6
    const-string/jumbo v2, "unknown"

    #@144
    .line 283
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->CARRIER:Ljava/lang/String;

    #@146
    goto/16 :goto_4

    #@148
    .line 301
    :cond_7
    sget v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    #@14a
    .line 302
    .local v1, "temp":I
    sget v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    #@14c
    sput v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_LEFT:I

    #@14e
    .line 303
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/Config;->KEY_SOFT_RIGHT:I

    #@150
    goto/16 :goto_5

    #@152
    .end local v1    # "temp":I
    :cond_8
    const-string/jumbo v2, "sony"

    #@155
    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@158
    move-result v2

    #@159
    if-nez v2, :cond_0

    #@15b
    move v2, v3

    #@15c
    goto :goto_6

    #@15d
    .line 325
    :cond_9
    sget-boolean v2, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_COMMANDS:Z

    #@15f
    if-nez v2, :cond_1

    #@161
    .line 331
    sput-boolean v3, Landroid_maps_conflict_avoidance/com/google/common/Config;->USE_NATIVE_COMMANDS:Z

    #@163
    goto :goto_7
.end method

.method protected abstract setupGzipper()V
.end method
