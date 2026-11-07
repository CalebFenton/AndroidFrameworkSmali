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
.field private final greylist-max-o mArray:Landroid/util/MemoryIntArray;

.field private greylist-max-o mCurrentGeneration:I

.field private final blacklist mErrorHandler:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIndex:I

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "array"    # Landroid/util/MemoryIntArray;
    .param p3, "index"    # I
    .param p4, "generation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/MemoryIntArray;",
            "II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3370
    .local p5, "errorHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3371
    iput-object p1, p0, Landroid/provider/Settings$GenerationTracker;->mName:Ljava/lang/String;

    .line 3372
    iput-object p2, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    .line 3373
    iput p3, p0, Landroid/provider/Settings$GenerationTracker;->mIndex:I

    .line 3374
    iput-object p5, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/util/function/Consumer;

    .line 3375
    iput p4, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    .line 3376
    return-void
.end method

.method private greylist-max-o readCurrentGeneration()I
    .registers 4

    .line 3396
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    iget v1, p0, Landroid/provider/Settings$GenerationTracker;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/MemoryIntArray;->get(I)I

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3397
    :catch_9
    move-exception v0

    .line 3398
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Settings"

    const-string v2, "Error getting current generation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3399
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/util/function/Consumer;

    iget-object v2, p0, Landroid/provider/Settings$GenerationTracker;->mName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3401
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .registers 2

    .line 3405
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    invoke-static {v0}, Landroid/provider/Settings;->-$$Nest$smmaybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V

    .line 3406
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3411
    :try_start_0
    invoke-virtual {p0}, Landroid/provider/Settings$GenerationTracker;->destroy()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 3413
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3414
    nop

    .line 3415
    return-void

    .line 3413
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3414
    throw v0
.end method

.method public greylist-max-o getCurrentGeneration()I
    .registers 2

    .line 3391
    iget v0, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    return v0
.end method

.method public greylist-max-o isGenerationChanged()Z
    .registers 3

    .line 3380
    invoke-direct {p0}, Landroid/provider/Settings$GenerationTracker;->readCurrentGeneration()I

    move-result v0

    .line 3381
    .local v0, "currentGeneration":I
    if-ltz v0, :cond_e

    .line 3382
    iget v1, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    if-ne v0, v1, :cond_c

    .line 3383
    const/4 v1, 0x0

    return v1

    .line 3385
    :cond_c
    iput v0, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    .line 3387
    :cond_e
    const/4 v1, 0x1

    return v1
.end method
