.class public Landroid/icu/impl/LocaleDisplayNamesImpl;
.super Landroid/icu/text/LocaleDisplayNames;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$LangDataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;,
        Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;
    }
.end annotation


# static fields
.field private static synthetic -android_icu_impl_LocaleDisplayNamesImpl$DataTableTypeSwitchesValues:[I

.field private static synthetic -android_icu_text_DisplayContext$TypeSwitchesValues:[I

.field private static final cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

.field private static final contextUsageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final capitalization:Landroid/icu/text/DisplayContext;

.field private transient capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private capitalizationUsage:[Z

.field private final currencyDisplayInfo:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

.field private final dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

.field private final format:Landroid/icu/text/MessageFormat;

.field private final formatCloseParen:C

.field private final formatOpenParen:C

.field private final formatReplaceCloseParen:C

.field private final formatReplaceOpenParen:C

.field private final keyTypeFormat:Landroid/icu/text/MessageFormat;

.field private final langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

.field private final locale:Landroid/icu/util/ULocale;

.field private final nameLength:Landroid/icu/text/DisplayContext;

.field private final regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

.field private final separatorFormat:Landroid/icu/text/MessageFormat;


# direct methods
.method private static synthetic -getandroid_icu_impl_LocaleDisplayNamesImpl$DataTableTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->-android_icu_impl_LocaleDisplayNamesImpl$DataTableTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->-android_icu_impl_LocaleDisplayNamesImpl$DataTableTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->values()[Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->LANG:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@10
    invoke-virtual {v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->REGION:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@19
    invoke-virtual {v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->-android_icu_impl_LocaleDisplayNamesImpl$DataTableTypeSwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method private static synthetic -getandroid_icu_text_DisplayContext$TypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->-android_icu_text_DisplayContext$TypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->-android_icu_text_DisplayContext$TypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/DisplayContext$Type;->values()[Landroid/icu/text/DisplayContext$Type;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

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
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

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
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    #@22
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

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
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->-android_icu_text_DisplayContext$TypeSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 51
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;-><init>(Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;)V

    #@6
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    #@8
    .line 74
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    #@f
    .line 75
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    #@11
    const-string/jumbo v1, "languages"

    #@14
    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 76
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    #@1b
    const-string/jumbo v1, "script"

    #@1e
    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@20
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 77
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    #@25
    const-string/jumbo v1, "territory"

    #@28
    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@2a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 78
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    #@2f
    const-string/jumbo v1, "variant"

    #@32
    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 79
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    #@39
    const-string/jumbo v1, "key"

    #@3c
    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@3e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 80
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    #@43
    const-string/jumbo v1, "keyValue"

    #@46
    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V
    .locals 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "dialectHandling"    # Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@0
    .prologue
    .line 101
    const/4 v0, 0x2

    #@1
    new-array v1, v0, [Landroid/icu/text/DisplayContext;

    #@3
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@5
    if-ne p2, v0, :cond_0

    #@7
    sget-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    #@9
    :goto_0
    const/4 v2, 0x0

    #@a
    aput-object v0, v1, v2

    #@c
    .line 102
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v0, v1, v2

    #@11
    .line 101
    invoke-direct {p0, p1, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V

    #@14
    .line 100
    return-void

    #@15
    .line 101
    :cond_0
    sget-object v0, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    #@17
    goto :goto_0
.end method

.method public varargs constructor <init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V
    .locals 24
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "contexts"    # [Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/LocaleDisplayNames;-><init>()V

    #@3
    .line 68
    const/16 v20, 0x0

    #@5
    move-object/from16 v0, v20

    #@7
    move-object/from16 v1, p0

    #@9
    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    #@b
    .line 85
    const/16 v20, 0x0

    #@d
    move-object/from16 v0, v20

    #@f
    move-object/from16 v1, p0

    #@11
    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@13
    .line 106
    sget-object v8, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@15
    .line 107
    .local v8, "dialectHandling":Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    sget-object v3, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@17
    .line 108
    .local v3, "capitalization":Landroid/icu/text/DisplayContext;
    sget-object v12, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    #@19
    .line 109
    .local v12, "nameLength":Landroid/icu/text/DisplayContext;
    const/16 v20, 0x0

    #@1b
    move-object/from16 v0, p2

    #@1d
    array-length v0, v0

    #@1e
    move/from16 v21, v0

    #@20
    :goto_0
    move/from16 v0, v20

    #@22
    move/from16 v1, v21

    #@24
    if-ge v0, v1, :cond_1

    #@26
    aget-object v4, p2, v20

    #@28
    .line 110
    .local v4, "contextItem":Landroid/icu/text/DisplayContext;
    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl;->-getandroid_icu_text_DisplayContext$TypeSwitchesValues()[I

    #@2b
    move-result-object v22

    #@2c
    invoke-virtual {v4}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    #@2f
    move-result-object v23

    #@30
    invoke-virtual/range {v23 .. v23}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    #@33
    move-result v23

    #@34
    aget v22, v22, v23

    #@36
    packed-switch v22, :pswitch_data_0

    #@39
    .line 109
    :goto_1
    add-int/lit8 v20, v20, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 112
    :pswitch_0
    invoke-virtual {v4}, Landroid/icu/text/DisplayContext;->value()I

    #@3f
    move-result v22

    #@40
    sget-object v23, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    #@42
    invoke-virtual/range {v23 .. v23}, Landroid/icu/text/DisplayContext;->value()I

    #@45
    move-result v23

    #@46
    move/from16 v0, v22

    #@48
    move/from16 v1, v23

    #@4a
    if-ne v0, v1, :cond_0

    #@4c
    .line 113
    sget-object v8, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@4e
    goto :goto_1

    #@4f
    :cond_0
    sget-object v8, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@51
    goto :goto_1

    #@52
    .line 116
    :pswitch_1
    move-object v3, v4

    #@53
    .line 117
    goto :goto_1

    #@54
    .line 119
    :pswitch_2
    move-object v12, v4

    #@55
    .line 120
    goto :goto_1

    #@56
    .line 126
    .end local v4    # "contextItem":Landroid/icu/text/DisplayContext;
    :cond_1
    move-object/from16 v0, p0

    #@58
    iput-object v8, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@5a
    .line 127
    move-object/from16 v0, p0

    #@5c
    iput-object v3, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalization:Landroid/icu/text/DisplayContext;

    #@5e
    .line 128
    move-object/from16 v0, p0

    #@60
    iput-object v12, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    #@62
    .line 129
    sget-object v20, Landroid/icu/impl/LocaleDisplayNamesImpl$LangDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    #@64
    move-object/from16 v0, v20

    #@66
    move-object/from16 v1, p1

    #@68
    invoke-virtual {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;->get(Landroid/icu/util/ULocale;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@6b
    move-result-object v20

    #@6c
    move-object/from16 v0, v20

    #@6e
    move-object/from16 v1, p0

    #@70
    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@72
    .line 130
    sget-object v20, Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    #@74
    move-object/from16 v0, v20

    #@76
    move-object/from16 v1, p1

    #@78
    invoke-virtual {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;->get(Landroid/icu/util/ULocale;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@7b
    move-result-object v20

    #@7c
    move-object/from16 v0, v20

    #@7e
    move-object/from16 v1, p0

    #@80
    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@82
    .line 131
    sget-object v20, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@84
    move-object/from16 v0, p0

    #@86
    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@88
    move-object/from16 v21, v0

    #@8a
    invoke-virtual/range {v21 .. v21}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Landroid/icu/util/ULocale;

    #@8d
    move-result-object v21

    #@8e
    invoke-virtual/range {v20 .. v21}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v20

    #@92
    if-eqz v20, :cond_7

    #@94
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@98
    move-object/from16 v20, v0

    #@9a
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Landroid/icu/util/ULocale;

    #@9d
    move-result-object v20

    #@9e
    :goto_2
    move-object/from16 v0, v20

    #@a0
    move-object/from16 v1, p0

    #@a2
    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    #@a4
    .line 138
    move-object/from16 v0, p0

    #@a6
    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@a8
    move-object/from16 v20, v0

    #@aa
    const-string/jumbo v21, "localeDisplayPattern"

    #@ad
    const-string/jumbo v22, "separator"

    #@b0
    invoke-virtual/range {v20 .. v22}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b3
    move-result-object v16

    #@b4
    .line 139
    .local v16, "sep":Ljava/lang/String;
    const-string/jumbo v20, "separator"

    #@b7
    move-object/from16 v0, v20

    #@b9
    move-object/from16 v1, v16

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@be
    move-result v20

    #@bf
    if-eqz v20, :cond_2

    #@c1
    .line 140
    const-string/jumbo v16, "{0}, {1}"

    #@c4
    .line 142
    :cond_2
    new-instance v20, Landroid/icu/text/MessageFormat;

    #@c6
    move-object/from16 v0, v20

    #@c8
    move-object/from16 v1, v16

    #@ca
    invoke-direct {v0, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@cd
    move-object/from16 v0, v20

    #@cf
    move-object/from16 v1, p0

    #@d1
    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->separatorFormat:Landroid/icu/text/MessageFormat;

    #@d3
    .line 144
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@d7
    move-object/from16 v20, v0

    #@d9
    const-string/jumbo v21, "localeDisplayPattern"

    #@dc
    const-string/jumbo v22, "pattern"

    #@df
    invoke-virtual/range {v20 .. v22}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e2
    move-result-object v14

    #@e3
    .line 145
    .local v14, "pattern":Ljava/lang/String;
    const-string/jumbo v20, "pattern"

    #@e6
    move-object/from16 v0, v20

    #@e8
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@eb
    move-result v20

    #@ec
    if-eqz v20, :cond_3

    #@ee
    .line 146
    const-string/jumbo v14, "{0} ({1})"

    #@f1
    .line 148
    :cond_3
    new-instance v20, Landroid/icu/text/MessageFormat;

    #@f3
    move-object/from16 v0, v20

    #@f5
    invoke-direct {v0, v14}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@f8
    move-object/from16 v0, v20

    #@fa
    move-object/from16 v1, p0

    #@fc
    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->format:Landroid/icu/text/MessageFormat;

    #@fe
    .line 149
    const-string/jumbo v20, "\uff08"

    #@101
    move-object/from16 v0, v20

    #@103
    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@106
    move-result v20

    #@107
    if-eqz v20, :cond_8

    #@109
    .line 150
    const v20, 0xff08

    #@10c
    move/from16 v0, v20

    #@10e
    move-object/from16 v1, p0

    #@110
    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    #@112
    .line 151
    const v20, 0xff09

    #@115
    move/from16 v0, v20

    #@117
    move-object/from16 v1, p0

    #@119
    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    #@11b
    .line 152
    const v20, 0xff3b

    #@11e
    move/from16 v0, v20

    #@120
    move-object/from16 v1, p0

    #@122
    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    #@124
    .line 153
    const v20, 0xff3d

    #@127
    move/from16 v0, v20

    #@129
    move-object/from16 v1, p0

    #@12b
    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    #@12d
    .line 161
    :goto_3
    move-object/from16 v0, p0

    #@12f
    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@131
    move-object/from16 v20, v0

    #@133
    const-string/jumbo v21, "localeDisplayPattern"

    #@136
    const-string/jumbo v22, "keyTypePattern"

    #@139
    invoke-virtual/range {v20 .. v22}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@13c
    move-result-object v11

    #@13d
    .line 162
    .local v11, "keyTypePattern":Ljava/lang/String;
    const-string/jumbo v20, "keyTypePattern"

    #@140
    move-object/from16 v0, v20

    #@142
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@145
    move-result v20

    #@146
    if-eqz v20, :cond_4

    #@148
    .line 163
    const-string/jumbo v11, "{0}={1}"

    #@14b
    .line 165
    :cond_4
    new-instance v20, Landroid/icu/text/MessageFormat;

    #@14d
    move-object/from16 v0, v20

    #@14f
    invoke-direct {v0, v11}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@152
    move-object/from16 v0, v20

    #@154
    move-object/from16 v1, p0

    #@156
    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyTypeFormat:Landroid/icu/text/MessageFormat;

    #@158
    .line 169
    const/4 v13, 0x0

    #@159
    .line 170
    .local v13, "needBrkIter":Z
    sget-object v20, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@15b
    move-object/from16 v0, v20

    #@15d
    if-eq v3, v0, :cond_5

    #@15f
    .line 171
    sget-object v20, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    #@161
    move-object/from16 v0, v20

    #@163
    if-ne v3, v0, :cond_a

    #@165
    .line 172
    :cond_5
    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->values()[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@168
    move-result-object v20

    #@169
    move-object/from16 v0, v20

    #@16b
    array-length v0, v0

    #@16c
    move/from16 v20, v0

    #@16e
    move/from16 v0, v20

    #@170
    new-array v0, v0, [Z

    #@172
    move-object/from16 v20, v0

    #@174
    move-object/from16 v0, v20

    #@176
    move-object/from16 v1, p0

    #@178
    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    #@17a
    .line 173
    const-string/jumbo v20, "android/icu/impl/data/icudt55b"

    #@17d
    move-object/from16 v0, v20

    #@17f
    move-object/from16 v1, p1

    #@181
    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@184
    move-result-object v15

    #@185
    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    #@187
    .line 174
    .local v15, "rb":Landroid/icu/impl/ICUResourceBundle;
    const/4 v6, 0x0

    #@188
    .line 176
    .local v6, "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    :try_start_0
    const-string/jumbo v20, "contextTransforms"

    #@18b
    move-object/from16 v0, v20

    #@18d
    invoke-virtual {v15, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@190
    move-result-object v6

    #@191
    .line 181
    .end local v6    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    :goto_4
    if-eqz v6, :cond_a

    #@193
    .line 182
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@196
    move-result-object v7

    #@197
    .line 183
    .local v7, "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    :cond_6
    :goto_5
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@19a
    move-result v20

    #@19b
    if-eqz v20, :cond_a

    #@19d
    .line 184
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@1a0
    move-result-object v5

    #@1a1
    .line 185
    .local v5, "contextTransformUsage":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    #@1a4
    move-result-object v10

    #@1a5
    .line 186
    .local v10, "intVector":[I
    array-length v0, v10

    #@1a6
    move/from16 v20, v0

    #@1a8
    const/16 v21, 0x2

    #@1aa
    move/from16 v0, v20

    #@1ac
    move/from16 v1, v21

    #@1ae
    if-lt v0, v1, :cond_6

    #@1b0
    .line 187
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@1b3
    move-result-object v19

    #@1b4
    .line 188
    .local v19, "usageKey":Ljava/lang/String;
    sget-object v20, Landroid/icu/impl/LocaleDisplayNamesImpl;->contextUsageTypeMap:Ljava/util/Map;

    #@1b6
    move-object/from16 v0, v20

    #@1b8
    move-object/from16 v1, v19

    #@1ba
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1bd
    move-result-object v18

    #@1be
    check-cast v18, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@1c0
    .line 189
    .local v18, "usage":Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    if-eqz v18, :cond_6

    #@1c2
    .line 190
    sget-object v20, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@1c4
    move-object/from16 v0, v20

    #@1c6
    if-ne v3, v0, :cond_9

    #@1c8
    .line 191
    const/16 v20, 0x0

    #@1ca
    aget v17, v10, v20

    #@1cc
    .line 192
    .local v17, "titlecaseInt":I
    :goto_6
    if-eqz v17, :cond_6

    #@1ce
    .line 193
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    #@1d2
    move-object/from16 v20, v0

    #@1d4
    invoke-virtual/range {v18 .. v18}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->ordinal()I

    #@1d7
    move-result v21

    #@1d8
    const/16 v22, 0x1

    #@1da
    aput-boolean v22, v20, v21

    #@1dc
    .line 194
    const/4 v13, 0x1

    #@1dd
    goto :goto_5

    #@1de
    .line 132
    .end local v5    # "contextTransformUsage":Landroid/icu/util/UResourceBundle;
    .end local v7    # "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    .end local v10    # "intVector":[I
    .end local v11    # "keyTypePattern":Ljava/lang/String;
    .end local v13    # "needBrkIter":Z
    .end local v14    # "pattern":Ljava/lang/String;
    .end local v15    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v16    # "sep":Ljava/lang/String;
    .end local v17    # "titlecaseInt":I
    .end local v18    # "usage":Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    .end local v19    # "usageKey":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@1e2
    move-object/from16 v20, v0

    #@1e4
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->getLocale()Landroid/icu/util/ULocale;

    #@1e7
    move-result-object v20

    #@1e8
    goto/16 :goto_2

    #@1ea
    .line 155
    .restart local v14    # "pattern":Ljava/lang/String;
    .restart local v16    # "sep":Ljava/lang/String;
    :cond_8
    const/16 v20, 0x28

    #@1ec
    move/from16 v0, v20

    #@1ee
    move-object/from16 v1, p0

    #@1f0
    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    #@1f2
    .line 156
    const/16 v20, 0x29

    #@1f4
    move/from16 v0, v20

    #@1f6
    move-object/from16 v1, p0

    #@1f8
    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    #@1fa
    .line 157
    const/16 v20, 0x5b

    #@1fc
    move/from16 v0, v20

    #@1fe
    move-object/from16 v1, p0

    #@200
    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    #@202
    .line 158
    const/16 v20, 0x5d

    #@204
    move/from16 v0, v20

    #@206
    move-object/from16 v1, p0

    #@208
    iput-char v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    #@20a
    goto/16 :goto_3

    #@20c
    .line 178
    .restart local v6    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    .restart local v11    # "keyTypePattern":Ljava/lang/String;
    .restart local v13    # "needBrkIter":Z
    .restart local v15    # "rb":Landroid/icu/impl/ICUResourceBundle;
    :catch_0
    move-exception v9

    #@20d
    .line 179
    .local v9, "e":Ljava/util/MissingResourceException;
    const/4 v6, 0x0

    #@20e
    goto :goto_4

    #@20f
    .line 191
    .end local v6    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    .end local v9    # "e":Ljava/util/MissingResourceException;
    .restart local v5    # "contextTransformUsage":Landroid/icu/util/UResourceBundle;
    .restart local v7    # "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    .restart local v10    # "intVector":[I
    .restart local v18    # "usage":Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    .restart local v19    # "usageKey":Ljava/lang/String;
    :cond_9
    const/16 v20, 0x1

    #@211
    aget v17, v10, v20

    #@213
    .restart local v17    # "titlecaseInt":I
    goto :goto_6

    #@214
    .line 202
    .end local v5    # "contextTransformUsage":Landroid/icu/util/UResourceBundle;
    .end local v7    # "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    .end local v10    # "intVector":[I
    .end local v15    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v17    # "titlecaseInt":I
    .end local v18    # "usage":Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    .end local v19    # "usageKey":Ljava/lang/String;
    :cond_a
    if-nez v13, :cond_b

    #@216
    sget-object v20, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@218
    move-object/from16 v0, v20

    #@21a
    if-ne v3, v0, :cond_c

    #@21c
    .line 203
    :cond_b
    invoke-static/range {p1 .. p1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@21f
    move-result-object v20

    #@220
    move-object/from16 v0, v20

    #@222
    move-object/from16 v1, p0

    #@224
    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@226
    .line 206
    :cond_c
    sget-object v20, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    #@228
    const/16 v21, 0x0

    #@22a
    move-object/from16 v0, v20

    #@22c
    move-object/from16 v1, p1

    #@22e
    move/from16 v2, v21

    #@230
    invoke-interface {v0, v1, v2}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    #@233
    move-result-object v20

    #@234
    move-object/from16 v0, v20

    #@236
    move-object/from16 v1, p0

    #@238
    iput-object v0, v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->currencyDisplayInfo:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    #@23a
    .line 105
    return-void

    #@23b
    .line 110
    nop

    #@23c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "usage"    # Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 240
    if-eqz p2, :cond_2

    #@3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_2

    #@9
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    #@c
    move-result v0

    #@d
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 241
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalization:Landroid/icu/text/DisplayContext;

    #@15
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@17
    if-eq v0, v1, :cond_0

    #@19
    .line 242
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    #@1b
    if-eqz v0, :cond_2

    #@1d
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationUsage:[Z

    #@1f
    invoke-virtual {p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->ordinal()I

    #@22
    move-result v1

    #@23
    aget-boolean v0, v0, v1

    #@25
    .line 240
    if-eqz v0, :cond_2

    #@27
    .line 245
    :cond_0
    monitor-enter p0

    #@28
    .line 246
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@2a
    if-nez v0, :cond_1

    #@2c
    .line 248
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    #@2e
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@34
    .line 250
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    #@36
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    #@38
    .line 251
    const/16 v2, 0x300

    #@3a
    .line 250
    invoke-static {v0, p2, v1, v2}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    move-result-object v0

    #@3e
    monitor-exit p0

    #@3f
    return-object v0

    #@40
    .line 245
    :catchall_0
    move-exception v0

    #@41
    monitor-exit p0

    #@42
    throw v0

    #@43
    .line 254
    :cond_2
    return-object p2
.end method

.method private appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 639
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 640
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 645
    :goto_0
    return-object p2

    #@b
    .line 642
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->separatorFormat:Landroid/icu/text/MessageFormat;

    #@d
    const/4 v2, 0x2

    #@e
    new-array v2, v2, [Ljava/lang/String;

    #@10
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    aput-object v3, v2, v4

    #@16
    const/4 v3, 0x1

    #@17
    aput-object p1, v2, v3

    #@19
    invoke-virtual {v1, v2}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 643
    .local v0, "combined":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    #@20
    move-result v1

    #@21
    invoke-virtual {p2, v4, v1, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    goto :goto_0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "dialectHandling"    # Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@0
    .prologue
    .line 89
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    #@2
    monitor-enter v1

    #@3
    .line 90
    :try_start_0
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    #@5
    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->get(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 89
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public static varargs getInstance(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "contexts"    # [Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    .line 95
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    #@2
    monitor-enter v1

    #@3
    .line 96
    :try_start_0
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->cache:Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;

    #@5
    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->get(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 95
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public static haveData(Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;)Z
    .locals 3
    .param p0, "type"    # Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    #@0
    .prologue
    .line 630
    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl;->-getandroid_icu_impl_LocaleDisplayNamesImpl$DataTableTypeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "unknown type: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 631
    :pswitch_0
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$LangDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    #@29
    instance-of v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;

    #@2b
    return v0

    #@2c
    .line 632
    :pswitch_1
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$RegionDataTables;->impl:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;

    #@2e
    instance-of v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;

    #@30
    return v0

    #@31
    .line 630
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 26
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 278
    const/16 v17, 0x0

    #@2
    .line 280
    .local v17, "resultName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@5
    move-result-object v12

    #@6
    .line 285
    .local v12, "lang":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@9
    move-result-object v23

    #@a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@d
    move-result v23

    #@e
    if-nez v23, :cond_0

    #@10
    .line 286
    const-string/jumbo v12, "root"

    #@13
    .line 288
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@16
    move-result-object v19

    #@17
    .line 289
    .local v19, "script":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    .line 290
    .local v4, "country":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@1e
    move-result-object v22

    #@1f
    .line 292
    .local v22, "variant":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    #@22
    move-result v23

    #@23
    if-lez v23, :cond_6

    #@25
    const/4 v6, 0x1

    #@26
    .line 293
    .local v6, "hasScript":Z
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@29
    move-result v23

    #@2a
    if-lez v23, :cond_7

    #@2c
    const/4 v5, 0x1

    #@2d
    .line 294
    .local v5, "hasCountry":Z
    :goto_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    #@30
    move-result v23

    #@31
    if-lez v23, :cond_8

    #@33
    const/4 v7, 0x1

    #@34
    .line 297
    .local v7, "hasVariant":Z
    :goto_2
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@38
    move-object/from16 v23, v0

    #@3a
    sget-object v24, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@3c
    move-object/from16 v0, v23

    #@3e
    move-object/from16 v1, v24

    #@40
    if-ne v0, v1, :cond_1

    #@42
    .line 299
    if-eqz v6, :cond_9

    #@44
    if-eqz v5, :cond_9

    #@46
    .line 300
    new-instance v23, Ljava/lang/StringBuilder;

    #@48
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    move-object/from16 v0, v23

    #@4d
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v23

    #@51
    const/16 v24, 0x5f

    #@53
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    move-result-object v23

    #@57
    move-object/from16 v0, v23

    #@59
    move-object/from16 v1, v19

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v23

    #@5f
    const/16 v24, 0x5f

    #@61
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@64
    move-result-object v23

    #@65
    move-object/from16 v0, v23

    #@67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v23

    #@6b
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v15

    #@6f
    .line 301
    .local v15, "langScriptCountry":Ljava/lang/String;
    move-object/from16 v0, p0

    #@71
    invoke-direct {v0, v15}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    #@74
    move-result-object v16

    #@75
    .line 302
    .local v16, "result":Ljava/lang/String;
    move-object/from16 v0, v16

    #@77
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v23

    #@7b
    if-nez v23, :cond_9

    #@7d
    .line 303
    move-object/from16 v17, v16

    #@7f
    .line 304
    .local v17, "resultName":Ljava/lang/String;
    const/4 v6, 0x0

    #@80
    .line 305
    const/4 v5, 0x0

    #@81
    .line 330
    .end local v15    # "langScriptCountry":Ljava/lang/String;
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "resultName":Ljava/lang/String;
    :cond_1
    :goto_3
    if-nez v17, :cond_2

    #@83
    .line 331
    move-object/from16 v0, p0

    #@85
    invoke-direct {v0, v12}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    #@88
    move-result-object v23

    #@89
    .line 332
    move-object/from16 v0, p0

    #@8b
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    #@8d
    move/from16 v24, v0

    #@8f
    move-object/from16 v0, p0

    #@91
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    #@93
    move/from16 v25, v0

    #@95
    .line 331
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@98
    move-result-object v23

    #@99
    .line 333
    move-object/from16 v0, p0

    #@9b
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    #@9d
    move/from16 v24, v0

    #@9f
    move-object/from16 v0, p0

    #@a1
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    #@a3
    move/from16 v25, v0

    #@a5
    .line 331
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@a8
    move-result-object v17

    #@a9
    .line 336
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    .line 337
    .local v3, "buf":Ljava/lang/StringBuilder;
    if-eqz v6, :cond_3

    #@b0
    .line 339
    move-object/from16 v0, p0

    #@b2
    move-object/from16 v1, v19

    #@b4
    invoke-virtual {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;

    #@b7
    move-result-object v23

    #@b8
    .line 340
    move-object/from16 v0, p0

    #@ba
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    #@bc
    move/from16 v24, v0

    #@be
    move-object/from16 v0, p0

    #@c0
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    #@c2
    move/from16 v25, v0

    #@c4
    .line 339
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@c7
    move-result-object v23

    #@c8
    .line 341
    move-object/from16 v0, p0

    #@ca
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    #@cc
    move/from16 v24, v0

    #@ce
    move-object/from16 v0, p0

    #@d0
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    #@d2
    move/from16 v25, v0

    #@d4
    .line 339
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@d7
    move-result-object v23

    #@d8
    move-object/from16 v0, v23

    #@da
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    .line 343
    :cond_3
    if-eqz v5, :cond_4

    #@df
    .line 344
    move-object/from16 v0, p0

    #@e1
    invoke-virtual {v0, v4}, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    #@e4
    move-result-object v23

    #@e5
    .line 345
    move-object/from16 v0, p0

    #@e7
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    #@e9
    move/from16 v24, v0

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    #@ef
    move/from16 v25, v0

    #@f1
    .line 344
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@f4
    move-result-object v23

    #@f5
    .line 346
    move-object/from16 v0, p0

    #@f7
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    #@f9
    move/from16 v24, v0

    #@fb
    move-object/from16 v0, p0

    #@fd
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    #@ff
    move/from16 v25, v0

    #@101
    .line 344
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@104
    move-result-object v23

    #@105
    move-object/from16 v0, p0

    #@107
    move-object/from16 v1, v23

    #@109
    invoke-direct {v0, v1, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@10c
    .line 348
    :cond_4
    if-eqz v7, :cond_5

    #@10e
    .line 349
    move-object/from16 v0, p0

    #@110
    move-object/from16 v1, v22

    #@112
    invoke-virtual {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->variantDisplayName(Ljava/lang/String;)Ljava/lang/String;

    #@115
    move-result-object v23

    #@116
    .line 350
    move-object/from16 v0, p0

    #@118
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    #@11a
    move/from16 v24, v0

    #@11c
    move-object/from16 v0, p0

    #@11e
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    #@120
    move/from16 v25, v0

    #@122
    .line 349
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@125
    move-result-object v23

    #@126
    .line 351
    move-object/from16 v0, p0

    #@128
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    #@12a
    move/from16 v24, v0

    #@12c
    move-object/from16 v0, p0

    #@12e
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    #@130
    move/from16 v25, v0

    #@132
    .line 349
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@135
    move-result-object v23

    #@136
    move-object/from16 v0, p0

    #@138
    move-object/from16 v1, v23

    #@13a
    invoke-direct {v0, v1, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@13d
    .line 354
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    #@140
    move-result-object v11

    #@141
    .line 355
    .local v11, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v11, :cond_d

    #@143
    .line 356
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@146
    move-result v23

    #@147
    if-eqz v23, :cond_d

    #@149
    .line 357
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14c
    move-result-object v8

    #@14d
    check-cast v8, Ljava/lang/String;

    #@14f
    .line 358
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    #@151
    invoke-virtual {v0, v8}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@154
    move-result-object v20

    #@155
    .line 359
    .local v20, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    #@157
    invoke-virtual {v0, v8}, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyDisplayName(Ljava/lang/String;)Ljava/lang/String;

    #@15a
    move-result-object v23

    #@15b
    .line 360
    move-object/from16 v0, p0

    #@15d
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    #@15f
    move/from16 v24, v0

    #@161
    move-object/from16 v0, p0

    #@163
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    #@165
    move/from16 v25, v0

    #@167
    .line 359
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@16a
    move-result-object v23

    #@16b
    .line 361
    move-object/from16 v0, p0

    #@16d
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    #@16f
    move/from16 v24, v0

    #@171
    move-object/from16 v0, p0

    #@173
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    #@175
    move/from16 v25, v0

    #@177
    .line 359
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@17a
    move-result-object v9

    #@17b
    .line 362
    .local v9, "keyDisplayName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@17d
    move-object/from16 v1, v20

    #@17f
    invoke-virtual {v0, v8, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@182
    move-result-object v23

    #@183
    .line 363
    move-object/from16 v0, p0

    #@185
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatOpenParen:C

    #@187
    move/from16 v24, v0

    #@189
    move-object/from16 v0, p0

    #@18b
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceOpenParen:C

    #@18d
    move/from16 v25, v0

    #@18f
    .line 362
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@192
    move-result-object v23

    #@193
    .line 364
    move-object/from16 v0, p0

    #@195
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatCloseParen:C

    #@197
    move/from16 v24, v0

    #@199
    move-object/from16 v0, p0

    #@19b
    iget-char v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->formatReplaceCloseParen:C

    #@19d
    move/from16 v25, v0

    #@19f
    .line 362
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1a2
    move-result-object v21

    #@1a3
    .line 365
    .local v21, "valueDisplayName":Ljava/lang/String;
    move-object/from16 v0, v21

    #@1a5
    move-object/from16 v1, v20

    #@1a7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1aa
    move-result v23

    #@1ab
    if-nez v23, :cond_b

    #@1ad
    .line 366
    move-object/from16 v0, p0

    #@1af
    move-object/from16 v1, v21

    #@1b1
    invoke-direct {v0, v1, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@1b4
    goto :goto_4

    #@1b5
    .line 292
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .end local v5    # "hasCountry":Z
    .end local v6    # "hasScript":Z
    .end local v7    # "hasVariant":Z
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "keyDisplayName":Ljava/lang/String;
    .end local v11    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20    # "value":Ljava/lang/String;
    .end local v21    # "valueDisplayName":Ljava/lang/String;
    .local v17, "resultName":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    #@1b6
    .restart local v6    # "hasScript":Z
    goto/16 :goto_0

    #@1b8
    .line 293
    :cond_7
    const/4 v5, 0x0

    #@1b9
    .restart local v5    # "hasCountry":Z
    goto/16 :goto_1

    #@1bb
    .line 294
    :cond_8
    const/4 v7, 0x0

    #@1bc
    .restart local v7    # "hasVariant":Z
    goto/16 :goto_2

    #@1be
    .line 309
    :cond_9
    if-eqz v6, :cond_a

    #@1c0
    .line 310
    new-instance v23, Ljava/lang/StringBuilder;

    #@1c2
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1c5
    move-object/from16 v0, v23

    #@1c7
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v23

    #@1cb
    const/16 v24, 0x5f

    #@1cd
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v23

    #@1d1
    move-object/from16 v0, v23

    #@1d3
    move-object/from16 v1, v19

    #@1d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v23

    #@1d9
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1dc
    move-result-object v14

    #@1dd
    .line 311
    .local v14, "langScript":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1df
    invoke-direct {v0, v14}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    #@1e2
    move-result-object v16

    #@1e3
    .line 312
    .restart local v16    # "result":Ljava/lang/String;
    move-object/from16 v0, v16

    #@1e5
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e8
    move-result v23

    #@1e9
    if-nez v23, :cond_a

    #@1eb
    .line 313
    move-object/from16 v17, v16

    #@1ed
    .line 314
    .local v17, "resultName":Ljava/lang/String;
    const/4 v6, 0x0

    #@1ee
    .line 315
    goto/16 :goto_3

    #@1f0
    .line 318
    .end local v14    # "langScript":Ljava/lang/String;
    .end local v16    # "result":Ljava/lang/String;
    .local v17, "resultName":Ljava/lang/String;
    :cond_a
    if-eqz v5, :cond_1

    #@1f2
    .line 319
    new-instance v23, Ljava/lang/StringBuilder;

    #@1f4
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1f7
    move-object/from16 v0, v23

    #@1f9
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v23

    #@1fd
    const/16 v24, 0x5f

    #@1ff
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@202
    move-result-object v23

    #@203
    move-object/from16 v0, v23

    #@205
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v23

    #@209
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20c
    move-result-object v13

    #@20d
    .line 320
    .local v13, "langCountry":Ljava/lang/String;
    move-object/from16 v0, p0

    #@20f
    invoke-direct {v0, v13}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeIdName(Ljava/lang/String;)Ljava/lang/String;

    #@212
    move-result-object v16

    #@213
    .line 321
    .restart local v16    # "result":Ljava/lang/String;
    move-object/from16 v0, v16

    #@215
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@218
    move-result v23

    #@219
    if-nez v23, :cond_1

    #@21b
    .line 322
    move-object/from16 v17, v16

    #@21d
    .line 323
    .local v17, "resultName":Ljava/lang/String;
    const/4 v5, 0x0

    #@21e
    .line 324
    goto/16 :goto_3

    #@220
    .line 367
    .end local v13    # "langCountry":Ljava/lang/String;
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "resultName":Ljava/lang/String;
    .restart local v3    # "buf":Ljava/lang/StringBuilder;
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "keyDisplayName":Ljava/lang/String;
    .restart local v11    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v20    # "value":Ljava/lang/String;
    .restart local v21    # "valueDisplayName":Ljava/lang/String;
    :cond_b
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@223
    move-result v23

    #@224
    if-nez v23, :cond_c

    #@226
    .line 368
    move-object/from16 v0, p0

    #@228
    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->keyTypeFormat:Landroid/icu/text/MessageFormat;

    #@22a
    move-object/from16 v23, v0

    #@22c
    .line 369
    const/16 v24, 0x2

    #@22e
    move/from16 v0, v24

    #@230
    new-array v0, v0, [Ljava/lang/String;

    #@232
    move-object/from16 v24, v0

    #@234
    const/16 v25, 0x0

    #@236
    aput-object v9, v24, v25

    #@238
    const/16 v25, 0x1

    #@23a
    aput-object v21, v24, v25

    #@23c
    .line 368
    invoke-virtual/range {v23 .. v24}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@23f
    move-result-object v10

    #@240
    .line 370
    .local v10, "keyValue":Ljava/lang/String;
    move-object/from16 v0, p0

    #@242
    invoke-direct {v0, v10, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@245
    goto/16 :goto_4

    #@247
    .line 372
    .end local v10    # "keyValue":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    #@249
    invoke-direct {v0, v9, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl;->appendWithSep(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v23

    #@24d
    .line 373
    const-string/jumbo v24, "="

    #@250
    .line 372
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v23

    #@254
    move-object/from16 v0, v23

    #@256
    move-object/from16 v1, v21

    #@258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    goto/16 :goto_4

    #@25d
    .line 379
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "keyDisplayName":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    .end local v21    # "valueDisplayName":Ljava/lang/String;
    :cond_d
    const/16 v18, 0x0

    #@25f
    .line 380
    .local v18, "resultRemainder":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@262
    move-result v23

    #@263
    if-lez v23, :cond_e

    #@265
    .line 381
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@268
    move-result-object v18

    #@269
    .line 384
    .end local v18    # "resultRemainder":Ljava/lang/String;
    :cond_e
    if-eqz v18, :cond_f

    #@26b
    .line 385
    move-object/from16 v0, p0

    #@26d
    iget-object v0, v0, Landroid/icu/impl/LocaleDisplayNamesImpl;->format:Landroid/icu/text/MessageFormat;

    #@26f
    move-object/from16 v23, v0

    #@271
    const/16 v24, 0x2

    #@273
    move/from16 v0, v24

    #@275
    new-array v0, v0, [Ljava/lang/Object;

    #@277
    move-object/from16 v24, v0

    #@279
    const/16 v25, 0x0

    #@27b
    aput-object v17, v24, v25

    #@27d
    const/16 v25, 0x1

    #@27f
    aput-object v18, v24, v25

    #@281
    invoke-virtual/range {v23 .. v24}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@284
    move-result-object v17

    #@285
    .line 388
    :cond_f
    sget-object v23, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@287
    move-object/from16 v0, p0

    #@289
    move-object/from16 v1, v23

    #@28b
    move-object/from16 v2, v17

    #@28d
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    #@290
    move-result-object v23

    #@291
    return-object v23
.end method

.method private localeIdName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "localeId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 392
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    #@2
    sget-object v2, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 393
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@8
    const-string/jumbo v2, "Languages%short"

    #@b
    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 394
    .local v0, "locIdName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    .line 395
    return-object v0

    #@16
    .line 398
    .end local v0    # "locIdName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@18
    const-string/jumbo v2, "Languages"

    #@1b
    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method private newRow(Landroid/icu/util/ULocale;Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames$UiListItem;
    .locals 6
    .param p1, "modified"    # Landroid/icu/util/ULocale;
    .param p2, "capContext"    # Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    .line 547
    sget-object v5, Landroid/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;

    #@2
    invoke-static {p1, v5}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    .line 548
    .local v0, "minimized":Landroid/icu/util/ULocale;
    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    #@8
    invoke-virtual {p1, v5}, Landroid/icu/util/ULocale;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 549
    .local v3, "tempName":Ljava/lang/String;
    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@e
    if-ne p2, v5, :cond_0

    #@10
    const/4 v4, 0x1

    #@11
    .line 550
    .local v4, "titlecase":Z
    :goto_0
    if-eqz v4, :cond_1

    #@13
    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    #@15
    invoke-static {v5, v3}, Landroid/icu/lang/UCharacter;->toTitleFirst(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 551
    .local v1, "nameInDisplayLocale":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, p1}, Landroid/icu/util/ULocale;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 552
    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    #@1f
    if-ne p2, v5, :cond_2

    #@21
    invoke-static {p1, v3}, Landroid/icu/lang/UCharacter;->toTitleFirst(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 553
    .local v2, "nameInSelf":Ljava/lang/String;
    :goto_2
    new-instance v5, Landroid/icu/text/LocaleDisplayNames$UiListItem;

    #@27
    invoke-direct {v5, v0, p1, v1, v2}, Landroid/icu/text/LocaleDisplayNames$UiListItem;-><init>(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    return-object v5

    #@2b
    .line 549
    .end local v1    # "nameInDisplayLocale":Ljava/lang/String;
    .end local v2    # "nameInSelf":Ljava/lang/String;
    .end local v4    # "titlecase":Z
    :cond_0
    const/4 v4, 0x0

    #@2c
    .restart local v4    # "titlecase":Z
    goto :goto_0

    #@2d
    .line 550
    :cond_1
    move-object v1, v3

    #@2e
    .restart local v1    # "nameInDisplayLocale":Ljava/lang/String;
    goto :goto_1

    #@2f
    .line 552
    :cond_2
    move-object v2, v3

    #@30
    .restart local v2    # "nameInSelf":Ljava/lang/String;
    goto :goto_2
.end method


# virtual methods
.method public getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .locals 3
    .param p1, "type"    # Landroid/icu/text/DisplayContext$Type;

    #@0
    .prologue
    .line 222
    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl;->-getandroid_icu_text_DisplayContext$TypeSwitchesValues()[I

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    #@7
    move-result v2

    #@8
    aget v1, v1, v2

    #@a
    packed-switch v1, :pswitch_data_0

    #@d
    .line 233
    sget-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    #@f
    .line 236
    .local v0, "result":Landroid/icu/text/DisplayContext;
    :goto_0
    return-object v0

    #@10
    .line 224
    .end local v0    # "result":Landroid/icu/text/DisplayContext;
    :pswitch_0
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@12
    sget-object v2, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@14
    if-ne v1, v2, :cond_0

    #@16
    sget-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    #@18
    .restart local v0    # "result":Landroid/icu/text/DisplayContext;
    goto :goto_0

    #@19
    .end local v0    # "result":Landroid/icu/text/DisplayContext;
    :cond_0
    sget-object v0, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    #@1b
    .restart local v0    # "result":Landroid/icu/text/DisplayContext;
    goto :goto_0

    #@1c
    .line 227
    .end local v0    # "result":Landroid/icu/text/DisplayContext;
    :pswitch_1
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->capitalization:Landroid/icu/text/DisplayContext;

    #@1e
    .restart local v0    # "result":Landroid/icu/text/DisplayContext;
    goto :goto_0

    #@1f
    .line 230
    .end local v0    # "result":Landroid/icu/text/DisplayContext;
    :pswitch_2
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    #@21
    .restart local v0    # "result":Landroid/icu/text/DisplayContext;
    goto :goto_0

    #@22
    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getDialectHandling()Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .locals 1

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@2
    return-object v0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->locale:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method

.method public getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 496
    .local p1, "localeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;>;"
    sget-object v22, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@2
    move-object/from16 v0, p0

    #@4
    move-object/from16 v1, v22

    #@6
    invoke-virtual {v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    #@9
    move-result-object v5

    #@a
    .line 498
    .local v5, "capContext":Landroid/icu/text/DisplayContext;
    new-instance v19, Ljava/util/ArrayList;

    #@c
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 499
    .local v19, "result":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;>;"
    new-instance v3, Ljava/util/HashMap;

    #@11
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@14
    .line 500
    .local v3, "baseToLocales":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/util/ULocale;Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;>;"
    new-instance v4, Landroid/icu/util/ULocale$Builder;

    #@16
    invoke-direct {v4}, Landroid/icu/util/ULocale$Builder;-><init>()V

    #@19
    .line 501
    .local v4, "builder":Landroid/icu/util/ULocale$Builder;
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v12

    #@1d
    .local v12, "locOriginal$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v22

    #@21
    if-eqz v22, :cond_1

    #@23
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v11

    #@27
    check-cast v11, Landroid/icu/util/ULocale;

    #@29
    .line 502
    .local v11, "locOriginal":Landroid/icu/util/ULocale;
    invoke-virtual {v4, v11}, Landroid/icu/util/ULocale$Builder;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;

    #@2c
    .line 503
    invoke-static {v11}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@2f
    move-result-object v10

    #@30
    .line 504
    .local v10, "loc":Landroid/icu/util/ULocale;
    new-instance v2, Landroid/icu/util/ULocale;

    #@32
    invoke-virtual {v10}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@35
    move-result-object v22

    #@36
    move-object/from16 v0, v22

    #@38
    invoke-direct {v2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@3b
    .line 505
    .local v2, "base":Landroid/icu/util/ULocale;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v15

    #@3f
    check-cast v15, Ljava/util/Set;

    #@41
    .line 506
    .local v15, "locales":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;"
    if-nez v15, :cond_0

    #@43
    .line 507
    new-instance v15, Ljava/util/HashSet;

    #@45
    .end local v15    # "locales":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;"
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    #@48
    .restart local v15    # "locales":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;"
    invoke-interface {v3, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 509
    :cond_0
    invoke-interface {v15, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4e
    goto :goto_0

    #@4f
    .line 511
    .end local v2    # "base":Landroid/icu/util/ULocale;
    .end local v10    # "loc":Landroid/icu/util/ULocale;
    .end local v11    # "locOriginal":Landroid/icu/util/ULocale;
    .end local v15    # "locales":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@52
    move-result-object v22

    #@53
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object v7

    #@57
    .local v7, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@5a
    move-result v22

    #@5b
    if-eqz v22, :cond_9

    #@5d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v6

    #@61
    check-cast v6, Ljava/util/Map$Entry;

    #@63
    .line 512
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/ibm/icu/util/ULocale;Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@66
    move-result-object v2

    #@67
    check-cast v2, Landroid/icu/util/ULocale;

    #@69
    .line 513
    .restart local v2    # "base":Landroid/icu/util/ULocale;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@6c
    move-result-object v21

    #@6d
    check-cast v21, Ljava/util/Set;

    #@6f
    .line 514
    .local v21, "values":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->size()I

    #@72
    move-result v22

    #@73
    const/16 v23, 0x1

    #@75
    move/from16 v0, v22

    #@77
    move/from16 v1, v23

    #@79
    if-ne v0, v1, :cond_3

    #@7b
    .line 515
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7e
    move-result-object v22

    #@7f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@82
    move-result-object v13

    #@83
    check-cast v13, Landroid/icu/util/ULocale;

    #@85
    .line 516
    .local v13, "locale":Landroid/icu/util/ULocale;
    sget-object v22, Landroid/icu/util/ULocale$Minimize;->FAVOR_SCRIPT:Landroid/icu/util/ULocale$Minimize;

    #@87
    move-object/from16 v0, v22

    #@89
    invoke-static {v13, v0}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;

    #@8c
    move-result-object v22

    #@8d
    move-object/from16 v0, p0

    #@8f
    move-object/from16 v1, v22

    #@91
    invoke-direct {v0, v1, v5}, Landroid/icu/impl/LocaleDisplayNamesImpl;->newRow(Landroid/icu/util/ULocale;Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames$UiListItem;

    #@94
    move-result-object v22

    #@95
    move-object/from16 v0, v19

    #@97
    move-object/from16 v1, v22

    #@99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9c
    goto :goto_1

    #@9d
    .line 518
    .end local v13    # "locale":Landroid/icu/util/ULocale;
    :cond_3
    new-instance v20, Ljava/util/HashSet;

    #@9f
    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    #@a2
    .line 519
    .local v20, "scripts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/HashSet;

    #@a4
    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    #@a7
    .line 521
    .local v18, "regions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@aa
    move-result-object v16

    #@ab
    .line 522
    .local v16, "maxBase":Landroid/icu/util/ULocale;
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@ae
    move-result-object v22

    #@af
    move-object/from16 v0, v20

    #@b1
    move-object/from16 v1, v22

    #@b3
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b6
    .line 523
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@b9
    move-result-object v22

    #@ba
    move-object/from16 v0, v18

    #@bc
    move-object/from16 v1, v22

    #@be
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c1
    .line 524
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c4
    move-result-object v14

    #@c5
    .local v14, "locale$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@c8
    move-result v22

    #@c9
    if-eqz v22, :cond_4

    #@cb
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ce
    move-result-object v13

    #@cf
    check-cast v13, Landroid/icu/util/ULocale;

    #@d1
    .line 525
    .restart local v13    # "locale":Landroid/icu/util/ULocale;
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@d4
    move-result-object v22

    #@d5
    move-object/from16 v0, v20

    #@d7
    move-object/from16 v1, v22

    #@d9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@dc
    .line 526
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@df
    move-result-object v22

    #@e0
    move-object/from16 v0, v18

    #@e2
    move-object/from16 v1, v22

    #@e4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e7
    goto :goto_2

    #@e8
    .line 528
    .end local v13    # "locale":Landroid/icu/util/ULocale;
    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->size()I

    #@eb
    move-result v22

    #@ec
    const/16 v23, 0x1

    #@ee
    move/from16 v0, v22

    #@f0
    move/from16 v1, v23

    #@f2
    if-le v0, v1, :cond_7

    #@f4
    const/4 v9, 0x1

    #@f5
    .line 529
    .local v9, "hasScripts":Z
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    #@f8
    move-result v22

    #@f9
    const/16 v23, 0x1

    #@fb
    move/from16 v0, v22

    #@fd
    move/from16 v1, v23

    #@ff
    if-le v0, v1, :cond_8

    #@101
    const/4 v8, 0x1

    #@102
    .line 530
    .local v8, "hasRegions":Z
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@105
    move-result-object v14

    #@106
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@109
    move-result v22

    #@10a
    if-eqz v22, :cond_2

    #@10c
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10f
    move-result-object v13

    #@110
    check-cast v13, Landroid/icu/util/ULocale;

    #@112
    .line 531
    .restart local v13    # "locale":Landroid/icu/util/ULocale;
    invoke-virtual {v4, v13}, Landroid/icu/util/ULocale$Builder;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;

    #@115
    move-result-object v17

    #@116
    .line 532
    .local v17, "modified":Landroid/icu/util/ULocale$Builder;
    if-nez v9, :cond_5

    #@118
    .line 533
    const-string/jumbo v22, ""

    #@11b
    move-object/from16 v0, v17

    #@11d
    move-object/from16 v1, v22

    #@11f
    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale$Builder;->setScript(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    #@122
    .line 535
    :cond_5
    if-nez v8, :cond_6

    #@124
    .line 536
    const-string/jumbo v22, ""

    #@127
    move-object/from16 v0, v17

    #@129
    move-object/from16 v1, v22

    #@12b
    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale$Builder;->setRegion(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    #@12e
    .line 538
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    #@131
    move-result-object v22

    #@132
    move-object/from16 v0, p0

    #@134
    move-object/from16 v1, v22

    #@136
    invoke-direct {v0, v1, v5}, Landroid/icu/impl/LocaleDisplayNamesImpl;->newRow(Landroid/icu/util/ULocale;Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames$UiListItem;

    #@139
    move-result-object v22

    #@13a
    move-object/from16 v0, v19

    #@13c
    move-object/from16 v1, v22

    #@13e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@141
    goto :goto_5

    #@142
    .line 528
    .end local v8    # "hasRegions":Z
    .end local v9    # "hasScripts":Z
    .end local v13    # "locale":Landroid/icu/util/ULocale;
    .end local v17    # "modified":Landroid/icu/util/ULocale$Builder;
    :cond_7
    const/4 v9, 0x0

    #@143
    .restart local v9    # "hasScripts":Z
    goto :goto_3

    #@144
    .line 529
    :cond_8
    const/4 v8, 0x0

    #@145
    .restart local v8    # "hasRegions":Z
    goto :goto_4

    #@146
    .line 542
    .end local v2    # "base":Landroid/icu/util/ULocale;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/ibm/icu/util/ULocale;Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;>;"
    .end local v8    # "hasRegions":Z
    .end local v9    # "hasScripts":Z
    .end local v14    # "locale$iterator":Ljava/util/Iterator;
    .end local v16    # "maxBase":Landroid/icu/util/ULocale;
    .end local v18    # "regions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "scripts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "values":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/ULocale;>;"
    :cond_9
    move-object/from16 v0, v19

    #@148
    move-object/from16 v1, p2

    #@14a
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@14d
    .line 543
    return-object v19
.end method

.method public keyDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 467
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@2
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@4
    const-string/jumbo v2, "Keys"

    #@7
    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 472
    const/4 v0, 0x0

    #@1
    .line 474
    .local v0, "keyValueName":Ljava/lang/String;
    const-string/jumbo v2, "currency"

    #@4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 475
    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->currencyDisplayInfo:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    #@c
    invoke-static {p2}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 476
    .local v0, "keyValueName":Ljava/lang/String;
    if-nez v0, :cond_0

    #@16
    .line 477
    move-object v0, p2

    #@17
    .line 491
    .end local v0    # "keyValueName":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@19
    invoke-direct {p0, v2, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    return-object v2

    #@1e
    .line 480
    .local v0, "keyValueName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    #@20
    sget-object v3, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    #@22
    if-ne v2, v3, :cond_2

    #@24
    .line 481
    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@26
    const-string/jumbo v3, "Types%short"

    #@29
    invoke-virtual {v2, v3, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 482
    .local v1, "tmp":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    if-nez v2, :cond_2

    #@33
    .line 483
    move-object v0, v1

    #@34
    .line 486
    .end local v0    # "keyValueName":Ljava/lang/String;
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_0

    #@36
    .line 487
    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@38
    const-string/jumbo v3, "Types"

    #@3b
    invoke-virtual {v2, v3, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    .local v0, "keyValueName":Ljava/lang/String;
    goto :goto_0
.end method

.method public languageDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "lang"    # Ljava/lang/String;

    #@0
    .prologue
    .line 404
    const-string/jumbo v1, "root"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/16 v1, 0x5f

    #@b
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v1

    #@f
    const/4 v2, -0x1

    #@10
    if-eq v1, v2, :cond_1

    #@12
    .line 405
    :cond_0
    return-object p1

    #@13
    .line 407
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    #@15
    sget-object v2, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    #@17
    if-ne v1, v2, :cond_2

    #@19
    .line 408
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@1b
    const-string/jumbo v2, "Languages%short"

    #@1e
    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .line 409
    .local v0, "langName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_2

    #@28
    .line 410
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@2a
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    return-object v1

    #@2f
    .line 413
    .end local v0    # "langName":Ljava/lang/String;
    :cond_2
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@31
    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@33
    const-string/jumbo v3, "Languages"

    #@36
    invoke-virtual {v2, v3, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-direct {p0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    return-object v1
.end method

.method public localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 259
    invoke-direct {p0, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public localeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "localeId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 269
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@5
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 264
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->localeDisplayNameInternal(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 449
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    #@2
    sget-object v2, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 450
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@8
    const-string/jumbo v2, "Countries%short"

    #@b
    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 451
    .local v0, "regionName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    .line 452
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@17
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 455
    .end local v0    # "regionName":Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@1e
    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->regionData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@20
    const-string/jumbo v3, "Countries"

    #@23
    invoke-virtual {v2, v3, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {p0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method

.method public scriptDisplayName(I)Ljava/lang/String;
    .locals 1
    .param p1, "scriptCode"    # I

    #@0
    .prologue
    .line 444
    invoke-static {p1}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "script"    # Ljava/lang/String;

    #@0
    .prologue
    .line 418
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@2
    const-string/jumbo v2, "Scripts%stand-alone"

    #@5
    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 419
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 420
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    #@11
    sget-object v2, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    #@13
    if-ne v1, v2, :cond_0

    #@15
    .line 421
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@17
    const-string/jumbo v2, "Scripts%short"

    #@1a
    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 422
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_0

    #@24
    .line 423
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@26
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1

    #@2b
    .line 426
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@2d
    const-string/jumbo v2, "Scripts"

    #@30
    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    .line 428
    :cond_1
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@36
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    return-object v1
.end method

.method public scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "script"    # Ljava/lang/String;

    #@0
    .prologue
    .line 433
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->nameLength:Landroid/icu/text/DisplayContext;

    #@2
    sget-object v2, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 434
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@8
    const-string/jumbo v2, "Scripts%short"

    #@b
    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 435
    .local v0, "scriptName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    .line 436
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@17
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 439
    .end local v0    # "scriptName":Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@1e
    iget-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@20
    const-string/jumbo v3, "Scripts"

    #@23
    invoke-virtual {v2, v3, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {p0, v1, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method

.method public variantDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 461
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    #@2
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl;->langData:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    #@4
    const-string/jumbo v2, "Variants"

    #@7
    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl;->adjustForUsageAndContext(Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method
