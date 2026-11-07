.class Landroid/icu/impl/number/parse/AffixMatcher$1;
.super Ljava/lang/Object;
.source "AffixMatcher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/parse/AffixMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/icu/impl/number/parse/AffixMatcher;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/icu/impl/number/parse/AffixMatcher;Landroid/icu/impl/number/parse/AffixMatcher;)I
    .registers 7
    .param p1, "lhs"    # Landroid/icu/impl/number/parse/AffixMatcher;
    .param p2, "rhs"    # Landroid/icu/impl/number/parse/AffixMatcher;

    .line 35
    invoke-static {p1}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$fgetprefix(Landroid/icu/impl/number/parse/AffixMatcher;)Landroid/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$smlength(Landroid/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result v0

    invoke-static {p2}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$fgetprefix(Landroid/icu/impl/number/parse/AffixMatcher;)Landroid/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$smlength(Landroid/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_29

    .line 36
    invoke-static {p1}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$fgetprefix(Landroid/icu/impl/number/parse/AffixMatcher;)Landroid/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$smlength(Landroid/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result v0

    invoke-static {p2}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$fgetprefix(Landroid/icu/impl/number/parse/AffixMatcher;)Landroid/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$smlength(Landroid/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result v1

    if-le v0, v1, :cond_27

    goto :goto_28

    :cond_27
    move v2, v3

    :goto_28
    return v2

    .line 37
    :cond_29
    invoke-static {p1}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$fgetsuffix(Landroid/icu/impl/number/parse/AffixMatcher;)Landroid/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$smlength(Landroid/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result v0

    invoke-static {p2}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$fgetsuffix(Landroid/icu/impl/number/parse/AffixMatcher;)Landroid/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$smlength(Landroid/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result v1

    if-eq v0, v1, :cond_50

    .line 38
    invoke-static {p1}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$fgetsuffix(Landroid/icu/impl/number/parse/AffixMatcher;)Landroid/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$smlength(Landroid/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result v0

    invoke-static {p2}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$fgetsuffix(Landroid/icu/impl/number/parse/AffixMatcher;)Landroid/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/number/parse/AffixMatcher;->-$$Nest$smlength(Landroid/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result v1

    if-le v0, v1, :cond_4e

    goto :goto_4f

    :cond_4e
    move v2, v3

    :goto_4f
    return v2

    .line 39
    :cond_50
    invoke-virtual {p1, p2}, Landroid/icu/impl/number/parse/AffixMatcher;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 42
    invoke-virtual {p1}, Landroid/icu/impl/number/parse/AffixMatcher;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Landroid/icu/impl/number/parse/AffixMatcher;->hashCode()I

    move-result v1

    if-le v0, v1, :cond_61

    goto :goto_62

    :cond_61
    move v2, v3

    :goto_62
    return v2

    .line 44
    :cond_63
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
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

    .line 32
    check-cast p1, Landroid/icu/impl/number/parse/AffixMatcher;

    check-cast p2, Landroid/icu/impl/number/parse/AffixMatcher;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/number/parse/AffixMatcher$1;->compare(Landroid/icu/impl/number/parse/AffixMatcher;Landroid/icu/impl/number/parse/AffixMatcher;)I

    move-result p1

    return p1
.end method
