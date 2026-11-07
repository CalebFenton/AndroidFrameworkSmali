.class public Landroid/icu/number/LocalizedNumberFormatter;
.super Landroid/icu/number/NumberFormatterSettings;
.source "LocalizedNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/number/NumberFormatterSettings<",
        "Landroid/icu/number/LocalizedNumberFormatter;",
        ">;"
    }
.end annotation


# static fields
.field static final blacklist callCount:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Landroid/icu/number/LocalizedNumberFormatter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile blacklist callCountInternal:J

.field volatile blacklist compiled:Landroid/icu/number/NumberFormatterImpl;

.field volatile blacklist savedWithUnit:Landroid/icu/number/LocalizedNumberFormatter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 33
    nop

    .line 34
    const-class v0, Landroid/icu/number/LocalizedNumberFormatter;

    const-string v1, "callCountInternal"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Landroid/icu/number/LocalizedNumberFormatter;->callCount:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 33
    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V
    .registers 4
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberFormatterSettings<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 41
    .local p1, "parent":Landroid/icu/number/NumberFormatterSettings;, "Landroid/icu/number/NumberFormatterSettings<*>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/number/NumberFormatterSettings;-><init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    .line 42
    return-void
.end method

.method private blacklist computeCompiled()Z
    .registers 6

    .line 210
    invoke-virtual {p0}, Landroid/icu/number/LocalizedNumberFormatter;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v0

    .line 214
    .local v0, "macros":Landroid/icu/impl/number/MacroProps;
    sget-object v1, Landroid/icu/number/LocalizedNumberFormatter;->callCount:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v1

    .line 215
    .local v1, "currentCount":J
    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->threshold:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-nez v3, :cond_1d

    .line 216
    new-instance v3, Landroid/icu/number/NumberFormatterImpl;

    invoke-direct {v3, v0}, Landroid/icu/number/NumberFormatterImpl;-><init>(Landroid/icu/impl/number/MacroProps;)V

    iput-object v3, p0, Landroid/icu/number/LocalizedNumberFormatter;->compiled:Landroid/icu/number/NumberFormatterImpl;

    .line 217
    return v4

    .line 218
    :cond_1d
    iget-object v3, p0, Landroid/icu/number/LocalizedNumberFormatter;->compiled:Landroid/icu/number/NumberFormatterImpl;

    if-eqz v3, :cond_22

    .line 219
    return v4

    .line 221
    :cond_22
    const/4 v3, 0x0

    return v3
.end method

.method private blacklist format(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/number/FormattedNumber;
    .registers 7
    .param p1, "fq"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 133
    new-instance v0, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 134
    .local v0, "string":Landroid/icu/impl/FormattedStringBuilder;
    invoke-virtual {p0, p1, v0}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    move-result-object v1

    .line 135
    .local v1, "micros":Landroid/icu/impl/number/MicroProps;
    new-instance v2, Landroid/icu/number/FormattedNumber;

    iget-object v3, v1, Landroid/icu/impl/number/MicroProps;->outputUnit:Landroid/icu/util/MeasureUnit;

    iget-object v4, v1, Landroid/icu/impl/number/MicroProps;->gender:Ljava/lang/String;

    invoke-direct {v2, v0, p1, v3, v4}, Landroid/icu/number/FormattedNumber;-><init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/util/MeasureUnit;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method blacklist create(ILjava/lang/Object;)Landroid/icu/number/LocalizedNumberFormatter;
    .registers 4
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 227
    new-instance v0, Landroid/icu/number/LocalizedNumberFormatter;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/number/LocalizedNumberFormatter;-><init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method

.method bridge synthetic blacklist create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/icu/number/LocalizedNumberFormatter;->create(ILjava/lang/Object;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api format(D)Landroid/icu/number/FormattedNumber;
    .registers 4
    .param p1, "input"    # D

    .line 67
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(D)V

    invoke-direct {p0, v0}, Landroid/icu/number/LocalizedNumberFormatter;->format(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/number/FormattedNumber;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api format(J)Landroid/icu/number/FormattedNumber;
    .registers 4
    .param p1, "input"    # J

    .line 54
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(J)V

    invoke-direct {p0, v0}, Landroid/icu/number/LocalizedNumberFormatter;->format(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/number/FormattedNumber;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api format(Landroid/icu/util/Measure;)Landroid/icu/number/FormattedNumber;
    .registers 9
    .param p1, "input"    # Landroid/icu/util/Measure;

    .line 97
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 98
    .local v0, "fq":Landroid/icu/impl/number/DecimalQuantity;
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v1

    .line 99
    .local v1, "unit":Landroid/icu/util/MeasureUnit;
    new-instance v2, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v2}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 100
    .local v2, "string":Landroid/icu/impl/FormattedStringBuilder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/util/MeasureUnit;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    move-result-object v3

    .line 101
    .local v3, "micros":Landroid/icu/impl/number/MicroProps;
    new-instance v4, Landroid/icu/number/FormattedNumber;

    iget-object v5, v3, Landroid/icu/impl/number/MicroProps;->outputUnit:Landroid/icu/util/MeasureUnit;

    iget-object v6, v3, Landroid/icu/impl/number/MicroProps;->gender:Ljava/lang/String;

    invoke-direct {v4, v2, v0, v5, v6}, Landroid/icu/number/FormattedNumber;-><init>(Landroid/icu/impl/FormattedStringBuilder;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/util/MeasureUnit;Ljava/lang/String;)V

    return-object v4
.end method

.method public whitelist test-api format(Ljava/lang/Number;)Landroid/icu/number/FormattedNumber;
    .registers 3
    .param p1, "input"    # Ljava/lang/Number;

    .line 80
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Landroid/icu/number/LocalizedNumberFormatter;->format(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/number/FormattedNumber;

    move-result-object v0

    return-object v0
.end method

.method public blacklist formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;
    .registers 4
    .param p1, "fq"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "string"    # Landroid/icu/impl/FormattedStringBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    invoke-direct {p0}, Landroid/icu/number/LocalizedNumberFormatter;->computeCompiled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 157
    iget-object v0, p0, Landroid/icu/number/LocalizedNumberFormatter;->compiled:Landroid/icu/number/NumberFormatterImpl;

    invoke-virtual {v0, p1, p2}, Landroid/icu/number/NumberFormatterImpl;->format(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    return-object v0

    .line 159
    :cond_d
    invoke-virtual {p0}, Landroid/icu/number/LocalizedNumberFormatter;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/icu/number/NumberFormatterImpl;->formatStatic(Landroid/icu/impl/number/MacroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    return-object v0
.end method

.method public blacklist formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/util/MeasureUnit;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;
    .registers 7
    .param p1, "fq"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "unit"    # Landroid/icu/util/MeasureUnit;
    .param p3, "string"    # Landroid/icu/impl/FormattedStringBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    invoke-virtual {p0}, Landroid/icu/number/LocalizedNumberFormatter;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 172
    invoke-virtual {p0, p1, p3}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    return-object v0

    .line 177
    :cond_11
    iget-object v0, p0, Landroid/icu/number/LocalizedNumberFormatter;->savedWithUnit:Landroid/icu/number/LocalizedNumberFormatter;

    .line 178
    .local v0, "withUnit":Landroid/icu/number/LocalizedNumberFormatter;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/icu/number/LocalizedNumberFormatter;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v1

    iget-object v1, v1, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 179
    :cond_21
    new-instance v1, Landroid/icu/number/LocalizedNumberFormatter;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, p2}, Landroid/icu/number/LocalizedNumberFormatter;-><init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    move-object v0, v1

    .line 180
    iput-object v0, p0, Landroid/icu/number/LocalizedNumberFormatter;->savedWithUnit:Landroid/icu/number/LocalizedNumberFormatter;

    .line 182
    :cond_2a
    invoke-virtual {v0, p1, p3}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAffixImpl(ZZ)Ljava/lang/String;
    .registers 8
    .param p1, "isPrefix"    # Z
    .param p2, "isNegative"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    new-instance v0, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 193
    .local v0, "string":Landroid/icu/impl/FormattedStringBuilder;
    if-eqz p2, :cond_9

    const/4 v1, -0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x1

    :goto_a
    int-to-byte v1, v1

    .line 195
    .local v1, "signum":B
    sget-object v2, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    .line 197
    .local v2, "plural":Landroid/icu/impl/StandardPlural;
    invoke-direct {p0}, Landroid/icu/number/LocalizedNumberFormatter;->computeCompiled()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 198
    iget-object v3, p0, Landroid/icu/number/LocalizedNumberFormatter;->compiled:Landroid/icu/number/NumberFormatterImpl;

    invoke-virtual {v3, v1, v2, v0}, Landroid/icu/number/NumberFormatterImpl;->getPrefixSuffix(BLandroid/icu/impl/StandardPlural;Landroid/icu/impl/FormattedStringBuilder;)I

    move-result v3

    .local v3, "prefixLength":I
    goto :goto_22

    .line 200
    .end local v3    # "prefixLength":I
    :cond_1a
    invoke-virtual {p0}, Landroid/icu/number/LocalizedNumberFormatter;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Landroid/icu/number/NumberFormatterImpl;->getPrefixSuffixStatic(Landroid/icu/impl/number/MacroProps;BLandroid/icu/impl/StandardPlural;Landroid/icu/impl/FormattedStringBuilder;)I

    move-result v3

    .line 202
    .restart local v3    # "prefixLength":I
    :goto_22
    if-eqz p1, :cond_2e

    .line 203
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/icu/impl/FormattedStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 205
    :cond_2e
    invoke-virtual {v0}, Landroid/icu/impl/FormattedStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/icu/impl/FormattedStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public whitelist test-api toFormat()Ljava/text/Format;
    .registers 3

    .line 116
    new-instance v0, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;

    invoke-virtual {p0}, Landroid/icu/number/LocalizedNumberFormatter;->resolve()Landroid/icu/impl/number/MacroProps;

    move-result-object v1

    iget-object v1, v1, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/number/LocalizedNumberFormatterAsFormat;-><init>(Landroid/icu/number/LocalizedNumberFormatter;Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public whitelist test-api withoutLocale()Landroid/icu/number/UnlocalizedNumberFormatter;
    .registers 4

    .line 126
    new-instance v0, Landroid/icu/number/UnlocalizedNumberFormatter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/icu/number/UnlocalizedNumberFormatter;-><init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method
