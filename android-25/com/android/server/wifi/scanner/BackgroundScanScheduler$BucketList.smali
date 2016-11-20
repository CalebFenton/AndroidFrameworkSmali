.class Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;
.super Ljava/lang/Object;
.source "BackgroundScanScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BucketList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList$1;
    }
.end annotation


# instance fields
.field private mActiveBucketCount:I

.field private final mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

.field private final mTimePeriodSortComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    #@0
    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 252
    new-instance v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList$1;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;)V

    #@a
    .line 251
    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mTimePeriodSortComparator:Ljava/util/Comparator;

    #@c
    .line 258
    const/4 v0, 0x0

    #@d
    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    #@f
    .line 261
    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get2()[I

    #@12
    move-result-object v0

    #@13
    array-length v0, v0

    #@14
    new-array v0, v0, [Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@16
    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@18
    .line 260
    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 270
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@3
    aget-object v0, v0, p1

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 271
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    #@d
    .line 272
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@f
    aput-object v1, v0, p1

    #@11
    .line 269
    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 2

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@6
    .line 266
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    #@9
    .line 264
    return-void
.end method

.method public get(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getActiveCount()I
    .locals 1

    #@0
    .prologue
    .line 298
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    #@2
    return v0
.end method

.method public getActiveRegularBucketCount()I
    .locals 1

    #@0
    .prologue
    .line 302
    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get0()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 303
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    return v0

    #@f
    .line 305
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    #@11
    return v0
.end method

.method public getOrCreate(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@2
    aget-object v0, v1, p1

    #@4
    .line 278
    .local v0, "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    if-nez v0, :cond_0

    #@6
    .line 279
    iget v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    #@8
    add-int/lit8 v1, v1, 0x1

    #@a
    iput v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    #@c
    .line 280
    new-instance v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@e
    .end local v0    # "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    #@10
    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get2()[I

    #@13
    move-result-object v2

    #@14
    aget v2, v2, p1

    #@16
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;I)V

    #@19
    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@1b
    aput-object v0, v1, p1

    #@1d
    .line 282
    .restart local v0    # "bucket":Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    :cond_0
    return-object v0
.end method

.method public getSortedActiveRegularBucketList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 313
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 314
    .local v0, "activeBuckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;>;"
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@8
    array-length v2, v2

    #@9
    if-ge v1, v2, :cond_1

    #@b
    .line 315
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@d
    aget-object v2, v2, v1

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get0()I

    #@14
    move-result v2

    #@15
    if-eq v1, v2, :cond_0

    #@17
    .line 316
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@19
    aget-object v2, v2, v1

    #@1b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 314
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 319
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mTimePeriodSortComparator:Ljava/util/Comparator;

    #@23
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@26
    .line 320
    return-object v0
.end method

.method public isActive(I)Z
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@2
    aget-object v0, v0, p1

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method
