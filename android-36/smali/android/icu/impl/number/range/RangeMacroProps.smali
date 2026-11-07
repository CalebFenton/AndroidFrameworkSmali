.class public Landroid/icu/impl/number/range/RangeMacroProps;
.super Ljava/lang/Object;
.source "RangeMacroProps.java"


# instance fields
.field public blacklist collapse:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

.field public blacklist formatter1:Landroid/icu/number/UnlocalizedNumberFormatter;

.field public blacklist formatter2:Landroid/icu/number/UnlocalizedNumberFormatter;

.field public blacklist identityFallback:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

.field public blacklist loc:Landroid/icu/util/ULocale;

.field public blacklist sameFormatters:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/number/range/RangeMacroProps;->sameFormatters:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "_other"    # Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 38
    return v0

    .line 39
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 40
    return v1

    .line 41
    :cond_8
    instance-of v2, p1, Landroid/icu/impl/number/range/RangeMacroProps;

    if-nez v2, :cond_d

    .line 42
    return v0

    .line 43
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/icu/impl/number/range/RangeMacroProps;

    .line 44
    .local v2, "other":Landroid/icu/impl/number/range/RangeMacroProps;
    iget-object v3, p0, Landroid/icu/impl/number/range/RangeMacroProps;->formatter1:Landroid/icu/number/UnlocalizedNumberFormatter;

    iget-object v4, v2, Landroid/icu/impl/number/range/RangeMacroProps;->formatter1:Landroid/icu/number/UnlocalizedNumberFormatter;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/icu/impl/number/range/RangeMacroProps;->formatter2:Landroid/icu/number/UnlocalizedNumberFormatter;

    iget-object v4, v2, Landroid/icu/impl/number/range/RangeMacroProps;->formatter2:Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 45
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/icu/impl/number/range/RangeMacroProps;->collapse:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    iget-object v4, v2, Landroid/icu/impl/number/range/RangeMacroProps;->collapse:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    .line 46
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/icu/impl/number/range/RangeMacroProps;->identityFallback:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    iget-object v4, v2, Landroid/icu/impl/number/range/RangeMacroProps;->identityFallback:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    .line 47
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/icu/impl/number/range/RangeMacroProps;->loc:Landroid/icu/util/ULocale;

    iget-object v4, v2, Landroid/icu/impl/number/range/RangeMacroProps;->loc:Landroid/icu/util/ULocale;

    .line 48
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    move v0, v1

    goto :goto_45

    :cond_44
    nop

    .line 44
    :goto_45
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 28
    iget-object v0, p0, Landroid/icu/impl/number/range/RangeMacroProps;->formatter1:Landroid/icu/number/UnlocalizedNumberFormatter;

    iget-object v1, p0, Landroid/icu/impl/number/range/RangeMacroProps;->formatter2:Landroid/icu/number/UnlocalizedNumberFormatter;

    iget-object v2, p0, Landroid/icu/impl/number/range/RangeMacroProps;->collapse:Landroid/icu/number/NumberRangeFormatter$RangeCollapse;

    iget-object v3, p0, Landroid/icu/impl/number/range/RangeMacroProps;->identityFallback:Landroid/icu/number/NumberRangeFormatter$RangeIdentityFallback;

    iget-object v4, p0, Landroid/icu/impl/number/range/RangeMacroProps;->loc:Landroid/icu/util/ULocale;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
