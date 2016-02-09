.class public final Landroid/icu/text/AlphabeticIndex$ImmutableIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImmutableIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/text/AlphabeticIndex$Bucket",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private final buckets:Landroid/icu/text/AlphabeticIndex$BucketList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/AlphabeticIndex$BucketList",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final collatorPrimaryOnly:Landroid/icu/text/Collator;


# direct methods
.method private constructor <init>(Landroid/icu/text/AlphabeticIndex$BucketList;Landroid/icu/text/Collator;)V
    .locals 0
    .param p2, "collatorPrimaryOnly"    # Landroid/icu/text/Collator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/AlphabeticIndex$BucketList",
            "<TV;>;",
            "Landroid/icu/text/Collator;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 173
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$ImmutableIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>.ImmutableIndex<TV;>;"
    .local p1, "bucketList":Landroid/icu/text/AlphabeticIndex$BucketList;, "Lcom/ibm/icu/text/AlphabeticIndex$BucketList<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 174
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@5
    .line 175
    iput-object p2, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->collatorPrimaryOnly:Landroid/icu/text/Collator;

    #@7
    .line 173
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/AlphabeticIndex$BucketList;Landroid/icu/text/Collator;Landroid/icu/text/AlphabeticIndex$ImmutableIndex;)V
    .locals 0
    .param p1, "bucketList"    # Landroid/icu/text/AlphabeticIndex$BucketList;
    .param p2, "collatorPrimaryOnly"    # Landroid/icu/text/Collator;

    #@0
    .prologue
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$ImmutableIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>.ImmutableIndex<TV;>;"
    invoke-direct {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;-><init>(Landroid/icu/text/AlphabeticIndex$BucketList;Landroid/icu/text/Collator;)V

    #@3
    return-void
.end method


# virtual methods
.method public getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 208
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$ImmutableIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>.ImmutableIndex<TV;>;"
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@4
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$BucketList;->-wrap0(Landroid/icu/text/AlphabeticIndex$BucketList;)I

    #@7
    move-result v0

    #@8
    if-ge p1, v0, :cond_0

    #@a
    .line 209
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@c
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$BucketList;->-get0(Landroid/icu/text/AlphabeticIndex$BucketList;)Ljava/util/List;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@16
    return-object v0

    #@17
    .line 211
    :cond_0
    const/4 v0, 0x0

    #@18
    return-object v0
.end method

.method public getBucketCount()I
    .locals 1

    #@0
    .prologue
    .line 185
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$ImmutableIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>.ImmutableIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@2
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$BucketList;->-wrap0(Landroid/icu/text/AlphabeticIndex$BucketList;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getBucketIndex(Ljava/lang/CharSequence;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 197
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$ImmutableIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>.ImmutableIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@2
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->collatorPrimaryOnly:Landroid/icu/text/Collator;

    #@4
    invoke-static {v0, p1, v1}, Landroid/icu/text/AlphabeticIndex$BucketList;->-wrap1(Landroid/icu/text/AlphabeticIndex$BucketList;Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 220
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$ImmutableIndex;, "Landroid/icu/text/AlphabeticIndex<TV;>.ImmutableIndex<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex$BucketList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
