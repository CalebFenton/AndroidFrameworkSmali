.class public Landroid/icu/impl/TimeZoneGenericNames;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;,
        Landroid/icu/impl/TimeZoneGenericNames$Pattern;,
        Landroid/icu/impl/TimeZoneGenericNames$NameInfo;,
        Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;,
        Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;,
        Landroid/icu/impl/TimeZoneGenericNames$Cache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/impl/TimeZoneGenericNames;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic -android_icu_impl_TimeZoneGenericNames$GenericNameTypeSwitchesValues:[I = null

.field private static synthetic -android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I = null

.field static final synthetic -assertionsDisabled:Z

.field private static final DST_CHECK_RANGE:J = 0x3b3922000L

.field private static GENERIC_NAMES_CACHE:Landroid/icu/impl/TimeZoneGenericNames$Cache; = null

.field private static final GENERIC_NON_LOCATION_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final serialVersionUID:J = 0x25e296fe0f5baf81L


# instance fields
.field private volatile transient _frozen:Z

.field private transient _genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient _genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient _gnamesTrie:Landroid/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$NameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient _gnamesTrieFullyLoaded:Z

.field private _locale:Landroid/icu/util/ULocale;

.field private transient _localeDisplayNamesRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/icu/text/LocaleDisplayNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient _patternFormatters:[Ljava/text/MessageFormat;

.field private transient _region:Ljava/lang/String;

.field private _tznames:Landroid/icu/text/TimeZoneNames;


# direct methods
.method private static synthetic -getandroid_icu_impl_TimeZoneGenericNames$GenericNameTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames;->-android_icu_impl_TimeZoneGenericNames$GenericNameTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames;->-android_icu_impl_TimeZoneGenericNames$GenericNameTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->values()[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@10
    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@19
    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@22
    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames;->-android_icu_impl_TimeZoneGenericNames$GenericNameTypeSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method private static synthetic -getandroid_icu_text_TimeZoneNames$NameTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames;->-android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames;->-android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I

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
    const/16 v2, 0x8

    #@16
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    #@18
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@1a
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@1d
    move-result v1

    #@1e
    const/16 v2, 0x9

    #@20
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    #@22
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@24
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@27
    move-result v1

    #@28
    const/4 v2, 0x1

    #@29
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    #@2b
    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@2d
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@30
    move-result v1

    #@31
    const/4 v2, 0x2

    #@32
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    #@34
    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@36
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@39
    move-result v1

    #@3a
    const/16 v2, 0xa

    #@3c
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    #@3e
    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@40
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@43
    move-result v1

    #@44
    const/4 v2, 0x3

    #@45
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    #@47
    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@49
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@4c
    move-result v1

    #@4d
    const/4 v2, 0x4

    #@4e
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    #@50
    :goto_6
    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames;->-android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I

    #@52
    return-object v0

    #@53
    :catch_0
    move-exception v1

    #@54
    goto :goto_6

    #@55
    :catch_1
    move-exception v1

    #@56
    goto :goto_5

    #@57
    :catch_2
    move-exception v1

    #@58
    goto :goto_4

    #@59
    :catch_3
    move-exception v1

    #@5a
    goto :goto_3

    #@5b
    :catch_4
    move-exception v1

    #@5c
    goto :goto_2

    #@5d
    :catch_5
    move-exception v1

    #@5e
    goto :goto_1

    #@5f
    :catch_6
    move-exception v1

    #@60
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-class v0, Landroid/icu/impl/TimeZoneGenericNames;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v1

    #@b
    :goto_0
    sput-boolean v0, Landroid/icu/impl/TimeZoneGenericNames;->-assertionsDisabled:Z

    #@d
    .line 120
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$Cache;

    #@f
    const/4 v3, 0x0

    #@10
    invoke-direct {v0, v3}, Landroid/icu/impl/TimeZoneGenericNames$Cache;-><init>(Landroid/icu/impl/TimeZoneGenericNames$Cache;)V

    #@13
    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NAMES_CACHE:Landroid/icu/impl/TimeZoneGenericNames$Cache;

    #@15
    .line 126
    const/4 v0, 0x2

    #@16
    new-array v0, v0, [Landroid/icu/text/TimeZoneNames$NameType;

    #@18
    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@1a
    aput-object v3, v0, v1

    #@1c
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@1e
    aput-object v1, v0, v2

    #@20
    .line 125
    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NON_LOCATION_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    #@22
    .line 42
    return-void

    #@23
    :cond_0
    move v0, v2

    #@24
    goto :goto_0
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 169
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V

    #@4
    .line 168
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/impl/TimeZoneGenericNames;)V
    .locals 0
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V
    .locals 0
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "tznames"    # Landroid/icu/text/TimeZoneNames;

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 136
    iput-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    #@5
    .line 137
    iput-object p2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@7
    .line 138
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->init()V

    #@a
    .line 135
    return-void
.end method

.method private createGenericMatchInfo(Landroid/icu/text/TimeZoneNames$MatchInfo;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .locals 9
    .param p1, "matchInfo"    # Landroid/icu/text/TimeZoneNames$MatchInfo;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 783
    const/4 v2, 0x0

    #@3
    .line 784
    .local v2, "nameType":Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    sget-object v3, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@5
    .line 785
    .local v3, "timeType":Landroid/icu/text/TimeZoneFormat$TimeType;
    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames;->-getandroid_icu_text_TimeZoneNames$NameTypeSwitchesValues()[I

    #@8
    move-result-object v7

    #@9
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    #@c
    move-result-object v8

    #@d
    invoke-virtual {v8}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@10
    move-result v8

    #@11
    aget v7, v7, v8

    #@13
    packed-switch v7, :pswitch_data_0

    #@16
    .line 801
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v6, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v7, "Unexpected MatchInfo name type - "

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v5

    #@34
    .line 787
    :pswitch_0
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@36
    .line 788
    .local v2, "nameType":Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    sget-object v3, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@38
    .line 804
    :goto_0
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    .line 805
    .local v4, "tzID":Ljava/lang/String;
    if-nez v4, :cond_2

    #@3e
    .line 806
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    .line 807
    .local v1, "mzID":Ljava/lang/String;
    sget-boolean v7, Landroid/icu/impl/TimeZoneGenericNames;->-assertionsDisabled:Z

    #@44
    if-nez v7, :cond_1

    #@46
    if-eqz v1, :cond_0

    #@48
    move v7, v5

    #@49
    :goto_1
    if-nez v7, :cond_1

    #@4b
    new-instance v5, Ljava/lang/AssertionError;

    #@4d
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@50
    throw v5

    #@51
    .line 791
    .end local v1    # "mzID":Ljava/lang/String;
    .end local v4    # "tzID":Ljava/lang/String;
    .local v2, "nameType":Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    :pswitch_1
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@53
    .local v2, "nameType":Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    goto :goto_0

    #@54
    .line 794
    .local v2, "nameType":Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    :pswitch_2
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@56
    .line 795
    .local v2, "nameType":Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    sget-object v3, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@58
    goto :goto_0

    #@59
    .line 798
    .local v2, "nameType":Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    :pswitch_3
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@5b
    .local v2, "nameType":Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    goto :goto_0

    #@5c
    .restart local v1    # "mzID":Ljava/lang/String;
    .restart local v4    # "tzID":Ljava/lang/String;
    :cond_0
    move v7, v6

    #@5d
    .line 807
    goto :goto_1

    #@5e
    .line 808
    :cond_1
    iget-object v7, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@60
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v7, v1, v8}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    .line 810
    .end local v1    # "mzID":Ljava/lang/String;
    :cond_2
    sget-boolean v7, Landroid/icu/impl/TimeZoneGenericNames;->-assertionsDisabled:Z

    #@6a
    if-nez v7, :cond_4

    #@6c
    if-eqz v4, :cond_3

    #@6e
    :goto_2
    if-nez v5, :cond_4

    #@70
    new-instance v5, Ljava/lang/AssertionError;

    #@72
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@75
    throw v5

    #@76
    :cond_3
    move v5, v6

    #@77
    goto :goto_2

    #@78
    .line 812
    :cond_4
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    #@7a
    invoke-direct {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>()V

    #@7d
    .line 813
    .local v0, "gmatch":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    iput-object v2, v0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->nameType:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@7f
    .line 814
    iput-object v4, v0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID:Ljava/lang/String;

    #@81
    .line 815
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    #@84
    move-result v5

    #@85
    iput v5, v0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength:I

    #@87
    .line 816
    iput-object v3, v0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@89
    .line 818
    return-object v0

    #@8a
    .line 785
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    monitor-enter p0

    #@1
    .line 862
    :try_start_0
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;

    #@3
    invoke-direct {v0, p3}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;-><init>(Ljava/util/EnumSet;)V

    #@6
    .line 863
    .local v0, "handler":Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;
    iget-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    #@8
    invoke-virtual {v4, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    #@b
    .line 864
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMaxMatchLen()I

    #@e
    move-result v4

    #@f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@12
    move-result v5

    #@13
    sub-int/2addr v5, p2

    #@14
    if-eq v4, v5, :cond_0

    #@16
    iget-boolean v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 866
    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMatches()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result-object v4

    #@1e
    monitor-exit p0

    #@1f
    return-object v4

    #@20
    .line 872
    :cond_1
    :try_start_1
    sget-object v4, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@22
    const/4 v5, 0x0

    #@23
    const/4 v6, 0x0

    #@24
    invoke-static {v4, v5, v6}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    #@27
    move-result-object v3

    #@28
    .line 873
    .local v3, "tzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v2

    #@2c
    .local v2, "tzID$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_2

    #@32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Ljava/lang/String;

    #@38
    .line 874
    .local v1, "tzID":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->loadStrings(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .end local v0    # "handler":Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;
    .end local v1    # "tzID":Ljava/lang/String;
    .end local v2    # "tzID$iterator":Ljava/util/Iterator;
    .end local v3    # "tzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    #@3d
    monitor-exit p0

    #@3e
    throw v4

    #@3f
    .line 876
    .restart local v0    # "handler":Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;
    .restart local v2    # "tzID$iterator":Ljava/util/Iterator;
    .restart local v3    # "tzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const/4 v4, 0x1

    #@40
    :try_start_2
    iput-boolean v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    #@42
    .line 879
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->resetResults()V

    #@45
    .line 880
    iget-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    #@47
    invoke-virtual {v4, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    #@4a
    .line 881
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMatches()Ljava/util/Collection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    move-result-object v4

    #@4e
    monitor-exit p0

    #@4f
    return-object v4
.end method

.method private findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 831
    .local p3, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    const/4 v1, 0x0

    #@1
    .line 834
    .local v1, "tznamesMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    const-class v2, Landroid/icu/text/TimeZoneNames$NameType;

    #@3
    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    #@6
    move-result-object v0

    #@7
    .line 835
    .local v0, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneNames$NameType;>;"
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@9
    invoke-virtual {p3, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 836
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@11
    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@14
    .line 837
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@16
    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@19
    .line 839
    :cond_0
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@1b
    invoke-virtual {p3, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 840
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@23
    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@26
    .line 841
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@28
    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@2b
    .line 844
    :cond_1
    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    #@2e
    move-result v2

    #@2f
    if-nez v2, :cond_2

    #@31
    .line 846
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@33
    invoke-virtual {v2, p1, p2, v0}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    #@36
    move-result-object v1

    #@37
    .line 848
    .end local v1    # "tznamesMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    :cond_2
    return-object v1
.end method

.method private formatGenericNonLocationName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;
    .locals 29
    .param p1, "tz"    # Landroid/icu/util/TimeZone;
    .param p2, "type"    # Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .param p3, "date"    # J

    #@0
    .prologue
    .line 325
    sget-boolean v23, Landroid/icu/impl/TimeZoneGenericNames;->-assertionsDisabled:Z

    #@2
    if-nez v23, :cond_2

    #@4
    sget-object v23, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@6
    move-object/from16 v0, p2

    #@8
    move-object/from16 v1, v23

    #@a
    if-eq v0, v1, :cond_0

    #@c
    sget-object v23, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@e
    move-object/from16 v0, p2

    #@10
    move-object/from16 v1, v23

    #@12
    if-ne v0, v1, :cond_1

    #@14
    :cond_0
    const/16 v23, 0x1

    #@16
    :goto_0
    if-nez v23, :cond_2

    #@18
    new-instance v23, Ljava/lang/AssertionError;

    #@1a
    invoke-direct/range {v23 .. v23}, Ljava/lang/AssertionError;-><init>()V

    #@1d
    throw v23

    #@1e
    :cond_1
    const/16 v23, 0x0

    #@20
    goto :goto_0

    #@21
    .line 326
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    #@24
    move-result-object v21

    #@25
    .line 328
    .local v21, "tzID":Ljava/lang/String;
    if-nez v21, :cond_3

    #@27
    .line 329
    const/16 v23, 0x0

    #@29
    return-object v23

    #@2a
    .line 333
    :cond_3
    sget-object v23, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@2c
    move-object/from16 v0, p2

    #@2e
    move-object/from16 v1, v23

    #@30
    if-ne v0, v1, :cond_4

    #@32
    sget-object v15, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@34
    .line 334
    .local v15, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :goto_1
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@38
    move-object/from16 v23, v0

    #@3a
    move-object/from16 v0, v23

    #@3c
    move-object/from16 v1, v21

    #@3e
    invoke-virtual {v0, v1, v15}, Landroid/icu/text/TimeZoneNames;->getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@41
    move-result-object v14

    #@42
    .line 336
    .local v14, "name":Ljava/lang/String;
    if-eqz v14, :cond_5

    #@44
    .line 337
    return-object v14

    #@45
    .line 333
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_4
    sget-object v15, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@47
    .restart local v15    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto :goto_1

    #@48
    .line 341
    .restart local v14    # "name":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@4c
    move-object/from16 v23, v0

    #@4e
    move-object/from16 v0, v23

    #@50
    move-object/from16 v1, v21

    #@52
    move-wide/from16 v2, p3

    #@54
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneNames;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    #@57
    move-result-object v12

    #@58
    .line 342
    .local v12, "mzID":Ljava/lang/String;
    if-eqz v12, :cond_9

    #@5a
    .line 343
    const/16 v22, 0x0

    #@5c
    .line 344
    .local v22, "useStandard":Z
    const/16 v23, 0x0

    #@5e
    const/16 v24, 0x0

    #@60
    filled-new-array/range {v23 .. v24}, [I

    #@63
    move-result-object v16

    #@64
    .line 345
    .local v16, "offsets":[I
    const/16 v23, 0x0

    #@66
    move-object/from16 v0, p1

    #@68
    move-wide/from16 v1, p3

    #@6a
    move/from16 v3, v23

    #@6c
    move-object/from16 v4, v16

    #@6e
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    #@71
    .line 347
    const/16 v23, 0x1

    #@73
    aget v23, v16, v23

    #@75
    if-nez v23, :cond_6

    #@77
    .line 348
    const/16 v22, 0x1

    #@79
    .line 350
    move-object/from16 v0, p1

    #@7b
    instance-of v0, v0, Landroid/icu/util/BasicTimeZone;

    #@7d
    move/from16 v23, v0

    #@7f
    if-eqz v23, :cond_b

    #@81
    move-object/from16 v8, p1

    #@83
    .line 351
    check-cast v8, Landroid/icu/util/BasicTimeZone;

    #@85
    .line 352
    .local v8, "btz":Landroid/icu/util/BasicTimeZone;
    const/16 v23, 0x1

    #@87
    move-wide/from16 v0, p3

    #@89
    move/from16 v2, v23

    #@8b
    invoke-virtual {v8, v0, v1, v2}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@8e
    move-result-object v7

    #@8f
    .line 353
    .local v7, "before":Landroid/icu/util/TimeZoneTransition;
    if-eqz v7, :cond_a

    #@91
    .line 354
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@94
    move-result-wide v24

    #@95
    sub-long v24, p3, v24

    #@97
    const-wide v26, 0x3b3922000L

    #@9c
    cmp-long v23, v24, v26

    #@9e
    if-gez v23, :cond_a

    #@a0
    .line 355
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@a3
    move-result-object v23

    #@a4
    invoke-virtual/range {v23 .. v23}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@a7
    move-result v23

    #@a8
    if-eqz v23, :cond_a

    #@aa
    .line 356
    const/16 v22, 0x0

    #@ac
    .line 380
    .end local v7    # "before":Landroid/icu/util/TimeZoneTransition;
    .end local v8    # "btz":Landroid/icu/util/BasicTimeZone;
    :cond_6
    :goto_2
    if-eqz v22, :cond_7

    #@ae
    .line 381
    sget-object v23, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@b0
    move-object/from16 v0, v23

    #@b2
    if-ne v15, v0, :cond_d

    #@b4
    .line 382
    sget-object v19, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@b6
    .line 383
    .local v19, "stdNameType":Landroid/icu/text/TimeZoneNames$NameType;
    :goto_3
    move-object/from16 v0, p0

    #@b8
    iget-object v0, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@ba
    move-object/from16 v23, v0

    #@bc
    move-object/from16 v0, v23

    #@be
    move-object/from16 v1, v21

    #@c0
    move-object/from16 v2, v19

    #@c2
    move-wide/from16 v3, p3

    #@c4
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    #@c7
    move-result-object v18

    #@c8
    .line 384
    .local v18, "stdName":Ljava/lang/String;
    if-eqz v18, :cond_7

    #@ca
    .line 385
    move-object/from16 v14, v18

    #@cc
    .line 392
    move-object/from16 v0, p0

    #@ce
    iget-object v0, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@d0
    move-object/from16 v23, v0

    #@d2
    move-object/from16 v0, v23

    #@d4
    invoke-virtual {v0, v12, v15}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@d7
    move-result-object v11

    #@d8
    .line 393
    .local v11, "mzGenericName":Ljava/lang/String;
    move-object/from16 v0, v18

    #@da
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@dd
    move-result v23

    #@de
    if-eqz v23, :cond_7

    #@e0
    .line 394
    const/4 v14, 0x0

    #@e1
    .line 399
    .end local v11    # "mzGenericName":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v18    # "stdName":Ljava/lang/String;
    .end local v19    # "stdNameType":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_7
    if-nez v14, :cond_9

    #@e3
    .line 401
    move-object/from16 v0, p0

    #@e5
    iget-object v0, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@e7
    move-object/from16 v23, v0

    #@e9
    move-object/from16 v0, v23

    #@eb
    invoke-virtual {v0, v12, v15}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@ee
    move-result-object v13

    #@ef
    .line 402
    .local v13, "mzName":Ljava/lang/String;
    if-eqz v13, :cond_9

    #@f1
    .line 406
    move-object/from16 v0, p0

    #@f3
    iget-object v0, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@f5
    move-object/from16 v23, v0

    #@f7
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    #@fa
    move-result-object v24

    #@fb
    move-object/from16 v0, v23

    #@fd
    move-object/from16 v1, v24

    #@ff
    invoke-virtual {v0, v12, v1}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@102
    move-result-object v9

    #@103
    .line 407
    .local v9, "goldenID":Ljava/lang/String;
    if-eqz v9, :cond_8

    #@105
    move-object/from16 v0, v21

    #@107
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10a
    move-result v23

    #@10b
    if-eqz v23, :cond_e

    #@10d
    .line 424
    :cond_8
    move-object v14, v13

    #@10e
    .line 429
    .end local v9    # "goldenID":Ljava/lang/String;
    .end local v13    # "mzName":Ljava/lang/String;
    .end local v16    # "offsets":[I
    .end local v22    # "useStandard":Z
    :cond_9
    :goto_4
    return-object v14

    #@10f
    .line 358
    .restart local v7    # "before":Landroid/icu/util/TimeZoneTransition;
    .restart local v8    # "btz":Landroid/icu/util/BasicTimeZone;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v16    # "offsets":[I
    .restart local v22    # "useStandard":Z
    :cond_a
    const/16 v23, 0x0

    #@111
    move-wide/from16 v0, p3

    #@113
    move/from16 v2, v23

    #@115
    invoke-virtual {v8, v0, v1, v2}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@118
    move-result-object v6

    #@119
    .line 359
    .local v6, "after":Landroid/icu/util/TimeZoneTransition;
    if-eqz v6, :cond_6

    #@11b
    .line 360
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@11e
    move-result-wide v24

    #@11f
    sub-long v24, v24, p3

    #@121
    const-wide v26, 0x3b3922000L

    #@126
    cmp-long v23, v24, v26

    #@128
    if-gez v23, :cond_6

    #@12a
    .line 361
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@12d
    move-result-object v23

    #@12e
    invoke-virtual/range {v23 .. v23}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@131
    move-result v23

    #@132
    if-eqz v23, :cond_6

    #@134
    .line 362
    const/16 v22, 0x0

    #@136
    goto/16 :goto_2

    #@138
    .line 368
    .end local v6    # "after":Landroid/icu/util/TimeZoneTransition;
    .end local v7    # "before":Landroid/icu/util/TimeZoneTransition;
    .end local v8    # "btz":Landroid/icu/util/BasicTimeZone;
    :cond_b
    const/16 v23, 0x2

    #@13a
    move/from16 v0, v23

    #@13c
    new-array v0, v0, [I

    #@13e
    move-object/from16 v20, v0

    #@140
    .line 369
    .local v20, "tmpOffsets":[I
    const-wide v24, 0x3b3922000L

    #@145
    sub-long v24, p3, v24

    #@147
    const/16 v23, 0x0

    #@149
    move-object/from16 v0, p1

    #@14b
    move-wide/from16 v1, v24

    #@14d
    move/from16 v3, v23

    #@14f
    move-object/from16 v4, v20

    #@151
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    #@154
    .line 370
    const/16 v23, 0x1

    #@156
    aget v23, v20, v23

    #@158
    if-eqz v23, :cond_c

    #@15a
    .line 371
    const/16 v22, 0x0

    #@15c
    goto/16 :goto_2

    #@15e
    .line 373
    :cond_c
    const-wide v24, 0x3b3922000L

    #@163
    add-long v24, v24, p3

    #@165
    const/16 v23, 0x0

    #@167
    move-object/from16 v0, p1

    #@169
    move-wide/from16 v1, v24

    #@16b
    move/from16 v3, v23

    #@16d
    move-object/from16 v4, v20

    #@16f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    #@172
    .line 374
    const/16 v23, 0x1

    #@174
    aget v23, v20, v23

    #@176
    if-eqz v23, :cond_6

    #@178
    .line 375
    const/16 v22, 0x0

    #@17a
    goto/16 :goto_2

    #@17c
    .line 382
    .end local v20    # "tmpOffsets":[I
    :cond_d
    sget-object v19, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@17e
    .restart local v19    # "stdNameType":Landroid/icu/text/TimeZoneNames$NameType;
    goto/16 :goto_3

    #@180
    .line 408
    .end local v14    # "name":Ljava/lang/String;
    .end local v19    # "stdNameType":Landroid/icu/text/TimeZoneNames$NameType;
    .restart local v9    # "goldenID":Ljava/lang/String;
    .restart local v13    # "mzName":Ljava/lang/String;
    :cond_e
    invoke-static {v9}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@183
    move-result-object v10

    #@184
    .line 409
    .local v10, "goldenZone":Landroid/icu/util/TimeZone;
    const/16 v23, 0x0

    #@186
    const/16 v24, 0x0

    #@188
    filled-new-array/range {v23 .. v24}, [I

    #@18b
    move-result-object v17

    #@18c
    .line 415
    .local v17, "offsets1":[I
    const/16 v23, 0x0

    #@18e
    aget v23, v16, v23

    #@190
    move/from16 v0, v23

    #@192
    int-to-long v0, v0

    #@193
    move-wide/from16 v24, v0

    #@195
    add-long v24, v24, p3

    #@197
    const/16 v23, 0x1

    #@199
    aget v23, v16, v23

    #@19b
    move/from16 v0, v23

    #@19d
    int-to-long v0, v0

    #@19e
    move-wide/from16 v26, v0

    #@1a0
    add-long v24, v24, v26

    #@1a2
    const/16 v23, 0x1

    #@1a4
    move-wide/from16 v0, v24

    #@1a6
    move/from16 v2, v23

    #@1a8
    move-object/from16 v3, v17

    #@1aa
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    #@1ad
    .line 417
    const/16 v23, 0x0

    #@1af
    aget v23, v16, v23

    #@1b1
    const/16 v24, 0x0

    #@1b3
    aget v24, v17, v24

    #@1b5
    move/from16 v0, v23

    #@1b7
    move/from16 v1, v24

    #@1b9
    if-ne v0, v1, :cond_f

    #@1bb
    const/16 v23, 0x1

    #@1bd
    aget v23, v16, v23

    #@1bf
    const/16 v24, 0x1

    #@1c1
    aget v24, v17, v24

    #@1c3
    move/from16 v0, v23

    #@1c5
    move/from16 v1, v24

    #@1c7
    if-eq v0, v1, :cond_11

    #@1c9
    .line 419
    :cond_f
    sget-object v23, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@1cb
    move-object/from16 v0, v23

    #@1cd
    if-ne v15, v0, :cond_10

    #@1cf
    const/16 v23, 0x1

    #@1d1
    :goto_5
    move-object/from16 v0, p0

    #@1d3
    move-object/from16 v1, v21

    #@1d5
    move/from16 v2, v23

    #@1d7
    invoke-direct {v0, v1, v12, v2, v13}, Landroid/icu/impl/TimeZoneGenericNames;->getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    #@1da
    move-result-object v14

    #@1db
    .restart local v14    # "name":Ljava/lang/String;
    goto/16 :goto_4

    #@1dd
    .end local v14    # "name":Ljava/lang/String;
    :cond_10
    const/16 v23, 0x0

    #@1df
    goto :goto_5

    #@1e0
    .line 421
    :cond_11
    move-object v14, v13

    #@1e1
    .restart local v14    # "name":Ljava/lang/String;
    goto/16 :goto_4
.end method

.method private varargs declared-synchronized formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pat"    # Landroid/icu/impl/TimeZoneGenericNames$Pattern;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 442
    :try_start_0
    iget-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 443
    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->values()[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@8
    move-result-object v4

    #@9
    array-length v4, v4

    #@a
    new-array v4, v4, [Ljava/text/MessageFormat;

    #@c
    iput-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    #@e
    .line 446
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->ordinal()I

    #@11
    move-result v2

    #@12
    .line 447
    .local v2, "idx":I
    iget-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    #@14
    aget-object v4, v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    if-nez v4, :cond_1

    #@18
    .line 451
    :try_start_1
    const-string/jumbo v4, "android/icu/impl/data/icudt55b/zone"

    #@1b
    iget-object v5, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    #@1d
    .line 450
    invoke-static {v4, v5}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@23
    .line 452
    .local v0, "bundle":Landroid/icu/impl/ICUResourceBundle;
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "zoneStrings/"

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->key()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v0, v4}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    move-result-object v3

    #@3f
    .line 457
    .end local v0    # "bundle":Landroid/icu/impl/ICUResourceBundle;
    .local v3, "patText":Ljava/lang/String;
    :goto_0
    :try_start_2
    iget-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    #@41
    new-instance v5, Ljava/text/MessageFormat;

    #@43
    invoke-direct {v5, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@46
    aput-object v5, v4, v2

    #@48
    .line 459
    .end local v3    # "patText":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    #@4a
    aget-object v4, v4, v2

    #@4c
    invoke-virtual {v4, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    move-result-object v4

    #@50
    monitor-exit p0

    #@51
    return-object v4

    #@52
    .line 453
    :catch_0
    move-exception v1

    #@53
    .line 454
    .local v1, "e":Ljava/util/MissingResourceException;
    :try_start_3
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->defaultValue()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@56
    move-result-object v3

    #@57
    .restart local v3    # "patText":Ljava/lang/String;
    goto :goto_0

    #@58
    .end local v1    # "e":Ljava/util/MissingResourceException;
    .end local v2    # "idx":I
    .end local v3    # "patText":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@59
    monitor-exit p0

    #@5a
    throw v4
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/TimeZoneGenericNames;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 180
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NAMES_CACHE:Landroid/icu/impl/TimeZoneGenericNames$Cache;

    #@6
    invoke-virtual {v1, v0, p0}, Landroid/icu/impl/TimeZoneGenericNames$Cache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/icu/impl/TimeZoneGenericNames;

    #@c
    return-object v1
.end method

.method private declared-synchronized getLocaleDisplayNames()Landroid/icu/text/LocaleDisplayNames;
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 471
    const/4 v1, 0x0

    #@2
    .line 472
    .local v1, "locNames":Landroid/icu/text/LocaleDisplayNames;
    :try_start_0
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 473
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;

    #@8
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    move-object v0, v2

    #@d
    check-cast v0, Landroid/icu/text/LocaleDisplayNames;

    #@f
    move-object v1, v0

    #@10
    .line 475
    .end local v1    # "locNames":Landroid/icu/text/LocaleDisplayNames;
    :cond_0
    if-nez v1, :cond_1

    #@12
    .line 476
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    #@14
    invoke-static {v2}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    #@17
    move-result-object v1

    #@18
    .line 477
    .local v1, "locNames":Landroid/icu/text/LocaleDisplayNames;
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@1a
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1d
    iput-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .end local v1    # "locNames":Landroid/icu/text/LocaleDisplayNames;
    :cond_1
    monitor-exit p0

    #@20
    .line 479
    return-object v1

    #@21
    :catchall_0
    move-exception v2

    #@22
    monitor-exit p0

    #@23
    throw v2
.end method

.method private getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "tzID"    # Ljava/lang/String;
    .param p2, "mzID"    # Ljava/lang/String;
    .param p3, "isLong"    # Z
    .param p4, "mzDisplayName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 542
    if-eqz p3, :cond_0

    #@2
    const-string/jumbo v3, "L"

    #@5
    .line 543
    .local v3, "letter":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v8

    #@e
    const-string/jumbo v9, "&"

    #@11
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v8

    #@15
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v8

    #@19
    const-string/jumbo v9, "#"

    #@1c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v8

    #@24
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 544
    .local v2, "key":Ljava/lang/String;
    iget-object v8, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2a
    invoke-virtual {v8, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Ljava/lang/String;

    #@30
    .line 545
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@32
    .line 546
    return-object v5

    #@33
    .line 542
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "letter":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "S"

    #@36
    .restart local v3    # "letter":Ljava/lang/String;
    goto :goto_0

    #@37
    .line 548
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    #@38
    .line 549
    .local v4, "location":Ljava/lang/String;
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCountry(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 550
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@3e
    .line 552
    iget-object v8, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@40
    invoke-virtual {v8, p2, v0}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    .line 553
    .local v6, "regionalGolden":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v8

    #@48
    if-eqz v8, :cond_3

    #@4a
    .line 555
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getLocaleDisplayNames()Landroid/icu/text/LocaleDisplayNames;

    #@4d
    move-result-object v8

    #@4e
    invoke-virtual {v8, v0}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    .line 569
    .end local v6    # "regionalGolden":Ljava/lang/String;
    .local v4, "location":Ljava/lang/String;
    :cond_2
    :goto_1
    sget-object v8, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->FALLBACK_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@54
    const/4 v9, 0x2

    #@55
    new-array v9, v9, [Ljava/lang/String;

    #@57
    const/4 v10, 0x0

    #@58
    aput-object v4, v9, v10

    #@5a
    const/4 v10, 0x1

    #@5b
    aput-object p4, v9, v10

    #@5d
    invoke-direct {p0, v8, v9}, Landroid/icu/impl/TimeZoneGenericNames;->formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    .line 570
    monitor-enter p0

    #@62
    .line 571
    :try_start_0
    iget-object v8, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@64
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@6b
    move-result-object v10

    #@6c
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    move-result-object v7

    #@70
    check-cast v7, Ljava/lang/String;

    #@72
    .line 572
    .local v7, "tmp":Ljava/lang/String;
    if-nez v7, :cond_6

    #@74
    .line 573
    new-instance v1, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;

    #@76
    const/4 v8, 0x0

    #@77
    invoke-direct {v1, v8}, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;-><init>(Landroid/icu/impl/TimeZoneGenericNames$NameInfo;)V

    #@7a
    .line 574
    .local v1, "info":Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@7d
    move-result-object v8

    #@7e
    iput-object v8, v1, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->tzID:Ljava/lang/String;

    #@80
    .line 575
    if-eqz p3, :cond_5

    #@82
    sget-object v8, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@84
    :goto_2
    iput-object v8, v1, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@86
    .line 576
    iget-object v8, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    #@88
    invoke-virtual {v8, v5, v1}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8b
    .end local v1    # "info":Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
    :goto_3
    monitor-exit p0

    #@8c
    .line 581
    return-object v5

    #@8d
    .line 558
    .end local v7    # "tmp":Ljava/lang/String;
    .local v4, "location":Ljava/lang/String;
    .restart local v6    # "regionalGolden":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@8f
    invoke-virtual {v8, p1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    #@92
    move-result-object v4

    #@93
    .local v4, "location":Ljava/lang/String;
    goto :goto_1

    #@94
    .line 561
    .end local v6    # "regionalGolden":Ljava/lang/String;
    .local v4, "location":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@96
    invoke-virtual {v8, p1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    #@99
    move-result-object v4

    #@9a
    .line 562
    .local v4, "location":Ljava/lang/String;
    if-nez v4, :cond_2

    #@9c
    .line 566
    move-object v4, p1

    #@9d
    goto :goto_1

    #@9e
    .line 575
    .restart local v1    # "info":Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
    .restart local v7    # "tmp":Ljava/lang/String;
    :cond_5
    :try_start_1
    sget-object v8, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a0
    goto :goto_2

    #@a1
    .line 578
    .end local v1    # "info":Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
    :cond_6
    move-object v5, v7

    #@a2
    goto :goto_3

    #@a3
    .line 570
    .end local v7    # "tmp":Ljava/lang/String;
    :catchall_0
    move-exception v8

    #@a4
    monitor-exit p0

    #@a5
    throw v8
.end method

.method private declared-synchronized getTargetRegion()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 517
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 518
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    #@7
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    #@d
    .line 519
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    #@f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    .line 520
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    #@17
    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@1a
    move-result-object v0

    #@1b
    .line 521
    .local v0, "tmp":Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    #@21
    .line 522
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    #@23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_0

    #@29
    .line 523
    const-string/jumbo v1, "001"

    #@2c
    iput-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    #@2e
    .line 527
    .end local v0    # "tmp":Landroid/icu/util/ULocale;
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit p0

    #@31
    return-object v1

    #@32
    :catchall_0
    move-exception v1

    #@33
    monitor-exit p0

    #@34
    throw v1
.end method

.method private init()V
    .locals 4

    #@0
    .prologue
    .line 146
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 147
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    #@6
    invoke-static {v2}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    #@9
    move-result-object v2

    #@a
    iput-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@c
    .line 149
    :cond_0
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    #@e
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@11
    iput-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@13
    .line 150
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    #@15
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@18
    iput-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@1a
    .line 152
    new-instance v2, Landroid/icu/impl/TextTrieMap;

    #@1c
    const/4 v3, 0x1

    #@1d
    invoke-direct {v2, v3}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    #@20
    iput-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    #@22
    .line 153
    const/4 v2, 0x0

    #@23
    iput-boolean v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    #@25
    .line 156
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@28
    move-result-object v0

    #@29
    .line 157
    .local v0, "tz":Landroid/icu/util/TimeZone;
    invoke-static {v0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 158
    .local v1, "tzCanonicalID":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@2f
    .line 159
    invoke-direct {p0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->loadStrings(Ljava/lang/String;)V

    #@32
    .line 145
    :cond_1
    return-void
.end method

.method private declared-synchronized loadStrings(Ljava/lang/String;)V
    .locals 11
    .param p1, "tzCanonicalID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 483
    if-eqz p1, :cond_0

    #@4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v6

    #@8
    if-nez v6, :cond_1

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 484
    return-void

    #@c
    .line 487
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    #@f
    .line 490
    iget-object v6, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@11
    invoke-virtual {v6, p1}, Landroid/icu/text/TimeZoneNames;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    #@14
    move-result-object v5

    #@15
    .line 491
    .local v5, "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v4

    #@19
    .local v4, "mzID$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_5

    #@1f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Ljava/lang/String;

    #@25
    .line 495
    .local v3, "mzID":Ljava/lang/String;
    iget-object v6, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@27
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    invoke-virtual {v6, v3, v8}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 496
    .local v1, "goldenID":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v6

    #@33
    if-nez v6, :cond_2

    #@35
    .line 497
    sget-object v9, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NON_LOCATION_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    #@37
    array-length v10, v9

    #@38
    move v8, v7

    #@39
    :goto_0
    if-ge v8, v10, :cond_2

    #@3b
    aget-object v0, v9, v8

    #@3d
    .line 498
    .local v0, "genNonLocType":Landroid/icu/text/TimeZoneNames$NameType;
    iget-object v6, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@3f
    invoke-virtual {v6, v3, v0}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    .line 499
    .local v2, "mzGenName":Ljava/lang/String;
    if-eqz v2, :cond_3

    #@45
    .line 501
    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@47
    if-ne v0, v6, :cond_4

    #@49
    const/4 v6, 0x1

    #@4a
    :goto_1
    invoke-direct {p0, p1, v3, v6, v2}, Landroid/icu/impl/TimeZoneGenericNames;->getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    .line 497
    :cond_3
    add-int/lit8 v6, v8, 0x1

    #@4f
    move v8, v6

    #@50
    goto :goto_0

    #@51
    :cond_4
    move v6, v7

    #@52
    .line 501
    goto :goto_1

    #@53
    .end local v0    # "genNonLocType":Landroid/icu/text/TimeZoneNames$NameType;
    .end local v1    # "goldenID":Ljava/lang/String;
    .end local v2    # "mzGenName":Ljava/lang/String;
    .end local v3    # "mzID":Ljava/lang/String;
    :cond_5
    monitor-exit p0

    #@54
    .line 482
    return-void

    #@55
    .end local v4    # "mzID$iterator":Ljava/util/Iterator;
    .end local v5    # "mzIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    #@56
    monitor-exit p0

    #@57
    throw v6
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 904
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 905
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->init()V

    #@6
    .line 903
    return-void
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/impl/TimeZoneGenericNames;
    .locals 4

    #@0
    .prologue
    .line 927
    const/4 v1, 0x0

    #@1
    .line 929
    .local v1, "copy":Landroid/icu/impl/TimeZoneGenericNames;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v3

    #@5
    move-object v0, v3

    #@6
    check-cast v0, Landroid/icu/impl/TimeZoneGenericNames;

    #@8
    move-object v1, v0

    #@9
    .line 930
    .local v1, "copy":Landroid/icu/impl/TimeZoneGenericNames;
    const/4 v3, 0x0

    #@a
    iput-boolean v3, v1, Landroid/icu/impl/TimeZoneGenericNames;->_frozen:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 934
    .end local v1    # "copy":Landroid/icu/impl/TimeZoneGenericNames;
    :goto_0
    return-object v1

    #@d
    .line 931
    :catch_0
    move-exception v2

    #@e
    .local v2, "t":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 926
    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneGenericNames;->cloneAsThawed()Landroid/icu/impl/TimeZoneGenericNames;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public find(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 757
    .local p3, "genericTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_1

    #@8
    .line 758
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v5, "bad input text or range"

    #@d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v4

    #@11
    .line 757
    :cond_1
    if-ltz p2, :cond_0

    #@13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@16
    move-result v4

    #@17
    if-ge p2, v4, :cond_0

    #@19
    .line 761
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    #@1c
    move-result-object v2

    #@1d
    .line 764
    .local v2, "results":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    #@20
    move-result-object v3

    #@21
    .line 765
    .local v3, "tznamesMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    if-eqz v3, :cond_3

    #@23
    .line 767
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v1

    #@27
    .local v1, "match$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_3

    #@2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/icu/text/TimeZoneNames$MatchInfo;

    #@33
    .line 768
    .local v0, "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    if-nez v2, :cond_2

    #@35
    .line 769
    new-instance v2, Ljava/util/LinkedList;

    #@37
    .end local v2    # "results":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@3a
    .line 771
    .restart local v2    # "results":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;>;"
    :cond_2
    invoke-direct {p0, v0}, Landroid/icu/impl/TimeZoneGenericNames;->createGenericMatchInfo(Landroid/icu/text/TimeZoneNames$MatchInfo;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    #@3d
    move-result-object v4

    #@3e
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_0

    #@42
    .line 774
    .end local v0    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v1    # "match$iterator":Ljava/util/Iterator;
    :cond_3
    return-object v2
.end method

.method public findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;"
        }
    .end annotation

    #@0
    .prologue
    .line 691
    .local p3, "genericTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v7

    #@6
    if-nez v7, :cond_1

    #@8
    .line 692
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v8, "bad input text or range"

    #@d
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v7

    #@11
    .line 691
    :cond_1
    if-ltz p2, :cond_0

    #@13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@16
    move-result v7

    #@17
    if-ge p2, v7, :cond_0

    #@19
    .line 694
    const/4 v0, 0x0

    #@1a
    .line 697
    .local v0, "bestMatch":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    #@1d
    move-result-object v6

    #@1e
    .line 698
    .local v6, "tznamesMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;>;"
    if-eqz v6, :cond_5

    #@20
    .line 699
    const/4 v2, 0x0

    #@21
    .line 700
    .local v2, "longestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v5

    #@25
    .end local v2    # "longestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .local v5, "match$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_4

    #@2b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    check-cast v4, Landroid/icu/text/TimeZoneNames$MatchInfo;

    #@31
    .line 701
    .local v4, "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    if-eqz v2, :cond_3

    #@33
    invoke-virtual {v4}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    #@36
    move-result v7

    #@37
    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    #@3a
    move-result v8

    #@3b
    if-le v7, v8, :cond_2

    #@3d
    .line 702
    :cond_3
    move-object v2, v4

    #@3e
    .local v2, "longestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    goto :goto_0

    #@3f
    .line 705
    .end local v2    # "longestMatch":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v4    # "match":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_4
    if-eqz v2, :cond_5

    #@41
    .line 706
    invoke-direct {p0, v2}, Landroid/icu/impl/TimeZoneGenericNames;->createGenericMatchInfo(Landroid/icu/text/TimeZoneNames$MatchInfo;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    #@44
    move-result-object v0

    #@45
    .line 707
    .local v0, "bestMatch":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    #@48
    move-result v7

    #@49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4c
    move-result v8

    #@4d
    sub-int/2addr v8, p2

    #@4e
    if-ne v7, v8, :cond_5

    #@50
    .line 725
    iget-object v7, v0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@52
    sget-object v8, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    #@54
    if-eq v7, v8, :cond_5

    #@56
    .line 726
    return-object v0

    #@57
    .line 733
    .end local v0    # "bestMatch":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .end local v5    # "match$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    #@5a
    move-result-object v1

    #@5b
    .line 734
    .local v1, "localMatches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;>;"
    if-eqz v1, :cond_8

    #@5d
    .line 735
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@60
    move-result-object v5

    #@61
    .restart local v5    # "match$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@64
    move-result v7

    #@65
    if-eqz v7, :cond_8

    #@67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6a
    move-result-object v3

    #@6b
    check-cast v3, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    #@6d
    .line 739
    .local v3, "match":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    if-eqz v0, :cond_7

    #@6f
    invoke-virtual {v3}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    #@72
    move-result v7

    #@73
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    #@76
    move-result v8

    #@77
    if-lt v7, v8, :cond_6

    #@79
    .line 740
    :cond_7
    move-object v0, v3

    #@7a
    .restart local v0    # "bestMatch":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    goto :goto_1

    #@7b
    .line 745
    .end local v0    # "bestMatch":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .end local v3    # "match":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .end local v5    # "match$iterator":Ljava/util/Iterator;
    :cond_8
    return-object v0
.end method

.method public freeze()Landroid/icu/impl/TimeZoneGenericNames;
    .locals 1

    #@0
    .prologue
    .line 919
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_frozen:Z

    #@3
    .line 920
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 918
    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneGenericNames;->freeze()Landroid/icu/impl/TimeZoneGenericNames;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDisplayName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;
    .locals 5
    .param p1, "tz"    # Landroid/icu/util/TimeZone;
    .param p2, "type"    # Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .param p3, "date"    # J

    #@0
    .prologue
    .line 194
    const/4 v0, 0x0

    #@1
    .line 195
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    #@2
    .line 196
    .local v1, "tzCanonicalID":Ljava/lang/String;
    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames;->-getandroid_icu_impl_TimeZoneGenericNames$GenericNameTypeSwitchesValues()[I

    #@5
    move-result-object v2

    #@6
    invoke-virtual {p2}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->ordinal()I

    #@9
    move-result v3

    #@a
    aget v2, v2, v3

    #@c
    packed-switch v2, :pswitch_data_0

    #@f
    .line 214
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "tzCanonicalID":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    #@10
    .line 198
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "tzCanonicalID":Ljava/lang/String;
    :pswitch_0
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 199
    .local v1, "tzCanonicalID":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@16
    .line 200
    invoke-virtual {p0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    #@1b
    .line 205
    .local v0, "name":Ljava/lang/String;
    .local v1, "tzCanonicalID":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/TimeZoneGenericNames;->formatGenericNonLocationName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 206
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    #@21
    .line 207
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 208
    .local v1, "tzCanonicalID":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@27
    .line 209
    invoke-virtual {p0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    goto :goto_0

    #@2c
    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "canonicalTzID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 224
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v7

    #@9
    if-nez v7, :cond_1

    #@b
    .line 225
    :cond_0
    return-object v8

    #@c
    .line 227
    :cond_1
    iget-object v7, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@e
    invoke-virtual {v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v5

    #@12
    check-cast v5, Ljava/lang/String;

    #@14
    .line 228
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_3

    #@16
    .line 229
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@19
    move-result v7

    #@1a
    if-nez v7, :cond_2

    #@1c
    .line 231
    return-object v8

    #@1d
    .line 233
    :cond_2
    return-object v5

    #@1e
    .line 236
    :cond_3
    new-instance v4, Landroid/icu/util/Output;

    #@20
    invoke-direct {v4}, Landroid/icu/util/Output;-><init>()V

    #@23
    .line 237
    .local v4, "isPrimary":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    invoke-static {p1, v4}, Landroid/icu/impl/ZoneMeta;->getCanonicalCountry(Ljava/lang/String;Landroid/icu/util/Output;)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 238
    .local v2, "countryCode":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@29
    .line 239
    iget-object v7, v4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@2b
    check-cast v7, Ljava/lang/Boolean;

    #@2d
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    #@30
    move-result v7

    #@31
    if-eqz v7, :cond_5

    #@33
    .line 241
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getLocaleDisplayNames()Landroid/icu/text/LocaleDisplayNames;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7, v2}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 242
    .local v1, "country":Ljava/lang/String;
    sget-object v7, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@3d
    new-array v8, v10, [Ljava/lang/String;

    #@3f
    aput-object v1, v8, v9

    #@41
    invoke-direct {p0, v7, v8}, Landroid/icu/impl/TimeZoneGenericNames;->formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 254
    .end local v1    # "country":Ljava/lang/String;
    :cond_4
    :goto_0
    if-nez v5, :cond_6

    #@47
    .line 255
    iget-object v7, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@49
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@4c
    move-result-object v8

    #@4d
    const-string/jumbo v9, ""

    #@50
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 271
    :goto_1
    return-object v5

    #@54
    .line 249
    :cond_5
    iget-object v7, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    #@56
    invoke-virtual {v7, p1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    .line 250
    .local v0, "city":Ljava/lang/String;
    sget-object v7, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@5c
    new-array v8, v10, [Ljava/lang/String;

    #@5e
    aput-object v0, v8, v9

    #@60
    invoke-direct {p0, v7, v8}, Landroid/icu/impl/TimeZoneGenericNames;->formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    goto :goto_0

    #@65
    .line 257
    .end local v0    # "city":Ljava/lang/String;
    :cond_6
    monitor-enter p0

    #@66
    .line 258
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@69
    move-result-object p1

    #@6a
    .line 259
    iget-object v7, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@6c
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@6f
    move-result-object v8

    #@70
    invoke-virtual {v7, p1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@73
    move-result-object v6

    #@74
    check-cast v6, Ljava/lang/String;

    #@76
    .line 260
    .local v6, "tmp":Ljava/lang/String;
    if-nez v6, :cond_7

    #@78
    .line 262
    new-instance v3, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;

    #@7a
    const/4 v7, 0x0

    #@7b
    invoke-direct {v3, v7}, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;-><init>(Landroid/icu/impl/TimeZoneGenericNames$NameInfo;)V

    #@7e
    .line 263
    .local v3, "info":Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
    iput-object p1, v3, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->tzID:Ljava/lang/String;

    #@80
    .line 264
    sget-object v7, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@82
    iput-object v7, v3, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@84
    .line 265
    iget-object v7, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    #@86
    invoke-virtual {v7, v5, v3}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@89
    .end local v3    # "info":Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
    :goto_2
    monitor-exit p0

    #@8a
    goto :goto_1

    #@8b
    .line 267
    :cond_7
    move-object v5, v6

    #@8c
    goto :goto_2

    #@8d
    .line 257
    .end local v6    # "tmp":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@8e
    monitor-exit p0

    #@8f
    throw v7
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 912
    iget-boolean v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_frozen:Z

    #@2
    return v0
.end method

.method public setFormatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;Ljava/lang/String;)Landroid/icu/impl/TimeZoneGenericNames;
    .locals 3
    .param p1, "patType"    # Landroid/icu/impl/TimeZoneGenericNames$Pattern;
    .param p2, "patStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 282
    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneGenericNames;->isFrozen()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string/jumbo v1, "Attempt to modify frozen object"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 287
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@12
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 288
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@1f
    .line 290
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@21
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_2

    #@27
    .line 291
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@29
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@2c
    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    #@2e
    .line 293
    :cond_2
    iput-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    #@30
    .line 294
    const/4 v0, 0x0

    #@31
    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    #@33
    .line 296
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    #@35
    if-nez v0, :cond_3

    #@37
    .line 297
    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->values()[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    #@3a
    move-result-object v0

    #@3b
    array-length v0, v0

    #@3c
    new-array v0, v0, [Ljava/text/MessageFormat;

    #@3e
    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    #@40
    .line 299
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    #@42
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->ordinal()I

    #@45
    move-result v1

    #@46
    new-instance v2, Ljava/text/MessageFormat;

    #@48
    invoke-direct {v2, p2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@4b
    aput-object v2, v0, v1

    #@4d
    .line 300
    return-object p0
.end method
