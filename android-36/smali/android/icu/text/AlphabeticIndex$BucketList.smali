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
        "Ljava/lang/Iterable<",
        "Landroid/icu/text/AlphabeticIndex$Bucket<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o bucketList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o immutableVisibleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetimmutableVisibleList(Landroid/icu/text/AlphabeticIndex$BucketList;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfullIterator(Landroid/icu/text/AlphabeticIndex$BucketList;)Ljava/util/Iterator;
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->fullIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBucketCount(Landroid/icu/text/AlphabeticIndex$BucketList;)I
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->getBucketCount()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBucketIndex(Landroid/icu/text/AlphabeticIndex$BucketList;Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$BucketList;->getBucketIndex(Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I

    move-result p0

    return p0
.end method

.method private constructor greylist-max-o <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;",
            "Ljava/util/ArrayList<",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1101
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$BucketList;, "Landroid/icu/text/AlphabeticIndex$BucketList<TV;>;"
    .local p1, "bucketList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;>;"
    .local p2, "publicBucketList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    .line 1104
    const/4 v0, 0x0

    .line 1105
    .local v0, "displayIndex":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 1106
    .local v2, "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "displayIndex":I
    .local v3, "displayIndex":I
    invoke-static {v2, v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fputdisplayIndex(Landroid/icu/text/AlphabeticIndex$Bucket;I)V

    .line 1107
    .end local v2    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    move v0, v3

    goto :goto_a

    .line 1108
    .end local v3    # "displayIndex":I
    .restart local v0    # "displayIndex":I
    :cond_1d
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    .line 1109
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private greylist-max-o fullIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;"
        }
    .end annotation

    .line 1140
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$BucketList;, "Landroid/icu/text/AlphabeticIndex$BucketList<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getBucketCount()I
    .registers 2

    .line 1112
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$BucketList;, "Landroid/icu/text/AlphabeticIndex$BucketList<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private greylist-max-o getBucketIndex(Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I
    .registers 8
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "collatorPrimaryOnly"    # Landroid/icu/text/Collator;

    .line 1117
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$BucketList;, "Landroid/icu/text/AlphabeticIndex$BucketList<TV;>;"
    const/4 v0, 0x0

    .line 1118
    .local v0, "start":I
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1119
    .local v1, "limit":I
    :goto_7
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v1, :cond_25

    .line 1120
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 1121
    .local v2, "i":I
    iget-object v3, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 1122
    .local v3, "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v3}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetlowerBoundary(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, p1, v4}, Landroid/icu/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 1123
    .local v4, "nameVsBucket":I
    if-gez v4, :cond_23

    .line 1124
    move v1, v2

    goto :goto_24

    .line 1126
    :cond_23
    move v0, v2

    .line 1128
    .end local v2    # "i":I
    .end local v3    # "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    .end local v4    # "nameVsBucket":I
    :goto_24
    goto :goto_7

    .line 1129
    :cond_25
    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 1130
    .local v2, "bucket":Landroid/icu/text/AlphabeticIndex$Bucket;, "Landroid/icu/text/AlphabeticIndex$Bucket<TV;>;"
    invoke-static {v2}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetdisplayBucket(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 1131
    invoke-static {v2}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetdisplayBucket(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v2

    .line 1133
    :cond_37
    invoke-static {v2}, Landroid/icu/text/AlphabeticIndex$Bucket;->-$$Nest$fgetdisplayIndex(Landroid/icu/text/AlphabeticIndex$Bucket;)I

    move-result v3

    return v3
.end method


# virtual methods
.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;"
        }
    .end annotation

    .line 1148
    .local p0, "this":Landroid/icu/text/AlphabeticIndex$BucketList;, "Landroid/icu/text/AlphabeticIndex$BucketList<TV;>;"
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
