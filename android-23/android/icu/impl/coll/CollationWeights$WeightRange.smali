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
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/impl/coll/CollationWeights$WeightRange;",
        ">;"
    }
.end annotation


# instance fields
.field count:I

.field end:J

.field length:I

.field start:J


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/impl/coll/CollationWeights$WeightRange;)I
    .locals 5
    .param p1, "other"    # Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@0
    .prologue
    .line 163
    iget-wide v0, p0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@2
    .line 164
    .local v0, "l":J
    iget-wide v2, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    #@4
    .line 165
    .local v2, "r":J
    cmp-long v4, v0, v2

    #@6
    if-gez v4, :cond_0

    #@8
    .line 166
    const/4 v4, -0x1

    #@9
    return v4

    #@a
    .line 167
    :cond_0
    cmp-long v4, v0, v2

    #@c
    if-lez v4, :cond_1

    #@e
    .line 168
    const/4 v4, 0x1

    #@f
    return v4

    #@10
    .line 170
    :cond_1
    const/4 v4, 0x0

    #@11
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 162
    check-cast p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationWeights$WeightRange;->compareTo(Landroid/icu/impl/coll/CollationWeights$WeightRange;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
