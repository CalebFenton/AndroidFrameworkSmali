.class public Landroid/icu/text/MessageFormat;
.super Landroid/icu/text/UFormat;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessageFormat$Field;,
        Landroid/icu/text/MessageFormat$PluralSelectorContext;,
        Landroid/icu/text/MessageFormat$PluralSelectorProvider;,
        Landroid/icu/text/MessageFormat$AppendableWrapper;,
        Landroid/icu/text/MessageFormat$AttributeAndPosition;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final CURLY_BRACE_LEFT:C = '{'

.field private static final CURLY_BRACE_RIGHT:C = '}'

.field private static final DATE_MODIFIER_EMPTY:I = 0x0

.field private static final DATE_MODIFIER_FULL:I = 0x4

.field private static final DATE_MODIFIER_LONG:I = 0x3

.field private static final DATE_MODIFIER_MEDIUM:I = 0x2

.field private static final DATE_MODIFIER_SHORT:I = 0x1

.field private static final MODIFIER_CURRENCY:I = 0x1

.field private static final MODIFIER_EMPTY:I = 0x0

.field private static final MODIFIER_INTEGER:I = 0x3

.field private static final MODIFIER_PERCENT:I = 0x2

.field private static final SINGLE_QUOTE:C = '\''

.field private static final STATE_INITIAL:I = 0x0

.field private static final STATE_IN_QUOTE:I = 0x2

.field private static final STATE_MSG_ELEMENT:I = 0x3

.field private static final STATE_SINGLE_QUOTE:I = 0x1

.field private static final TYPE_DATE:I = 0x1

.field private static final TYPE_DURATION:I = 0x5

.field private static final TYPE_NUMBER:I = 0x0

.field private static final TYPE_ORDINAL:I = 0x4

.field private static final TYPE_SPELLOUT:I = 0x3

.field private static final TYPE_TIME:I = 0x2

.field private static final dateModifierList:[Ljava/lang/String;

.field private static final modifierList:[Ljava/lang/String;

.field private static final rootLocale:Ljava/util/Locale;

.field static final serialVersionUID:J = 0x6308eb804ceb42dcL

.field private static final typeList:[Ljava/lang/String;


# instance fields
.field private transient cachedFormatters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/text/Format;",
            ">;"
        }
    .end annotation
.end field

.field private transient customFormatArgStarts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient msgPattern:Landroid/icu/text/MessagePattern;

.field private transient ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

.field private transient pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

.field private transient stockDateFormatter:Landroid/icu/text/DateFormat;

.field private transient stockNumberFormatter:Landroid/icu/text/NumberFormat;

.field private transient ulocale:Landroid/icu/util/ULocale;


# direct methods
.method static synthetic -get0(Landroid/icu/text/MessageFormat;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/MessageFormat;)Landroid/icu/util/ULocale;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/text/MessageFormat;)Landroid/icu/text/NumberFormat;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/icu/text/MessageFormat;ILjava/lang/String;)I
    .locals 1
    .param p1, "msgStart"    # I
    .param p2, "argName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/text/MessageFormat;->findFirstPluralNumberArg(ILjava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/icu/text/MessageFormat;I)I
    .locals 1
    .param p1, "partIndex"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/text/MessageFormat;->findOtherSubMessage(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    const-class v0, Landroid/icu/text/MessageFormat;

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    move v0, v1

    #@e
    :goto_0
    sput-boolean v0, Landroid/icu/text/MessageFormat;->-assertionsDisabled:Z

    #@10
    .line 2153
    const/4 v0, 0x6

    #@11
    new-array v0, v0, [Ljava/lang/String;

    #@13
    const-string/jumbo v3, "number"

    #@16
    aput-object v3, v0, v1

    #@18
    const-string/jumbo v3, "date"

    #@1b
    aput-object v3, v0, v2

    #@1d
    const-string/jumbo v3, "time"

    #@20
    aput-object v3, v0, v5

    #@22
    const-string/jumbo v3, "spellout"

    #@25
    aput-object v3, v0, v6

    #@27
    const-string/jumbo v3, "ordinal"

    #@2a
    aput-object v3, v0, v7

    #@2c
    const-string/jumbo v3, "duration"

    #@2f
    const/4 v4, 0x5

    #@30
    aput-object v3, v0, v4

    #@32
    .line 2152
    sput-object v0, Landroid/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    #@34
    .line 2163
    new-array v0, v7, [Ljava/lang/String;

    #@36
    const-string/jumbo v3, ""

    #@39
    aput-object v3, v0, v1

    #@3b
    const-string/jumbo v3, "currency"

    #@3e
    aput-object v3, v0, v2

    #@40
    const-string/jumbo v3, "percent"

    #@43
    aput-object v3, v0, v5

    #@45
    const-string/jumbo v3, "integer"

    #@48
    aput-object v3, v0, v6

    #@4a
    .line 2162
    sput-object v0, Landroid/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    #@4c
    .line 2172
    const/4 v0, 0x5

    #@4d
    new-array v0, v0, [Ljava/lang/String;

    #@4f
    const-string/jumbo v3, ""

    #@52
    aput-object v3, v0, v1

    #@54
    const-string/jumbo v1, "short"

    #@57
    aput-object v1, v0, v2

    #@59
    const-string/jumbo v1, "medium"

    #@5c
    aput-object v1, v0, v5

    #@5e
    const-string/jumbo v1, "long"

    #@61
    aput-object v1, v0, v6

    #@63
    const-string/jumbo v1, "full"

    #@66
    aput-object v1, v0, v7

    #@68
    .line 2171
    sput-object v0, Landroid/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    #@6a
    .line 2305
    new-instance v0, Ljava/util/Locale;

    #@6c
    const-string/jumbo v1, ""

    #@6f
    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@72
    sput-object v0, Landroid/icu/text/MessageFormat;->rootLocale:Ljava/util/Locale;

    #@74
    .line 334
    return-void

    #@75
    :cond_0
    move v0, v2

    #@76
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 349
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@3
    .line 350
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@5
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@b
    .line 351
    invoke-virtual {p0, p1}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    #@e
    .line 349
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 378
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@3
    .line 379
    iput-object p2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@5
    .line 380
    invoke-virtual {p0, p1}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    #@8
    .line 378
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 365
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@7
    .line 364
    return-void
.end method

.method private argNameMatches(ILjava/lang/String;I)Z
    .locals 3
    .param p1, "partIndex"    # I
    .param p2, "argName"    # Ljava/lang/String;
    .param p3, "argNumber"    # I

    #@0
    .prologue
    .line 547
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@5
    move-result-object v0

    #@6
    .line 548
    .local v0, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@9
    move-result-object v1

    #@a
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 549
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@10
    invoke-virtual {v1, v0, p2}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    .line 548
    :goto_0
    return v1

    #@15
    .line 550
    :cond_0
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    #@18
    move-result v1

    #@19
    if-ne v1, p3, :cond_1

    #@1b
    const/4 v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    :cond_1
    const/4 v1, 0x0

    #@1e
    goto :goto_0
.end method

.method public static autoQuoteApostrophe(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v7, 0x27

    #@2
    .line 2482
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v6

    #@8
    mul-int/lit8 v6, v6, 0x2

    #@a
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d
    .line 2483
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    #@e
    .line 2484
    .local v5, "state":I
    const/4 v0, 0x0

    #@f
    .line 2485
    .local v0, "braceCount":I
    const/4 v3, 0x0

    #@10
    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@13
    move-result v4

    #@14
    .local v4, "j":I
    :goto_0
    if-ge v3, v4, :cond_1

    #@16
    .line 2486
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v2

    #@1a
    .line 2487
    .local v2, "c":C
    packed-switch v5, :pswitch_data_0

    #@1d
    .line 2538
    :cond_0
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 2485
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_0

    #@23
    .line 2489
    :pswitch_0
    sparse-switch v2, :sswitch_data_0

    #@26
    goto :goto_1

    #@27
    .line 2491
    :sswitch_0
    const/4 v5, 0x1

    #@28
    .line 2492
    goto :goto_1

    #@29
    .line 2494
    :sswitch_1
    const/4 v5, 0x3

    #@2a
    .line 2495
    add-int/lit8 v0, v0, 0x1

    #@2c
    .line 2496
    goto :goto_1

    #@2d
    .line 2500
    :pswitch_1
    sparse-switch v2, :sswitch_data_1

    #@30
    .line 2509
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    .line 2510
    const/4 v5, 0x0

    #@34
    .line 2511
    goto :goto_1

    #@35
    .line 2502
    :sswitch_2
    const/4 v5, 0x0

    #@36
    .line 2503
    goto :goto_1

    #@37
    .line 2506
    :sswitch_3
    const/4 v5, 0x2

    #@38
    .line 2507
    goto :goto_1

    #@39
    .line 2515
    :pswitch_2
    packed-switch v2, :pswitch_data_1

    #@3c
    goto :goto_1

    #@3d
    .line 2517
    :pswitch_3
    const/4 v5, 0x0

    #@3e
    .line 2518
    goto :goto_1

    #@3f
    .line 2522
    :pswitch_4
    packed-switch v2, :pswitch_data_2

    #@42
    :pswitch_5
    goto :goto_1

    #@43
    .line 2524
    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    #@45
    .line 2525
    goto :goto_1

    #@46
    .line 2527
    :pswitch_7
    add-int/lit8 v0, v0, -0x1

    #@48
    if-nez v0, :cond_0

    #@4a
    .line 2528
    const/4 v5, 0x0

    #@4b
    goto :goto_1

    #@4c
    .line 2541
    .end local v2    # "c":C
    :cond_1
    const/4 v6, 0x1

    #@4d
    if-eq v5, v6, :cond_2

    #@4f
    const/4 v6, 0x2

    #@50
    if-ne v5, v6, :cond_3

    #@52
    .line 2542
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    .line 2544
    :cond_3
    new-instance v6, Ljava/lang/String;

    #@57
    invoke-direct {v6, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    #@5a
    return-object v6

    #@5b
    .line 2487
    nop

    #@5c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch

    #@68
    .line 2489
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x7b -> :sswitch_1
    .end sparse-switch

    #@72
    .line 2500
    :sswitch_data_1
    .sparse-switch
        0x27 -> :sswitch_2
        0x7b -> :sswitch_3
        0x7d -> :sswitch_3
    .end sparse-switch

    #@80
    .line 2515
    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_3
    .end packed-switch

    #@86
    .line 2522
    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private cacheExplicitFormats()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2391
    iget-object v9, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@3
    if-eqz v9, :cond_0

    #@5
    .line 2392
    iget-object v9, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@7
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    #@a
    .line 2394
    :cond_0
    iput-object v10, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@c
    .line 2397
    iget-object v9, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@e
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern;->countParts()I

    #@11
    move-result v9

    #@12
    add-int/lit8 v6, v9, -0x2

    #@14
    .line 2400
    .local v6, "limit":I
    const/4 v3, 0x1

    #@15
    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_3

    #@17
    .line 2401
    iget-object v9, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@19
    invoke-virtual {v9, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@1c
    move-result-object v7

    #@1d
    .line 2402
    .local v7, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@20
    move-result-object v9

    #@21
    sget-object v10, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@23
    if-eq v9, v10, :cond_2

    #@25
    .line 2400
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_0

    #@28
    .line 2405
    :cond_2
    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    #@2b
    move-result-object v0

    #@2c
    .line 2406
    .local v0, "argType":Landroid/icu/text/MessagePattern$ArgType;
    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    #@2e
    if-ne v0, v9, :cond_1

    #@30
    .line 2409
    move v5, v3

    #@31
    .line 2410
    .local v5, "index":I
    add-int/lit8 v3, v3, 0x2

    #@33
    .line 2411
    iget-object v9, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@35
    iget-object v10, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@37
    add-int/lit8 v4, v3, 0x1

    #@39
    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {v10, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@3c
    move-result-object v10

    #@3d
    invoke-virtual {v9, v10}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 2412
    .local v1, "explicitType":Ljava/lang/String;
    const-string/jumbo v8, ""

    #@44
    .line 2413
    .local v8, "style":Ljava/lang/String;
    iget-object v9, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@46
    invoke-virtual {v9, v4}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@4d
    move-result-object v9

    #@4e
    sget-object v10, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    #@50
    if-ne v9, v10, :cond_4

    #@52
    .line 2414
    iget-object v9, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@54
    invoke-virtual {v9, v7}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    #@57
    move-result-object v8

    #@58
    .line 2415
    add-int/lit8 v3, v4, 0x1

    #@5a
    .line 2417
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_2
    invoke-direct {p0, v1, v8}, Landroid/icu/text/MessageFormat;->createAppropriateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format;

    #@5d
    move-result-object v2

    #@5e
    .line 2418
    .local v2, "formatter":Ljava/text/Format;
    invoke-direct {p0, v5, v2}, Landroid/icu/text/MessageFormat;->setArgStartFormat(ILjava/text/Format;)V

    #@61
    goto :goto_1

    #@62
    .line 2390
    .end local v0    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .end local v1    # "explicitType":Ljava/lang/String;
    .end local v2    # "formatter":Ljava/text/Format;
    .end local v5    # "index":I
    .end local v7    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v8    # "style":Ljava/lang/String;
    :cond_3
    return-void

    #@63
    .end local v3    # "i":I
    .restart local v0    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .restart local v1    # "explicitType":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    .restart local v7    # "part":Landroid/icu/text/MessagePattern$Part;
    .restart local v8    # "style":Ljava/lang/String;
    :cond_4
    move v3, v4

    #@64
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_2
.end method

.method private createAppropriateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format;
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v6, 0x0

    #@4
    .line 2184
    const/4 v1, 0x0

    #@5
    .line 2185
    .local v1, "newFormat":Ljava/text/Format;
    sget-object v5, Landroid/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    #@7
    invoke-static {p1, v5}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    #@a
    move-result v4

    #@b
    .line 2186
    .local v4, "subformatType":I
    packed-switch v4, :pswitch_data_0

    #@e
    .line 2300
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v6, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v7, "Unknown format type \""

    #@18
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    const-string/jumbo v7, "\""

    #@23
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v6

    #@2b
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v5

    #@2f
    .line 2188
    :pswitch_0
    sget-object v5, Landroid/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    #@31
    invoke-static {p2, v5}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    #@34
    move-result v5

    #@35
    packed-switch v5, :pswitch_data_1

    #@38
    .line 2202
    new-instance v1, Landroid/icu/text/DecimalFormat;

    #@3a
    .line 2203
    .end local v1    # "newFormat":Ljava/text/Format;
    new-instance v5, Landroid/icu/text/DecimalFormatSymbols;

    #@3c
    iget-object v6, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@3e
    invoke-direct {v5, v6}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@41
    .line 2202
    invoke-direct {v1, p2, v5}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    #@44
    .line 2302
    .local v1, "newFormat":Ljava/text/Format;
    :goto_0
    return-object v1

    #@45
    .line 2190
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_1
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@47
    invoke-static {v5}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@4a
    move-result-object v1

    #@4b
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@4c
    .line 2193
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_2
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@4e
    invoke-static {v5}, Landroid/icu/text/NumberFormat;->getCurrencyInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@51
    move-result-object v1

    #@52
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@53
    .line 2196
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_3
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@55
    invoke-static {v5}, Landroid/icu/text/NumberFormat;->getPercentInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@58
    move-result-object v1

    #@59
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@5a
    .line 2199
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_4
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@5c
    invoke-static {v5}, Landroid/icu/text/NumberFormat;->getIntegerInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@5f
    move-result-object v1

    #@60
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@61
    .line 2208
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_5
    sget-object v5, Landroid/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    #@63
    invoke-static {p2, v5}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    #@66
    move-result v5

    #@67
    packed-switch v5, :pswitch_data_2

    #@6a
    .line 2225
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    #@6c
    .end local v1    # "newFormat":Ljava/text/Format;
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6e
    invoke-direct {v1, p2, v5}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@71
    .line 2226
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@72
    .line 2210
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_6
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@74
    invoke-static {v7, v5}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@77
    move-result-object v1

    #@78
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@79
    .line 2213
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_7
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@7b
    invoke-static {v9, v5}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@7e
    move-result-object v1

    #@7f
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@80
    .line 2216
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_8
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@82
    invoke-static {v7, v5}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@85
    move-result-object v1

    #@86
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@87
    .line 2219
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_9
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@89
    invoke-static {v8, v5}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@8c
    move-result-object v1

    #@8d
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@8e
    .line 2222
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_a
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@90
    invoke-static {v6, v5}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@93
    move-result-object v1

    #@94
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@95
    .line 2230
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_b
    sget-object v5, Landroid/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    #@97
    invoke-static {p2, v5}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    #@9a
    move-result v5

    #@9b
    packed-switch v5, :pswitch_data_3

    #@9e
    .line 2247
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    #@a0
    .end local v1    # "newFormat":Ljava/text/Format;
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@a2
    invoke-direct {v1, p2, v5}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@a5
    .line 2248
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@a6
    .line 2232
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_c
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@a8
    invoke-static {v7, v5}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@ab
    move-result-object v1

    #@ac
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@ad
    .line 2235
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_d
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@af
    invoke-static {v9, v5}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@b2
    move-result-object v1

    #@b3
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@b4
    .line 2238
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_e
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@b6
    invoke-static {v7, v5}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@b9
    move-result-object v1

    #@ba
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@bb
    .line 2241
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_f
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@bd
    invoke-static {v8, v5}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@c0
    move-result-object v1

    #@c1
    .local v1, "newFormat":Ljava/text/Format;
    goto :goto_0

    #@c2
    .line 2244
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_10
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@c4
    invoke-static {v6, v5}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@c7
    move-result-object v1

    #@c8
    .local v1, "newFormat":Ljava/text/Format;
    goto/16 :goto_0

    #@ca
    .line 2253
    .local v1, "newFormat":Ljava/text/Format;
    :pswitch_11
    new-instance v2, Landroid/icu/text/RuleBasedNumberFormat;

    #@cc
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@ce
    invoke-direct {v2, v5, v8}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    #@d1
    .line 2255
    .local v2, "rbnf":Landroid/icu/text/RuleBasedNumberFormat;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@d4
    move-result-object v3

    #@d5
    .line 2256
    .local v3, "ruleset":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@d8
    move-result v5

    #@d9
    if-eqz v5, :cond_0

    #@db
    .line 2258
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@de
    .line 2264
    :cond_0
    :goto_1
    move-object v1, v2

    #@df
    .local v1, "newFormat":Ljava/text/Format;
    goto/16 :goto_0

    #@e1
    .line 2260
    .local v1, "newFormat":Ljava/text/Format;
    :catch_0
    move-exception v0

    #@e2
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    #@e3
    .line 2269
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "rbnf":Landroid/icu/text/RuleBasedNumberFormat;
    .end local v3    # "ruleset":Ljava/lang/String;
    :pswitch_12
    new-instance v2, Landroid/icu/text/RuleBasedNumberFormat;

    #@e5
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@e7
    invoke-direct {v2, v5, v7}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    #@ea
    .line 2271
    .restart local v2    # "rbnf":Landroid/icu/text/RuleBasedNumberFormat;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@ed
    move-result-object v3

    #@ee
    .line 2272
    .restart local v3    # "ruleset":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@f1
    move-result v5

    #@f2
    if-eqz v5, :cond_1

    #@f4
    .line 2274
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@f7
    .line 2280
    :cond_1
    :goto_2
    move-object v1, v2

    #@f8
    .local v1, "newFormat":Ljava/text/Format;
    goto/16 :goto_0

    #@fa
    .line 2276
    .local v1, "newFormat":Ljava/text/Format;
    :catch_1
    move-exception v0

    #@fb
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    #@fc
    .line 2285
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "rbnf":Landroid/icu/text/RuleBasedNumberFormat;
    .end local v3    # "ruleset":Ljava/lang/String;
    :pswitch_13
    new-instance v2, Landroid/icu/text/RuleBasedNumberFormat;

    #@fe
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@100
    invoke-direct {v2, v5, v9}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    #@103
    .line 2287
    .restart local v2    # "rbnf":Landroid/icu/text/RuleBasedNumberFormat;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@106
    move-result-object v3

    #@107
    .line 2288
    .restart local v3    # "ruleset":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@10a
    move-result v5

    #@10b
    if-eqz v5, :cond_2

    #@10d
    .line 2290
    :try_start_2
    invoke-virtual {v2, v3}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@110
    .line 2296
    :cond_2
    :goto_3
    move-object v1, v2

    #@111
    .local v1, "newFormat":Ljava/text/Format;
    goto/16 :goto_0

    #@113
    .line 2292
    .local v1, "newFormat":Ljava/text/Format;
    :catch_2
    move-exception v0

    #@114
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    #@115
    .line 2186
    nop

    #@116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_b
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    #@126
    .line 2188
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@132
    .line 2208
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    #@140
    .line 2230
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private static findChoiceSubMessage(Landroid/icu/text/MessagePattern;ID)I
    .locals 10
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "partIndex"    # I
    .param p2, "number"    # D

    #@0
    .prologue
    .line 1868
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    #@3
    move-result v3

    #@4
    .line 1873
    .local v3, "count":I
    add-int/lit8 p1, p1, 0x2

    #@6
    .line 1876
    :goto_0
    move v4, p1

    #@7
    .line 1877
    .local v4, "msgStart":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@a
    move-result p1

    #@b
    .line 1878
    add-int/lit8 p1, p1, 0x1

    #@d
    if-lt p1, v3, :cond_1

    #@f
    .line 1904
    :cond_0
    :goto_1
    return v4

    #@10
    .line 1883
    :cond_1
    add-int/lit8 v6, p1, 0x1

    #@12
    .end local p1    # "partIndex":I
    .local v6, "partIndex":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@15
    move-result-object v5

    #@16
    .line 1884
    .local v5, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v5}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@19
    move-result-object v8

    #@1a
    .line 1885
    .local v8, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v9, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@1c
    if-ne v8, v9, :cond_2

    #@1e
    move p1, v6

    #@1f
    .line 1888
    .end local v6    # "partIndex":I
    .restart local p1    # "partIndex":I
    goto :goto_1

    #@20
    .line 1891
    .end local p1    # "partIndex":I
    .restart local v6    # "partIndex":I
    :cond_2
    sget-boolean v9, Landroid/icu/text/MessageFormat;->-assertionsDisabled:Z

    #@22
    if-nez v9, :cond_3

    #@24
    invoke-virtual {v8}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    #@27
    move-result v9

    #@28
    if-nez v9, :cond_3

    #@2a
    new-instance v9, Ljava/lang/AssertionError;

    #@2c
    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    #@2f
    throw v9

    #@30
    .line 1892
    :cond_3
    invoke-virtual {p0, v5}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    #@33
    move-result-wide v0

    #@34
    .line 1894
    .local v0, "boundary":D
    add-int/lit8 p1, v6, 0x1

    #@36
    .end local v6    # "partIndex":I
    .restart local p1    # "partIndex":I
    invoke-virtual {p0, v6}, Landroid/icu/text/MessagePattern;->getPatternIndex(I)I

    #@39
    move-result v7

    #@3a
    .line 1895
    .local v7, "selectorIndex":I
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v2

    #@42
    .line 1896
    .local v2, "boundaryChar":C
    const/16 v9, 0x3c

    #@44
    if-ne v2, v9, :cond_4

    #@46
    cmpl-double v9, p2, v0

    #@48
    if-lez v9, :cond_0

    #@4a
    goto :goto_0

    #@4b
    :cond_4
    cmpl-double v9, p2, v0

    #@4d
    if-ltz v9, :cond_0

    #@4f
    goto :goto_0
.end method

.method private findFirstPluralNumberArg(ILjava/lang/String;)I
    .locals 7
    .param p1, "msgStart"    # I
    .param p2, "argName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2010
    add-int/lit8 v1, p1, 0x1

    #@3
    .line 2011
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@5
    invoke-virtual {v4, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@8
    move-result-object v2

    #@9
    .line 2012
    .local v2, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@c
    move-result-object v3

    #@d
    .line 2013
    .local v3, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@f
    if-ne v3, v4, :cond_0

    #@11
    .line 2014
    return v6

    #@12
    .line 2016
    :cond_0
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@14
    if-ne v3, v4, :cond_1

    #@16
    .line 2017
    const/4 v4, -0x1

    #@17
    return v4

    #@18
    .line 2019
    :cond_1
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@1a
    if-ne v3, v4, :cond_4

    #@1c
    .line 2020
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    #@1f
    move-result-object v0

    #@20
    .line 2021
    .local v0, "argType":Landroid/icu/text/MessagePattern$ArgType;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_3

    #@26
    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    #@28
    if-eq v0, v4, :cond_2

    #@2a
    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    #@2c
    if-ne v0, v4, :cond_3

    #@2e
    .line 2022
    :cond_2
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@30
    add-int/lit8 v5, v1, 0x1

    #@32
    invoke-virtual {v4, v5}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@35
    move-result-object v2

    #@36
    .line 2023
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@38
    invoke-virtual {v4, v2, p2}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_3

    #@3e
    .line 2024
    return v1

    #@3f
    .line 2027
    :cond_3
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@41
    invoke-virtual {v4, v1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@44
    move-result v1

    #@45
    .line 2010
    .end local v0    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_0
.end method

.method private static final findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "list"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2308
    invoke-static {p0}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    sget-object v2, Landroid/icu/text/MessageFormat;->rootLocale:Ljava/util/Locale;

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@9
    move-result-object p0

    #@a
    .line 2309
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@c
    if-ge v0, v1, :cond_1

    #@e
    .line 2310
    aget-object v1, p1, v0

    #@10
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 2311
    return v0

    #@17
    .line 2309
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 2313
    :cond_1
    const/4 v1, -0x1

    #@1b
    return v1
.end method

.method private findOtherSubMessage(I)I
    .locals 7
    .param p1, "partIndex"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1978
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@3
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern;->countParts()I

    #@6
    move-result v0

    #@7
    .line 1979
    .local v0, "count":I
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@9
    invoke-virtual {v4, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@c
    move-result-object v1

    #@d
    .line 1980
    .local v1, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_0

    #@17
    .line 1981
    add-int/lit8 p1, p1, 0x1

    #@19
    .line 1986
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@1b
    add-int/lit8 v2, p1, 0x1

    #@1d
    .end local p1    # "partIndex":I
    .local v2, "partIndex":I
    invoke-virtual {v4, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@20
    move-result-object v1

    #@21
    .line 1987
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@24
    move-result-object v3

    #@25
    .line 1988
    .local v3, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@27
    if-ne v3, v4, :cond_2

    #@29
    move p1, v2

    #@2a
    .line 2001
    .end local v2    # "partIndex":I
    .restart local p1    # "partIndex":I
    :cond_1
    return v5

    #@2b
    .line 1991
    .end local p1    # "partIndex":I
    .restart local v2    # "partIndex":I
    :cond_2
    sget-boolean v4, Landroid/icu/text/MessageFormat;->-assertionsDisabled:Z

    #@2d
    if-nez v4, :cond_4

    #@2f
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    #@31
    if-ne v3, v4, :cond_3

    #@33
    const/4 v4, 0x1

    #@34
    :goto_1
    if-nez v4, :cond_4

    #@36
    new-instance v4, Ljava/lang/AssertionError;

    #@38
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@3b
    throw v4

    #@3c
    :cond_3
    move v4, v5

    #@3d
    goto :goto_1

    #@3e
    .line 1993
    :cond_4
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@40
    const-string/jumbo v6, "other"

    #@43
    invoke-virtual {v4, v1, v6}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_5

    #@49
    .line 1994
    return v2

    #@4a
    .line 1996
    :cond_5
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@4c
    invoke-virtual {v4, v2}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    #@53
    move-result v4

    #@54
    if-eqz v4, :cond_6

    #@56
    .line 1997
    add-int/lit8 p1, v2, 0x1

    #@58
    .line 1999
    .end local v2    # "partIndex":I
    .restart local p1    # "partIndex":I
    :goto_2
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@5a
    invoke-virtual {v4, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@5d
    move-result p1

    #@5e
    .line 2000
    add-int/lit8 p1, p1, 0x1

    #@60
    if-ge p1, v0, :cond_1

    #@62
    goto :goto_0

    #@63
    .end local p1    # "partIndex":I
    .restart local v2    # "partIndex":I
    :cond_6
    move p1, v2

    #@64
    .end local v2    # "partIndex":I
    .restart local p1    # "partIndex":I
    goto :goto_2
.end method

.method public static format(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 1015
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/icu/text/MessageFormat;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@5
    .line 1016
    .local v0, "temp":Landroid/icu/text/MessageFormat;
    invoke-virtual {v0, p1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 997
    new-instance v0, Landroid/icu/text/MessageFormat;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@5
    .line 998
    .local v0, "temp":Landroid/icu/text/MessageFormat;
    invoke-virtual {v0, p1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method private format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 41
    .param p1, "msgStart"    # I
    .param p2, "pluralNumber"    # Landroid/icu/text/MessageFormat$PluralSelectorContext;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p5, "dest"    # Landroid/icu/text/MessageFormat$AppendableWrapper;
    .param p6, "fp"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/icu/text/MessageFormat$PluralSelectorContext;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/icu/text/MessageFormat$AppendableWrapper;",
            "Ljava/text/FieldPosition;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1607
    .local p4, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@4
    invoke-virtual {v7}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    #@7
    move-result-object v32

    #@8
    .line 1608
    .local v32, "msgString":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@c
    move/from16 v0, p1

    #@e
    invoke-virtual {v7, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@11
    move-result-object v7

    #@12
    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@15
    move-result v38

    #@16
    .line 1609
    .local v38, "prevIndex":I
    add-int/lit8 v11, p1, 0x1

    #@18
    .line 1610
    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@1a
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@1c
    invoke-virtual {v7, v11}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@1f
    move-result-object v36

    #@20
    .line 1611
    .local v36, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual/range {v36 .. v36}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@23
    move-result-object v40

    #@24
    .line 1612
    .local v40, "type":Landroid/icu/text/MessagePattern$Part$Type;
    invoke-virtual/range {v36 .. v36}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    #@27
    move-result v31

    #@28
    .line 1613
    .local v31, "index":I
    move-object/from16 v0, p5

    #@2a
    move-object/from16 v1, v32

    #@2c
    move/from16 v2, v38

    #@2e
    move/from16 v3, v31

    #@30
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;II)V

    #@33
    .line 1614
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@35
    move-object/from16 v0, v40

    #@37
    if-ne v0, v7, :cond_0

    #@39
    .line 1615
    return-void

    #@3a
    .line 1617
    :cond_0
    invoke-virtual/range {v36 .. v36}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@3d
    move-result v38

    #@3e
    .line 1618
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@40
    move-object/from16 v0, v40

    #@42
    if-ne v0, v7, :cond_3

    #@44
    .line 1619
    move-object/from16 v0, p2

    #@46
    iget-boolean v7, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    #@48
    if-eqz v7, :cond_2

    #@4a
    .line 1621
    move-object/from16 v0, p2

    #@4c
    iget-object v7, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    #@4e
    .line 1622
    move-object/from16 v0, p2

    #@50
    iget-object v9, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    #@52
    move-object/from16 v0, p2

    #@54
    iget-object v0, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    #@56
    move-object/from16 v16, v0

    #@58
    .line 1621
    move-object/from16 v0, p5

    #@5a
    move-object/from16 v1, v16

    #@5c
    invoke-virtual {v0, v7, v9, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    #@5f
    .line 1609
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    #@61
    goto :goto_0

    #@62
    .line 1624
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    #@65
    move-result-object v7

    #@66
    move-object/from16 v0, p2

    #@68
    iget-object v9, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    #@6a
    move-object/from16 v0, p5

    #@6c
    invoke-virtual {v0, v7, v9}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    #@6f
    goto :goto_1

    #@70
    .line 1628
    :cond_3
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@72
    move-object/from16 v0, v40

    #@74
    if-ne v0, v7, :cond_1

    #@76
    .line 1631
    move-object/from16 v0, p0

    #@78
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@7a
    invoke-virtual {v7, v11}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@7d
    move-result v27

    #@7e
    .line 1632
    .local v27, "argLimit":I
    invoke-virtual/range {v36 .. v36}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    #@81
    move-result-object v29

    #@82
    .line 1633
    .local v29, "argType":Landroid/icu/text/MessagePattern$ArgType;
    move-object/from16 v0, p0

    #@84
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@86
    add-int/lit8 v11, v11, 0x1

    #@88
    invoke-virtual {v7, v11}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@8b
    move-result-object v36

    #@8c
    .line 1635
    const/16 v33, 0x0

    #@8e
    .line 1636
    .local v33, "noArg":Z
    const/16 v26, 0x0

    #@90
    .line 1637
    .local v26, "argId":Ljava/lang/Object;
    move-object/from16 v0, p0

    #@92
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@94
    move-object/from16 v0, v36

    #@96
    invoke-virtual {v7, v0}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    #@99
    move-result-object v12

    #@9a
    .line 1638
    .local v12, "argName":Ljava/lang/String;
    if-eqz p3, :cond_6

    #@9c
    .line 1639
    invoke-virtual/range {v36 .. v36}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    #@9f
    move-result v28

    #@a0
    .line 1640
    .local v28, "argNumber":I
    invoke-static/range {p5 .. p5}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get0(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    #@a3
    move-result-object v7

    #@a4
    if-eqz v7, :cond_4

    #@a6
    .line 1642
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v26

    #@aa
    .line 1644
    .end local v26    # "argId":Ljava/lang/Object;
    :cond_4
    if-ltz v28, :cond_5

    #@ac
    move-object/from16 v0, p3

    #@ae
    array-length v7, v0

    #@af
    move/from16 v0, v28

    #@b1
    if-ge v0, v7, :cond_5

    #@b3
    .line 1645
    aget-object v25, p3, v28

    #@b5
    .line 1659
    .end local v28    # "argNumber":I
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@b7
    .line 1660
    invoke-static/range {p5 .. p5}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get1(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    #@ba
    move-result v37

    #@bb
    .line 1661
    .local v37, "prevDestLength":I
    const/16 v30, 0x0

    #@bd
    .line 1662
    .local v30, "formatter":Ljava/text/Format;
    if-eqz v33, :cond_8

    #@bf
    .line 1663
    new-instance v7, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v9, "{"

    #@c7
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v7

    #@cb
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v7

    #@cf
    const-string/jumbo v9, "}"

    #@d2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v7

    #@d6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v7

    #@da
    move-object/from16 v0, p5

    #@dc
    invoke-virtual {v0, v7}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    #@df
    .line 1752
    .end local v11    # "i":I
    .end local v12    # "argName":Ljava/lang/String;
    .end local v30    # "formatter":Ljava/text/Format;
    :goto_3
    move-object/from16 v0, p0

    #@e1
    move-object/from16 v1, p5

    #@e3
    move/from16 v2, v37

    #@e5
    move-object/from16 v3, p6

    #@e7
    move-object/from16 v4, v26

    #@e9
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/MessageFormat;->updateMetaData(Landroid/icu/text/MessageFormat$AppendableWrapper;ILjava/text/FieldPosition;Ljava/lang/Object;)Ljava/text/FieldPosition;

    #@ec
    move-result-object p6

    #@ed
    .line 1753
    move-object/from16 v0, p0

    #@ef
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@f1
    move/from16 v0, v27

    #@f3
    invoke-virtual {v7, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@f6
    move-result-object v7

    #@f7
    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@fa
    move-result v38

    #@fb
    .line 1754
    move/from16 v11, v27

    #@fd
    .restart local v11    # "i":I
    goto/16 :goto_1

    #@ff
    .line 1647
    .end local v37    # "prevDestLength":I
    .restart local v12    # "argName":Ljava/lang/String;
    .restart local v28    # "argNumber":I
    :cond_5
    const/16 v25, 0x0

    #@101
    .line 1648
    .local v25, "arg":Ljava/lang/Object;
    const/16 v33, 0x1

    #@103
    goto :goto_2

    #@104
    .line 1651
    .end local v25    # "arg":Ljava/lang/Object;
    .end local v28    # "argNumber":I
    .restart local v26    # "argId":Ljava/lang/Object;
    :cond_6
    move-object/from16 v26, v12

    #@106
    .line 1652
    if-eqz p4, :cond_7

    #@108
    move-object/from16 v0, p4

    #@10a
    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@10d
    move-result v7

    #@10e
    if-eqz v7, :cond_7

    #@110
    .line 1653
    move-object/from16 v0, p4

    #@112
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@115
    move-result-object v25

    #@116
    .restart local v25    # "arg":Ljava/lang/Object;
    goto :goto_2

    #@117
    .line 1655
    .end local v25    # "arg":Ljava/lang/Object;
    :cond_7
    const/16 v25, 0x0

    #@119
    .line 1656
    .restart local v25    # "arg":Ljava/lang/Object;
    const/16 v33, 0x1

    #@11b
    goto :goto_2

    #@11c
    .line 1664
    .end local v25    # "arg":Ljava/lang/Object;
    .end local v26    # "argId":Ljava/lang/Object;
    .restart local v30    # "formatter":Ljava/text/Format;
    .restart local v37    # "prevDestLength":I
    :cond_8
    if-nez v25, :cond_9

    #@11e
    .line 1665
    const-string/jumbo v7, "null"

    #@121
    move-object/from16 v0, p5

    #@123
    invoke-virtual {v0, v7}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    #@126
    goto :goto_3

    #@127
    .line 1666
    :cond_9
    if-eqz p2, :cond_b

    #@129
    move-object/from16 v0, p2

    #@12b
    iget v7, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    #@12d
    add-int/lit8 v9, v11, -0x2

    #@12f
    if-ne v7, v9, :cond_b

    #@131
    .line 1667
    move-object/from16 v0, p2

    #@133
    iget-wide v0, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->offset:D

    #@135
    move-wide/from16 v16, v0

    #@137
    const-wide/16 v20, 0x0

    #@139
    cmpl-double v7, v16, v20

    #@13b
    if-nez v7, :cond_a

    #@13d
    .line 1669
    move-object/from16 v0, p2

    #@13f
    iget-object v7, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    #@141
    move-object/from16 v0, p2

    #@143
    iget-object v9, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    #@145
    move-object/from16 v0, p2

    #@147
    iget-object v0, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    #@149
    move-object/from16 v16, v0

    #@14b
    move-object/from16 v0, p5

    #@14d
    move-object/from16 v1, v16

    #@14f
    invoke-virtual {v0, v7, v9, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    #@152
    goto :goto_3

    #@153
    .line 1673
    :cond_a
    move-object/from16 v0, p2

    #@155
    iget-object v7, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    #@157
    move-object/from16 v0, p5

    #@159
    move-object/from16 v1, v25

    #@15b
    invoke-virtual {v0, v7, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    #@15e
    goto :goto_3

    #@15f
    .line 1675
    :cond_b
    move-object/from16 v0, p0

    #@161
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@163
    if-eqz v7, :cond_11

    #@165
    move-object/from16 v0, p0

    #@167
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@169
    add-int/lit8 v9, v11, -0x2

    #@16b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16e
    move-result-object v9

    #@16f
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@172
    move-result-object v30

    #@173
    .end local v30    # "formatter":Ljava/text/Format;
    check-cast v30, Ljava/text/Format;

    #@175
    .local v30, "formatter":Ljava/text/Format;
    if-eqz v30, :cond_11

    #@177
    .line 1677
    move-object/from16 v0, v30

    #@179
    instance-of v7, v0, Ljava/text/ChoiceFormat;

    #@17b
    if-nez v7, :cond_c

    #@17d
    .line 1678
    move-object/from16 v0, v30

    #@17f
    instance-of v7, v0, Landroid/icu/text/PluralFormat;

    #@181
    .line 1677
    if-nez v7, :cond_c

    #@183
    .line 1679
    move-object/from16 v0, v30

    #@185
    instance-of v7, v0, Landroid/icu/text/SelectFormat;

    #@187
    .line 1677
    if-eqz v7, :cond_10

    #@189
    .line 1682
    :cond_c
    move-object/from16 v0, v30

    #@18b
    move-object/from16 v1, v25

    #@18d
    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@190
    move-result-object v39

    #@191
    .line 1683
    .local v39, "subMsgString":Ljava/lang/String;
    const/16 v7, 0x7b

    #@193
    move-object/from16 v0, v39

    #@195
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    #@198
    move-result v7

    #@199
    if-gez v7, :cond_e

    #@19b
    .line 1684
    const/16 v7, 0x27

    #@19d
    move-object/from16 v0, v39

    #@19f
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    #@1a2
    move-result v7

    #@1a3
    if-ltz v7, :cond_d

    #@1a5
    move-object/from16 v0, p0

    #@1a7
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@1a9
    invoke-virtual {v7}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    #@1ac
    move-result v7

    #@1ad
    if-eqz v7, :cond_e

    #@1af
    .line 1687
    :cond_d
    invoke-static/range {p5 .. p5}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get0(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    #@1b2
    move-result-object v7

    #@1b3
    if-nez v7, :cond_f

    #@1b5
    .line 1688
    move-object/from16 v0, p5

    #@1b7
    move-object/from16 v1, v39

    #@1b9
    invoke-virtual {v0, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    #@1bc
    goto/16 :goto_3

    #@1be
    .line 1685
    :cond_e
    new-instance v6, Landroid/icu/text/MessageFormat;

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@1c4
    move-object/from16 v0, v39

    #@1c6
    invoke-direct {v6, v0, v7}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@1c9
    .line 1686
    .local v6, "subMsgFormat":Landroid/icu/text/MessageFormat;
    const/4 v7, 0x0

    #@1ca
    const/4 v8, 0x0

    #@1cb
    const/4 v12, 0x0

    #@1cc
    move-object/from16 v9, p3

    #@1ce
    move-object/from16 v10, p4

    #@1d0
    move-object/from16 v11, p5

    #@1d2
    invoke-direct/range {v6 .. v12}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    #@1d5
    goto/16 :goto_3

    #@1d7
    .line 1696
    .end local v6    # "subMsgFormat":Landroid/icu/text/MessageFormat;
    :cond_f
    move-object/from16 v0, p5

    #@1d9
    move-object/from16 v1, v30

    #@1db
    move-object/from16 v2, v25

    #@1dd
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    #@1e0
    goto/16 :goto_3

    #@1e2
    .line 1699
    .end local v39    # "subMsgString":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p5

    #@1e4
    move-object/from16 v1, v30

    #@1e6
    move-object/from16 v2, v25

    #@1e8
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    #@1eb
    goto/16 :goto_3

    #@1ed
    .line 1702
    .end local v30    # "formatter":Ljava/text/Format;
    :cond_11
    sget-object v7, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    #@1ef
    move-object/from16 v0, v29

    #@1f1
    if-eq v0, v7, :cond_12

    #@1f3
    .line 1703
    move-object/from16 v0, p0

    #@1f5
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@1f7
    if-eqz v7, :cond_15

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@1fd
    add-int/lit8 v9, v11, -0x2

    #@1ff
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@202
    move-result-object v9

    #@203
    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@206
    move-result v7

    #@207
    .line 1701
    if-eqz v7, :cond_15

    #@209
    .line 1706
    :cond_12
    move-object/from16 v0, v25

    #@20b
    instance-of v7, v0, Ljava/lang/Number;

    #@20d
    if-eqz v7, :cond_13

    #@20f
    .line 1708
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    #@212
    move-result-object v7

    #@213
    move-object/from16 v0, p5

    #@215
    move-object/from16 v1, v25

    #@217
    invoke-virtual {v0, v7, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    #@21a
    goto/16 :goto_3

    #@21c
    .line 1709
    :cond_13
    move-object/from16 v0, v25

    #@21e
    instance-of v7, v0, Ljava/util/Date;

    #@220
    if-eqz v7, :cond_14

    #@222
    .line 1711
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessageFormat;->getStockDateFormatter()Landroid/icu/text/DateFormat;

    #@225
    move-result-object v7

    #@226
    move-object/from16 v0, p5

    #@228
    move-object/from16 v1, v25

    #@22a
    invoke-virtual {v0, v7, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    #@22d
    goto/16 :goto_3

    #@22f
    .line 1713
    :cond_14
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@232
    move-result-object v7

    #@233
    move-object/from16 v0, p5

    #@235
    invoke-virtual {v0, v7}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    #@238
    goto/16 :goto_3

    #@23a
    .line 1715
    :cond_15
    sget-object v7, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@23c
    move-object/from16 v0, v29

    #@23e
    if-ne v0, v7, :cond_17

    #@240
    .line 1716
    move-object/from16 v0, v25

    #@242
    instance-of v7, v0, Ljava/lang/Number;

    #@244
    if-nez v7, :cond_16

    #@246
    .line 1717
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@248
    new-instance v9, Ljava/lang/StringBuilder;

    #@24a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@24d
    const-string/jumbo v16, "\'"

    #@250
    move-object/from16 v0, v16

    #@252
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v9

    #@256
    move-object/from16 v0, v25

    #@258
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v9

    #@25c
    const-string/jumbo v16, "\' is not a Number"

    #@25f
    move-object/from16 v0, v16

    #@261
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v9

    #@265
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@268
    move-result-object v9

    #@269
    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26c
    throw v7

    #@26d
    .line 1719
    :cond_16
    check-cast v25, Ljava/lang/Number;

    #@26f
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Number;->doubleValue()D

    #@272
    move-result-wide v34

    #@273
    .line 1720
    .local v34, "number":D
    move-object/from16 v0, p0

    #@275
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@277
    move-wide/from16 v0, v34

    #@279
    invoke-static {v7, v11, v0, v1}, Landroid/icu/text/MessageFormat;->findChoiceSubMessage(Landroid/icu/text/MessagePattern;ID)I

    #@27c
    move-result v8

    #@27d
    .line 1721
    .local v8, "subMsgStart":I
    const/4 v9, 0x0

    #@27e
    move-object/from16 v7, p0

    #@280
    move-object/from16 v10, p3

    #@282
    move-object/from16 v11, p4

    #@284
    move-object/from16 v12, p5

    #@286
    invoke-direct/range {v7 .. v12}, Landroid/icu/text/MessageFormat;->formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V

    #@289
    goto/16 :goto_3

    #@28b
    .line 1722
    .end local v8    # "subMsgStart":I
    .end local v34    # "number":D
    :cond_17
    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    #@28e
    move-result v7

    #@28f
    if-eqz v7, :cond_1c

    #@291
    .line 1723
    move-object/from16 v0, v25

    #@293
    instance-of v7, v0, Ljava/lang/Number;

    #@295
    if-nez v7, :cond_18

    #@297
    .line 1724
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@299
    new-instance v9, Ljava/lang/StringBuilder;

    #@29b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@29e
    const-string/jumbo v16, "\'"

    #@2a1
    move-object/from16 v0, v16

    #@2a3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a6
    move-result-object v9

    #@2a7
    move-object/from16 v0, v25

    #@2a9
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2ac
    move-result-object v9

    #@2ad
    const-string/jumbo v16, "\' is not a Number"

    #@2b0
    move-object/from16 v0, v16

    #@2b2
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b5
    move-result-object v9

    #@2b6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b9
    move-result-object v9

    #@2ba
    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2bd
    throw v7

    #@2be
    .line 1727
    :cond_18
    sget-object v7, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    #@2c0
    move-object/from16 v0, v29

    #@2c2
    if-ne v0, v7, :cond_1a

    #@2c4
    .line 1728
    move-object/from16 v0, p0

    #@2c6
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    #@2c8
    if-nez v7, :cond_19

    #@2ca
    .line 1729
    new-instance v7, Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    #@2cc
    sget-object v9, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@2ce
    move-object/from16 v0, p0

    #@2d0
    invoke-direct {v7, v0, v9}, Landroid/icu/text/MessageFormat$PluralSelectorProvider;-><init>(Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules$PluralType;)V

    #@2d3
    move-object/from16 v0, p0

    #@2d5
    iput-object v7, v0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    #@2d7
    .line 1731
    :cond_19
    move-object/from16 v0, p0

    #@2d9
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    #@2db
    move-object/from16 v18, v0

    #@2dd
    .local v18, "selector":Landroid/icu/text/MessageFormat$PluralSelectorProvider;
    :goto_4
    move-object/from16 v13, v25

    #@2df
    .line 1738
    check-cast v13, Ljava/lang/Number;

    #@2e1
    .line 1739
    .local v13, "number":Ljava/lang/Number;
    move-object/from16 v0, p0

    #@2e3
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2e5
    invoke-virtual {v7, v11}, Landroid/icu/text/MessagePattern;->getPluralOffset(I)D

    #@2e8
    move-result-wide v14

    #@2e9
    .line 1741
    .local v14, "offset":D
    new-instance v10, Landroid/icu/text/MessageFormat$PluralSelectorContext;

    #@2eb
    const/16 v16, 0x0

    #@2ed
    invoke-direct/range {v10 .. v16}, Landroid/icu/text/MessageFormat$PluralSelectorContext;-><init>(ILjava/lang/String;Ljava/lang/Number;DLandroid/icu/text/MessageFormat$PluralSelectorContext;)V

    #@2f0
    .line 1743
    .local v10, "context":Landroid/icu/text/MessageFormat$PluralSelectorContext;
    move-object/from16 v0, p0

    #@2f2
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2f4
    move-object/from16 v16, v0

    #@2f6
    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    #@2f9
    move-result-wide v20

    #@2fa
    move/from16 v17, v11

    #@2fc
    move-object/from16 v19, v10

    #@2fe
    .line 1742
    invoke-static/range {v16 .. v21}, Landroid/icu/text/PluralFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILandroid/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I

    #@301
    move-result v8

    #@302
    .restart local v8    # "subMsgStart":I
    move-object/from16 v19, p0

    #@304
    move/from16 v20, v8

    #@306
    move-object/from16 v21, v10

    #@308
    move-object/from16 v22, p3

    #@30a
    move-object/from16 v23, p4

    #@30c
    move-object/from16 v24, p5

    #@30e
    .line 1744
    invoke-direct/range {v19 .. v24}, Landroid/icu/text/MessageFormat;->formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V

    #@311
    goto/16 :goto_3

    #@313
    .line 1733
    .end local v8    # "subMsgStart":I
    .end local v10    # "context":Landroid/icu/text/MessageFormat$PluralSelectorContext;
    .end local v13    # "number":Ljava/lang/Number;
    .end local v14    # "offset":D
    .end local v18    # "selector":Landroid/icu/text/MessageFormat$PluralSelectorProvider;
    :cond_1a
    move-object/from16 v0, p0

    #@315
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    #@317
    if-nez v7, :cond_1b

    #@319
    .line 1734
    new-instance v7, Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    #@31b
    sget-object v9, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@31d
    move-object/from16 v0, p0

    #@31f
    invoke-direct {v7, v0, v9}, Landroid/icu/text/MessageFormat$PluralSelectorProvider;-><init>(Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules$PluralType;)V

    #@322
    move-object/from16 v0, p0

    #@324
    iput-object v7, v0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    #@326
    .line 1736
    :cond_1b
    move-object/from16 v0, p0

    #@328
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    #@32a
    move-object/from16 v18, v0

    #@32c
    .restart local v18    # "selector":Landroid/icu/text/MessageFormat$PluralSelectorProvider;
    goto :goto_4

    #@32d
    .line 1745
    .end local v18    # "selector":Landroid/icu/text/MessageFormat$PluralSelectorProvider;
    :cond_1c
    sget-object v7, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    #@32f
    move-object/from16 v0, v29

    #@331
    if-ne v0, v7, :cond_1d

    #@333
    .line 1746
    move-object/from16 v0, p0

    #@335
    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@337
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@33a
    move-result-object v9

    #@33b
    invoke-static {v7, v11, v9}, Landroid/icu/text/SelectFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILjava/lang/String;)I

    #@33e
    move-result v8

    #@33f
    .line 1747
    .restart local v8    # "subMsgStart":I
    const/16 v21, 0x0

    #@341
    move-object/from16 v19, p0

    #@343
    move/from16 v20, v8

    #@345
    move-object/from16 v22, p3

    #@347
    move-object/from16 v23, p4

    #@349
    move-object/from16 v24, p5

    #@34b
    invoke-direct/range {v19 .. v24}, Landroid/icu/text/MessageFormat;->formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V

    #@34e
    goto/16 :goto_3

    #@350
    .line 1750
    .end local v8    # "subMsgStart":I
    :cond_1d
    new-instance v7, Ljava/lang/IllegalStateException;

    #@352
    new-instance v9, Ljava/lang/StringBuilder;

    #@354
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@357
    const-string/jumbo v16, "unexpected argType "

    #@35a
    move-object/from16 v0, v16

    #@35c
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35f
    move-result-object v9

    #@360
    move-object/from16 v0, v29

    #@362
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@365
    move-result-object v9

    #@366
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@369
    move-result-object v9

    #@36a
    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@36d
    throw v7
.end method

.method private format(Ljava/lang/Object;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 2
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "result"    # Landroid/icu/text/MessageFormat$AppendableWrapper;
    .param p3, "fp"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2118
    if-eqz p1, :cond_0

    #@3
    instance-of v0, p1, Ljava/util/Map;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 2119
    :cond_0
    check-cast p1, Ljava/util/Map;

    #@9
    .end local p1    # "arguments":Ljava/lang/Object;
    invoke-direct {p0, v1, p1, p2, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    #@c
    .line 2117
    :goto_0
    return-void

    #@d
    .line 2121
    .restart local p1    # "arguments":Ljava/lang/Object;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    #@f
    .end local p1    # "arguments":Ljava/lang/Object;
    invoke-direct {p0, p1, v1, p2, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    #@12
    goto :goto_0
.end method

.method private format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 7
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p3, "dest"    # Landroid/icu/text/MessageFormat$AppendableWrapper;
    .param p4, "fp"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/icu/text/MessageFormat$AppendableWrapper;",
            "Ljava/text/FieldPosition;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    #@1
    .line 2134
    if-eqz p1, :cond_0

    #@3
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@5
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    .line 2136
    const-string/jumbo v1, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    #@10
    .line 2135
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 2139
    :cond_0
    const/4 v1, 0x0

    #@15
    move-object v0, p0

    #@16
    move-object v3, p1

    #@17
    move-object v4, p2

    #@18
    move-object v5, p3

    #@19
    move-object v6, p4

    #@1a
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    #@1d
    .line 2133
    return-void
.end method

.method private formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V
    .locals 16
    .param p1, "msgStart"    # I
    .param p2, "pluralNumber"    # Landroid/icu/text/MessageFormat$PluralSelectorContext;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p5, "dest"    # Landroid/icu/text/MessageFormat$AppendableWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/icu/text/MessageFormat$PluralSelectorContext;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/icu/text/MessageFormat$AppendableWrapper;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1762
    .local p4, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@4
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 1763
    const/4 v7, 0x0

    #@b
    move-object/from16 v1, p0

    #@d
    move/from16 v2, p1

    #@f
    move-object/from16 v3, p2

    #@11
    move-object/from16 v4, p3

    #@13
    move-object/from16 v5, p4

    #@15
    move-object/from16 v6, p5

    #@17
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    #@1a
    .line 1764
    return-void

    #@1b
    .line 1771
    :cond_0
    move-object/from16 v0, p0

    #@1d
    iget-object v2, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@1f
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    #@22
    move-result-object v10

    #@23
    .line 1773
    .local v10, "msgString":Ljava/lang/String;
    const/4 v13, 0x0

    #@24
    .line 1774
    .local v13, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@26
    iget-object v2, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@28
    move/from16 v0, p1

    #@2a
    invoke-virtual {v2, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@31
    move-result v12

    #@32
    .line 1775
    .local v12, "prevIndex":I
    move/from16 v8, p1

    #@34
    .line 1776
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .local v8, "i":I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@36
    iget-object v2, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@38
    add-int/lit8 v8, v8, 0x1

    #@3a
    invoke-virtual {v2, v8}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@3d
    move-result-object v11

    #@3e
    .line 1777
    .local v11, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v11}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@41
    move-result-object v15

    #@42
    .line 1778
    .local v15, "type":Landroid/icu/text/MessagePattern$Part$Type;
    invoke-virtual {v11}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    #@45
    move-result v9

    #@46
    .line 1779
    .local v9, "index":I
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@48
    if-ne v15, v2, :cond_3

    #@4a
    .line 1780
    if-nez v13, :cond_2

    #@4c
    .line 1781
    invoke-virtual {v10, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4f
    move-result-object v14

    #@50
    .line 1812
    .local v14, "subMsgString":Ljava/lang/String;
    :goto_1
    const/16 v2, 0x7b

    #@52
    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    #@55
    move-result v2

    #@56
    if-ltz v2, :cond_a

    #@58
    .line 1813
    new-instance v1, Landroid/icu/text/MessageFormat;

    #@5a
    const-string/jumbo v2, ""

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget-object v3, v0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@61
    invoke-direct {v1, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    #@64
    .line 1814
    .local v1, "subMsgFormat":Landroid/icu/text/MessageFormat;
    sget-object v2, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    #@66
    invoke-virtual {v1, v14, v2}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;Landroid/icu/text/MessagePattern$ApostropheMode;)V

    #@69
    .line 1815
    const/4 v2, 0x0

    #@6a
    const/4 v3, 0x0

    #@6b
    const/4 v7, 0x0

    #@6c
    move-object/from16 v4, p3

    #@6e
    move-object/from16 v5, p4

    #@70
    move-object/from16 v6, p5

    #@72
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    #@75
    .line 1761
    .end local v1    # "subMsgFormat":Landroid/icu/text/MessageFormat;
    :goto_2
    return-void

    #@76
    .line 1783
    .end local v14    # "subMsgString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v13, v10, v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v14

    #@7e
    .restart local v14    # "subMsgString":Ljava/lang/String;
    goto :goto_1

    #@7f
    .line 1786
    .end local v14    # "subMsgString":Ljava/lang/String;
    :cond_3
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@81
    if-eq v15, v2, :cond_4

    #@83
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    #@85
    if-ne v15, v2, :cond_8

    #@87
    .line 1787
    :cond_4
    if-nez v13, :cond_5

    #@89
    .line 1788
    new-instance v13, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    .line 1790
    :cond_5
    invoke-virtual {v13, v10, v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@91
    .line 1791
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    #@93
    if-ne v15, v2, :cond_6

    #@95
    .line 1792
    move-object/from16 v0, p2

    #@97
    iget-boolean v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    #@99
    if-eqz v2, :cond_7

    #@9b
    .line 1794
    move-object/from16 v0, p2

    #@9d
    iget-object v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    #@9f
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    .line 1799
    :cond_6
    :goto_3
    invoke-virtual {v11}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@a5
    move-result v12

    #@a6
    goto :goto_0

    #@a7
    .line 1796
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    #@aa
    move-result-object v2

    #@ab
    move-object/from16 v0, p2

    #@ad
    iget-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    #@af
    invoke-virtual {v2, v3}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@b2
    move-result-object v2

    #@b3
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    goto :goto_3

    #@b7
    .line 1800
    :cond_8
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@b9
    if-ne v15, v2, :cond_1

    #@bb
    .line 1801
    if-nez v13, :cond_9

    #@bd
    .line 1802
    new-instance v13, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    .line 1804
    :cond_9
    invoke-virtual {v13, v10, v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@c5
    .line 1805
    move v12, v9

    #@c6
    .line 1806
    move-object/from16 v0, p0

    #@c8
    iget-object v2, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@ca
    invoke-virtual {v2, v8}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@cd
    move-result v8

    #@ce
    .line 1807
    move-object/from16 v0, p0

    #@d0
    iget-object v2, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@d2
    invoke-virtual {v2, v8}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@d5
    move-result-object v2

    #@d6
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@d9
    move-result v9

    #@da
    .line 1808
    invoke-static {v10, v12, v9, v13}, Landroid/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    #@dd
    .line 1809
    move v12, v9

    #@de
    goto/16 :goto_0

    #@e0
    .line 1817
    .restart local v14    # "subMsgString":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p5

    #@e2
    invoke-virtual {v0, v14}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    #@e5
    goto :goto_2
.end method

.method private getArgName(I)Ljava/lang/String;
    .locals 3
    .param p1, "partIndex"    # I

    #@0
    .prologue
    .line 554
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@5
    move-result-object v0

    #@6
    .line 555
    .local v0, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@9
    move-result-object v1

    #@a
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 556
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@10
    invoke-virtual {v1, v0}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 558
    :cond_0
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    #@18
    move-result v1

    #@19
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method

.method private getLiteralStringUntilNextArgument(I)Ljava/lang/String;
    .locals 10
    .param p1, "from"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 1830
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v7, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@8
    invoke-virtual {v7}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 1831
    .local v3, "msgString":Ljava/lang/String;
    iget-object v7, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@e
    invoke-virtual {v7, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@11
    move-result-object v7

    #@12
    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@15
    move-result v5

    #@16
    .line 1832
    .local v5, "prevIndex":I
    add-int/lit8 v1, p1, 0x1

    #@18
    .line 1833
    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@1a
    invoke-virtual {v7, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@1d
    move-result-object v4

    #@1e
    .line 1834
    .local v4, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@21
    move-result-object v6

    #@22
    .line 1835
    .local v6, "type":Landroid/icu/text/MessagePattern$Part$Type;
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    #@25
    move-result v2

    #@26
    .line 1836
    .local v2, "index":I
    invoke-virtual {v0, v3, v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@29
    .line 1837
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@2b
    if-eq v6, v7, :cond_0

    #@2d
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@2f
    if-ne v6, v7, :cond_1

    #@31
    .line 1838
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v7

    #@35
    return-object v7

    #@36
    .line 1840
    :cond_1
    sget-boolean v7, Landroid/icu/text/MessageFormat;->-assertionsDisabled:Z

    #@38
    if-nez v7, :cond_4

    #@3a
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    #@3c
    if-eq v6, v7, :cond_2

    #@3e
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    #@40
    if-ne v6, v7, :cond_3

    #@42
    :cond_2
    move v7, v8

    #@43
    :goto_1
    if-nez v7, :cond_4

    #@45
    new-instance v7, Ljava/lang/AssertionError;

    #@47
    .line 1841
    new-instance v8, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v9, "Unexpected Part "

    #@4f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    const-string/jumbo v9, " in parsed message."

    #@5a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v8

    #@62
    .line 1840
    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@65
    throw v7

    #@66
    :cond_3
    const/4 v7, 0x0

    #@67
    goto :goto_1

    #@68
    .line 1842
    :cond_4
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@6b
    move-result v5

    #@6c
    .line 1832
    add-int/lit8 v1, v1, 0x1

    #@6e
    goto :goto_0
.end method

.method private getStockDateFormatter()Landroid/icu/text/DateFormat;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 1573
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1575
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@7
    .line 1574
    invoke-static {v1, v1, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    #@d
    .line 1577
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    #@f
    return-object v0
.end method

.method private getStockNumberFormatter()Landroid/icu/text/NumberFormat;
    .locals 1

    #@0
    .prologue
    .line 1580
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1581
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    #@c
    .line 1583
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    #@e
    return-object v0
.end method

.method private static matchStringUntilLimitPart(Landroid/icu/text/MessagePattern;IILjava/lang/String;I)I
    .locals 8
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "partIndex"    # I
    .param p2, "limitPartIndex"    # I
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "sourceOffset"    # I

    #@0
    .prologue
    .line 1952
    const/4 v2, 0x0

    #@1
    .line 1953
    .local v2, "matchingSourceLength":I
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 1954
    .local v3, "msgString":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@8
    move-result-object v6

    #@9
    invoke-virtual {v6}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@c
    move-result v5

    #@d
    .line 1956
    .local v5, "prevIndex":I
    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    #@f
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@12
    move-result-object v4

    #@13
    .line 1957
    .local v4, "part":Landroid/icu/text/MessagePattern$Part;
    if-eq p1, p2, :cond_1

    #@15
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@18
    move-result-object v6

    #@19
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    #@1b
    if-ne v6, v7, :cond_0

    #@1d
    .line 1958
    :cond_1
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    #@20
    move-result v0

    #@21
    .line 1959
    .local v0, "index":I
    sub-int v1, v0, v5

    #@23
    .line 1960
    .local v1, "length":I
    if-eqz v1, :cond_2

    #@25
    invoke-virtual {p3, p4, v3, v5, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_3

    #@2b
    .line 1963
    :cond_2
    add-int/2addr v2, v1

    #@2c
    .line 1964
    if-ne p1, p2, :cond_4

    #@2e
    .line 1965
    return v2

    #@2f
    .line 1961
    :cond_3
    const/4 v6, -0x1

    #@30
    return v6

    #@31
    .line 1967
    :cond_4
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@34
    move-result v5

    #@35
    goto :goto_0
.end method

.method private nextTopLevelArgStart(I)I
    .locals 2
    .param p1, "partIndex"    # I

    #@0
    .prologue
    .line 532
    if-eqz p1, :cond_0

    #@2
    .line 533
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@4
    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@7
    move-result p1

    #@8
    .line 536
    :cond_0
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@a
    add-int/lit8 p1, p1, 0x1

    #@c
    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    #@f
    move-result-object v0

    #@10
    .line 537
    .local v0, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 538
    return p1

    #@15
    .line 540
    :cond_1
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@17
    if-ne v0, v1, :cond_0

    #@19
    .line 541
    const/4 v1, -0x1

    #@1a
    return v1
.end method

.method private parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 31
    .param p1, "msgStart"    # I
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "pos"    # Ljava/text/ParsePosition;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1234
    .local p5, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    #@2
    .line 1235
    return-void

    #@3
    .line 1237
    :cond_0
    move-object/from16 v0, p0

    #@5
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@7
    move-object/from16 v28, v0

    #@9
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    #@c
    move-result-object v19

    #@d
    .line 1238
    .local v19, "msgString":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@11
    move-object/from16 v28, v0

    #@13
    move-object/from16 v0, v28

    #@15
    move/from16 v1, p1

    #@17
    invoke-virtual {v0, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@1a
    move-result-object v28

    #@1b
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@1e
    move-result v22

    #@1f
    .line 1239
    .local v22, "prevIndex":I
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    #@22
    move-result v23

    #@23
    .line 1240
    .local v23, "sourceOffset":I
    new-instance v26, Ljava/text/ParsePosition;

    #@25
    const/16 v28, 0x0

    #@27
    move-object/from16 v0, v26

    #@29
    move/from16 v1, v28

    #@2b
    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    #@2e
    .line 1242
    .local v26, "tempStatus":Ljava/text/ParsePosition;
    add-int/lit8 v15, p1, 0x1

    #@30
    .line 1243
    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@32
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@34
    move-object/from16 v28, v0

    #@36
    move-object/from16 v0, v28

    #@38
    invoke-virtual {v0, v15}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@3b
    move-result-object v21

    #@3c
    .line 1244
    .local v21, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@3f
    move-result-object v27

    #@40
    .line 1245
    .local v27, "type":Landroid/icu/text/MessagePattern$Part$Type;
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    #@43
    move-result v16

    #@44
    .line 1247
    .local v16, "index":I
    sub-int v18, v16, v22

    #@46
    .line 1248
    .local v18, "len":I
    if-eqz v18, :cond_1

    #@48
    move-object/from16 v0, v19

    #@4a
    move/from16 v1, v22

    #@4c
    move-object/from16 v2, p2

    #@4e
    move/from16 v3, v23

    #@50
    move/from16 v4, v18

    #@52
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@55
    move-result v28

    #@56
    if-eqz v28, :cond_2

    #@58
    .line 1249
    :cond_1
    add-int v23, v23, v18

    #@5a
    .line 1250
    add-int v22, v22, v18

    #@5c
    .line 1255
    sget-object v28, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@5e
    move-object/from16 v0, v27

    #@60
    move-object/from16 v1, v28

    #@62
    if-ne v0, v1, :cond_3

    #@64
    .line 1257
    move-object/from16 v0, p3

    #@66
    move/from16 v1, v23

    #@68
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@6b
    .line 1258
    return-void

    #@6c
    .line 1252
    :cond_2
    move-object/from16 v0, p3

    #@6e
    move/from16 v1, v23

    #@70
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@73
    .line 1253
    return-void

    #@74
    .line 1260
    :cond_3
    sget-object v28, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    #@76
    move-object/from16 v0, v27

    #@78
    move-object/from16 v1, v28

    #@7a
    if-eq v0, v1, :cond_4

    #@7c
    sget-object v28, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    #@7e
    move-object/from16 v0, v27

    #@80
    move-object/from16 v1, v28

    #@82
    if-ne v0, v1, :cond_5

    #@84
    .line 1261
    :cond_4
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@87
    move-result v22

    #@88
    .line 1242
    :goto_1
    add-int/lit8 v15, v15, 0x1

    #@8a
    goto :goto_0

    #@8b
    .line 1265
    :cond_5
    sget-boolean v28, Landroid/icu/text/MessageFormat;->-assertionsDisabled:Z

    #@8d
    if-nez v28, :cond_7

    #@8f
    sget-object v28, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@91
    move-object/from16 v0, v27

    #@93
    move-object/from16 v1, v28

    #@95
    if-ne v0, v1, :cond_6

    #@97
    const/16 v28, 0x1

    #@99
    :goto_2
    if-nez v28, :cond_7

    #@9b
    new-instance v28, Ljava/lang/AssertionError;

    #@9d
    new-instance v29, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v30, "Unexpected Part "

    #@a5
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v29

    #@a9
    move-object/from16 v0, v29

    #@ab
    move-object/from16 v1, v21

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v29

    #@b1
    const-string/jumbo v30, " in parsed message."

    #@b4
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v29

    #@b8
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v29

    #@bc
    invoke-direct/range {v28 .. v29}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@bf
    throw v28

    #@c0
    :cond_6
    const/16 v28, 0x0

    #@c2
    goto :goto_2

    #@c3
    .line 1266
    :cond_7
    move-object/from16 v0, p0

    #@c5
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@c7
    move-object/from16 v28, v0

    #@c9
    move-object/from16 v0, v28

    #@cb
    invoke-virtual {v0, v15}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@ce
    move-result v7

    #@cf
    .line 1268
    .local v7, "argLimit":I
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    #@d2
    move-result-object v10

    #@d3
    .line 1269
    .local v10, "argType":Landroid/icu/text/MessagePattern$ArgType;
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@d7
    move-object/from16 v28, v0

    #@d9
    add-int/lit8 v15, v15, 0x1

    #@db
    move-object/from16 v0, v28

    #@dd
    invoke-virtual {v0, v15}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@e0
    move-result-object v21

    #@e1
    .line 1271
    const/4 v6, 0x0

    #@e2
    .line 1272
    .local v6, "argId":Ljava/lang/Object;
    const/4 v8, 0x0

    #@e3
    .line 1273
    .local v8, "argNumber":I
    const/16 v17, 0x0

    #@e5
    .line 1274
    .local v17, "key":Ljava/lang/String;
    if-eqz p4, :cond_8

    #@e7
    .line 1275
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    #@ea
    move-result v8

    #@eb
    .line 1276
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ee
    move-result-object v6

    #@ef
    .line 1286
    .end local v17    # "key":Ljava/lang/String;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    #@f1
    .line 1287
    const/4 v11, 0x0

    #@f2
    .line 1288
    .local v11, "formatter":Ljava/text/Format;
    const/4 v14, 0x0

    #@f3
    .line 1289
    .local v14, "haveArgResult":Z
    const/4 v9, 0x0

    #@f4
    .line 1290
    .local v9, "argResult":Ljava/lang/Object;
    move-object/from16 v0, p0

    #@f6
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@f8
    move-object/from16 v28, v0

    #@fa
    if-eqz v28, :cond_c

    #@fc
    move-object/from16 v0, p0

    #@fe
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@100
    move-object/from16 v28, v0

    #@102
    add-int/lit8 v29, v15, -0x2

    #@104
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@107
    move-result-object v29

    #@108
    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10b
    move-result-object v11

    #@10c
    .end local v11    # "formatter":Ljava/text/Format;
    check-cast v11, Ljava/text/Format;

    #@10e
    .local v11, "formatter":Ljava/text/Format;
    if-eqz v11, :cond_c

    #@110
    .line 1292
    move-object/from16 v0, v26

    #@112
    move/from16 v1, v23

    #@114
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@117
    .line 1293
    move-object/from16 v0, p2

    #@119
    move-object/from16 v1, v26

    #@11b
    invoke-virtual {v11, v0, v1}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    #@11e
    move-result-object v9

    #@11f
    .line 1294
    invoke-virtual/range {v26 .. v26}, Ljava/text/ParsePosition;->getIndex()I

    #@122
    move-result v28

    #@123
    move/from16 v0, v28

    #@125
    move/from16 v1, v23

    #@127
    if-ne v0, v1, :cond_a

    #@129
    .line 1295
    move-object/from16 v0, p3

    #@12b
    move/from16 v1, v23

    #@12d
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@130
    .line 1296
    return-void

    #@131
    .line 1278
    .end local v9    # "argResult":Ljava/lang/Object;
    .end local v11    # "formatter":Ljava/text/Format;
    .end local v14    # "haveArgResult":Z
    .restart local v17    # "key":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@134
    move-result-object v28

    #@135
    sget-object v29, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    #@137
    move-object/from16 v0, v28

    #@139
    move-object/from16 v1, v29

    #@13b
    if-ne v0, v1, :cond_9

    #@13d
    .line 1279
    move-object/from16 v0, p0

    #@13f
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@141
    move-object/from16 v28, v0

    #@143
    move-object/from16 v0, v28

    #@145
    move-object/from16 v1, v21

    #@147
    invoke-virtual {v0, v1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    #@14a
    move-result-object v17

    #@14b
    .line 1283
    .local v17, "key":Ljava/lang/String;
    :goto_4
    move-object/from16 v6, v17

    #@14d
    goto :goto_3

    #@14e
    .line 1281
    .local v17, "key":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    #@151
    move-result v28

    #@152
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@155
    move-result-object v17

    #@156
    .local v17, "key":Ljava/lang/String;
    goto :goto_4

    #@157
    .line 1298
    .end local v17    # "key":Ljava/lang/String;
    .restart local v9    # "argResult":Ljava/lang/Object;
    .restart local v11    # "formatter":Ljava/text/Format;
    .restart local v14    # "haveArgResult":Z
    :cond_a
    const/4 v14, 0x1

    #@158
    .line 1299
    invoke-virtual/range {v26 .. v26}, Ljava/text/ParsePosition;->getIndex()I

    #@15b
    move-result v23

    #@15c
    .line 1343
    .end local v9    # "argResult":Ljava/lang/Object;
    .end local v11    # "formatter":Ljava/text/Format;
    :goto_5
    if-eqz v14, :cond_b

    #@15e
    .line 1344
    if-eqz p4, :cond_16

    #@160
    .line 1345
    aput-object v9, p4, v8

    #@162
    .line 1350
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@166
    move-object/from16 v28, v0

    #@168
    move-object/from16 v0, v28

    #@16a
    invoke-virtual {v0, v7}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@16d
    move-result-object v28

    #@16e
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    #@171
    move-result v22

    #@172
    .line 1351
    move v15, v7

    #@173
    goto/16 :goto_1

    #@175
    .line 1301
    .restart local v9    # "argResult":Ljava/lang/Object;
    :cond_c
    sget-object v28, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    #@177
    move-object/from16 v0, v28

    #@179
    if-eq v10, v0, :cond_d

    #@17b
    .line 1302
    move-object/from16 v0, p0

    #@17d
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@17f
    move-object/from16 v28, v0

    #@181
    if-eqz v28, :cond_11

    #@183
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@187
    move-object/from16 v28, v0

    #@189
    add-int/lit8 v29, v15, -0x2

    #@18b
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18e
    move-result-object v29

    #@18f
    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@192
    move-result v28

    #@193
    .line 1300
    if-eqz v28, :cond_11

    #@195
    .line 1307
    :cond_d
    move-object/from16 v0, p0

    #@197
    invoke-direct {v0, v7}, Landroid/icu/text/MessageFormat;->getLiteralStringUntilNextArgument(I)Ljava/lang/String;

    #@19a
    move-result-object v25

    #@19b
    .line 1309
    .local v25, "stringAfterArgument":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    #@19e
    move-result v28

    #@19f
    if-eqz v28, :cond_e

    #@1a1
    .line 1310
    move-object/from16 v0, p2

    #@1a3
    move-object/from16 v1, v25

    #@1a5
    move/from16 v2, v23

    #@1a7
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@1aa
    move-result v20

    #@1ab
    .line 1314
    .local v20, "next":I
    :goto_7
    if-gez v20, :cond_f

    #@1ad
    .line 1315
    move-object/from16 v0, p3

    #@1af
    move/from16 v1, v23

    #@1b1
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@1b4
    .line 1316
    return-void

    #@1b5
    .line 1312
    .end local v20    # "next":I
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@1b8
    move-result v20

    #@1b9
    .restart local v20    # "next":I
    goto :goto_7

    #@1ba
    .line 1318
    :cond_f
    move-object/from16 v0, p2

    #@1bc
    move/from16 v1, v23

    #@1be
    move/from16 v2, v20

    #@1c0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1c3
    move-result-object v24

    #@1c4
    .line 1319
    .local v24, "strValue":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    #@1c6
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@1c9
    const-string/jumbo v29, "{"

    #@1cc
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v28

    #@1d0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1d3
    move-result-object v29

    #@1d4
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v28

    #@1d8
    const-string/jumbo v29, "}"

    #@1db
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v28

    #@1df
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e2
    move-result-object v28

    #@1e3
    move-object/from16 v0, v24

    #@1e5
    move-object/from16 v1, v28

    #@1e7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ea
    move-result v28

    #@1eb
    if-nez v28, :cond_10

    #@1ed
    .line 1320
    const/4 v14, 0x1

    #@1ee
    .line 1321
    move-object/from16 v9, v24

    #@1f0
    .line 1323
    .end local v9    # "argResult":Ljava/lang/Object;
    :cond_10
    move/from16 v23, v20

    #@1f2
    goto/16 :goto_5

    #@1f4
    .line 1325
    .end local v20    # "next":I
    .end local v24    # "strValue":Ljava/lang/String;
    .end local v25    # "stringAfterArgument":Ljava/lang/String;
    .restart local v9    # "argResult":Ljava/lang/Object;
    :cond_11
    sget-object v28, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    #@1f6
    move-object/from16 v0, v28

    #@1f8
    if-ne v10, v0, :cond_13

    #@1fa
    .line 1326
    move-object/from16 v0, v26

    #@1fc
    move/from16 v1, v23

    #@1fe
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@201
    .line 1327
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@205
    move-object/from16 v28, v0

    #@207
    move-object/from16 v0, v28

    #@209
    move-object/from16 v1, p2

    #@20b
    move-object/from16 v2, v26

    #@20d
    invoke-static {v0, v15, v1, v2}, Landroid/icu/text/MessageFormat;->parseChoiceArgument(Landroid/icu/text/MessagePattern;ILjava/lang/String;Ljava/text/ParsePosition;)D

    #@210
    move-result-wide v12

    #@211
    .line 1328
    .local v12, "choiceResult":D
    invoke-virtual/range {v26 .. v26}, Ljava/text/ParsePosition;->getIndex()I

    #@214
    move-result v28

    #@215
    move/from16 v0, v28

    #@217
    move/from16 v1, v23

    #@219
    if-ne v0, v1, :cond_12

    #@21b
    .line 1329
    move-object/from16 v0, p3

    #@21d
    move/from16 v1, v23

    #@21f
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@222
    .line 1330
    return-void

    #@223
    .line 1332
    :cond_12
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@226
    move-result-object v9

    #@227
    .line 1333
    const/4 v14, 0x1

    #@228
    .line 1334
    invoke-virtual/range {v26 .. v26}, Ljava/text/ParsePosition;->getIndex()I

    #@22b
    move-result v23

    #@22c
    goto/16 :goto_5

    #@22e
    .line 1335
    .end local v12    # "choiceResult":D
    :cond_13
    invoke-virtual {v10}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    #@231
    move-result v28

    #@232
    if-nez v28, :cond_14

    #@234
    sget-object v28, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    #@236
    move-object/from16 v0, v28

    #@238
    if-ne v10, v0, :cond_15

    #@23a
    .line 1337
    :cond_14
    new-instance v28, Ljava/lang/UnsupportedOperationException;

    #@23c
    .line 1338
    const-string/jumbo v29, "Parsing of plural/select/selectordinal argument is not supported."

    #@23f
    .line 1337
    invoke-direct/range {v28 .. v29}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@242
    throw v28

    #@243
    .line 1341
    :cond_15
    new-instance v28, Ljava/lang/IllegalStateException;

    #@245
    new-instance v29, Ljava/lang/StringBuilder;

    #@247
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@24a
    const-string/jumbo v30, "unexpected argType "

    #@24d
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@250
    move-result-object v29

    #@251
    move-object/from16 v0, v29

    #@253
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v29

    #@257
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25a
    move-result-object v29

    #@25b
    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25e
    throw v28

    #@25f
    .line 1346
    .end local v9    # "argResult":Ljava/lang/Object;
    :cond_16
    if-eqz p5, :cond_b

    #@261
    .line 1347
    move-object/from16 v0, p5

    #@263
    move-object/from16 v1, v17

    #@265
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@268
    goto/16 :goto_6
.end method

.method private static parseChoiceArgument(Landroid/icu/text/MessagePattern;ILjava/lang/String;Ljava/text/ParsePosition;)D
    .locals 11
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "partIndex"    # I
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1912
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v6

    #@4
    .line 1913
    .local v6, "start":I
    move v2, v6

    #@5
    .line 1914
    .local v2, "furthest":I
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    .line 1915
    .local v0, "bestNumber":D
    const-wide/16 v8, 0x0

    #@9
    .line 1916
    .local v8, "tempNumber":D
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    #@c
    move-result-object v7

    #@d
    sget-object v10, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@f
    if-eq v7, v10, :cond_0

    #@11
    .line 1917
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@14
    move-result-object v7

    #@15
    invoke-virtual {p0, v7}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    #@18
    move-result-wide v8

    #@19
    .line 1918
    add-int/lit8 p1, p1, 0x2

    #@1b
    .line 1919
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    #@1e
    move-result v4

    #@1f
    .line 1920
    .local v4, "msgLimit":I
    invoke-static {p0, p1, v4, p2, v6}, Landroid/icu/text/MessageFormat;->matchStringUntilLimitPart(Landroid/icu/text/MessagePattern;IILjava/lang/String;I)I

    #@22
    move-result v3

    #@23
    .line 1921
    .local v3, "len":I
    if-ltz v3, :cond_1

    #@25
    .line 1922
    add-int v5, v6, v3

    #@27
    .line 1923
    .local v5, "newIndex":I
    if-le v5, v2, :cond_1

    #@29
    .line 1924
    move v2, v5

    #@2a
    .line 1925
    move-wide v0, v8

    #@2b
    .line 1926
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@2e
    move-result v7

    #@2f
    if-ne v2, v7, :cond_1

    #@31
    .line 1933
    .end local v3    # "len":I
    .end local v4    # "msgLimit":I
    .end local v5    # "newIndex":I
    :cond_0
    if-ne v2, v6, :cond_2

    #@33
    .line 1934
    invoke-virtual {p3, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    #@36
    .line 1938
    :goto_1
    return-wide v0

    #@37
    .line 1931
    .restart local v3    # "len":I
    .restart local v4    # "msgLimit":I
    :cond_1
    add-int/lit8 p1, v4, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 1936
    .end local v3    # "len":I
    .end local v4    # "msgLimit":I
    :cond_2
    invoke-virtual {p3, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    #@3d
    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2365
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 2367
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, Ljava/lang/String;

    #@9
    .line 2368
    .local v3, "languageTag":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    #@c
    move-result-object v7

    #@d
    iput-object v7, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@f
    .line 2369
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    #@15
    .line 2370
    .local v0, "aposMode":Landroid/icu/text/MessagePattern$ApostropheMode;
    iget-object v7, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@17
    if-eqz v7, :cond_0

    #@19
    iget-object v7, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@1b
    invoke-virtual {v7}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    #@1e
    move-result-object v7

    #@1f
    if-eq v0, v7, :cond_1

    #@21
    .line 2371
    :cond_0
    new-instance v7, Landroid/icu/text/MessagePattern;

    #@23
    invoke-direct {v7, v0}, Landroid/icu/text/MessagePattern;-><init>(Landroid/icu/text/MessagePattern$ApostropheMode;)V

    #@26
    iput-object v7, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@28
    .line 2373
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    check-cast v4, Ljava/lang/String;

    #@2e
    .line 2374
    .local v4, "msg":Ljava/lang/String;
    if-eqz v4, :cond_2

    #@30
    .line 2375
    invoke-virtual {p0, v4}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    #@33
    .line 2378
    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@36
    move-result v5

    #@37
    .local v5, "numFormatters":I
    :goto_0
    if-lez v5, :cond_3

    #@39
    .line 2379
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@3c
    move-result v1

    #@3d
    .line 2380
    .local v1, "formatIndex":I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Ljava/text/Format;

    #@43
    .line 2381
    .local v2, "formatter":Ljava/text/Format;
    invoke-virtual {p0, v1, v2}, Landroid/icu/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    #@46
    .line 2378
    add-int/lit8 v5, v5, -0x1

    #@48
    goto :goto_0

    #@49
    .line 2384
    .end local v1    # "formatIndex":I
    .end local v2    # "formatter":Ljava/text/Format;
    :cond_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@4c
    move-result v6

    #@4d
    .local v6, "numPairs":I
    :goto_1
    if-lez v6, :cond_4

    #@4f
    .line 2385
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@52
    .line 2386
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@55
    .line 2384
    add-int/lit8 v6, v6, -0x1

    #@57
    goto :goto_1

    #@58
    .line 2364
    :cond_4
    return-void
.end method

.method private resetPattern()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2143
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2144
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@7
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->clear()V

    #@a
    .line 2146
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 2147
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@10
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@13
    .line 2149
    :cond_1
    iput-object v1, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@15
    .line 2142
    return-void
.end method

.method private setArgStartFormat(ILjava/text/Format;)V
    .locals 2
    .param p1, "argStart"    # I
    .param p2, "formatter"    # Ljava/text/Format;

    #@0
    .prologue
    .line 2426
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2427
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@b
    .line 2429
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 2425
    return-void
.end method

.method private setCustomArgStartFormat(ILjava/text/Format;)V
    .locals 2
    .param p1, "argStart"    # I
    .param p2, "formatter"    # Ljava/text/Format;

    #@0
    .prologue
    .line 2437
    invoke-direct {p0, p1, p2}, Landroid/icu/text/MessageFormat;->setArgStartFormat(ILjava/text/Format;)V

    #@3
    .line 2438
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 2439
    new-instance v0, Ljava/util/HashSet;

    #@9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@c
    iput-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@e
    .line 2441
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 2436
    return-void
.end method

.method private updateMetaData(Landroid/icu/text/MessageFormat$AppendableWrapper;ILjava/text/FieldPosition;Ljava/lang/Object;)Ljava/text/FieldPosition;
    .locals 4
    .param p1, "dest"    # Landroid/icu/text/MessageFormat$AppendableWrapper;
    .param p2, "prevLength"    # I
    .param p3, "fp"    # Ljava/text/FieldPosition;
    .param p4, "argId"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1848
    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get0(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    if-eqz v0, :cond_0

    #@7
    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get1(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    #@a
    move-result v0

    #@b
    if-ge p2, v0, :cond_0

    #@d
    .line 1849
    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get0(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    #@10
    move-result-object v0

    #@11
    new-instance v1, Landroid/icu/text/MessageFormat$AttributeAndPosition;

    #@13
    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get1(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    #@16
    move-result v2

    #@17
    invoke-direct {v1, p4, p2, v2}, Landroid/icu/text/MessageFormat$AttributeAndPosition;-><init>(Ljava/lang/Object;II)V

    #@1a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d
    .line 1851
    :cond_0
    if-eqz p3, :cond_1

    #@1f
    sget-object v0, Landroid/icu/text/MessageFormat$Field;->ARGUMENT:Landroid/icu/text/MessageFormat$Field;

    #@21
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Landroid/icu/text/MessageFormat$Field;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 1852
    invoke-virtual {p3, p2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@2e
    .line 1853
    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get1(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    #@31
    move-result v0

    #@32
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@35
    .line 1854
    return-object v3

    #@36
    .line 1856
    :cond_1
    return-object p3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2331
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@4
    .line 2334
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@6
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@d
    .line 2336
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@f
    if-nez v2, :cond_0

    #@11
    .line 2337
    new-instance v2, Landroid/icu/text/MessagePattern;

    #@13
    invoke-direct {v2}, Landroid/icu/text/MessagePattern;-><init>()V

    #@16
    iput-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@18
    .line 2339
    :cond_0
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@1a
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@21
    .line 2341
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@23
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@2a
    .line 2343
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@2c
    if-eqz v2, :cond_1

    #@2e
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@30
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_3

    #@36
    .line 2344
    :cond_1
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@39
    .line 2357
    :cond_2
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@3c
    .line 2330
    return-void

    #@3d
    .line 2346
    :cond_3
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@3f
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@42
    move-result v2

    #@43
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@46
    .line 2347
    const/4 v0, 0x0

    #@47
    .line 2348
    .local v0, "formatIndex":I
    const/4 v1, 0x0

    #@48
    .local v1, "partIndex":I
    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    #@4b
    move-result v1

    #@4c
    if-ltz v1, :cond_2

    #@4e
    .line 2349
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v3

    #@54
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@57
    move-result v2

    #@58
    if-eqz v2, :cond_4

    #@5a
    .line 2350
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@5d
    .line 2351
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@5f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v3

    #@63
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@6a
    .line 2353
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@6c
    goto :goto_0
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 2
    .param p1, "pttrn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 452
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 453
    new-instance v1, Landroid/icu/text/MessagePattern;

    #@6
    invoke-direct {v1, p1}, Landroid/icu/text/MessagePattern;-><init>(Ljava/lang/String;)V

    #@9
    iput-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@b
    .line 458
    :goto_0
    invoke-direct {p0}, Landroid/icu/text/MessageFormat;->cacheExplicitFormats()V

    #@e
    .line 450
    return-void

    #@f
    .line 455
    :cond_0
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@11
    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->parse(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    goto :goto_0

    #@15
    .line 459
    :catch_0
    move-exception v0

    #@16
    .line 460
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Landroid/icu/text/MessageFormat;->resetPattern()V

    #@19
    .line 461
    throw v0
.end method

.method public applyPattern(Ljava/lang/String;Landroid/icu/text/MessagePattern$ApostropheMode;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "aposMode"    # Landroid/icu/text/MessagePattern$ApostropheMode;

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 482
    new-instance v0, Landroid/icu/text/MessagePattern;

    #@6
    invoke-direct {v0, p2}, Landroid/icu/text/MessagePattern;-><init>(Landroid/icu/text/MessagePattern$ApostropheMode;)V

    #@9
    iput-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@b
    .line 486
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    #@e
    .line 480
    return-void

    #@f
    .line 483
    :cond_1
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@11
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    #@14
    move-result-object v0

    #@15
    if-eq p2, v0, :cond_0

    #@17
    .line 484
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@19
    invoke-virtual {v0, p2}, Landroid/icu/text/MessagePattern;->clearPatternAndSetApostropheMode(Landroid/icu/text/MessagePattern$ApostropheMode;)V

    #@1c
    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1421
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    #@4
    move-result-object v4

    #@5
    check-cast v4, Landroid/icu/text/MessageFormat;

    #@7
    .line 1423
    .local v4, "other":Landroid/icu/text/MessageFormat;
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@9
    if-eqz v5, :cond_0

    #@b
    .line 1424
    new-instance v5, Ljava/util/HashSet;

    #@d
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@10
    iput-object v5, v4, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@12
    .line 1425
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@14
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v3

    #@18
    .local v3, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_1

    #@1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Ljava/lang/Integer;

    #@24
    .line 1426
    .local v2, "key":Ljava/lang/Integer;
    iget-object v5, v4, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@26
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_0

    #@2a
    .line 1429
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "key$iterator":Ljava/util/Iterator;
    :cond_0
    iput-object v7, v4, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@2c
    .line 1432
    :cond_1
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@2e
    if-eqz v5, :cond_2

    #@30
    .line 1433
    new-instance v5, Ljava/util/HashMap;

    #@32
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@35
    iput-object v5, v4, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@37
    .line 1434
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@39
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3c
    move-result-object v5

    #@3d
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v1

    #@41
    .line 1435
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/text/Format;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_3

    #@47
    .line 1436
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, Ljava/util/Map$Entry;

    #@4d
    .line 1437
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/text/Format;>;"
    iget-object v8, v4, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@4f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@52
    move-result-object v5

    #@53
    check-cast v5, Ljava/lang/Integer;

    #@55
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@58
    move-result-object v6

    #@59
    check-cast v6, Ljava/text/Format;

    #@5b
    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    goto :goto_1

    #@5f
    .line 1440
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/text/Format;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/text/Format;>;>;"
    :cond_2
    iput-object v7, v4, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@61
    .line 1443
    :cond_3
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@63
    if-nez v5, :cond_4

    #@65
    move-object v5, v7

    #@66
    :goto_2
    iput-object v5, v4, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@68
    .line 1445
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    #@6a
    if-nez v5, :cond_5

    #@6c
    move-object v5, v7

    #@6d
    .line 1444
    :goto_3
    iput-object v5, v4, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    #@6f
    .line 1447
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    #@71
    if-nez v5, :cond_6

    #@73
    move-object v5, v7

    #@74
    .line 1446
    :goto_4
    iput-object v5, v4, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    #@76
    .line 1449
    iput-object v7, v4, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    #@78
    .line 1450
    iput-object v7, v4, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    #@7a
    .line 1451
    return-object v4

    #@7b
    .line 1443
    :cond_4
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@7d
    invoke-virtual {v5}, Landroid/icu/text/MessagePattern;->clone()Ljava/lang/Object;

    #@80
    move-result-object v5

    #@81
    check-cast v5, Landroid/icu/text/MessagePattern;

    #@83
    goto :goto_2

    #@84
    .line 1445
    :cond_5
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    #@86
    invoke-virtual {v5}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    #@89
    move-result-object v5

    #@8a
    check-cast v5, Landroid/icu/text/DateFormat;

    #@8c
    goto :goto_3

    #@8d
    .line 1447
    :cond_6
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    #@8f
    invoke-virtual {v5}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@92
    move-result-object v5

    #@93
    check-cast v5, Landroid/icu/text/NumberFormat;

    #@95
    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1460
    if-ne p0, p1, :cond_0

    #@3
    .line 1461
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 1462
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/icu/text/MessageFormat;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    .line 1463
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 1464
    check-cast v0, Landroid/icu/text/MessageFormat;

    #@15
    .line 1465
    .local v0, "other":Landroid/icu/text/MessageFormat;
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@17
    iget-object v3, v0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@19
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_3

    #@1f
    .line 1466
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@21
    iget-object v3, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@23
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    .line 1465
    if-eqz v2, :cond_3

    #@29
    .line 1467
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@2b
    iget-object v3, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@2d
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    .line 1465
    if-eqz v2, :cond_3

    #@33
    .line 1468
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@35
    iget-object v2, v0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@37
    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    .line 1465
    :cond_3
    return v1
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 1058
    new-instance v0, Landroid/icu/text/MessageFormat$AppendableWrapper;

    #@2
    invoke-direct {v0, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    #@5
    invoke-direct {p0, p1, v0, p3}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    #@8
    .line 1059
    return-object p2
.end method

.method public final format(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            ")",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    #@0
    .prologue
    .line 976
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/icu/text/MessageFormat$AppendableWrapper;

    #@2
    invoke-direct {v0, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v1, p1, v0, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    #@9
    .line 977
    return-object p2
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 942
    new-instance v0, Landroid/icu/text/MessageFormat$AppendableWrapper;

    #@2
    invoke-direct {v0, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, p1, v1, v0, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    #@9
    .line 943
    return-object p2
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 9
    .param p1, "arguments"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1099
    if-nez p1, :cond_0

    #@3
    .line 1100
    new-instance v5, Ljava/lang/NullPointerException;

    #@5
    .line 1101
    const-string/jumbo v6, "formatToCharacterIterator must be passed non-null object"

    #@8
    .line 1100
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v5

    #@c
    .line 1103
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    .line 1104
    .local v3, "result":Ljava/lang/StringBuilder;
    new-instance v4, Landroid/icu/text/MessageFormat$AppendableWrapper;

    #@13
    invoke-direct {v4, v3}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuilder;)V

    #@16
    .line 1105
    .local v4, "wrapper":Landroid/icu/text/MessageFormat$AppendableWrapper;
    invoke-virtual {v4}, Landroid/icu/text/MessageFormat$AppendableWrapper;->useAttributes()V

    #@19
    .line 1106
    invoke-direct {p0, p1, v4, v5}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    #@1c
    .line 1107
    new-instance v2, Ljava/text/AttributedString;

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-direct {v2, v5}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@25
    .line 1108
    .local v2, "as":Ljava/text/AttributedString;
    invoke-static {v4}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get0(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    #@28
    move-result-object v5

    #@29
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v1

    #@2d
    .local v1, "a$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_1

    #@33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Landroid/icu/text/MessageFormat$AttributeAndPosition;

    #@39
    .line 1109
    .local v0, "a":Landroid/icu/text/MessageFormat$AttributeAndPosition;
    invoke-static {v0}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->-get0(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/text/AttributedCharacterIterator$Attribute;

    #@3c
    move-result-object v5

    #@3d
    invoke-static {v0}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->-get3(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/lang/Object;

    #@40
    move-result-object v6

    #@41
    invoke-static {v0}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->-get2(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I

    #@44
    move-result v7

    #@45
    invoke-static {v0}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->-get1(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I

    #@48
    move-result v8

    #@49
    invoke-virtual {v2, v5, v6, v7, v8}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@4c
    goto :goto_0

    #@4d
    .line 1111
    .end local v0    # "a":Landroid/icu/text/MessageFormat$AttributeAndPosition;
    :cond_1
    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@50
    move-result-object v5

    #@51
    return-object v5
.end method

.method public getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;
    .locals 1

    #@0
    .prologue
    .line 495
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 496
    new-instance v0, Landroid/icu/text/MessagePattern;

    #@6
    invoke-direct {v0}, Landroid/icu/text/MessagePattern;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@b
    .line 498
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@d
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getArgumentNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 839
    new-instance v1, Ljava/util/HashSet;

    #@2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 840
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@6
    .local v0, "partIndex":I
    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    #@9
    move-result v0

    #@a
    if-ltz v0, :cond_0

    #@c
    .line 841
    add-int/lit8 v2, v0, 0x1

    #@e
    invoke-direct {p0, v2}, Landroid/icu/text/MessageFormat;->getArgName(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@15
    goto :goto_0

    #@16
    .line 843
    :cond_0
    return-object v1
.end method

.method public getFormatByArgumentName(Ljava/lang/String;)Ljava/text/Format;
    .locals 4
    .param p1, "argumentName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 854
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 855
    return-object v3

    #@6
    .line 857
    :cond_0
    invoke-static {p1}, Landroid/icu/text/MessagePattern;->validateArgumentName(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    .line 858
    .local v0, "argNumber":I
    const/4 v2, -0x1

    #@b
    if-ge v0, v2, :cond_1

    #@d
    .line 859
    return-object v3

    #@e
    .line 861
    :cond_1
    const/4 v1, 0x0

    #@f
    .local v1, "partIndex":I
    :cond_2
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    #@12
    move-result v1

    #@13
    if-ltz v1, :cond_3

    #@15
    .line 862
    add-int/lit8 v2, v1, 0x1

    #@17
    invoke-direct {p0, v2, p1, v0}, Landroid/icu/text/MessageFormat;->argNameMatches(ILjava/lang/String;I)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 863
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@1f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v3

    #@23
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Ljava/text/Format;

    #@29
    return-object v2

    #@2a
    .line 866
    :cond_3
    return-object v3
.end method

.method public getFormats()[Ljava/text/Format;
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 825
    new-instance v0, Ljava/util/ArrayList;

    #@3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 826
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/Format;>;"
    const/4 v1, 0x0

    #@7
    .local v1, "partIndex":I
    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    #@a
    move-result v1

    #@b
    if-ltz v1, :cond_1

    #@d
    .line 827
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@f
    if-nez v2, :cond_0

    #@11
    move-object v2, v3

    #@12
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    goto :goto_0

    #@16
    :cond_0
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v4

    #@1c
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/text/Format;

    #@22
    goto :goto_1

    #@23
    .line 829
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v2

    #@27
    new-array v2, v2, [Ljava/text/Format;

    #@29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, [Ljava/text/Format;

    #@2f
    return-object v2
.end method

.method public getFormatsByArgumentIndex()[Ljava/text/Format;
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 787
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@3
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 788
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@b
    .line 789
    const-string/jumbo v4, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    #@e
    .line 788
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v3

    #@12
    .line 792
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@17
    .line 793
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/Format;>;"
    const/4 v2, 0x0

    #@18
    .local v2, "partIndex":I
    :goto_0
    invoke-direct {p0, v2}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    #@1b
    move-result v2

    #@1c
    if-ltz v2, :cond_3

    #@1e
    .line 794
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@20
    add-int/lit8 v5, v2, 0x1

    #@22
    invoke-virtual {v3, v5}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    #@29
    move-result v0

    #@2a
    .line 795
    .local v0, "argNumber":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v3

    #@2e
    if-lt v0, v3, :cond_1

    #@30
    .line 796
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    goto :goto_1

    #@34
    .line 798
    :cond_1
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@36
    if-nez v3, :cond_2

    #@38
    move-object v3, v4

    #@39
    :goto_2
    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@3c
    goto :goto_0

    #@3d
    :cond_2
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    #@3f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v5

    #@43
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    check-cast v3, Ljava/text/Format;

    #@49
    goto :goto_2

    #@4a
    .line 800
    .end local v0    # "argNumber":I
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@4d
    move-result v3

    #@4e
    new-array v3, v3, [Ljava/text/Format;

    #@50
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@53
    move-result-object v3

    #@54
    check-cast v3, [Ljava/text/Format;

    #@56
    return-object v3
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 1479
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1208
    new-instance v0, Ljava/text/ParsePosition;

    #@3
    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 1209
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1210
    .local v1, "result":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 1211
    new-instance v2, Ljava/text/ParseException;

    #@12
    const-string/jumbo v3, "MessageFormat parse error!"

    #@15
    .line 1212
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@18
    move-result v4

    #@19
    .line 1211
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@1c
    throw v2

    #@1d
    .line 1214
    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .locals 10
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1145
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@4
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    .line 1147
    const-string/jumbo v1, "This method is not available in MessageFormat objects that use named argument."

    #@f
    .line 1146
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 1152
    :cond_0
    const/4 v8, -0x1

    #@14
    .line 1153
    .local v8, "maxArgId":I
    const/4 v9, 0x0

    #@15
    .local v9, "partIndex":I
    :cond_1
    :goto_0
    invoke-direct {p0, v9}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    #@18
    move-result v9

    #@19
    if-ltz v9, :cond_2

    #@1b
    .line 1154
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@1d
    add-int/lit8 v2, v9, 0x1

    #@1f
    invoke-virtual {v0, v2}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    #@26
    move-result v6

    #@27
    .line 1155
    .local v6, "argNumber":I
    if-le v6, v8, :cond_1

    #@29
    .line 1156
    move v8, v6

    #@2a
    goto :goto_0

    #@2b
    .line 1159
    .end local v6    # "argNumber":I
    :cond_2
    add-int/lit8 v0, v8, 0x1

    #@2d
    new-array v4, v0, [Ljava/lang/Object;

    #@2f
    .line 1161
    .local v4, "resultArray":[Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@32
    move-result v7

    #@33
    .local v7, "backupStartPos":I
    move-object v0, p0

    #@34
    move-object v2, p1

    #@35
    move-object v3, p2

    #@36
    .line 1162
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    #@39
    .line 1163
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@3c
    move-result v0

    #@3d
    if-ne v0, v7, :cond_3

    #@3f
    .line 1164
    return-object v5

    #@40
    .line 1167
    :cond_3
    return-object v4
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1408
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1409
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 1411
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MessageFormat;->parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public parseToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1370
    new-instance v3, Ljava/text/ParsePosition;

    #@3
    invoke-direct {v3, v1}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 1371
    .local v3, "pos":Ljava/text/ParsePosition;
    new-instance v5, Ljava/util/HashMap;

    #@8
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@b
    .line 1372
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    #@c
    move-object v0, p0

    #@d
    move-object v2, p1

    #@e
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    #@11
    .line 1373
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_0

    #@17
    .line 1374
    new-instance v0, Ljava/text/ParseException;

    #@19
    const-string/jumbo v1, "MessageFormat parse error!"

    #@1c
    .line 1375
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@1f
    move-result v2

    #@20
    .line 1374
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@23
    throw v0

    #@24
    .line 1377
    :cond_0
    return-object v5
.end method

.method public parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1184
    new-instance v5, Ljava/util/HashMap;

    #@3
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@6
    .line 1185
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@9
    move-result v6

    #@a
    .line 1186
    .local v6, "backupStartPos":I
    const/4 v1, 0x0

    #@b
    move-object v0, p0

    #@c
    move-object v2, p1

    #@d
    move-object v3, p2

    #@e
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    #@11
    .line 1187
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@14
    move-result v0

    #@15
    if-ne v0, v6, :cond_0

    #@17
    .line 1188
    return-object v4

    #@18
    .line 1190
    :cond_0
    return-object v5
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 3
    .param p1, "formatElementIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    #@0
    .prologue
    .line 751
    const/4 v0, 0x0

    #@1
    .line 752
    .local v0, "formatNumber":I
    const/4 v1, 0x0

    #@2
    .local v1, "partIndex":I
    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    #@5
    move-result v1

    #@6
    if-ltz v1, :cond_1

    #@8
    .line 753
    if-ne v0, p1, :cond_0

    #@a
    .line 754
    invoke-direct {p0, v1, p2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    #@d
    .line 755
    return-void

    #@e
    .line 757
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 759
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@13
    invoke-direct {v2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@16
    throw v2
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 3
    .param p1, "argumentIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    #@0
    .prologue
    .line 689
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 690
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    .line 691
    const-string/jumbo v2, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    #@d
    .line 690
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 694
    :cond_0
    const/4 v0, 0x0

    #@12
    .local v0, "partIndex":I
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    #@15
    move-result v0

    #@16
    if-ltz v0, :cond_2

    #@18
    .line 695
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@1a
    add-int/lit8 v2, v0, 0x1

    #@1c
    invoke-virtual {v1, v2}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    #@23
    move-result v1

    #@24
    if-ne v1, p1, :cond_1

    #@26
    .line 696
    invoke-direct {p0, v0, p2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    #@29
    goto :goto_0

    #@2a
    .line 688
    :cond_2
    return-void
.end method

.method public setFormatByArgumentName(Ljava/lang/String;Ljava/text/Format;)V
    .locals 3
    .param p1, "argumentName"    # Ljava/lang/String;
    .param p2, "newFormat"    # Ljava/text/Format;

    #@0
    .prologue
    .line 721
    invoke-static {p1}, Landroid/icu/text/MessagePattern;->validateArgumentName(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 722
    .local v0, "argNumber":I
    const/4 v2, -0x1

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 723
    return-void

    #@8
    .line 725
    :cond_0
    const/4 v1, 0x0

    #@9
    .local v1, "partIndex":I
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    #@c
    move-result v1

    #@d
    if-ltz v1, :cond_2

    #@f
    .line 726
    add-int/lit8 v2, v1, 0x1

    #@11
    invoke-direct {p0, v2, p1, v0}, Landroid/icu/text/MessageFormat;->argNameMatches(ILjava/lang/String;I)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 727
    invoke-direct {p0, v1, p2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    #@1a
    goto :goto_0

    #@1b
    .line 720
    :cond_2
    return-void
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 3
    .param p1, "newFormats"    # [Ljava/text/Format;

    #@0
    .prologue
    .line 657
    const/4 v0, 0x0

    #@1
    .line 658
    .local v0, "formatNumber":I
    const/4 v1, 0x0

    #@2
    .line 659
    .local v1, "partIndex":I
    :goto_0
    array-length v2, p1

    #@3
    if-ge v0, v2, :cond_0

    #@5
    .line 660
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    #@8
    move-result v1

    #@9
    if-ltz v1, :cond_0

    #@b
    .line 661
    aget-object v2, p1, v0

    #@d
    invoke-direct {p0, v1, v2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    #@10
    .line 662
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 656
    :cond_0
    return-void
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 4
    .param p1, "newFormats"    # [Ljava/text/Format;

    #@0
    .prologue
    .line 590
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 591
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    .line 592
    const-string/jumbo v3, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    #@d
    .line 591
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 595
    :cond_0
    const/4 v1, 0x0

    #@12
    .local v1, "partIndex":I
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    #@15
    move-result v1

    #@16
    if-ltz v1, :cond_2

    #@18
    .line 596
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@1a
    add-int/lit8 v3, v1, 0x1

    #@1c
    invoke-virtual {v2, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    #@23
    move-result v0

    #@24
    .line 597
    .local v0, "argNumber":I
    array-length v2, p1

    #@25
    if-ge v0, v2, :cond_1

    #@27
    .line 598
    aget-object v2, p1, v0

    #@29
    invoke-direct {p0, v1, v2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    #@2c
    goto :goto_0

    #@2d
    .line 589
    .end local v0    # "argNumber":I
    :cond_2
    return-void
.end method

.method public setFormatsByArgumentName(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/text/Format;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 625
    .local p1, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/text/Format;>;"
    const/4 v1, 0x0

    #@1
    .local v1, "partIndex":I
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    #@4
    move-result v1

    #@5
    if-ltz v1, :cond_1

    #@7
    .line 626
    add-int/lit8 v2, v1, 0x1

    #@9
    invoke-direct {p0, v2}, Landroid/icu/text/MessageFormat;->getArgName(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 627
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 628
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Ljava/text/Format;

    #@19
    invoke-direct {p0, v1, v2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    #@1c
    goto :goto_0

    #@1d
    .line 624
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setLocale(Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 409
    invoke-virtual {p0}, Landroid/icu/text/MessageFormat;->toPattern()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 410
    .local v0, "existingPattern":Ljava/lang/String;
    iput-object p1, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    #@7
    .line 413
    iput-object v1, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    #@9
    .line 414
    iput-object v1, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    #@b
    .line 415
    iput-object v1, p0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    #@d
    .line 416
    iput-object v1, p0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    #@f
    .line 417
    invoke-virtual {p0, v0}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    #@12
    .line 405
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 393
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/text/MessageFormat;->setLocale(Landroid/icu/util/ULocale;)V

    #@7
    .line 392
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 515
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 516
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    .line 517
    const-string/jumbo v2, "toPattern() is not supported after custom Format objects have been set via setFormat() or similar APIs"

    #@9
    .line 516
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 520
    :cond_0
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@f
    if-nez v1, :cond_1

    #@11
    .line 521
    const-string/jumbo v1, ""

    #@14
    return-object v1

    #@15
    .line 523
    :cond_1
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@17
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 524
    .local v0, "originalPattern":Ljava/lang/String;
    if-nez v0, :cond_2

    #@1d
    const-string/jumbo v0, ""

    #@20
    .end local v0    # "originalPattern":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public usesNamedArguments()Z
    .locals 1

    #@0
    .prologue
    .line 1027
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
