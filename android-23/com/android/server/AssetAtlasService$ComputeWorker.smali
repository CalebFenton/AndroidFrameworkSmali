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
    .line 644
    .local p4, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .local p6, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/AssetAtlasService$WorkerResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 646
    iput p1, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStart:I

    #@5
    .line 647
    iput p2, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mEnd:I

    #@7
    .line 648
    iput p3, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStep:I

    #@9
    .line 649
    iput-object p4, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    #@b
    .line 650
    iput-object p6, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mResults:Ljava/util/List;

    #@d
    .line 651
    iput-object p7, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    #@f
    .line 654
    int-to-float v1, p5

    #@10
    const v2, 0x3f4ccccd    # 0.8f

    #@13
    mul-float/2addr v1, v2

    #@14
    float-to-int v0, v1

    #@15
    .line 656
    .local v0, "threshold":I
    :goto_0
    const/high16 v1, 0x400000

    #@17
    if-le v0, v1, :cond_0

    #@19
    .line 657
    shr-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 659
    :cond_0
    iput v0, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mThreshold:I

    #@1e
    .line 645
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
    .line 692
    const/4 v4, 0x0

    #@1
    .line 693
    .local v4, "total":I
    new-instance v0, Landroid/graphics/Atlas;

    #@3
    invoke-direct {v0, p1, p2, p3}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;II)V

    #@6
    .line 695
    .local v0, "atlas":Landroid/graphics/Atlas;
    iget-object v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    #@8
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@b
    move-result v2

    #@c
    .line 696
    .local v2, "count":I
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@f
    .line 697
    iget-object v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    #@11
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/graphics/Bitmap;

    #@17
    .line 698
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
    .line 699
    add-int/lit8 v4, v4, 0x1

    #@27
    .line 696
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 703
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return v4
.end method


# virtual methods
.method public run()V
    .locals 10

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 664
    const-string/jumbo v6, "AssetAtlas"

    #@4
    new-instance v7, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v8, "Running "

    #@c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v7

    #@10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@13
    move-result-object v8

    #@14
    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 666
    new-instance v1, Landroid/graphics/Atlas$Entry;

    #@25
    invoke-direct {v1}, Landroid/graphics/Atlas$Entry;-><init>()V

    #@28
    .line 667
    .local v1, "entry":Landroid/graphics/Atlas$Entry;
    invoke-static {}, Landroid/graphics/Atlas$Type;->values()[Landroid/graphics/Atlas$Type;

    #@2b
    move-result-object v6

    #@2c
    array-length v7, v6

    #@2d
    :goto_0
    if-ge v5, v7, :cond_4

    #@2f
    aget-object v3, v6, v5

    #@31
    .line 668
    .local v3, "type":Landroid/graphics/Atlas$Type;
    iget v4, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mEnd:I

    #@33
    .local v4, "width":I
    :goto_1
    iget v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStart:I

    #@35
    if-le v4, v8, :cond_3

    #@37
    .line 669
    const/16 v2, 0x800

    #@39
    .local v2, "height":I
    :goto_2
    const/16 v8, 0x300

    #@3b
    if-le v2, v8, :cond_2

    #@3d
    .line 671
    mul-int v8, v4, v2

    #@3f
    iget v9, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mThreshold:I

    #@41
    if-gt v8, v9, :cond_1

    #@43
    .line 669
    :cond_0
    add-int/lit8 v2, v2, -0x40

    #@45
    goto :goto_2

    #@46
    .line 673
    :cond_1
    invoke-direct {p0, v3, v4, v2, v1}, Lcom/android/server/AssetAtlasService$ComputeWorker;->packBitmaps(Landroid/graphics/Atlas$Type;IILandroid/graphics/Atlas$Entry;)I

    #@49
    move-result v0

    #@4a
    .line 674
    .local v0, "count":I
    if-lez v0, :cond_0

    #@4c
    .line 675
    iget-object v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mResults:Ljava/util/List;

    #@4e
    new-instance v9, Lcom/android/server/AssetAtlasService$WorkerResult;

    #@50
    invoke-direct {v9, v3, v4, v2, v0}, Lcom/android/server/AssetAtlasService$WorkerResult;-><init>(Landroid/graphics/Atlas$Type;III)V

    #@53
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@56
    .line 678
    iget-object v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    #@58
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@5b
    move-result v8

    #@5c
    if-ne v0, v8, :cond_0

    #@5e
    .line 668
    .end local v0    # "count":I
    :cond_2
    iget v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStep:I

    #@60
    sub-int/2addr v4, v8

    #@61
    goto :goto_1

    #@62
    .line 667
    .end local v2    # "height":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@64
    goto :goto_0

    #@65
    .line 686
    .end local v3    # "type":Landroid/graphics/Atlas$Type;
    .end local v4    # "width":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    #@67
    if-eqz v5, :cond_5

    #@69
    .line 687
    iget-object v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    #@6b
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@6e
    .line 663
    :cond_5
    return-void
.end method
