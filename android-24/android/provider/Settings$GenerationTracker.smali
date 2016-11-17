.class final Landroid/provider/Settings$GenerationTracker;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GenerationTracker"
.end annotation


# instance fields
.field private final mArray:Landroid/util/MemoryIntArray;

.field private mCurrentGeneration:I

.field private final mErrorHandler:Ljava/lang/Runnable;

.field private final mIndex:I


# direct methods
.method public constructor <init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V
    .locals 0
    .param p1, "array"    # Landroid/util/MemoryIntArray;
    .param p2, "index"    # I
    .param p3, "generation"    # I
    .param p4, "errorHandler"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 1476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1478
    iput-object p1, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    #@5
    .line 1479
    iput p2, p0, Landroid/provider/Settings$GenerationTracker;->mIndex:I

    #@7
    .line 1480
    iput-object p4, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    #@9
    .line 1481
    iput p3, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    #@b
    .line 1477
    return-void
.end method

.method private readCurrentGeneration()I
    .locals 3

    #@0
    .prologue
    .line 1497
    :try_start_0
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    #@2
    iget v2, p0, Landroid/provider/Settings$GenerationTracker;->mIndex:I

    #@4
    invoke-virtual {v1, v2}, Landroid/util/MemoryIntArray;->get(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 1498
    :catch_0
    move-exception v0

    #@a
    .line 1499
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "Settings"

    #@d
    const-string/jumbo v2, "Error getting current generation"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 1500
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 1501
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    #@19
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    #@1c
    .line 1504
    :cond_0
    const/4 v1, -0x1

    #@1d
    return v1
.end method


# virtual methods
.method public destroy()V
    .locals 3

    #@0
    .prologue
    .line 1509
    :try_start_0
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    #@2
    invoke-virtual {v1}, Landroid/util/MemoryIntArray;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1507
    :cond_0
    :goto_0
    return-void

    #@6
    .line 1510
    :catch_0
    move-exception v0

    #@7
    .line 1511
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "Settings"

    #@a
    const-string/jumbo v2, "Error closing backing array"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    .line 1512
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 1513
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    #@16
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    #@19
    goto :goto_0
.end method

.method public isGenerationChanged()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1485
    invoke-direct {p0}, Landroid/provider/Settings$GenerationTracker;->readCurrentGeneration()I

    #@4
    move-result v0

    #@5
    .line 1486
    .local v0, "currentGeneration":I
    if-ltz v0, :cond_1

    #@7
    .line 1487
    iget v1, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 1488
    return v2

    #@c
    .line 1490
    :cond_0
    iput v0, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    #@e
    .line 1492
    :cond_1
    const/4 v1, 0x1

    #@f
    return v1
.end method
