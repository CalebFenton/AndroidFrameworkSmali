.class public Landroid/icu/text/MessageFormat;
.super Landroid/icu/text/UFormat;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessageFormat$PluralSelectorProvider;,
        Landroid/icu/text/MessageFormat$AppendableWrapper;,
        Landroid/icu/text/MessageFormat$AttributeAndPosition;,
        Landroid/icu/text/MessageFormat$PluralSelectorContext;,
        Landroid/icu/text/MessageFormat$Field;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o CURLY_BRACE_LEFT:C = '{'

.field private static final greylist-max-o CURLY_BRACE_RIGHT:C = '}'

.field private static final greylist-max-o DATE_MODIFIER_EMPTY:I = 0x0

.field private static final greylist-max-o DATE_MODIFIER_FULL:I = 0x4

.field private static final greylist-max-o DATE_MODIFIER_LONG:I = 0x3

.field private static final greylist-max-o DATE_MODIFIER_MEDIUM:I = 0x2

.field private static final greylist-max-o DATE_MODIFIER_SHORT:I = 0x1

.field private static final greylist-max-o MODIFIER_CURRENCY:I = 0x1

.field private static final greylist-max-o MODIFIER_EMPTY:I = 0x0

.field private static final greylist-max-o MODIFIER_INTEGER:I = 0x3

.field private static final greylist-max-o MODIFIER_PERCENT:I = 0x2

.field private static final greylist-max-o SINGLE_QUOTE:C = '\''

.field private static final greylist-max-o STATE_INITIAL:I = 0x0

.field private static final greylist-max-o STATE_IN_QUOTE:I = 0x2

.field private static final greylist-max-o STATE_MSG_ELEMENT:I = 0x3

.field private static final greylist-max-o STATE_SINGLE_QUOTE:I = 0x1

.field private static final greylist-max-o TYPE_DATE:I = 0x1

.field private static final greylist-max-o TYPE_DURATION:I = 0x5

.field private static final greylist-max-o TYPE_NUMBER:I = 0x0

.field private static final greylist-max-o TYPE_ORDINAL:I = 0x4

.field private static final greylist-max-o TYPE_SPELLOUT:I = 0x3

.field private static final greylist-max-o TYPE_TIME:I = 0x2

.field private static final greylist-max-o dateModifierList:[Ljava/lang/String;

.field private static final greylist-max-o modifierList:[Ljava/lang/String;

.field private static final greylist-max-o rootLocale:Ljava/util/Locale;

.field static final whitelist serialVersionUID:J = 0x6308eb804ceb42dcL

.field private static final greylist-max-o typeList:[Ljava/lang/String;


# instance fields
.field private transient greylist-max-o cachedFormatters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/text/Format;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o customFormatArgStarts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient greylist-max-o msgPattern:Landroid/icu/text/MessagePattern;

.field private transient greylist-max-o ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

.field private transient greylist-max-o pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

.field private transient greylist-max-o stockDateFormatter:Landroid/icu/text/DateFormat;

.field private transient greylist-max-o stockNumberFormatter:Landroid/icu/text/NumberFormat;

.field private transient greylist-max-o ulocale:Landroid/icu/util/ULocale;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcachedFormatters(Landroid/icu/text/MessageFormat;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetulocale(Landroid/icu/text/MessageFormat;)Landroid/icu/util/ULocale;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindFirstPluralNumberArg(Landroid/icu/text/MessageFormat;ILjava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/icu/text/MessageFormat;->findFirstPluralNumberArg(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindOtherSubMessage(Landroid/icu/text/MessageFormat;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/text/MessageFormat;->findOtherSubMessage(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStockNumberFormatter(Landroid/icu/text/MessageFormat;)Landroid/icu/text/NumberFormat;
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 338
    nop

    .line 2128
    const-string v4, "ordinal"

    const-string v5, "duration"

    const-string v0, "number"

    const-string v1, "date"

    const-string v2, "time"

    const-string v3, "spellout"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    .line 2138
    const-string v0, "percent"

    const-string v1, "integer"

    const-string v2, ""

    const-string v3, "currency"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    .line 2147
    const-string v0, "long"

    const-string v1, "full"

    const-string v3, "short"

    const-string v4, "medium"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    .line 2298
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/MessageFormat;->rootLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 352
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 353
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 354
    invoke-virtual {p0, p1}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 379
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 380
    iput-object p2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 381
    invoke-virtual {p0, p1}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 367
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 368
    return-void
.end method

.method private greylist-max-o argNameMatches(ILjava/lang/String;I)Z
    .registers 7
    .param p1, "partIndex"    # I
    .param p2, "argName"    # Ljava/lang/String;
    .param p3, "argNumber"    # I

    .line 540
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v0

    .line 541
    .local v0, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v1, v2, :cond_15

    .line 542
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, v0, p2}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1e

    .line 543
    :cond_15
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v1

    if-ne v1, p3, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 541
    :goto_1e
    return v1
.end method

.method public static whitelist test-api autoQuoteApostrophe(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "pattern"    # Ljava/lang/String;

    .line 2474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2475
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2476
    .local v1, "state":I
    const/4 v3, 0x0

    .line 2477
    .local v3, "braceCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "j":I
    :goto_12
    const/16 v6, 0x27

    if-ge v4, v5, :cond_4f

    .line 2478
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2479
    .local v7, "c":C
    packed-switch v1, :pswitch_data_5e

    goto :goto_49

    .line 2514
    :pswitch_1e
    packed-switch v7, :pswitch_data_6a

    :pswitch_21
    goto :goto_2b

    .line 2519
    :pswitch_22
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_2b

    .line 2520
    const/4 v1, 0x0

    goto :goto_2b

    .line 2516
    :pswitch_28
    add-int/lit8 v3, v3, 0x1

    .line 2517
    nop

    .line 2524
    :cond_2b
    :goto_2b
    goto :goto_49

    .line 2507
    :pswitch_2c
    packed-switch v7, :pswitch_data_74

    goto :goto_31

    .line 2509
    :pswitch_30
    const/4 v1, 0x0

    .line 2512
    :goto_31
    goto :goto_49

    .line 2492
    :pswitch_32
    sparse-switch v7, :sswitch_data_7a

    .line 2501
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2502
    const/4 v1, 0x0

    .line 2503
    goto :goto_49

    .line 2498
    :sswitch_3a
    const/4 v1, 0x2

    .line 2499
    goto :goto_49

    .line 2494
    :sswitch_3c
    const/4 v1, 0x0

    .line 2495
    goto :goto_49

    .line 2481
    :pswitch_3e
    sparse-switch v7, :sswitch_data_88

    goto :goto_48

    .line 2486
    :sswitch_42
    const/4 v1, 0x3

    .line 2487
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 2483
    :sswitch_46
    const/4 v1, 0x1

    .line 2484
    nop

    .line 2490
    :goto_48
    nop

    .line 2530
    :goto_49
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2477
    .end local v7    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 2533
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_4f
    const/4 v4, 0x1

    if-eq v1, v4, :cond_54

    if-ne v1, v2, :cond_57

    .line 2534
    :cond_54
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2536
    :cond_57
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object v2

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_32
        :pswitch_2c
        :pswitch_1e
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x7b
        :pswitch_28
        :pswitch_21
        :pswitch_22
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0x27
        :pswitch_30
    .end packed-switch

    :sswitch_data_7a
    .sparse-switch
        0x27 -> :sswitch_3c
        0x7b -> :sswitch_3a
        0x7d -> :sswitch_3a
    .end sparse-switch

    :sswitch_data_88
    .sparse-switch
        0x27 -> :sswitch_46
        0x7b -> :sswitch_42
    .end sparse-switch
.end method

.method private greylist-max-o cacheExplicitFormats()V
    .registers 10

    .line 2384
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 2385
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2387
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 2390
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 2393
    .local v0, "limit":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_15
    if-ge v1, v0, :cond_64

    .line 2394
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    .line 2395
    .local v2, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v3, v4, :cond_26

    .line 2396
    goto :goto_61

    .line 2398
    :cond_26
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v3

    .line 2399
    .local v3, "argType":Landroid/icu/text/MessagePattern$ArgType;
    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-eq v3, v4, :cond_2f

    .line 2400
    goto :goto_61

    .line 2402
    :cond_2f
    move v4, v1

    .line 2403
    .local v4, "index":I
    add-int/lit8 v1, v1, 0x2

    .line 2404
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    iget-object v6, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .local v7, "i":I
    invoke-virtual {v6, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v1

    .line 2405
    .local v1, "explicitType":Ljava/lang/String;
    const-string v5, ""

    .line 2406
    .local v5, "style":Ljava/lang/String;
    iget-object v6, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v6, v7}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v6

    move-object v2, v6

    invoke-virtual {v6}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v6

    sget-object v8, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v6, v8, :cond_59

    .line 2407
    iget-object v6, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v6, v2}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v5

    .line 2408
    add-int/lit8 v7, v7, 0x1

    .line 2410
    :cond_59
    invoke-direct {p0, v1, v5}, Landroid/icu/text/MessageFormat;->createAppropriateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format;

    move-result-object v6

    .line 2411
    .local v6, "formatter":Ljava/text/Format;
    invoke-direct {p0, v4, v6}, Landroid/icu/text/MessageFormat;->setArgStartFormat(ILjava/text/Format;)V

    move v1, v7

    .line 2393
    .end local v2    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v3    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .end local v4    # "index":I
    .end local v5    # "style":Ljava/lang/String;
    .end local v6    # "formatter":Ljava/text/Format;
    .end local v7    # "i":I
    .local v1, "i":I
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 2413
    .end local v1    # "i":I
    :cond_64
    return-void
.end method

.method private greylist-max-o createAppropriateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format;
    .registers 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;

    .line 2170
    const/4 v0, 0x0

    .line 2171
    .local v0, "newFormat":Ljava/text/Format;
    sget-object v1, Landroid/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2172
    .local v1, "subformatType":I
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_13e

    .line 2293
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown format type \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2278
    :pswitch_2d
    new-instance v3, Landroid/icu/text/RuleBasedNumberFormat;

    iget-object v4, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v3, v4, v2}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 2280
    .local v3, "rbnf":Landroid/icu/text/RuleBasedNumberFormat;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2281
    .local v2, "ruleset":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_43

    .line 2283
    :try_start_3e
    invoke-virtual {v3, v2}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    .line 2287
    goto :goto_43

    .line 2285
    :catch_42
    move-exception v4

    .line 2289
    :cond_43
    :goto_43
    nop

    .line 2291
    .end local v0    # "newFormat":Ljava/text/Format;
    .end local v2    # "ruleset":Ljava/lang/String;
    .local v3, "newFormat":Ljava/text/Format;
    goto/16 :goto_13c

    .line 2262
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_46
    new-instance v2, Landroid/icu/text/RuleBasedNumberFormat;

    iget-object v3, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v2, v3, v5}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 2264
    .local v2, "rbnf":Landroid/icu/text/RuleBasedNumberFormat;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2265
    .local v3, "ruleset":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5c

    .line 2267
    :try_start_57
    invoke-virtual {v2, v3}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 2271
    goto :goto_5c

    .line 2269
    :catch_5b
    move-exception v4

    .line 2273
    :cond_5c
    :goto_5c
    move-object v3, v2

    .line 2275
    .end local v0    # "newFormat":Ljava/text/Format;
    .end local v2    # "rbnf":Landroid/icu/text/RuleBasedNumberFormat;
    .local v3, "newFormat":Ljava/text/Format;
    goto/16 :goto_13c

    .line 2246
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_5f
    new-instance v2, Landroid/icu/text/RuleBasedNumberFormat;

    iget-object v4, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v2, v4, v3}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 2248
    .restart local v2    # "rbnf":Landroid/icu/text/RuleBasedNumberFormat;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2249
    .local v3, "ruleset":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_75

    .line 2251
    :try_start_70
    invoke-virtual {v2, v3}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74

    .line 2255
    goto :goto_75

    .line 2253
    :catch_74
    move-exception v4

    .line 2257
    :cond_75
    :goto_75
    move-object v3, v2

    .line 2259
    .end local v0    # "newFormat":Ljava/text/Format;
    .end local v2    # "rbnf":Landroid/icu/text/RuleBasedNumberFormat;
    .local v3, "newFormat":Ljava/text/Format;
    goto/16 :goto_13c

    .line 2223
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_78
    sget-object v6, Landroid/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    invoke-static {p2, v6}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_14e

    .line 2240
    invoke-virtual {p0, p2}, Landroid/icu/text/MessageFormat;->dateTimeFormatForPatternOrSkeleton(Ljava/lang/String;)Ljava/text/Format;

    move-result-object v3

    .line 2241
    .end local v0    # "newFormat":Ljava/text/Format;
    .restart local v3    # "newFormat":Ljava/text/Format;
    goto/16 :goto_13c

    .line 2237
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_87
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v4, v2}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    .line 2238
    .end local v0    # "newFormat":Ljava/text/Format;
    .restart local v3    # "newFormat":Ljava/text/Format;
    goto/16 :goto_13c

    .line 2234
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_8f
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v3, v2}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    .line 2235
    .end local v0    # "newFormat":Ljava/text/Format;
    .restart local v3    # "newFormat":Ljava/text/Format;
    goto/16 :goto_13c

    .line 2231
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_97
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v5, v2}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    .line 2232
    .end local v0    # "newFormat":Ljava/text/Format;
    .restart local v3    # "newFormat":Ljava/text/Format;
    goto/16 :goto_13c

    .line 2228
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_9f
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v2, v3}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    .line 2229
    .end local v0    # "newFormat":Ljava/text/Format;
    .restart local v3    # "newFormat":Ljava/text/Format;
    goto/16 :goto_13c

    .line 2225
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_a7
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v5, v2}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    .line 2226
    .end local v0    # "newFormat":Ljava/text/Format;
    .restart local v3    # "newFormat":Ljava/text/Format;
    goto/16 :goto_13c

    .line 2201
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_af
    sget-object v6, Landroid/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    invoke-static {p2, v6}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_15c

    .line 2218
    invoke-virtual {p0, p2}, Landroid/icu/text/MessageFormat;->dateTimeFormatForPatternOrSkeleton(Ljava/lang/String;)Ljava/text/Format;

    move-result-object v3

    .line 2219
    .end local v0    # "newFormat":Ljava/text/Format;
    .restart local v3    # "newFormat":Ljava/text/Format;
    goto/16 :goto_13c

    .line 2215
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_be
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v4, v2}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    .line 2216
    .end local v0    # "newFormat":Ljava/text/Format;
    .restart local v3    # "newFormat":Ljava/text/Format;
    goto/16 :goto_13c

    .line 2212
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_c6
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v3, v2}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    .line 2213
    .end local v0    # "newFormat":Ljava/text/Format;
    .restart local v3    # "newFormat":Ljava/text/Format;
    goto/16 :goto_13c

    .line 2209
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_ce
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v5, v2}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    .line 2210
    .end local v0    # "newFormat":Ljava/text/Format;
    .restart local v3    # "newFormat":Ljava/text/Format;
    goto/16 :goto_13c

    .line 2206
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_d6
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v2, v3}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    .line 2207
    .end local v0    # "newFormat":Ljava/text/Format;
    .restart local v3    # "newFormat":Ljava/text/Format;
    goto :goto_13c

    .line 2203
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_dd
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v5, v2}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    .line 2204
    .end local v0    # "newFormat":Ljava/text/Format;
    .restart local v3    # "newFormat":Ljava/text/Format;
    goto :goto_13c

    .line 2174
    .end local v3    # "newFormat":Ljava/text/Format;
    .restart local v0    # "newFormat":Ljava/text/Format;
    :pswitch_e4
    sget-object v2, Landroid/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_16a

    .line 2189
    invoke-static {p2, v4}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 2190
    .local v2, "i":I
    const-string v3, "::"

    invoke-virtual {p2, v2, v3, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 2192
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/number/NumberFormatter;->forSkeleton(Ljava/lang/String;)Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {v3, v4}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/number/LocalizedNumberFormatter;->toFormat()Ljava/text/Format;

    move-result-object v0

    move-object v3, v0

    goto :goto_13b

    .line 2185
    .end local v2    # "i":I
    :pswitch_10f
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/text/NumberFormat;->getIntegerInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    .line 2186
    move-object v3, v0

    goto :goto_13b

    .line 2182
    :pswitch_117
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/text/NumberFormat;->getPercentInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    .line 2183
    move-object v3, v0

    goto :goto_13b

    .line 2179
    :pswitch_11f
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/text/NumberFormat;->getCurrencyInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    .line 2180
    move-object v3, v0

    goto :goto_13b

    .line 2176
    :pswitch_127
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    .line 2177
    move-object v3, v0

    goto :goto_13b

    .line 2195
    .restart local v2    # "i":I
    :cond_12f
    new-instance v3, Landroid/icu/text/DecimalFormat;

    new-instance v4, Landroid/icu/text/DecimalFormatSymbols;

    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v4, v5}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    invoke-direct {v3, p2, v4}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    .line 2199
    .end local v0    # "newFormat":Ljava/text/Format;
    .end local v2    # "i":I
    .restart local v3    # "newFormat":Ljava/text/Format;
    :goto_13b
    nop

    .line 2295
    :goto_13c
    return-object v3

    nop

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_af
        :pswitch_78
        :pswitch_5f
        :pswitch_46
        :pswitch_2d
    .end packed-switch

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_9f
        :pswitch_97
        :pswitch_8f
        :pswitch_87
    .end packed-switch

    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_dd
        :pswitch_d6
        :pswitch_ce
        :pswitch_c6
        :pswitch_be
    .end packed-switch

    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_127
        :pswitch_11f
        :pswitch_117
        :pswitch_10f
    .end packed-switch
.end method

.method private static greylist-max-o findChoiceSubMessage(Landroid/icu/text/MessagePattern;ID)I
    .registers 13
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "partIndex"    # I
    .param p2, "number"    # D

    .line 1843
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    .line 1848
    .local v0, "count":I
    add-int/lit8 p1, p1, 0x2

    .line 1851
    :goto_6
    move v1, p1

    .line 1852
    .local v1, "msgStart":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    .line 1853
    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_10

    .line 1856
    goto :goto_42

    .line 1858
    :cond_10
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "partIndex":I
    .local v2, "partIndex":I
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 1859
    .local p1, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    .line 1860
    .local v3, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v4, :cond_20

    .line 1863
    move p1, v2

    goto :goto_42

    .line 1866
    :cond_20
    nop

    .line 1867
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v4

    .line 1869
    .local v4, "boundary":D
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "partIndex":I
    .local v6, "partIndex":I
    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getPatternIndex(I)I

    move-result v2

    .line 1870
    .local v2, "selectorIndex":I
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1871
    .local v7, "boundaryChar":C
    const/16 v8, 0x3c

    if-ne v7, v8, :cond_3c

    cmpl-double v8, p2, v4

    if-gtz v8, :cond_43

    goto :goto_41

    :cond_3c
    cmpl-double v8, p2, v4

    if-gez v8, :cond_43

    .line 1876
    nop

    .line 1879
    .end local v2    # "selectorIndex":I
    .end local v3    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v4    # "boundary":D
    .end local v7    # "boundaryChar":C
    .end local p1    # "part":Landroid/icu/text/MessagePattern$Part;
    :goto_41
    move p1, v6

    .end local v6    # "partIndex":I
    .local p1, "partIndex":I
    :goto_42
    return v1

    .line 1878
    .end local p1    # "partIndex":I
    .restart local v6    # "partIndex":I
    :cond_43
    move p1, v6

    goto :goto_6
.end method

.method private greylist-max-o findFirstPluralNumberArg(ILjava/lang/String;)I
    .registers 9
    .param p1, "msgStart"    # I
    .param p2, "argName"    # Ljava/lang/String;

    .line 1985
    add-int/lit8 v0, p1, 0x1

    .line 1986
    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 1987
    .local v1, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    .line 1988
    .local v2, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v2, v3, :cond_12

    .line 1989
    const/4 v3, 0x0

    return v3

    .line 1991
    :cond_12
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v2, v3, :cond_18

    .line 1992
    const/4 v3, -0x1

    return v3

    .line 1994
    :cond_18
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v2, v3, :cond_45

    .line 1995
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v3

    .line 1996
    .local v3, "argType":Landroid/icu/text/MessagePattern$ArgType;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3f

    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    if-eq v3, v4, :cond_2e

    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v3, v4, :cond_3f

    .line 1997
    :cond_2e
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 1998
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v4, v1, p2}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1999
    return v0

    .line 2002
    :cond_3f
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v4, v0}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v0

    .line 1985
    .end local v1    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v2    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v3    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static final greylist-max-o findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "list"    # [Ljava/lang/String;

    .line 2301
    invoke-static {p0}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/MessageFormat;->rootLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 2302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 2303
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2304
    return v0

    .line 2302
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2306
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o findOtherSubMessage(I)I
    .registers 7
    .param p1, "partIndex"    # I

    .line 1953
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    .line 1954
    .local v0, "count":I
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 1955
    .local v1, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1956
    add-int/lit8 p1, p1, 0x1

    .line 1961
    :cond_18
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v3, p1, 0x1

    .end local p1    # "partIndex":I
    .local v3, "partIndex":I
    invoke-virtual {v2, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 1962
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object p1

    .line 1963
    .local p1, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne p1, v2, :cond_29

    .line 1964
    goto :goto_4e

    .line 1966
    :cond_29
    nop

    .line 1968
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    const-string v4, "other"

    invoke-virtual {v2, v1, v4}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1969
    return v3

    .line 1971
    :cond_35
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, v3}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1972
    add-int/lit8 v3, v3, 0x1

    .line 1974
    :cond_43
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, v3}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    .line 1975
    .end local v3    # "partIndex":I
    .local p1, "partIndex":I
    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_18

    move v3, p1

    .line 1976
    .end local p1    # "partIndex":I
    .restart local v3    # "partIndex":I
    :goto_4e
    const/4 p1, 0x0

    return p1
.end method

.method public static whitelist test-api format(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .param p0, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 994
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/icu/text/MessageFormat;

    invoke-direct {v0, p0}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 995
    .local v0, "temp":Landroid/icu/text/MessageFormat;
    invoke-virtual {v0, p1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs whitelist test-api format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/Object;

    .line 977
    new-instance v0, Landroid/icu/text/MessageFormat;

    invoke-direct {v0, p0}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 978
    .local v0, "temp":Landroid/icu/text/MessageFormat;
    invoke-virtual {v0, p1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .registers 37
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/icu/text/MessageFormat$AppendableWrapper;",
            "Ljava/text/FieldPosition;",
            ")V"
        }
    .end annotation

    .line 1571
    .local p4, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    iget-object v1, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v15

    .line 1572
    .local v15, "msgString":Ljava/lang/String;
    iget-object v1, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, v6}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    .line 1573
    .local v1, "prevIndex":I
    add-int/lit8 v2, v6, 0x1

    move v8, v2

    move v2, v1

    move-object/from16 v1, p6

    .line 1574
    .end local p6    # "fp":Ljava/text/FieldPosition;
    .local v1, "fp":Ljava/text/FieldPosition;
    .local v2, "prevIndex":I
    .local v8, "i":I
    :goto_22
    iget-object v9, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v9, v8}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v9

    .line 1575
    .local v9, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v10

    .line 1576
    .local v10, "type":Landroid/icu/text/MessagePattern$Part$Type;
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v11

    .line 1577
    .local v11, "index":I
    invoke-virtual {v5, v15, v2, v11}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;II)V

    .line 1578
    sget-object v12, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v10, v12, :cond_38

    .line 1579
    return-void

    .line 1581
    :cond_38
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v16

    .line 1582
    .end local v2    # "prevIndex":I
    .local v16, "prevIndex":I
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v10, v2, :cond_58

    .line 1583
    iget-boolean v2, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    if-eqz v2, :cond_4e

    .line 1585
    iget-object v2, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    iget-object v12, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    iget-object v13, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    invoke-virtual {v5, v2, v12, v13}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5d

    .line 1588
    :cond_4e
    invoke-direct {v0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    move-result-object v2

    iget-object v12, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v5, v2, v12}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    .line 1590
    goto :goto_5d

    .line 1592
    :cond_58
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v10, v2, :cond_61

    .line 1593
    nop

    .line 1573
    .end local v9    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v10    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v11    # "index":I
    :goto_5d
    move/from16 v2, v16

    goto/16 :goto_373

    .line 1595
    .restart local v9    # "part":Landroid/icu/text/MessagePattern$Part;
    .restart local v10    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .restart local v11    # "index":I
    :cond_61
    iget-object v2, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, v8}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v2

    .line 1596
    .local v2, "argLimit":I
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v12

    .line 1597
    .local v12, "argType":Landroid/icu/text/MessagePattern$ArgType;
    iget-object v13, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v13, v8}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v9

    .line 1599
    const/4 v13, 0x0

    .line 1600
    .local v13, "noArg":Z
    const/4 v14, 0x0

    .line 1601
    .local v14, "argId":Ljava/lang/Object;
    move-object/from16 p6, v1

    .end local v1    # "fp":Ljava/text/FieldPosition;
    .restart local p6    # "fp":Ljava/text/FieldPosition;
    iget-object v1, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, v9}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v1

    .line 1602
    .local v1, "argName":Ljava/lang/String;
    if-eqz v3, :cond_9d

    .line 1603
    move/from16 v17, v2

    .end local v2    # "argLimit":I
    .local v17, "argLimit":I
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v2

    .line 1604
    .local v2, "argNumber":I
    invoke-static {v5}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-$$Nest$fgetattributes(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_8f

    .line 1606
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1608
    :cond_8f
    if-ltz v2, :cond_97

    array-length v6, v3

    if-ge v2, v6, :cond_97

    .line 1609
    aget-object v6, v3, v2

    .local v6, "arg":Ljava/lang/Object;
    goto :goto_99

    .line 1611
    .end local v6    # "arg":Ljava/lang/Object;
    :cond_97
    const/4 v6, 0x0

    .line 1612
    .restart local v6    # "arg":Ljava/lang/Object;
    const/4 v13, 0x1

    .line 1614
    .end local v2    # "argNumber":I
    :goto_99
    move/from16 v24, v13

    move-object v2, v14

    goto :goto_bc

    .line 1615
    .end local v6    # "arg":Ljava/lang/Object;
    .end local v17    # "argLimit":I
    .local v2, "argLimit":I
    :cond_9d
    move/from16 v17, v2

    .end local v2    # "argLimit":I
    .restart local v17    # "argLimit":I
    move-object v14, v1

    .line 1616
    if-eqz v4, :cond_b7

    .line 1617
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1618
    .restart local v6    # "arg":Ljava/lang/Object;
    if-nez v6, :cond_b3

    .line 1619
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move v13, v2

    move/from16 v24, v13

    move-object v2, v14

    goto :goto_bc

    .line 1618
    :cond_b3
    move/from16 v24, v13

    move-object v2, v14

    goto :goto_bc

    .line 1622
    .end local v6    # "arg":Ljava/lang/Object;
    :cond_b7
    const/4 v6, 0x0

    .line 1623
    .restart local v6    # "arg":Ljava/lang/Object;
    const/4 v13, 0x1

    move/from16 v24, v13

    move-object v2, v14

    .line 1626
    .end local v13    # "noArg":Z
    .end local v14    # "argId":Ljava/lang/Object;
    .local v2, "argId":Ljava/lang/Object;
    .local v24, "noArg":Z
    :goto_bc
    add-int/lit8 v18, v8, 0x1

    .line 1627
    .end local v8    # "i":I
    .local v18, "i":I
    invoke-static {v5}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-$$Nest$fgetlength(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v8

    .line 1628
    .local v8, "prevDestLength":I
    const/4 v13, 0x0

    .line 1629
    .local v13, "formatter":Ljava/text/Format;
    if-eqz v24, :cond_d7

    .line 1630
    const-string v14, "{"

    invoke-virtual {v5, v14}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    .line 1631
    invoke-virtual {v5, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    .line 1632
    const-string v14, "}"

    invoke-virtual {v5, v14}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    goto :goto_106

    .line 1633
    :cond_d7
    if-nez v6, :cond_e3

    .line 1634
    const-string v14, "null"

    invoke-virtual {v5, v14}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    goto :goto_106

    .line 1635
    :cond_e3
    if-eqz v7, :cond_11d

    iget v14, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    move-object/from16 v19, v1

    .end local v1    # "argName":Ljava/lang/String;
    .local v19, "argName":Ljava/lang/String;
    add-int/lit8 v1, v18, -0x2

    if-ne v14, v1, :cond_11a

    .line 1636
    move-object/from16 v20, v2

    .end local v2    # "argId":Ljava/lang/Object;
    .local v20, "argId":Ljava/lang/Object;
    iget-wide v1, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->offset:D

    const-wide/16 v21, 0x0

    cmpl-double v1, v1, v21

    if-nez v1, :cond_101

    .line 1638
    iget-object v1, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    iget-object v2, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    iget-object v14, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    invoke-virtual {v5, v1, v2, v14}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_106

    .line 1642
    :cond_101
    iget-object v1, v7, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    invoke-virtual {v5, v1, v6}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    .line 1727
    .end local v19    # "argName":Ljava/lang/String;
    .end local v20    # "argId":Ljava/lang/Object;
    .restart local v1    # "argName":Ljava/lang/String;
    .restart local v2    # "argId":Ljava/lang/Object;
    :goto_106
    move v7, v8

    move-object/from16 v27, v9

    move-object/from16 v25, v10

    move/from16 v26, v11

    move-object v2, v13

    move/from16 v11, v17

    move/from16 v13, v18

    move-object/from16 v14, v19

    move-object/from16 v9, v20

    move-object/from16 v10, p6

    .end local v1    # "argName":Ljava/lang/String;
    .end local v2    # "argId":Ljava/lang/Object;
    .restart local v19    # "argName":Ljava/lang/String;
    .restart local v20    # "argId":Ljava/lang/Object;
    goto/16 :goto_363

    .line 1635
    .end local v20    # "argId":Ljava/lang/Object;
    .restart local v2    # "argId":Ljava/lang/Object;
    :cond_11a
    move-object/from16 v20, v2

    .end local v2    # "argId":Ljava/lang/Object;
    .restart local v20    # "argId":Ljava/lang/Object;
    goto :goto_121

    .end local v19    # "argName":Ljava/lang/String;
    .end local v20    # "argId":Ljava/lang/Object;
    .restart local v1    # "argName":Ljava/lang/String;
    .restart local v2    # "argId":Ljava/lang/Object;
    :cond_11d
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 1644
    .end local v1    # "argName":Ljava/lang/String;
    .end local v2    # "argId":Ljava/lang/Object;
    .restart local v19    # "argName":Ljava/lang/String;
    .restart local v20    # "argId":Ljava/lang/Object;
    :goto_121
    iget-object v1, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v1, :cond_1d1

    iget-object v1, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    add-int/lit8 v2, v18, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/Format;

    move-object v2, v1

    .end local v13    # "formatter":Ljava/text/Format;
    .local v2, "formatter":Ljava/text/Format;
    if-eqz v1, :cond_1c5

    .line 1646
    instance-of v1, v2, Ljava/text/ChoiceFormat;

    if-nez v1, :cond_152

    instance-of v1, v2, Landroid/icu/text/PluralFormat;

    if-nez v1, :cond_152

    instance-of v1, v2, Landroid/icu/text/SelectFormat;

    if-eqz v1, :cond_143

    goto :goto_152

    .line 1668
    :cond_143
    invoke-virtual {v5, v2, v6}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    move v5, v8

    move-object/from16 v27, v9

    move-object/from16 v25, v10

    move/from16 v26, v11

    move-object v3, v12

    move/from16 v4, v18

    goto/16 :goto_1b6

    .line 1651
    :cond_152
    :goto_152
    invoke-virtual {v2, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1652
    .local v1, "subMsgString":Ljava/lang/String;
    const/16 v13, 0x7b

    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-gez v13, :cond_191

    .line 1653
    const/16 v13, 0x27

    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_16f

    iget-object v13, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v13}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v13

    if-nez v13, :cond_16f

    goto :goto_191

    .line 1656
    :cond_16f
    invoke-static {v5}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-$$Nest$fgetattributes(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_183

    .line 1657
    invoke-virtual {v5, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    move v5, v8

    move-object/from16 v27, v9

    move-object/from16 v25, v10

    move/from16 v26, v11

    move-object v3, v12

    move/from16 v4, v18

    goto :goto_1b5

    .line 1665
    :cond_183
    invoke-virtual {v5, v2, v6}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    move v5, v8

    move-object/from16 v27, v9

    move-object/from16 v25, v10

    move/from16 v26, v11

    move-object v3, v12

    move/from16 v4, v18

    goto :goto_1b5

    .line 1654
    :cond_191
    :goto_191
    new-instance v13, Landroid/icu/text/MessageFormat;

    iget-object v14, v0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v13, v1, v14}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 1655
    .local v13, "subMsgFormat":Landroid/icu/text/MessageFormat;
    move-object v14, v10

    .end local v10    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .local v14, "type":Landroid/icu/text/MessagePattern$Part$Type;
    const/4 v10, 0x0

    move-object/from16 v21, v14

    .end local v14    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .local v21, "type":Landroid/icu/text/MessagePattern$Part$Type;
    const/4 v14, 0x0

    move-object/from16 v22, v9

    .end local v9    # "part":Landroid/icu/text/MessagePattern$Part;
    .local v22, "part":Landroid/icu/text/MessagePattern$Part;
    const/4 v9, 0x0

    move-object/from16 v25, v13

    move-object v13, v5

    move v5, v8

    move-object/from16 v8, v25

    move/from16 v26, v11

    move-object/from16 v25, v21

    move-object/from16 v27, v22

    move-object v11, v3

    move-object v3, v12

    move-object v12, v4

    move/from16 v4, v18

    .end local v11    # "index":I
    .end local v12    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .end local v13    # "subMsgFormat":Landroid/icu/text/MessageFormat;
    .end local v18    # "i":I
    .end local v21    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v22    # "part":Landroid/icu/text/MessagePattern$Part;
    .local v3, "argType":Landroid/icu/text/MessagePattern$ArgType;
    .local v4, "i":I
    .local v5, "prevDestLength":I
    .local v8, "subMsgFormat":Landroid/icu/text/MessageFormat;
    .local v25, "type":Landroid/icu/text/MessagePattern$Part$Type;
    .local v26, "index":I
    .local v27, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-direct/range {v8 .. v14}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 1656
    .end local v8    # "subMsgFormat":Landroid/icu/text/MessageFormat;
    nop

    .line 1667
    .end local v1    # "subMsgString":Ljava/lang/String;
    :goto_1b5
    nop

    .line 1727
    :goto_1b6
    move-object/from16 v10, p6

    move-object v12, v3

    move v13, v4

    move v7, v5

    move/from16 v11, v17

    move-object/from16 v14, v19

    move-object/from16 v9, v20

    move-object/from16 v5, p5

    goto/16 :goto_363

    .line 1644
    .end local v3    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .end local v4    # "i":I
    .end local v5    # "prevDestLength":I
    .end local v25    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v26    # "index":I
    .end local v27    # "part":Landroid/icu/text/MessagePattern$Part;
    .local v8, "prevDestLength":I
    .restart local v9    # "part":Landroid/icu/text/MessagePattern$Part;
    .restart local v10    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .restart local v11    # "index":I
    .restart local v12    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .restart local v18    # "i":I
    :cond_1c5
    move v5, v8

    move-object/from16 v27, v9

    move-object/from16 v25, v10

    move/from16 v26, v11

    move-object v3, v12

    move/from16 v4, v18

    .end local v8    # "prevDestLength":I
    .end local v9    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v10    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v11    # "index":I
    .end local v12    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .end local v18    # "i":I
    .restart local v3    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .restart local v4    # "i":I
    .restart local v5    # "prevDestLength":I
    .restart local v25    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .restart local v26    # "index":I
    .restart local v27    # "part":Landroid/icu/text/MessagePattern$Part;
    move-object v13, v2

    goto :goto_1db

    .end local v2    # "formatter":Ljava/text/Format;
    .end local v3    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .end local v4    # "i":I
    .end local v5    # "prevDestLength":I
    .end local v25    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v26    # "index":I
    .end local v27    # "part":Landroid/icu/text/MessagePattern$Part;
    .restart local v8    # "prevDestLength":I
    .restart local v9    # "part":Landroid/icu/text/MessagePattern$Part;
    .restart local v10    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .restart local v11    # "index":I
    .restart local v12    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .local v13, "formatter":Ljava/text/Format;
    .restart local v18    # "i":I
    :cond_1d1
    move v5, v8

    move-object/from16 v27, v9

    move-object/from16 v25, v10

    move/from16 v26, v11

    move-object v3, v12

    move/from16 v4, v18

    .line 1670
    .end local v8    # "prevDestLength":I
    .end local v9    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v10    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v11    # "index":I
    .end local v12    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .end local v18    # "i":I
    .restart local v3    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .restart local v4    # "i":I
    .restart local v5    # "prevDestLength":I
    .restart local v25    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .restart local v26    # "index":I
    .restart local v27    # "part":Landroid/icu/text/MessagePattern$Part;
    :goto_1db
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    if-eq v3, v1, :cond_31b

    iget-object v1, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v1, :cond_202

    iget-object v1, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    add-int/lit8 v18, v4, -0x2

    .line 1672
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_202

    move-object/from16 v10, p6

    move-object v12, v3

    move v7, v5

    move-object/from16 p6, v13

    move/from16 v11, v17

    move-object/from16 v14, v19

    move-object/from16 v9, v20

    move-object/from16 v5, p5

    move v13, v4

    goto/16 :goto_32a

    .line 1690
    :cond_202
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    const-string v2, "\' is not a Number"

    const-string v8, "\'"

    if-ne v3, v1, :cond_253

    .line 1691
    instance-of v1, v6, Ljava/lang/Number;

    if-eqz v1, :cond_237

    .line 1694
    move-object v1, v6

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 1695
    .local v8, "number":D
    iget-object v1, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-static {v1, v4, v8, v9}, Landroid/icu/text/MessageFormat;->findChoiceSubMessage(Landroid/icu/text/MessagePattern;ID)I

    move-result v1

    .line 1696
    .local v1, "subMsgStart":I
    const/4 v2, 0x0

    move-object/from16 v10, p6

    move-object v12, v3

    move v14, v4

    move v7, v5

    move/from16 v11, v17

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v17, v8

    move-object/from16 v9, v20

    .end local v3    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .end local v4    # "i":I
    .end local v5    # "prevDestLength":I
    .end local v8    # "number":D
    .end local v20    # "argId":Ljava/lang/Object;
    .end local p6    # "fp":Ljava/text/FieldPosition;
    .local v7, "prevDestLength":I
    .local v9, "argId":Ljava/lang/Object;
    .local v10, "fp":Ljava/text/FieldPosition;
    .local v11, "argLimit":I
    .restart local v12    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .local v14, "i":I
    .local v17, "number":D
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessageFormat;->formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V

    .line 1697
    .end local v1    # "subMsgStart":I
    .end local v17    # "number":D
    move-object/from16 p6, v13

    move v13, v14

    move-object/from16 v14, v19

    goto/16 :goto_361

    .line 1692
    .end local v7    # "prevDestLength":I
    .end local v9    # "argId":Ljava/lang/Object;
    .end local v10    # "fp":Ljava/text/FieldPosition;
    .end local v11    # "argLimit":I
    .end local v12    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .end local v14    # "i":I
    .restart local v3    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .restart local v4    # "i":I
    .restart local v5    # "prevDestLength":I
    .local v17, "argLimit":I
    .restart local v20    # "argId":Ljava/lang/Object;
    .restart local p6    # "fp":Ljava/text/FieldPosition;
    :cond_237
    move-object v12, v3

    .end local v3    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .restart local v12    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1697
    .end local v12    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .restart local v3    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    :cond_253
    move-object/from16 v10, p6

    move-object v12, v3

    move v14, v4

    move v7, v5

    move/from16 v11, v17

    move-object/from16 v9, v20

    .end local v3    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .end local v4    # "i":I
    .end local v5    # "prevDestLength":I
    .end local v17    # "argLimit":I
    .end local v20    # "argId":Ljava/lang/Object;
    .end local p6    # "fp":Ljava/text/FieldPosition;
    .restart local v7    # "prevDestLength":I
    .restart local v9    # "argId":Ljava/lang/Object;
    .restart local v10    # "fp":Ljava/text/FieldPosition;
    .restart local v11    # "argLimit":I
    .restart local v12    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .restart local v14    # "i":I
    invoke-virtual {v12}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v1

    if-eqz v1, :cond_2e2

    .line 1698
    instance-of v1, v6, Ljava/lang/Number;

    if-eqz v1, :cond_2c7

    .line 1702
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v12, v1, :cond_27a

    .line 1703
    iget-object v1, v0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    if-nez v1, :cond_277

    .line 1704
    new-instance v1, Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    sget-object v2, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {v1, v0, v2}, Landroid/icu/text/MessageFormat$PluralSelectorProvider;-><init>(Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules$PluralType;)V

    iput-object v1, v0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1706
    :cond_277
    iget-object v1, v0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    .local v1, "selector":Landroid/icu/text/MessageFormat$PluralSelectorProvider;
    goto :goto_289

    .line 1708
    .end local v1    # "selector":Landroid/icu/text/MessageFormat$PluralSelectorProvider;
    :cond_27a
    iget-object v1, v0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    if-nez v1, :cond_287

    .line 1709
    new-instance v1, Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    sget-object v2, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {v1, v0, v2}, Landroid/icu/text/MessageFormat$PluralSelectorProvider;-><init>(Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules$PluralType;)V

    iput-object v1, v0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1711
    :cond_287
    iget-object v1, v0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1713
    .restart local v1    # "selector":Landroid/icu/text/MessageFormat$PluralSelectorProvider;
    :goto_289
    move-object/from16 v20, v6

    check-cast v20, Ljava/lang/Number;

    .line 1714
    .local v20, "number":Ljava/lang/Number;
    iget-object v2, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, v14}, Landroid/icu/text/MessagePattern;->getPluralOffset(I)D

    move-result-wide v21

    .line 1715
    .local v21, "offset":D
    new-instance v17, Landroid/icu/text/MessageFormat$PluralSelectorContext;

    const/16 v23, 0x0

    move/from16 v18, v14

    .end local v14    # "i":I
    .restart local v18    # "i":I
    invoke-direct/range {v17 .. v23}, Landroid/icu/text/MessageFormat$PluralSelectorContext;-><init>(ILjava/lang/String;Ljava/lang/Number;DLandroid/icu/text/MessageFormat-IA;)V

    move-object/from16 v14, v19

    move-object/from16 v8, v20

    move-wide/from16 v28, v21

    .end local v19    # "argName":Ljava/lang/String;
    .end local v20    # "number":Ljava/lang/Number;
    .end local v21    # "offset":D
    .local v8, "number":Ljava/lang/Number;
    .local v14, "argName":Ljava/lang/String;
    .local v28, "offset":D
    move-object/from16 v2, v17

    .line 1717
    .local v2, "context":Landroid/icu/text/MessageFormat$PluralSelectorContext;
    iget-object v3, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 1718
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    .line 1717
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v19, v18

    move-object/from16 v18, v3

    .end local v1    # "selector":Landroid/icu/text/MessageFormat$PluralSelectorProvider;
    .end local v2    # "context":Landroid/icu/text/MessageFormat$PluralSelectorContext;
    .end local v18    # "i":I
    .local v19, "i":I
    .local v20, "selector":Landroid/icu/text/MessageFormat$PluralSelectorProvider;
    .local v21, "context":Landroid/icu/text/MessageFormat$PluralSelectorContext;
    invoke-static/range {v18 .. v23}, Landroid/icu/text/PluralFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILandroid/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I

    move-result v1

    .line 1719
    move/from16 v18, v19

    .end local v19    # "i":I
    .end local v21    # "context":Landroid/icu/text/MessageFormat$PluralSelectorContext;
    .local v1, "subMsgStart":I
    .restart local v2    # "context":Landroid/icu/text/MessageFormat$PluralSelectorContext;
    .restart local v18    # "i":I
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 p6, v13

    move/from16 v13, v18

    .end local v18    # "i":I
    .local v13, "i":I
    .local p6, "formatter":Ljava/text/Format;
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessageFormat;->formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V

    .line 1720
    .end local v1    # "subMsgStart":I
    .end local v2    # "context":Landroid/icu/text/MessageFormat$PluralSelectorContext;
    .end local v8    # "number":Ljava/lang/Number;
    .end local v20    # "selector":Landroid/icu/text/MessageFormat$PluralSelectorProvider;
    .end local v28    # "offset":D
    goto/16 :goto_361

    .line 1699
    .end local p6    # "formatter":Ljava/text/Format;
    .local v13, "formatter":Ljava/text/Format;
    .local v14, "i":I
    .local v19, "argName":Ljava/lang/String;
    :cond_2c7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1720
    :cond_2e2
    move-object/from16 p6, v13

    move v13, v14

    move-object/from16 v14, v19

    .end local v19    # "argName":Ljava/lang/String;
    .local v13, "i":I
    .local v14, "argName":Ljava/lang/String;
    .restart local p6    # "formatter":Ljava/text/Format;
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v12, v1, :cond_300

    .line 1721
    iget-object v1, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v13, v2}, Landroid/icu/text/SelectFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILjava/lang/String;)I

    move-result v1

    .line 1722
    .restart local v1    # "subMsgStart":I
    const/4 v2, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessageFormat;->formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V

    .line 1723
    .end local v1    # "subMsgStart":I
    goto :goto_361

    .line 1725
    :cond_300
    move-object/from16 v5, p5

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected argType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1670
    .end local v7    # "prevDestLength":I
    .end local v9    # "argId":Ljava/lang/Object;
    .end local v10    # "fp":Ljava/text/FieldPosition;
    .end local v11    # "argLimit":I
    .end local v12    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .end local v14    # "argName":Ljava/lang/String;
    .restart local v3    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .restart local v4    # "i":I
    .restart local v5    # "prevDestLength":I
    .local v13, "formatter":Ljava/text/Format;
    .restart local v17    # "argLimit":I
    .restart local v19    # "argName":Ljava/lang/String;
    .local v20, "argId":Ljava/lang/Object;
    .local p6, "fp":Ljava/text/FieldPosition;
    :cond_31b
    move-object/from16 v10, p6

    move-object v12, v3

    move v7, v5

    move-object/from16 p6, v13

    move/from16 v11, v17

    move-object/from16 v14, v19

    move-object/from16 v9, v20

    move-object/from16 v5, p5

    move v13, v4

    .line 1675
    .end local v3    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .end local v4    # "i":I
    .end local v5    # "prevDestLength":I
    .end local v17    # "argLimit":I
    .end local v19    # "argName":Ljava/lang/String;
    .end local v20    # "argId":Ljava/lang/Object;
    .restart local v7    # "prevDestLength":I
    .restart local v9    # "argId":Ljava/lang/Object;
    .restart local v10    # "fp":Ljava/text/FieldPosition;
    .restart local v11    # "argLimit":I
    .restart local v12    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .local v13, "i":I
    .restart local v14    # "argName":Ljava/lang/String;
    .local p6, "formatter":Ljava/text/Format;
    :goto_32a
    instance-of v1, v6, Ljava/lang/Number;

    if-eqz v1, :cond_336

    .line 1677
    invoke-direct {v0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v5, v1, v6}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_361

    .line 1678
    :cond_336
    instance-of v1, v6, Ljava/util/Date;

    if-eqz v1, :cond_342

    .line 1680
    invoke-direct {v0}, Landroid/icu/text/MessageFormat;->getStockDateFormatter()Landroid/icu/text/DateFormat;

    move-result-object v1

    invoke-virtual {v5, v1, v6}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_361

    .line 1681
    :cond_342
    instance-of v1, v6, Landroid/icu/util/Calendar;

    if-eqz v1, :cond_34e

    .line 1683
    invoke-direct {v0}, Landroid/icu/text/MessageFormat;->getStockDateFormatter()Landroid/icu/text/DateFormat;

    move-result-object v1

    invoke-virtual {v5, v1, v6}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_361

    .line 1684
    :cond_34e
    instance-of v1, v6, Ljava/time/temporal/Temporal;

    if-eqz v1, :cond_35a

    .line 1686
    invoke-direct {v0}, Landroid/icu/text/MessageFormat;->getStockDateFormatter()Landroid/icu/text/DateFormat;

    move-result-object v1

    invoke-virtual {v5, v1, v6}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_361

    .line 1688
    :cond_35a
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    .line 1727
    :goto_361
    move-object/from16 v2, p6

    .end local p6    # "formatter":Ljava/text/Format;
    .local v2, "formatter":Ljava/text/Format;
    :goto_363
    invoke-direct {v0, v5, v7, v10, v9}, Landroid/icu/text/MessageFormat;->updateMetaData(Landroid/icu/text/MessageFormat$AppendableWrapper;ILjava/text/FieldPosition;Ljava/lang/Object;)Ljava/text/FieldPosition;

    move-result-object v1

    .line 1728
    .end local v10    # "fp":Ljava/text/FieldPosition;
    .local v1, "fp":Ljava/text/FieldPosition;
    iget-object v3, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v3, v11}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v3

    .line 1729
    .end local v16    # "prevIndex":I
    .local v3, "prevIndex":I
    move v8, v11

    move v2, v3

    .line 1573
    .end local v3    # "prevIndex":I
    .end local v6    # "arg":Ljava/lang/Object;
    .end local v7    # "prevDestLength":I
    .end local v9    # "argId":Ljava/lang/Object;
    .end local v11    # "argLimit":I
    .end local v12    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .end local v13    # "i":I
    .end local v14    # "argName":Ljava/lang/String;
    .end local v24    # "noArg":Z
    .end local v25    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v26    # "index":I
    .end local v27    # "part":Landroid/icu/text/MessagePattern$Part;
    .local v2, "prevIndex":I
    .local v8, "i":I
    :goto_373
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    goto/16 :goto_22
.end method

.method private greylist-max-o format(Ljava/lang/Object;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .registers 6
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "result"    # Landroid/icu/text/MessageFormat$AppendableWrapper;
    .param p3, "fp"    # Ljava/text/FieldPosition;

    .line 2094
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_8

    goto :goto_f

    .line 2097
    :cond_8
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0, p2, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    goto :goto_15

    .line 2095
    :cond_f
    :goto_f
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 2099
    :goto_15
    return-void
.end method

.method private greylist-max-o format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .registers 14
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p3, "dest"    # Landroid/icu/text/MessageFormat$AppendableWrapper;
    .param p4, "fp"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/icu/text/MessageFormat$AppendableWrapper;",
            "Ljava/text/FieldPosition;",
            ")V"
        }
    .end annotation

    .line 2110
    .local p2, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_13

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 2111
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2115
    :cond_13
    :goto_13
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .end local p1    # "arguments":[Ljava/lang/Object;
    .end local p2    # "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p3    # "dest":Landroid/icu/text/MessageFormat$AppendableWrapper;
    .end local p4    # "fp":Ljava/text/FieldPosition;
    .local v5, "arguments":[Ljava/lang/Object;
    .local v6, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v7, "dest":Landroid/icu/text/MessageFormat$AppendableWrapper;
    .local v8, "fp":Ljava/text/FieldPosition;
    invoke-direct/range {v2 .. v8}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 2116
    return-void
.end method

.method private greylist-max-o formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V
    .registers 19
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/icu/text/MessageFormat$AppendableWrapper;",
            ")V"
        }
    .end annotation

    .line 1737
    .local p4, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1738
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 1739
    return-void

    .line 1746
    :cond_16
    move-object v2, p2

    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v1

    .line 1748
    .local v1, "msgString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1749
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v4, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v4

    .line 1750
    .local v4, "prevIndex":I
    move v5, p1

    move-object v10, v3

    move v11, v4

    .line 1751
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "prevIndex":I
    .local v5, "i":I
    .local v10, "sb":Ljava/lang/StringBuilder;
    .local v11, "prevIndex":I
    :goto_2b
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 1752
    .local v3, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    .line 1753
    .local v4, "type":Landroid/icu/text/MessagePattern$Part$Type;
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v6

    .line 1754
    .local v6, "index":I
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v7, :cond_79

    .line 1755
    if-nez v10, :cond_47

    .line 1756
    invoke-virtual {v1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    .local v7, "subMsgString":Ljava/lang/String;
    goto :goto_50

    .line 1758
    .end local v7    # "subMsgString":Ljava/lang/String;
    :cond_47
    invoke-virtual {v10, v1, v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1760
    .restart local v7    # "subMsgString":Ljava/lang/String;
    move-object v12, v7

    .line 1787
    .end local v3    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v4    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v5    # "i":I
    .end local v6    # "index":I
    .end local v7    # "subMsgString":Ljava/lang/String;
    .local v12, "subMsgString":Ljava/lang/String;
    :goto_50
    const/16 v3, 0x7b

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_73

    .line 1788
    new-instance v3, Landroid/icu/text/MessageFormat;

    const-string v4, ""

    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v3, v4, v5}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 1789
    .local v3, "subMsgFormat":Landroid/icu/text/MessageFormat;
    sget-object v4, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v3, v12, v4}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;Landroid/icu/text/MessagePattern$ApostropheMode;)V

    .line 1790
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 1791
    .end local v3    # "subMsgFormat":Landroid/icu/text/MessageFormat;
    goto :goto_78

    .line 1792
    :cond_73
    move-object/from16 v8, p5

    invoke-virtual {v8, v12}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    .line 1794
    :goto_78
    return-void

    .line 1761
    .end local v12    # "subMsgString":Ljava/lang/String;
    .local v3, "part":Landroid/icu/text/MessagePattern$Part;
    .restart local v4    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .restart local v5    # "i":I
    .restart local v6    # "index":I
    :cond_79
    move-object/from16 v8, p5

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v4, v7, :cond_aa

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v7, :cond_84

    goto :goto_aa

    .line 1775
    :cond_84
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v7, :cond_d5

    .line 1776
    if-nez v10, :cond_90

    .line 1777
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v7

    .line 1779
    :cond_90
    invoke-virtual {v10, v1, v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1780
    move v7, v6

    .line 1781
    .end local v11    # "prevIndex":I
    .local v7, "prevIndex":I
    iget-object v9, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v9, v5}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v5

    .line 1782
    iget-object v9, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v9, v5}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v6

    .line 1783
    invoke-static {v1, v7, v6, v10}, Landroid/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 1784
    move v7, v6

    move v11, v7

    goto :goto_d5

    .line 1762
    .end local v7    # "prevIndex":I
    .restart local v11    # "prevIndex":I
    :cond_aa
    :goto_aa
    if-nez v10, :cond_b2

    .line 1763
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v7

    .line 1765
    :cond_b2
    invoke-virtual {v10, v1, v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1766
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v7, :cond_d0

    .line 1767
    iget-boolean v7, v2, Landroid/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    if-eqz v7, :cond_c3

    .line 1769
    iget-object v7, v2, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d0

    .line 1771
    :cond_c3
    invoke-direct {p0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    move-result-object v7

    iget-object v9, v2, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v7, v9}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    :cond_d0
    :goto_d0
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v7

    move v11, v7

    .line 1786
    .end local v3    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v4    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v6    # "index":I
    :cond_d5
    :goto_d5
    goto/16 :goto_2b
.end method

.method private greylist-max-o getArgName(I)Ljava/lang/String;
    .registers 5
    .param p1, "partIndex"    # I

    .line 547
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v0

    .line 548
    .local v0, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v1, v2, :cond_15

    .line 549
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, v0}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 551
    :cond_15
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getLiteralStringUntilNextArgument(I)Ljava/lang/String;
    .registers 10
    .param p1, "from"    # I

    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1805
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v1

    .line 1806
    .local v1, "msgString":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 1807
    .local v2, "prevIndex":I
    add-int/lit8 v3, p1, 0x1

    .line 1808
    .local v3, "i":I
    :goto_17
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v4, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    .line 1809
    .local v4, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v5

    .line 1810
    .local v5, "type":Landroid/icu/text/MessagePattern$Part$Type;
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v6

    .line 1811
    .local v6, "index":I
    invoke-virtual {v0, v1, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1812
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v5, v7, :cond_39

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v5, v7, :cond_31

    goto :goto_39

    .line 1815
    :cond_31
    nop

    .line 1817
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 1807
    .end local v4    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v5    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v6    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1813
    .restart local v4    # "part":Landroid/icu/text/MessagePattern$Part;
    .restart local v5    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .restart local v6    # "index":I
    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private greylist-max-o getStockDateFormatter()Landroid/icu/text/DateFormat;
    .registers 3

    .line 1537
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    if-nez v0, :cond_d

    .line 1538
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    const/4 v1, 0x3

    invoke-static {v1, v1, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    .line 1541
    :cond_d
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    return-object v0
.end method

.method private greylist-max-o getStockNumberFormatter()Landroid/icu/text/NumberFormat;
    .registers 2

    .line 1544
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    if-nez v0, :cond_c

    .line 1545
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    .line 1547
    :cond_c
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    return-object v0
.end method

.method private static greylist-max-o matchStringUntilLimitPart(Landroid/icu/text/MessagePattern;IILjava/lang/String;I)I
    .registers 12
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "partIndex"    # I
    .param p2, "limitPartIndex"    # I
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "sourceOffset"    # I

    .line 1927
    const/4 v0, 0x0

    .line 1928
    .local v0, "matchingSourceLength":I
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v1

    .line 1929
    .local v1, "msgString":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 1931
    .local v2, "prevIndex":I
    :goto_d
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 1932
    .local v3, "part":Landroid/icu/text/MessagePattern$Part;
    if-eq p1, p2, :cond_1d

    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v5, :cond_35

    .line 1933
    :cond_1d
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v4

    .line 1934
    .local v4, "index":I
    sub-int v5, v4, v2

    .line 1935
    .local v5, "length":I
    if-eqz v5, :cond_2d

    invoke-virtual {p3, p4, v1, v2, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 1936
    const/4 v6, -0x1

    return v6

    .line 1938
    :cond_2d
    add-int/2addr v0, v5

    .line 1939
    if-ne p1, p2, :cond_31

    .line 1940
    return v0

    .line 1942
    :cond_31
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 1944
    .end local v3    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v4    # "index":I
    .end local v5    # "length":I
    :cond_35
    goto :goto_d
.end method

.method private greylist-max-o nextTopLevelArgStart(I)I
    .registers 4
    .param p1, "partIndex"    # I

    .line 525
    if-eqz p1, :cond_8

    .line 526
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    .line 529
    :cond_8
    :goto_8
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    .line 530
    .local v0, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_15

    .line 531
    return p1

    .line 533
    :cond_15
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_1b

    .line 534
    const/4 v1, -0x1

    return v1

    .line 536
    .end local v0    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    :cond_1b
    goto :goto_8
.end method

.method private greylist-max-o parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V
    .registers 32
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1209
    .local p5, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    if-nez v2, :cond_d

    .line 1210
    return-void

    .line 1212
    :cond_d
    iget-object v5, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v5}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v5

    .line 1213
    .local v5, "msgString":Ljava/lang/String;
    iget-object v6, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v6, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v6

    .line 1214
    .local v6, "prevIndex":I
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 1215
    .local v7, "sourceOffset":I
    new-instance v8, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1217
    .local v8, "tempStatus":Ljava/text/ParsePosition;
    add-int/lit8 v9, v1, 0x1

    .line 1218
    .local v9, "i":I
    :goto_29
    iget-object v10, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v10, v9}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v10

    .line 1219
    .local v10, "part":Landroid/icu/text/MessagePattern$Part;
    invoke-virtual {v10}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v11

    .line 1220
    .local v11, "type":Landroid/icu/text/MessagePattern$Part$Type;
    invoke-virtual {v10}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v12

    .line 1222
    .local v12, "index":I
    sub-int v13, v12, v6

    .line 1223
    .local v13, "len":I
    if-eqz v13, :cond_46

    invoke-virtual {v5, v6, v2, v7, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v14

    if-eqz v14, :cond_42

    goto :goto_46

    .line 1227
    :cond_42
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1228
    return-void

    .line 1224
    :cond_46
    :goto_46
    add-int/2addr v7, v13

    .line 1225
    add-int/2addr v6, v13

    .line 1230
    sget-object v14, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v11, v14, :cond_50

    .line 1232
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1233
    return-void

    .line 1235
    :cond_50
    sget-object v14, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v11, v14, :cond_1cd

    sget-object v14, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v11, v14, :cond_60

    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v22, v8

    goto/16 :goto_1d3

    .line 1240
    :cond_60
    nop

    .line 1241
    iget-object v14, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v14, v9}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v14

    .line 1243
    .local v14, "argLimit":I
    invoke-virtual {v10}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v15

    .line 1244
    .local v15, "argType":Landroid/icu/text/MessagePattern$ArgType;
    iget-object v1, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1, v9}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 1246
    .end local v10    # "part":Landroid/icu/text/MessagePattern$Part;
    .local v1, "part":Landroid/icu/text/MessagePattern$Part;
    const/4 v10, 0x0

    .line 1247
    .local v10, "argId":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1248
    .local v16, "argNumber":I
    const/16 v17, 0x0

    .line 1249
    .local v17, "key":Ljava/lang/String;
    if-eqz p4, :cond_89

    .line 1250
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v16

    .line 1251
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v5, v17

    goto :goto_ac

    .line 1253
    :cond_89
    move-object/from16 v18, v5

    .end local v5    # "msgString":Ljava/lang/String;
    .local v18, "msgString":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v5

    move/from16 v19, v6

    .end local v6    # "prevIndex":I
    .local v19, "prevIndex":I
    sget-object v6, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v5, v6, :cond_9e

    .line 1254
    iget-object v5, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v5, v1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v5

    .end local v17    # "key":Ljava/lang/String;
    .local v5, "key":Ljava/lang/String;
    goto :goto_a8

    .line 1256
    .end local v5    # "key":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    :cond_9e
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v5

    .line 1258
    :goto_a8
    move-object/from16 v10, v17

    move-object/from16 v5, v17

    .line 1261
    .end local v17    # "key":Ljava/lang/String;
    .restart local v5    # "key":Ljava/lang/String;
    :goto_ac
    add-int/lit8 v9, v9, 0x1

    .line 1262
    const/4 v6, 0x0

    .line 1263
    .local v6, "formatter":Ljava/text/Format;
    const/16 v17, 0x0

    .line 1264
    .local v17, "haveArgResult":Z
    const/16 v20, 0x0

    .line 1265
    .local v20, "argResult":Ljava/lang/Object;
    move-object/from16 v21, v1

    .end local v1    # "part":Landroid/icu/text/MessagePattern$Part;
    .local v21, "part":Landroid/icu/text/MessagePattern$Part;
    iget-object v1, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v1, :cond_ea

    iget-object v1, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    add-int/lit8 v22, v9, -0x2

    move-object/from16 v23, v6

    .end local v6    # "formatter":Ljava/text/Format;
    .local v23, "formatter":Ljava/text/Format;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/Format;

    move-object v6, v1

    .end local v23    # "formatter":Ljava/text/Format;
    .restart local v6    # "formatter":Ljava/text/Format;
    if-eqz v1, :cond_ec

    .line 1267
    invoke-virtual {v8, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1268
    invoke-virtual {v6, v2, v8}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v1

    .line 1269
    .end local v20    # "argResult":Ljava/lang/Object;
    .local v1, "argResult":Ljava/lang/Object;
    move-object/from16 v20, v1

    .end local v1    # "argResult":Ljava/lang/Object;
    .restart local v20    # "argResult":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-ne v1, v7, :cond_df

    .line 1270
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1271
    return-void

    .line 1273
    :cond_df
    const/4 v1, 0x1

    .line 1274
    .end local v17    # "haveArgResult":Z
    .local v1, "haveArgResult":Z
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    move-object/from16 v22, v8

    move-object/from16 v2, v20

    goto/16 :goto_1b4

    .line 1265
    .end local v1    # "haveArgResult":Z
    .restart local v17    # "haveArgResult":Z
    :cond_ea
    move-object/from16 v23, v6

    .line 1275
    :cond_ec
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    if-eq v15, v1, :cond_163

    iget-object v1, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v1, :cond_107

    iget-object v1, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    add-int/lit8 v22, v9, -0x2

    .line 1277
    move-object/from16 v23, v6

    .end local v6    # "formatter":Ljava/text/Format;
    .restart local v23    # "formatter":Ljava/text/Format;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    move-object/from16 v22, v8

    goto :goto_167

    .line 1275
    .end local v23    # "formatter":Ljava/text/Format;
    .restart local v6    # "formatter":Ljava/text/Format;
    :cond_107
    move-object/from16 v23, v6

    .line 1300
    .end local v6    # "formatter":Ljava/text/Format;
    .restart local v23    # "formatter":Ljava/text/Format;
    :cond_109
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v15, v1, :cond_131

    .line 1301
    invoke-virtual {v8, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1302
    iget-object v1, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-static {v1, v9, v2, v8}, Landroid/icu/text/MessageFormat;->parseChoiceArgument(Landroid/icu/text/MessagePattern;ILjava/lang/String;Ljava/text/ParsePosition;)D

    move-result-wide v24

    .line 1303
    .local v24, "choiceResult":D
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-ne v1, v7, :cond_120

    .line 1304
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1305
    return-void

    .line 1307
    :cond_120
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1308
    .end local v20    # "argResult":Ljava/lang/Object;
    .local v1, "argResult":Ljava/lang/Object;
    const/4 v6, 0x1

    .line 1309
    .end local v17    # "haveArgResult":Z
    .local v6, "haveArgResult":Z
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 1310
    .end local v24    # "choiceResult":D
    move-object v2, v1

    move v1, v6

    move-object/from16 v22, v8

    move-object/from16 v6, v23

    goto/16 :goto_1b4

    .end local v1    # "argResult":Ljava/lang/Object;
    .end local v6    # "haveArgResult":Z
    .restart local v17    # "haveArgResult":Z
    .restart local v20    # "argResult":Ljava/lang/Object;
    :cond_131
    invoke-virtual {v15}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v1

    if-nez v1, :cond_159

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v15, v1, :cond_13e

    move-object/from16 v22, v8

    goto :goto_15b

    .line 1316
    :cond_13e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v8

    .end local v8    # "tempStatus":Ljava/text/ParsePosition;
    .local v22, "tempStatus":Ljava/text/ParsePosition;
    const-string v8, "unexpected argType "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1310
    .end local v22    # "tempStatus":Ljava/text/ParsePosition;
    .restart local v8    # "tempStatus":Ljava/text/ParsePosition;
    :cond_159
    move-object/from16 v22, v8

    .line 1312
    .end local v8    # "tempStatus":Ljava/text/ParsePosition;
    .restart local v22    # "tempStatus":Ljava/text/ParsePosition;
    :goto_15b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Parsing of plural/select/selectordinal argument is not supported."

    invoke-direct {v1, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1275
    .end local v22    # "tempStatus":Ljava/text/ParsePosition;
    .end local v23    # "formatter":Ljava/text/Format;
    .local v6, "formatter":Ljava/text/Format;
    .restart local v8    # "tempStatus":Ljava/text/ParsePosition;
    :cond_163
    move-object/from16 v23, v6

    move-object/from16 v22, v8

    .line 1282
    .end local v6    # "formatter":Ljava/text/Format;
    .end local v8    # "tempStatus":Ljava/text/ParsePosition;
    .restart local v22    # "tempStatus":Ljava/text/ParsePosition;
    .restart local v23    # "formatter":Ljava/text/Format;
    :goto_167
    invoke-direct {v0, v14}, Landroid/icu/text/MessageFormat;->getLiteralStringUntilNextArgument(I)Ljava/lang/String;

    move-result-object v1

    .line 1284
    .local v1, "stringAfterArgument":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_176

    .line 1285
    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .local v6, "next":I
    goto :goto_17a

    .line 1287
    .end local v6    # "next":I
    :cond_176
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    .line 1289
    .restart local v6    # "next":I
    :goto_17a
    if-gez v6, :cond_180

    .line 1290
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1291
    return-void

    .line 1293
    :cond_180
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1294
    .local v8, "strValue":Ljava/lang/String;
    move-object/from16 v24, v1

    .end local v1    # "stringAfterArgument":Ljava/lang/String;
    .local v24, "stringAfterArgument":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ad

    .line 1295
    const/16 v17, 0x1

    .line 1296
    move-object/from16 v20, v8

    .line 1298
    :cond_1ad
    move v7, v6

    .line 1300
    .end local v6    # "next":I
    .end local v8    # "strValue":Ljava/lang/String;
    .end local v24    # "stringAfterArgument":Ljava/lang/String;
    move/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v6, v23

    .line 1318
    .end local v17    # "haveArgResult":Z
    .end local v20    # "argResult":Ljava/lang/Object;
    .end local v23    # "formatter":Ljava/text/Format;
    .local v1, "haveArgResult":Z
    .local v2, "argResult":Ljava/lang/Object;
    .local v6, "formatter":Ljava/text/Format;
    :goto_1b4
    if-eqz v1, :cond_1c0

    .line 1319
    if-eqz p4, :cond_1bb

    .line 1320
    aput-object v2, p4, v16

    goto :goto_1c0

    .line 1321
    :cond_1bb
    if-eqz v4, :cond_1c0

    .line 1322
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    :cond_1c0
    :goto_1c0
    iget-object v8, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v8, v14}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v8

    .line 1326
    .end local v19    # "prevIndex":I
    .local v8, "prevIndex":I
    move v9, v14

    move v6, v8

    goto :goto_1d8

    .line 1235
    .end local v1    # "haveArgResult":Z
    .end local v2    # "argResult":Ljava/lang/Object;
    .end local v14    # "argLimit":I
    .end local v15    # "argType":Landroid/icu/text/MessagePattern$ArgType;
    .end local v16    # "argNumber":I
    .end local v18    # "msgString":Ljava/lang/String;
    .end local v21    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v22    # "tempStatus":Ljava/text/ParsePosition;
    .local v5, "msgString":Ljava/lang/String;
    .local v6, "prevIndex":I
    .local v8, "tempStatus":Ljava/text/ParsePosition;
    .local v10, "part":Landroid/icu/text/MessagePattern$Part;
    :cond_1cd
    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v22, v8

    .line 1236
    .end local v5    # "msgString":Ljava/lang/String;
    .end local v6    # "prevIndex":I
    .end local v8    # "tempStatus":Ljava/text/ParsePosition;
    .restart local v18    # "msgString":Ljava/lang/String;
    .restart local v19    # "prevIndex":I
    .restart local v22    # "tempStatus":Ljava/text/ParsePosition;
    :goto_1d3
    invoke-virtual {v10}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    .line 1237
    .end local v19    # "prevIndex":I
    .local v1, "prevIndex":I
    move v6, v1

    .line 1217
    .end local v1    # "prevIndex":I
    .end local v10    # "part":Landroid/icu/text/MessagePattern$Part;
    .end local v11    # "type":Landroid/icu/text/MessagePattern$Part$Type;
    .end local v12    # "index":I
    .end local v13    # "len":I
    .restart local v6    # "prevIndex":I
    :goto_1d8
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, v18

    move-object/from16 v8, v22

    goto/16 :goto_29
.end method

.method private static greylist-max-o parseChoiceArgument(Landroid/icu/text/MessagePattern;ILjava/lang/String;Ljava/text/ParsePosition;)D
    .registers 14
    .param p0, "pattern"    # Landroid/icu/text/MessagePattern;
    .param p1, "partIndex"    # I
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "pos"    # Ljava/text/ParsePosition;

    .line 1887
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 1888
    .local v0, "start":I
    move v1, v0

    .line 1889
    .local v1, "furthest":I
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1890
    .local v2, "bestNumber":D
    const-wide/16 v4, 0x0

    .line 1891
    .local v4, "tempNumber":D
    :goto_9
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v6

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v6, v7, :cond_35

    .line 1892
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v4

    .line 1893
    add-int/lit8 p1, p1, 0x2

    .line 1894
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v6

    .line 1895
    .local v6, "msgLimit":I
    invoke-static {p0, p1, v6, p2, v0}, Landroid/icu/text/MessageFormat;->matchStringUntilLimitPart(Landroid/icu/text/MessagePattern;IILjava/lang/String;I)I

    move-result v7

    .line 1896
    .local v7, "len":I
    if-ltz v7, :cond_32

    .line 1897
    add-int v8, v0, v7

    .line 1898
    .local v8, "newIndex":I
    if-le v8, v1, :cond_32

    .line 1899
    move v1, v8

    .line 1900
    move-wide v2, v4

    .line 1901
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v1, v9, :cond_32

    .line 1902
    goto :goto_35

    .line 1906
    .end local v8    # "newIndex":I
    :cond_32
    add-int/lit8 p1, v6, 0x1

    .line 1907
    .end local v6    # "msgLimit":I
    .end local v7    # "len":I
    goto :goto_9

    .line 1908
    :cond_35
    :goto_35
    if-ne v1, v0, :cond_3b

    .line 1909
    invoke-virtual {p3, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_3e

    .line 1911
    :cond_3b
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1913
    :goto_3e
    return-wide v2
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2358
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2360
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2361
    .local v0, "languageTag":Ljava/lang/String;
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 2362
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 2363
    .local v1, "aposMode":Landroid/icu/text/MessagePattern$ApostropheMode;
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v2

    if-eq v1, v2, :cond_28

    .line 2364
    :cond_21
    new-instance v2, Landroid/icu/text/MessagePattern;

    invoke-direct {v2, v1}, Landroid/icu/text/MessagePattern;-><init>(Landroid/icu/text/MessagePattern$ApostropheMode;)V

    iput-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 2366
    :cond_28
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2367
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_33

    .line 2368
    invoke-virtual {p0, v2}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 2371
    :cond_33
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .local v3, "numFormatters":I
    :goto_37
    if-lez v3, :cond_49

    .line 2372
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 2373
    .local v4, "formatIndex":I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/Format;

    .line 2374
    .local v5, "formatter":Ljava/text/Format;
    invoke-virtual {p0, v4, v5}, Landroid/icu/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    .line 2371
    .end local v4    # "formatIndex":I
    .end local v5    # "formatter":Ljava/text/Format;
    add-int/lit8 v3, v3, -0x1

    goto :goto_37

    .line 2377
    .end local v3    # "numFormatters":I
    :cond_49
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .local v3, "numPairs":I
    :goto_4d
    if-lez v3, :cond_58

    .line 2378
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 2379
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 2377
    add-int/lit8 v3, v3, -0x1

    goto :goto_4d

    .line 2381
    .end local v3    # "numPairs":I
    :cond_58
    return-void
.end method

.method private greylist-max-o resetPattern()V
    .registers 2

    .line 2119
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v0, :cond_9

    .line 2120
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->clear()V

    .line 2122
    :cond_9
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v0, :cond_12

    .line 2123
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2125
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 2126
    return-void
.end method

.method private greylist-max-o setArgStartFormat(ILjava/text/Format;)V
    .registers 5
    .param p1, "argStart"    # I
    .param p2, "formatter"    # Ljava/text/Format;

    .line 2419
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 2420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 2422
    :cond_b
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2423
    return-void
.end method

.method private greylist-max-o setCustomArgStartFormat(ILjava/text/Format;)V
    .registers 5
    .param p1, "argStart"    # I
    .param p2, "formatter"    # Ljava/text/Format;

    .line 2430
    invoke-direct {p0, p1, p2}, Landroid/icu/text/MessageFormat;->setArgStartFormat(ILjava/text/Format;)V

    .line 2431
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    if-nez v0, :cond_e

    .line 2432
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 2434
    :cond_e
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2435
    return-void
.end method

.method private greylist-max-o updateMetaData(Landroid/icu/text/MessageFormat$AppendableWrapper;ILjava/text/FieldPosition;Ljava/lang/Object;)Ljava/text/FieldPosition;
    .registers 8
    .param p1, "dest"    # Landroid/icu/text/MessageFormat$AppendableWrapper;
    .param p2, "prevLength"    # I
    .param p3, "fp"    # Ljava/text/FieldPosition;
    .param p4, "argId"    # Ljava/lang/Object;

    .line 1823
    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-$$Nest$fgetattributes(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-$$Nest$fgetlength(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v0

    if-ge p2, v0, :cond_1c

    .line 1824
    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-$$Nest$fgetattributes(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/icu/text/MessageFormat$AttributeAndPosition;

    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-$$Nest$fgetlength(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v2

    invoke-direct {v1, p4, p2, v2}, Landroid/icu/text/MessageFormat$AttributeAndPosition;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1826
    :cond_1c
    if-eqz p3, :cond_36

    sget-object v0, Landroid/icu/text/MessageFormat$Field;->ARGUMENT:Landroid/icu/text/MessageFormat$Field;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/MessageFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1827
    invoke-virtual {p3, p2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1828
    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-$$Nest$fgetlength(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1829
    const/4 v0, 0x0

    return-object v0

    .line 1831
    :cond_36
    return-object p3
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2324
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2327
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2329
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v0, :cond_17

    .line 2330
    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0}, Landroid/icu/text/MessagePattern;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 2332
    :cond_17
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2334
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2336
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_68

    .line 2339
    :cond_37
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2340
    const/4 v0, 0x0

    .line 2341
    .local v0, "formatIndex":I
    const/4 v2, 0x0

    .local v2, "partIndex":I
    :goto_42
    invoke-direct {p0, v2}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v3

    move v2, v3

    if-ltz v3, :cond_6b

    .line 2342
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 2343
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2344
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2346
    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 2337
    .end local v0    # "formatIndex":I
    .end local v2    # "partIndex":I
    :cond_68
    :goto_68
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2350
    :cond_6b
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2351
    return-void
.end method


# virtual methods
.method public whitelist test-api applyPattern(Ljava/lang/String;)V
    .registers 3
    .param p1, "pttrn"    # Ljava/lang/String;

    .line 448
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v0, :cond_c

    .line 449
    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0, p1}, Landroid/icu/text/MessagePattern;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    goto :goto_11

    .line 451
    :cond_c
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->parse(Ljava/lang/String;)Landroid/icu/text/MessagePattern;

    .line 454
    :goto_11
    invoke-direct {p0}, Landroid/icu/text/MessageFormat;->cacheExplicitFormats()V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_14} :catch_16

    .line 458
    nop

    .line 459
    return-void

    .line 455
    :catch_16
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Landroid/icu/text/MessageFormat;->resetPattern()V

    .line 457
    throw v0
.end method

.method public whitelist test-api applyPattern(Ljava/lang/String;Landroid/icu/text/MessagePattern$ApostropheMode;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "aposMode"    # Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 476
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v0, :cond_c

    .line 477
    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0, p2}, Landroid/icu/text/MessagePattern;-><init>(Landroid/icu/text/MessagePattern$ApostropheMode;)V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    goto :goto_19

    .line 478
    :cond_c
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    if-eq p2, v0, :cond_19

    .line 479
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p2}, Landroid/icu/text/MessagePattern;->clearPatternAndSetApostropheMode(Landroid/icu/text/MessagePattern$ApostropheMode;)V

    .line 481
    :cond_19
    :goto_19
    invoke-virtual {p0, p1}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 8

    .line 1394
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessageFormat;

    .line 1396
    .local v0, "other":Landroid/icu/text/MessageFormat;
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 1397
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1398
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1399
    .local v3, "key":Ljava/lang/Integer;
    iget-object v4, v0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1400
    .end local v3    # "key":Ljava/lang/Integer;
    goto :goto_18

    :cond_2a
    goto :goto_2d

    .line 1402
    :cond_2b
    iput-object v2, v0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1405
    :goto_2d
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v1, :cond_61

    .line 1406
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1407
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1408
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/text/Format;>;>;"
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 1409
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1410
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/text/Format;>;"
    iget-object v4, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/Format;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/text/Format;>;"
    goto :goto_42

    .line 1412
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/text/Format;>;>;"
    :cond_60
    goto :goto_63

    .line 1413
    :cond_61
    iput-object v2, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1416
    :goto_63
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v1, :cond_69

    move-object v1, v2

    goto :goto_71

    :cond_69
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/MessagePattern;

    :goto_71
    iput-object v1, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 1417
    nop

    .line 1418
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    if-nez v1, :cond_7a

    move-object v1, v2

    goto :goto_82

    :cond_7a
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    invoke-virtual {v1}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateFormat;

    :goto_82
    iput-object v1, v0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    .line 1419
    nop

    .line 1420
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    if-nez v1, :cond_8b

    move-object v1, v2

    goto :goto_93

    :cond_8b
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/NumberFormat;

    :goto_93
    iput-object v1, v0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    .line 1422
    iput-object v2, v0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1423
    iput-object v2, v0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1424
    return-object v0
.end method

.method blacklist dateTimeFormatForPatternOrSkeleton(Ljava/lang/String;)Ljava/text/Format;
    .registers 6
    .param p1, "style"    # Ljava/lang/String;

    .line 2159
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2160
    .local v1, "i":I
    const-string v2, "::"

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v2, v0, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2161
    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v0, v2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0

    .line 2163
    :cond_1b
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v0, p1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1432
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1433
    return v0

    .line 1434
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_40

    .line 1436
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/icu/text/MessageFormat;

    .line 1437
    .local v2, "other":Landroid/icu/text/MessageFormat;
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    iget-object v4, v2, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    iget-object v4, v2, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 1438
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    iget-object v4, v2, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1439
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    iget-object v4, v2, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1440
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    .line 1437
    :goto_3f
    return v0

    .line 1435
    .end local v2    # "other":Landroid/icu/text/MessageFormat;
    :cond_40
    :goto_40
    return v1
.end method

.method public final whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 1036
    new-instance v0, Landroid/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 1037
    return-object p2
.end method

.method public final whitelist test-api format(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            ")",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 957
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 958
    return-object p2
.end method

.method public final whitelist test-api format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 924
    new-instance v0, Landroid/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 925
    return-object p2
.end method

.method public whitelist test-api formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 11
    .param p1, "arguments"    # Ljava/lang/Object;

    .line 1077
    if-eqz p1, :cond_49

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    .local v0, "result":Ljava/lang/StringBuilder;
    new-instance v1, Landroid/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v1, v0}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuilder;)V

    .line 1083
    .local v1, "wrapper":Landroid/icu/text/MessageFormat$AppendableWrapper;
    invoke-virtual {v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->useAttributes()V

    .line 1084
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 1085
    new-instance v2, Ljava/text/AttributedString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v2, "as":Ljava/text/AttributedString;
    invoke-static {v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-$$Nest$fgetattributes(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/MessageFormat$AttributeAndPosition;

    .line 1087
    .local v4, "a":Landroid/icu/text/MessageFormat$AttributeAndPosition;
    invoke-static {v4}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->-$$Nest$fgetkey(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/text/AttributedCharacterIterator$Attribute;

    move-result-object v5

    invoke-static {v4}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->-$$Nest$fgetvalue(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->-$$Nest$fgetstart(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I

    move-result v7

    invoke-static {v4}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->-$$Nest$fgetlimit(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 1088
    .end local v4    # "a":Landroid/icu/text/MessageFormat$AttributeAndPosition;
    goto :goto_24

    .line 1089
    :cond_44
    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    return-object v3

    .line 1078
    .end local v0    # "result":Ljava/lang/StringBuilder;
    .end local v1    # "wrapper":Landroid/icu/text/MessageFormat$AppendableWrapper;
    .end local v2    # "as":Ljava/text/AttributedString;
    :cond_49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;
    .registers 2

    .line 489
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v0, :cond_b

    .line 490
    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0}, Landroid/icu/text/MessagePattern;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 492
    :cond_b
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getArgumentNames()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 823
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 824
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "partIndex":I
    :goto_6
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v2

    move v1, v2

    if-ltz v2, :cond_17

    .line 825
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Landroid/icu/text/MessageFormat;->getArgName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 827
    .end local v1    # "partIndex":I
    :cond_17
    return-object v0
.end method

.method public whitelist test-api getFormatByArgumentName(Ljava/lang/String;)Ljava/text/Format;
    .registers 6
    .param p1, "argumentName"    # Ljava/lang/String;

    .line 837
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 838
    return-object v1

    .line 840
    :cond_6
    invoke-static {p1}, Landroid/icu/text/MessagePattern;->validateArgumentName(Ljava/lang/String;)I

    move-result v0

    .line 841
    .local v0, "argNumber":I
    const/4 v2, -0x1

    if-ge v0, v2, :cond_e

    .line 842
    return-object v1

    .line 844
    :cond_e
    const/4 v2, 0x0

    .local v2, "partIndex":I
    :cond_f
    invoke-direct {p0, v2}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v3

    move v2, v3

    if-ltz v3, :cond_2b

    .line 845
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3, p1, v0}, Landroid/icu/text/MessageFormat;->argNameMatches(ILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 846
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/Format;

    return-object v1

    .line 849
    .end local v2    # "partIndex":I
    :cond_2b
    return-object v1
.end method

.method public whitelist test-api getFormats()[Ljava/text/Format;
    .registers 5

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/Format;>;"
    const/4 v1, 0x0

    .local v1, "partIndex":I
    :goto_6
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v2

    move v1, v2

    if-ltz v2, :cond_23

    .line 812
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_1f

    :cond_13
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    :goto_1f
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 814
    .end local v1    # "partIndex":I
    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/text/Format;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/text/Format;

    return-object v1
.end method

.method public whitelist test-api getFormatsByArgumentIndex()[Ljava/text/Format;
    .registers 6

    .line 773
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 779
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/Format;>;"
    const/4 v1, 0x0

    .local v1, "partIndex":I
    :goto_e
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v2

    move v1, v2

    if-ltz v2, :cond_42

    .line 780
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v2

    .line 781
    .local v2, "argNumber":I
    :goto_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2c

    .line 782
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 784
    :cond_2c
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v3, :cond_31

    goto :goto_3e

    :cond_31
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/text/Format;

    :goto_3e
    invoke-virtual {v0, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 785
    .end local v2    # "argNumber":I
    goto :goto_e

    .line 786
    .end local v1    # "partIndex":I
    :cond_42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/text/Format;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/text/Format;

    return-object v1

    .line 774
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/Format;>;"
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getLocale()Ljava/util/Locale;
    .registers 2

    .line 425
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getULocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 434
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1450
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;)[Ljava/lang/Object;
    .registers 7
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1183
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1184
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v1

    .line 1185
    .local v1, "result":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-eqz v2, :cond_11

    .line 1189
    return-object v1

    .line 1186
    :cond_11
    new-instance v2, Ljava/text/ParseException;

    .line 1187
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    const-string v4, "MessageFormat parse error!"

    invoke-direct {v2, v4, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .registers 11
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1122
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1129
    const/4 v0, -0x1

    .line 1130
    .local v0, "maxArgId":I
    const/4 v1, 0x0

    .local v1, "partIndex":I
    :goto_a
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v2

    move v1, v2

    if-ltz v2, :cond_21

    .line 1131
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v2

    .line 1132
    .local v2, "argNumber":I
    if-le v2, v0, :cond_20

    .line 1133
    move v0, v2

    .line 1135
    .end local v2    # "argNumber":I
    :cond_20
    goto :goto_a

    .line 1136
    .end local v1    # "partIndex":I
    :cond_21
    add-int/lit8 v1, v0, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    .line 1138
    .local v6, "resultArray":[Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 1139
    .local v1, "backupStartPos":I
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "source":Ljava/lang/String;
    .end local p2    # "pos":Ljava/text/ParsePosition;
    .local v4, "source":Ljava/lang/String;
    .local v5, "pos":Ljava/text/ParsePosition;
    invoke-direct/range {v2 .. v7}, Landroid/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1140
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    if-ne p1, v1, :cond_39

    .line 1141
    const/4 p1, 0x0

    return-object p1

    .line 1144
    :cond_39
    return-object v6

    .line 1123
    .end local v0    # "maxArgId":I
    .end local v1    # "backupStartPos":I
    .end local v4    # "source":Ljava/lang/String;
    .end local v5    # "pos":Ljava/text/ParsePosition;
    .end local v6    # "resultArray":[Ljava/lang/Object;
    .restart local p1    # "source":Ljava/lang/String;
    .restart local p2    # "pos":Ljava/text/ParsePosition;
    :cond_3a
    move-object v4, p1

    move-object v5, p2

    .end local p1    # "source":Ljava/lang/String;
    .end local p2    # "pos":Ljava/text/ParsePosition;
    .restart local v4    # "source":Ljava/lang/String;
    .restart local v5    # "pos":Ljava/text/ParsePosition;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This method is not available in MessageFormat objects that use named argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1382
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1383
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1385
    :cond_d
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MessageFormat;->parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api parseToMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 10
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
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

    .line 1344
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v5, v0

    .line 1345
    .local v5, "pos":Ljava/text/ParsePosition;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1346
    .local v7, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    .end local p1    # "source":Ljava/lang/String;
    .local v4, "source":Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Landroid/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1347
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    if-eqz p1, :cond_1a

    .line 1351
    return-object v7

    .line 1348
    :cond_1a
    new-instance p1, Ljava/text/ParseException;

    .line 1349
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    const-string v1, "MessageFormat parse error!"

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public whitelist test-api parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;
    .registers 10
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    .line 1161
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 1162
    .local v0, "backupStartPos":I
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "source":Ljava/lang/String;
    .end local p2    # "pos":Ljava/text/ParsePosition;
    .local v3, "source":Ljava/lang/String;
    .local v4, "pos":Ljava/text/ParsePosition;
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1163
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    if-ne p1, v0, :cond_1a

    .line 1164
    const/4 p1, 0x0

    return-object p1

    .line 1166
    :cond_1a
    return-object v6
.end method

.method public whitelist test-api setFormat(ILjava/text/Format;)V
    .registers 6
    .param p1, "formatElementIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, "formatNumber":I
    const/4 v1, 0x0

    .local v1, "partIndex":I
    :goto_2
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v2

    move v1, v2

    if-ltz v2, :cond_12

    .line 740
    if-ne v0, p1, :cond_f

    .line 741
    invoke-direct {p0, v1, p2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    .line 742
    return-void

    .line 744
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 746
    .end local v1    # "partIndex":I
    :cond_12
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1
.end method

.method public whitelist test-api setFormatByArgumentIndex(ILjava/text/Format;)V
    .registers 6
    .param p1, "argumentIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .line 678
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_23

    .line 683
    const/4 v0, 0x0

    .local v0, "partIndex":I
    :cond_9
    :goto_9
    invoke-direct {p0, v0}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_22

    .line 684
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v1

    if-ne v1, p1, :cond_9

    .line 685
    invoke-direct {p0, v0, p2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_9

    .line 688
    .end local v0    # "partIndex":I
    :cond_22
    return-void

    .line 679
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setFormatByArgumentName(Ljava/lang/String;Ljava/text/Format;)V
    .registers 6
    .param p1, "argumentName"    # Ljava/lang/String;
    .param p2, "newFormat"    # Ljava/text/Format;

    .line 709
    invoke-static {p1}, Landroid/icu/text/MessagePattern;->validateArgumentName(Ljava/lang/String;)I

    move-result v0

    .line 710
    .local v0, "argNumber":I
    const/4 v1, -0x1

    if-ge v0, v1, :cond_8

    .line 711
    return-void

    .line 713
    :cond_8
    const/4 v1, 0x0

    .local v1, "partIndex":I
    :cond_9
    :goto_9
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v2

    move v1, v2

    if-ltz v2, :cond_1c

    .line 714
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2, p1, v0}, Landroid/icu/text/MessageFormat;->argNameMatches(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 715
    invoke-direct {p0, v1, p2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_9

    .line 718
    .end local v1    # "partIndex":I
    :cond_1c
    return-void
.end method

.method public whitelist test-api setFormats([Ljava/text/Format;)V
    .registers 5
    .param p1, "newFormats"    # [Ljava/text/Format;

    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, "formatNumber":I
    const/4 v1, 0x0

    .line 649
    .local v1, "partIndex":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_14

    .line 650
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v2

    move v1, v2

    if-ltz v2, :cond_14

    .line 651
    aget-object v2, p1, v0

    invoke-direct {p0, v1, v2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 654
    .end local v1    # "partIndex":I
    :cond_14
    return-void
.end method

.method public whitelist test-api setFormatsByArgumentIndex([Ljava/text/Format;)V
    .registers 5
    .param p1, "newFormats"    # [Ljava/text/Format;

    .line 582
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_26

    .line 587
    const/4 v0, 0x0

    .local v0, "partIndex":I
    :goto_9
    invoke-direct {p0, v0}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_25

    .line 588
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v1

    .line 589
    .local v1, "argNumber":I
    array-length v2, p1

    if-ge v1, v2, :cond_24

    .line 590
    aget-object v2, p1, v1

    invoke-direct {p0, v0, v2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    .line 592
    .end local v1    # "argNumber":I
    :cond_24
    goto :goto_9

    .line 593
    .end local v0    # "partIndex":I
    :cond_25
    return-void

    .line 583
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setFormatsByArgumentName(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/Format;",
            ">;)V"
        }
    .end annotation

    .line 616
    .local p1, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/text/Format;>;"
    const/4 v0, 0x0

    .local v0, "partIndex":I
    :goto_1
    invoke-direct {p0, v0}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_1e

    .line 617
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->getArgName(I)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 619
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    invoke-direct {p0, v0, v2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    .line 621
    .end local v1    # "key":Ljava/lang/String;
    :cond_1d
    goto :goto_1

    .line 622
    .end local v0    # "partIndex":I
    :cond_1e
    return-void
.end method

.method public whitelist test-api setLocale(Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 408
    invoke-virtual {p0}, Landroid/icu/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "existingPattern":Ljava/lang/String;
    iput-object p1, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 412
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    .line 413
    iput-object v1, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    .line 414
    iput-object v1, p0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    .line 415
    iput-object v1, p0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    .line 416
    invoke-virtual {p0, v0}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public whitelist test-api setLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 393
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/MessageFormat;->setLocale(Landroid/icu/util/ULocale;)V

    .line 394
    return-void
.end method

.method public whitelist test-api toPattern()Ljava/lang/String;
    .registers 3

    .line 508
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    if-nez v0, :cond_16

    .line 513
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    const-string v1, ""

    if-nez v0, :cond_b

    .line 514
    return-object v1

    .line 516
    :cond_b
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "originalPattern":Ljava/lang/String;
    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    move-object v1, v0

    :goto_15
    return-object v1

    .line 509
    .end local v0    # "originalPattern":Ljava/lang/String;
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "toPattern() is not supported after custom Format objects have been set via setFormat() or similar APIs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api usesNamedArguments()Z
    .registers 2

    .line 1005
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    return v0
.end method
