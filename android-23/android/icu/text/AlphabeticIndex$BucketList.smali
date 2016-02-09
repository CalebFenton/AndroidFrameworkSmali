.class Landroid/icu/text/AlphabeticIndex$BucketList;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BucketList"
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
.field private final bucketList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final immutableVisibleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/icu/text/AlphabeticIndex$BucketList;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/text/AlphabeticIndex$BucketList;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->getBucketCount()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/icu/text/AlphabeticIndex$BucketList;Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "collatorPrimaryOnly"    # Landroid/icu/text/Collator;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$BucketList;->getBucketIndex(Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/icu/text/AlphabeticIndex$BucketList;)Ljava/util/Iterator;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->fullIterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1144
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$BucketList;, "Landroid/icu/text/AlphabeticIndex<TV;>.BucketList<TV;>;"
    .local p1, "bucketList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;>;"
    .local p2, "publicBucketList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1145
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    #@5
    .line 1147
    const/4 v2, 0x0

    #@6
    .line 1148
    .local v2, "displayIndex":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "bucket$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@16
    .line 1149
    .local v0, "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    add-int/lit8 v3, v2, 0x1

    #@18
    .end local v2    # "displayIndex":I
    .local v3, "displayIndex":I
    invoke-static {v0, v2}, Landroid/icu/text/AlphabeticIndex$Bucket;->-set1(Landroid/icu/text/AlphabeticIndex$Bucket;I)I

    #@1b
    move v2, v3

    #@1c
    .end local v3    # "displayIndex":I
    .restart local v2    # "displayIndex":I
    goto :goto_0

    #@1d
    .line 1151
    .end local v0    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@20
    move-result-object v4

    #@21
    iput-object v4, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    #@23
    .line 1144
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex$BucketList;)V
    .locals 0
    .param p1, "bucketList"    # Ljava/util/ArrayList;
    .param p2, "publicBucketList"    # Ljava/util/ArrayList;

    #@0
    .prologue
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$BucketList;, "Landroid/icu/text/AlphabeticIndex<TV;>.BucketList<TV;>;"
    invoke-direct {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@3
    return-void
.end method

.method private fullIterator()Ljava/util/Iterator;
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
    .line 1183
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$BucketList;, "Landroid/icu/text/AlphabeticIndex<TV;>.BucketList<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private getBucketCount()I
    .locals 1

    #@0
    .prologue
    .line 1155
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$BucketList;, "Landroid/icu/text/AlphabeticIndex<TV;>.BucketList<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private getBucketIndex(Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "collatorPrimaryOnly"    # Landroid/icu/text/Collator;

    #@0
    .prologue
    .line 1160
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$BucketList;, "Landroid/icu/text/AlphabeticIndex<TV;>.BucketList<TV;>;"
    const/4 v4, 0x0

    #@1
    .line 1161
    .local v4, "start":I
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    .line 1162
    .local v2, "limit":I
    :goto_0
    add-int/lit8 v5, v4, 0x1

    #@9
    if-ge v5, v2, :cond_1

    #@b
    .line 1163
    add-int v5, v4, v2

    #@d
    div-int/lit8 v1, v5, 0x2

    #@f
    .line 1164
    .local v1, "i":I
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@17
    .line 1165
    .local v0, "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get3(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {p2, p1, v5}, Landroid/icu/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1e
    move-result v3

    #@1f
    .line 1166
    .local v3, "nameVsBucket":I
    if-gez v3, :cond_0

    #@21
    .line 1167
    move v2, v1

    #@22
    goto :goto_0

    #@23
    .line 1169
    :cond_0
    move v4, v1

    #@24
    goto :goto_0

    #@25
    .line 1172
    .end local v0    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v1    # "i":I
    .end local v3    # "nameVsBucket":I
    :cond_1
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/icu/text/AlphabeticIndex$Bucket;

    #@2d
    .line 1173
    .restart local v0    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    #@30
    move-result-object v5

    #@31
    if-eqz v5, :cond_2

    #@33
    .line 1174
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    #@36
    move-result-object v0

    #@37
    .line 1176
    :cond_2
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get1(Landroid/icu/text/AlphabeticIndex$Bucket;)I

    #@3a
    move-result v5

    #@3b
    return v5
.end method


# virtual methods
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
    .line 1190
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$BucketList;, "Landroid/icu/text/AlphabeticIndex<TV;>.BucketList<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
