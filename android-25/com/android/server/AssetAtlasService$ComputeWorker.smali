.class Lcom/android/server/AssetAtlasService$ComputeWorker;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComputeWorker"
.end annotation


# instance fields
.field private final mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnd:I

.field private final mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/AssetAtlasService$WorkerResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mStart:I

.field private final mStep:I

.field private final mThreshold:I


# direct methods
.method constructor <init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "step"    # I
    .param p5, "pixelCount"    # I
    .param p7, "signal"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/AssetAtlasService$WorkerResult;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 645
    .local p4, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .local p6, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/AssetAtlasService$WorkerResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 647
    iput p1, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStart:I

    #@5
    .line 648
    iput p2, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mEnd:I

    #@7
    .line 649
    iput p3, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStep:I

    #@9
    .line 650
    iput-object p4, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    #@b
    .line 651
    iput-object p6, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mResults:Ljava/util/List;

    #@d
    .line 652
    iput-object p7, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    #@f
    .line 655
    int-to-float v1, p5

    #@10
    const v2, 0x3f4ccccd    # 0.8f

    #@13
    mul-float/2addr v1, v2

    #@14
    float-to-int v0, v1

    #@15
    .line 657
    .local v0, "threshold":I
    :goto_0
    const/high16 v1, 0x400000

    #@17
    if-le v0, v1, :cond_0

    #@19
    .line 658
    shr-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 660
    :cond_0
    iput v0, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mThreshold:I

    #@1e
    .line 646
    return-void
.end method

.method private packBitmaps(Landroid/graphics/Atlas$Type;IILandroid/graphics/Atlas$Entry;)I
    .locals 7
    .param p1, "type"    # Landroid/graphics/Atlas$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "entry"    # Landroid/graphics/Atlas$Entry;

    #@0
    .prologue
    .line 703
    const/4 v4, 0x0

    #@1
    .line 704
    .local v4, "total":I
    new-instance v0, Landroid/graphics/Atlas;

    #@3
    invoke-direct {v0, p1, p2, p3}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;II)V

    #@6
    .line 706
    .local v0, "atlas":Landroid/graphics/Atlas;
    iget-object v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    #@8
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@b
    move-result v2

    #@c
    .line 707
    .local v2, "count":I
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@f
    .line 708
    iget-object v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    #@11
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/graphics/Bitmap;

    #@17
    .line 709
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    #@1a
    move-result v5

    #@1b
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    #@1e
    move-result v6

    #@1f
    invoke-virtual {v0, v5, v6, p4}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    #@22
    move-result-object v5

    #@23
    if-eqz v5, :cond_0

    #@25
    .line 710
    add-int/lit8 v4, v4, 0x1

    #@27
    .line 707
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 714
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return v4
.end method


# virtual methods
.method public run()V
    .locals 12

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 665
    const-string/jumbo v6, "AssetAtlas"

    #@4
    new-instance v8, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v9, "Running "

    #@c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v8

    #@10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@13
    move-result-object v9

    #@14
    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@17
    move-result-object v9

    #@18
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v8

    #@1c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 667
    new-instance v1, Landroid/graphics/Atlas$Entry;

    #@25
    invoke-direct {v1}, Landroid/graphics/Atlas$Entry;-><init>()V

    #@28
    .line 669
    .local v1, "entry":Landroid/graphics/Atlas$Entry;
    iget v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mEnd:I

    #@2a
    .local v5, "width":I
    :goto_0
    iget v6, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStart:I

    #@2c
    if-le v5, v6, :cond_5

    #@2e
    .line 670
    const/16 v2, 0x800

    #@30
    .local v2, "height":I
    :goto_1
    const/16 v6, 0x200

    #@32
    if-le v2, v6, :cond_3

    #@34
    .line 672
    mul-int v6, v5, v2

    #@36
    iget v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mThreshold:I

    #@38
    if-gt v6, v8, :cond_1

    #@3a
    .line 670
    :cond_0
    add-int/lit8 v2, v2, -0x40

    #@3c
    goto :goto_1

    #@3d
    .line 674
    :cond_1
    const/4 v3, 0x0

    #@3e
    .line 676
    .local v3, "packSuccess":Z
    invoke-static {}, Landroid/graphics/Atlas$Type;->values()[Landroid/graphics/Atlas$Type;

    #@41
    move-result-object v8

    #@42
    array-length v9, v8

    #@43
    move v6, v7

    #@44
    :goto_2
    if-ge v6, v9, :cond_2

    #@46
    aget-object v4, v8, v6

    #@48
    .line 677
    .local v4, "type":Landroid/graphics/Atlas$Type;
    invoke-direct {p0, v4, v5, v2, v1}, Lcom/android/server/AssetAtlasService$ComputeWorker;->packBitmaps(Landroid/graphics/Atlas$Type;IILandroid/graphics/Atlas$Entry;)I

    #@4b
    move-result v0

    #@4c
    .line 678
    .local v0, "count":I
    if-lez v0, :cond_4

    #@4e
    .line 679
    iget-object v10, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mResults:Ljava/util/List;

    #@50
    new-instance v11, Lcom/android/server/AssetAtlasService$WorkerResult;

    #@52
    invoke-direct {v11, v4, v5, v2, v0}, Lcom/android/server/AssetAtlasService$WorkerResult;-><init>(Landroid/graphics/Atlas$Type;III)V

    #@55
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@58
    .line 680
    iget-object v10, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    #@5a
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@5d
    move-result v10

    #@5e
    if-ne v0, v10, :cond_4

    #@60
    .line 683
    const/4 v3, 0x1

    #@61
    .line 691
    .end local v0    # "count":I
    .end local v4    # "type":Landroid/graphics/Atlas$Type;
    :cond_2
    if-nez v3, :cond_0

    #@63
    .line 669
    .end local v3    # "packSuccess":Z
    :cond_3
    iget v6, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStep:I

    #@65
    sub-int/2addr v5, v6

    #@66
    goto :goto_0

    #@67
    .line 676
    .restart local v0    # "count":I
    .restart local v3    # "packSuccess":Z
    .restart local v4    # "type":Landroid/graphics/Atlas$Type;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@69
    goto :goto_2

    #@6a
    .line 697
    .end local v0    # "count":I
    .end local v2    # "height":I
    .end local v3    # "packSuccess":Z
    .end local v4    # "type":Landroid/graphics/Atlas$Type;
    :cond_5
    iget-object v6, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    #@6c
    if-eqz v6, :cond_6

    #@6e
    .line 698
    iget-object v6, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    #@70
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@73
    .line 664
    :cond_6
    return-void
.end method
