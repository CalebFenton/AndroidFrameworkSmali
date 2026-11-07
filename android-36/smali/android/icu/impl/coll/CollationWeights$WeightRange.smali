.class final Landroid/icu/impl/coll/CollationWeights$WeightRange;
.super Ljava/lang/Object;
.source "CollationWeights.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationWeights;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeightRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/impl/coll/CollationWeights$WeightRange;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist count:I

.field blacklist end:J

.field blacklist length:I

.field blacklist start:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/coll/CollationWeights-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compareTo(Landroid/icu/impl/coll/CollationWeights$WeightRange;)I
    .registers 7
    .param p1, "other"    # Landroid/icu/impl/coll/CollationWeights$WeightRange;

    .line 167
    iget-wide v0, p0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 168
    .local v0, "l":J
    iget-wide v2, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 169
    .local v2, "r":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    .line 170
    const/4 v4, -0x1

    return v4

    .line 171
    :cond_a
    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    .line 172
    const/4 v4, 0x1

    return v4

    .line 174
    :cond_10
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 161
    check-cast p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationWeights$WeightRange;->compareTo(Landroid/icu/impl/coll/CollationWeights$WeightRange;)I

    move-result p1

    return p1
.end method
