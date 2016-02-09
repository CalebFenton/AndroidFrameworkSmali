.class Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
.super Ljava/lang/Object;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZNames"
.end annotation


# static fields
.field private static synthetic -android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I

.field private static final EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

.field private static final KEYS:[Ljava/lang/String;


# instance fields
.field private _names:[Ljava/lang/String;


# direct methods
.method private static synthetic -getandroid_icu_text_TimeZoneNames$NameTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->-android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->-android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->values()[Landroid/icu/text/TimeZoneNames$NameType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@22
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@2b
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@34
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@3d
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@46
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    #@4d
    :goto_6
    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->-android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I

    #@4f
    return-object v0

    #@50
    :catch_0
    move-exception v1

    #@51
    goto :goto_6

    #@52
    :catch_1
    move-exception v1

    #@53
    goto :goto_5

    #@54
    :catch_2
    move-exception v1

    #@55
    goto :goto_4

    #@56
    :catch_3
    move-exception v1

    #@57
    goto :goto_3

    #@58
    :catch_4
    move-exception v1

    #@59
    goto :goto_2

    #@5a
    :catch_5
    move-exception v1

    #@5b
    goto :goto_1

    #@5c
    :catch_6
    move-exception v1

    #@5d
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 423
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    #@6
    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@8
    .line 427
    const/4 v0, 0x6

    #@9
    new-array v0, v0, [Ljava/lang/String;

    #@b
    const-string/jumbo v1, "lg"

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    const-string/jumbo v1, "ls"

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    const-string/jumbo v1, "ld"

    #@1a
    const/4 v2, 0x2

    #@1b
    aput-object v1, v0, v2

    #@1d
    const-string/jumbo v1, "sg"

    #@20
    const/4 v2, 0x3

    #@21
    aput-object v1, v0, v2

    #@23
    const-string/jumbo v1, "ss"

    #@26
    const/4 v2, 0x4

    #@27
    aput-object v1, v0, v2

    #@29
    const-string/jumbo v1, "sd"

    #@2c
    const/4 v2, 0x5

    #@2d
    aput-object v1, v0, v2

    #@2f
    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->KEYS:[Ljava/lang/String;

    #@31
    .line 422
    return-void
.end method

.method protected constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "names"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 430
    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@5
    .line 429
    return-void
.end method

.method public static getInstance(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 2
    .param p0, "zoneStrings"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 434
    invoke-static {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->loadData(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 435
    .local v0, "names":[Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 436
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@8
    return-object v1

    #@9
    .line 438
    :cond_0
    new-instance v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    #@b
    invoke-direct {v1, v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    #@e
    return-object v1
.end method

.method protected static loadData(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "zoneStrings"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 474
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 475
    :cond_0
    return-object v6

    #@6
    .line 474
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 478
    const/4 v4, 0x0

    #@d
    .line 480
    .local v4, "table":Landroid/icu/impl/ICUResourceBundle;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v4

    #@11
    .line 485
    .local v4, "table":Landroid/icu/impl/ICUResourceBundle;
    const/4 v2, 0x1

    #@12
    .line 486
    .local v2, "isEmpty":Z
    sget-object v5, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->KEYS:[Ljava/lang/String;

    #@14
    array-length v5, v5

    #@15
    new-array v3, v5, [Ljava/lang/String;

    #@17
    .line 487
    .local v3, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    array-length v5, v3

    #@19
    if-ge v1, v5, :cond_2

    #@1b
    .line 489
    :try_start_1
    sget-object v5, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->KEYS:[Ljava/lang/String;

    #@1d
    aget-object v5, v5, v1

    #@1f
    invoke-virtual {v4, v5}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    aput-object v5, v3, v1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@25
    .line 490
    const/4 v2, 0x0

    #@26
    .line 487
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 481
    .end local v1    # "i":I
    .end local v2    # "isEmpty":Z
    .end local v3    # "names":[Ljava/lang/String;
    .local v4, "table":Landroid/icu/impl/ICUResourceBundle;
    :catch_0
    move-exception v0

    #@2a
    .line 482
    .local v0, "e":Ljava/util/MissingResourceException;
    return-object v6

    #@2b
    .line 491
    .end local v0    # "e":Ljava/util/MissingResourceException;
    .restart local v1    # "i":I
    .restart local v2    # "isEmpty":Z
    .restart local v3    # "names":[Ljava/lang/String;
    .local v4, "table":Landroid/icu/impl/ICUResourceBundle;
    :catch_1
    move-exception v0

    #@2c
    .line 492
    .restart local v0    # "e":Ljava/util/MissingResourceException;
    aput-object v6, v3, v1

    #@2e
    goto :goto_1

    #@2f
    .line 496
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_2
    if-eqz v2, :cond_3

    #@31
    .line 497
    return-object v6

    #@32
    .line 500
    :cond_3
    return-object v3
.end method


# virtual methods
.method public getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 442
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 443
    return-object v2

    #@6
    .line 445
    :cond_0
    const/4 v0, 0x0

    #@7
    .line 446
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->-getandroid_icu_text_TimeZoneNames$NameTypeSwitchesValues()[I

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@e
    move-result v2

    #@f
    aget v1, v1, v2

    #@11
    packed-switch v1, :pswitch_data_0

    #@14
    .line 470
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    #@15
    .line 448
    .restart local v0    # "name":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@17
    const/4 v2, 0x0

    #@18
    aget-object v0, v1, v2

    #@1a
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    #@1b
    .line 451
    .local v0, "name":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@1d
    const/4 v2, 0x1

    #@1e
    aget-object v0, v1, v2

    #@20
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    #@21
    .line 454
    .local v0, "name":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@23
    const/4 v2, 0x2

    #@24
    aget-object v0, v1, v2

    #@26
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    #@27
    .line 457
    .local v0, "name":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@29
    const/4 v2, 0x3

    #@2a
    aget-object v0, v1, v2

    #@2c
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 460
    .local v0, "name":Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@2f
    const/4 v2, 0x4

    #@30
    aget-object v0, v1, v2

    #@32
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    #@33
    .line 463
    .local v0, "name":Ljava/lang/String;
    :pswitch_5
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    #@35
    const/4 v2, 0x5

    #@36
    aget-object v0, v1, v2

    #@38
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    #@39
    .line 466
    .local v0, "name":Ljava/lang/String;
    :pswitch_6
    const/4 v0, 0x0

    #@3a
    .line 467
    goto :goto_0

    #@3b
    .line 446
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
