.class public final Landroid/icu/text/ListFormatter;
.super Ljava/lang/Object;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/ListFormatter$PatternHandler;,
        Landroid/icu/text/ListFormatter$Type;,
        Landroid/icu/text/ListFormatter$Width;,
        Landroid/icu/text/ListFormatter$Cache;,
        Landroid/icu/text/ListFormatter$FormattedListBuilder;,
        Landroid/icu/text/ListFormatter$FormattedList;,
        Landroid/icu/text/ListFormatter$ContextualHandler;,
        Landroid/icu/text/ListFormatter$StaticHandler;,
        Landroid/icu/text/ListFormatter$Field;,
        Landroid/icu/text/ListFormatter$SpanField;
    }
.end annotation


# static fields
.field static greylist-max-o cache:Landroid/icu/text/ListFormatter$Cache;

.field private static final blacklist changeToE:Ljava/util/regex/Pattern;

.field private static final blacklist changeToU:Ljava/util/regex/Pattern;

.field private static final blacklist changeToVavDash:Ljava/util/regex/Pattern;

.field private static final blacklist compiledE:Ljava/lang/String;

.field private static final blacklist compiledO:Ljava/lang/String;

.field private static final blacklist compiledU:Ljava/lang/String;

.field private static final blacklist compiledVav:Ljava/lang/String;

.field private static final blacklist compiledVavDash:Ljava/lang/String;

.field private static final blacklist compiledY:Ljava/lang/String;


# instance fields
.field private final greylist-max-o locale:Landroid/icu/util/ULocale;

.field private final greylist-max-o middle:Ljava/lang/String;

.field private final blacklist patternHandler:Landroid/icu/text/ListFormatter$PatternHandler;

.field private final greylist-max-o start:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcompilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{0} y {1}"

    invoke-static {v1, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/ListFormatter;->compiledY:Ljava/lang/String;

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{0} e {1}"

    invoke-static {v1, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/ListFormatter;->compiledE:Ljava/lang/String;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{0} o {1}"

    invoke-static {v1, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/ListFormatter;->compiledO:Ljava/lang/String;

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{0} u {1}"

    invoke-static {v1, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/ListFormatter;->compiledU:Ljava/lang/String;

    .line 478
    const-string v0, "(i.*|hi|hi[^ae].*)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/ListFormatter;->changeToE:Ljava/util/regex/Pattern;

    .line 482
    const-string v0, "((o|ho|8).*|11)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/ListFormatter;->changeToU:Ljava/util/regex/Pattern;

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{0} \u05d5{1}"

    invoke-static {v1, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/ListFormatter;->compiledVav:Ljava/lang/String;

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{0} \u05d5-{1}"

    invoke-static {v1, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/ListFormatter;->compiledVavDash:Ljava/lang/String;

    .line 492
    const-string v0, "^[\\P{InHebrew}].*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/text/ListFormatter;->changeToVavDash:Ljava/util/regex/Pattern;

    .line 649
    new-instance v0, Landroid/icu/text/ListFormatter$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/ListFormatter$Cache;-><init>(Landroid/icu/text/ListFormatter-IA;)V

    sput-object v0, Landroid/icu/text/ListFormatter;->cache:Landroid/icu/text/ListFormatter$Cache;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "two"    # Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "middle"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    invoke-static {p1, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    invoke-static {p2, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    invoke-static {p3, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    invoke-static {p4, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    .line 261
    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 267
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .registers 7
    .param p1, "two"    # Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "middle"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;
    .param p5, "locale"    # Landroid/icu/util/ULocale;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p2, p0, Landroid/icu/text/ListFormatter;->start:Ljava/lang/String;

    .line 271
    iput-object p3, p0, Landroid/icu/text/ListFormatter;->middle:Ljava/lang/String;

    .line 272
    iput-object p5, p0, Landroid/icu/text/ListFormatter;->locale:Landroid/icu/util/ULocale;

    .line 273
    invoke-direct {p0, p1, p4}, Landroid/icu/text/ListFormatter;->createPatternHandler(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/ListFormatter$PatternHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/ListFormatter;->patternHandler:Landroid/icu/text/ListFormatter$PatternHandler;

    .line 274
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private static greylist-max-o compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 277
    const/4 v0, 0x2

    invoke-static {p0, p1, v0, v0}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createPatternHandler(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/ListFormatter$PatternHandler;
    .registers 14
    .param p1, "two"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .line 497
    iget-object v0, p0, Landroid/icu/text/ListFormatter;->locale:Landroid/icu/util/ULocale;

    if-eqz v0, :cond_9b

    .line 498
    iget-object v0, p0, Landroid/icu/text/ListFormatter;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 499
    .local v6, "language":Ljava/lang/String;
    const-string v0, "es"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 500
    sget-object v0, Landroid/icu/text/ListFormatter;->compiledY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 501
    .local v7, "twoIsY":Z
    sget-object v0, Landroid/icu/text/ListFormatter;->compiledY:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 502
    .local v8, "endIsY":Z
    if-nez v7, :cond_4b

    if-eqz v8, :cond_23

    goto :goto_4b

    .line 506
    :cond_23
    sget-object v0, Landroid/icu/text/ListFormatter;->compiledO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 507
    .local v9, "twoIsO":Z
    sget-object v0, Landroid/icu/text/ListFormatter;->compiledO:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 508
    .local v10, "endIsO":Z
    if-nez v9, :cond_35

    if-eqz v10, :cond_34

    goto :goto_35

    .end local v7    # "twoIsY":Z
    .end local v8    # "endIsY":Z
    .end local v9    # "twoIsO":Z
    .end local v10    # "endIsO":Z
    :cond_34
    goto :goto_74

    .line 509
    .restart local v7    # "twoIsY":Z
    .restart local v8    # "endIsY":Z
    .restart local v9    # "twoIsO":Z
    .restart local v10    # "endIsO":Z
    :cond_35
    :goto_35
    new-instance v0, Landroid/icu/text/ListFormatter$ContextualHandler;

    sget-object v1, Landroid/icu/text/ListFormatter;->changeToU:Ljava/util/regex/Pattern;

    .line 510
    if-eqz v9, :cond_3e

    sget-object v2, Landroid/icu/text/ListFormatter;->compiledU:Ljava/lang/String;

    goto :goto_3f

    :cond_3e
    move-object v2, p1

    :goto_3f
    if-eqz v10, :cond_44

    sget-object v4, Landroid/icu/text/ListFormatter;->compiledU:Ljava/lang/String;

    goto :goto_45

    :cond_44
    move-object v4, p2

    :goto_45
    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ListFormatter$ContextualHandler;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return-object v0

    .line 503
    .end local v9    # "twoIsO":Z
    .end local v10    # "endIsO":Z
    :cond_4b
    :goto_4b
    new-instance v0, Landroid/icu/text/ListFormatter$ContextualHandler;

    sget-object v1, Landroid/icu/text/ListFormatter;->changeToE:Ljava/util/regex/Pattern;

    .line 504
    if-eqz v7, :cond_55

    sget-object v3, Landroid/icu/text/ListFormatter;->compiledE:Ljava/lang/String;

    move-object v2, v3

    goto :goto_56

    :cond_55
    move-object v2, p1

    :goto_56
    if-eqz v8, :cond_5c

    sget-object v5, Landroid/icu/text/ListFormatter;->compiledE:Ljava/lang/String;

    move-object v4, v5

    goto :goto_5d

    :cond_5c
    move-object v4, p2

    :goto_5d
    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ListFormatter$ContextualHandler;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-object v0

    .line 512
    .end local v7    # "twoIsY":Z
    .end local v8    # "endIsY":Z
    :cond_63
    const-string v0, "he"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "iw"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    goto :goto_75

    :cond_74
    :goto_74
    goto :goto_9b

    .line 513
    :cond_75
    :goto_75
    sget-object v0, Landroid/icu/text/ListFormatter;->compiledVav:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 514
    .local v7, "twoIsVav":Z
    sget-object v0, Landroid/icu/text/ListFormatter;->compiledVav:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 515
    .local v8, "endIsVav":Z
    if-nez v7, :cond_85

    if-eqz v8, :cond_9b

    .line 516
    :cond_85
    new-instance v0, Landroid/icu/text/ListFormatter$ContextualHandler;

    sget-object v1, Landroid/icu/text/ListFormatter;->changeToVavDash:Ljava/util/regex/Pattern;

    .line 517
    if-eqz v7, :cond_8e

    sget-object v2, Landroid/icu/text/ListFormatter;->compiledVavDash:Ljava/lang/String;

    goto :goto_8f

    :cond_8e
    move-object v2, p1

    :goto_8f
    if-eqz v8, :cond_94

    sget-object v4, Landroid/icu/text/ListFormatter;->compiledVavDash:Ljava/lang/String;

    goto :goto_95

    :cond_94
    move-object v4, p2

    :goto_95
    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ListFormatter$ContextualHandler;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-object v0

    .line 521
    .end local v6    # "language":Ljava/lang/String;
    .end local v7    # "twoIsVav":Z
    .end local v8    # "endIsVav":Z
    :cond_9b
    :goto_9b
    new-instance v0, Landroid/icu/text/ListFormatter$StaticHandler;

    invoke-direct {v0, p1, p2}, Landroid/icu/text/ListFormatter$StaticHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist test-api getInstance()Landroid/icu/text/ListFormatter;
    .registers 1

    .line 334
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/ListFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/ListFormatter;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 314
    sget-object v0, Landroid/icu/text/ListFormatter$Type;->AND:Landroid/icu/text/ListFormatter$Type;

    sget-object v1, Landroid/icu/text/ListFormatter$Width;->WIDE:Landroid/icu/text/ListFormatter$Width;

    invoke-static {p0, v0, v1}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Type;Landroid/icu/text/ListFormatter$Width;)Landroid/icu/text/ListFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Type;Landroid/icu/text/ListFormatter$Width;)Landroid/icu/text/ListFormatter;
    .registers 6
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "type"    # Landroid/icu/text/ListFormatter$Type;
    .param p2, "width"    # Landroid/icu/text/ListFormatter$Width;

    .line 288
    invoke-static {p1, p2}, Landroid/icu/text/ListFormatter;->typeWidthToStyleString(Landroid/icu/text/ListFormatter$Type;Landroid/icu/text/ListFormatter$Width;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "styleName":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 292
    sget-object v1, Landroid/icu/text/ListFormatter;->cache:Landroid/icu/text/ListFormatter$Cache;

    invoke-virtual {v1, p0, v0}, Landroid/icu/text/ListFormatter$Cache;->get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;

    move-result-object v1

    return-object v1

    .line 290
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid list format type/width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Landroid/icu/text/ListFormatter;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 325
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    sget-object v1, Landroid/icu/text/ListFormatter$Type;->AND:Landroid/icu/text/ListFormatter$Type;

    sget-object v2, Landroid/icu/text/ListFormatter$Width;->WIDE:Landroid/icu/text/ListFormatter$Width;

    invoke-static {v0, v1, v2}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Type;Landroid/icu/text/ListFormatter$Width;)Landroid/icu/text/ListFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;Landroid/icu/text/ListFormatter$Type;Landroid/icu/text/ListFormatter$Width;)Landroid/icu/text/ListFormatter;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "type"    # Landroid/icu/text/ListFormatter$Type;
    .param p2, "width"    # Landroid/icu/text/ListFormatter$Width;

    .line 303
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Type;Landroid/icu/text/ListFormatter$Width;)Landroid/icu/text/ListFormatter;

    move-result-object v0

    return-object v0
.end method

.method static blacklist typeWidthToStyleString(Landroid/icu/text/ListFormatter$Type;Landroid/icu/text/ListFormatter$Width;)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # Landroid/icu/text/ListFormatter$Type;
    .param p1, "width"    # Landroid/icu/text/ListFormatter$Width;

    .line 652
    invoke-virtual {p0}, Landroid/icu/text/ListFormatter$Type;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    goto :goto_3b

    .line 676
    :pswitch_8
    invoke-virtual {p1}, Landroid/icu/text/ListFormatter$Width;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_48

    goto :goto_3b

    .line 682
    :pswitch_10
    const-string v0, "unit-narrow"

    return-object v0

    .line 680
    :pswitch_13
    const-string v0, "unit-short"

    return-object v0

    .line 678
    :pswitch_16
    const-string v0, "unit"

    return-object v0

    .line 665
    :pswitch_19
    invoke-virtual {p1}, Landroid/icu/text/ListFormatter$Width;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_52

    .line 673
    goto :goto_3b

    .line 671
    :pswitch_21
    const-string v0, "or-narrow"

    return-object v0

    .line 669
    :pswitch_24
    const-string v0, "or-short"

    return-object v0

    .line 667
    :pswitch_27
    const-string v0, "or"

    return-object v0

    .line 654
    :pswitch_2a
    invoke-virtual {p1}, Landroid/icu/text/ListFormatter$Width;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    .line 662
    goto :goto_3b

    .line 660
    :pswitch_32
    const-string v0, "standard-narrow"

    return-object v0

    .line 658
    :pswitch_35
    const-string v0, "standard-short"

    return-object v0

    .line 656
    :pswitch_38
    const-string v0, "standard"

    return-object v0

    .line 686
    :goto_3b
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_19
        :pswitch_8
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_38
        :pswitch_35
        :pswitch_32
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api format(Ljava/util/Collection;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 356
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/ListFormatter;->formatImpl(Ljava/util/Collection;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api format([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "items"    # [Ljava/lang/Object;

    .line 345
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist formatImpl(Ljava/util/Collection;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;
    .registers 11
    .param p2, "needsFields"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;Z)",
            "Landroid/icu/text/ListFormatter$FormattedListBuilder;"
        }
    .end annotation

    .line 389
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 390
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 391
    .local v1, "count":I
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_74

    .line 402
    new-instance v3, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    .line 403
    .local v3, "builder":Landroid/icu/text/ListFormatter$FormattedListBuilder;
    iget-object v4, p0, Landroid/icu/text/ListFormatter;->start:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;I)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    .line 404
    const/4 v2, 0x2

    .local v2, "idx":I
    goto :goto_4e

    .line 397
    .end local v2    # "idx":I
    .end local v3    # "builder":Landroid/icu/text/ListFormatter$FormattedListBuilder;
    :pswitch_20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 398
    .local v3, "first":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 399
    .local v4, "second":Ljava/lang/Object;
    new-instance v5, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    invoke-direct {v5, v3, p2}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    iget-object v6, p0, Landroid/icu/text/ListFormatter;->patternHandler:Landroid/icu/text/ListFormatter$PatternHandler;

    .line 400
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/icu/text/ListFormatter$PatternHandler;->getTwoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v2}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;I)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object v2

    .line 399
    return-object v2

    .line 395
    .end local v3    # "first":Ljava/lang/Object;
    .end local v4    # "second":Ljava/lang/Object;
    :pswitch_3c
    new-instance v2, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    return-object v2

    .line 393
    :pswitch_46
    new-instance v2, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    const-string v3, ""

    invoke-direct {v2, v3, p2}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    return-object v2

    .line 404
    .restart local v2    # "idx":I
    .local v3, "builder":Landroid/icu/text/ListFormatter$FormattedListBuilder;
    :goto_4e
    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_5e

    .line 405
    iget-object v4, p0, Landroid/icu/text/ListFormatter;->middle:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;I)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 407
    .end local v2    # "idx":I
    :cond_5e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 408
    .local v2, "last":Ljava/lang/Object;
    iget-object v4, p0, Landroid/icu/text/ListFormatter;->patternHandler:Landroid/icu/text/ListFormatter$PatternHandler;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/icu/text/ListFormatter$PatternHandler;->getEndPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;I)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_46
        :pswitch_3c
        :pswitch_20
    .end packed-switch
.end method

.method public whitelist test-api formatToValue(Ljava/util/Collection;)Landroid/icu/text/ListFormatter$FormattedList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Landroid/icu/text/ListFormatter$FormattedList;"
        }
    .end annotation

    .line 381
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/ListFormatter;->formatImpl(Ljava/util/Collection;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->toValue()Landroid/icu/text/ListFormatter$FormattedList;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api formatToValue([Ljava/lang/Object;)Landroid/icu/text/ListFormatter$FormattedList;
    .registers 3
    .param p1, "items"    # [Ljava/lang/Object;

    .line 368
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/ListFormatter;->formatToValue(Ljava/util/Collection;)Landroid/icu/text/ListFormatter$FormattedList;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getLocale()Landroid/icu/util/ULocale;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 549
    iget-object v0, p0, Landroid/icu/text/ListFormatter;->locale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public whitelist test-api getPatternForNumItems(I)Ljava/lang/String;
    .registers 6
    .param p1, "count"    # I

    .line 532
    if-lez p1, :cond_23

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, p1, :cond_1e

    .line 537
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "{%d}"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 539
    .end local v1    # "i":I
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 533
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
