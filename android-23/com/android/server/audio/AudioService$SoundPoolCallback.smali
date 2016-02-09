.class final Lcom/android/server/audio/AudioService$SoundPoolCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SoundPoolCallback"
.end annotation


# instance fields
.field mSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mStatus:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    .line 2425
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2428
    const/4 v0, 0x1

    #@6
    iput v0, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mStatus:I

    #@8
    .line 2429
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    #@f
    .line 2425
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$SoundPoolCallback;-><init>(Lcom/android/server/audio/AudioService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 4
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    #@0
    .prologue
    .line 2445
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get33(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2446
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    #@9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v3

    #@d
    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@10
    move-result v0

    #@11
    .line 2447
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@13
    .line 2448
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    #@15
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@18
    .line 2450
    :cond_0
    if-nez p3, :cond_1

    #@1a
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    #@1c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 2451
    :cond_1
    iput p3, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mStatus:I

    #@24
    .line 2452
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->this$0:Lcom/android/server/audio/AudioService;

    #@26
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get33(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    :cond_2
    monitor-exit v2

    #@2e
    .line 2444
    return-void

    #@2f
    .line 2445
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@30
    monitor-exit v2

    #@31
    throw v1
.end method

.method public setSamples([I)V
    .locals 3
    .param p1, "samples"    # [I

    #@0
    .prologue
    .line 2436
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 2438
    aget v1, p1, v0

    #@6
    if-lez v1, :cond_0

    #@8
    .line 2439
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mSamples:Ljava/util/List;

    #@a
    aget v2, p1, v0

    #@c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 2436
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2435
    :cond_1
    return-void
.end method

.method public status()I
    .locals 1

    #@0
    .prologue
    .line 2432
    iget v0, p0, Lcom/android/server/audio/AudioService$SoundPoolCallback;->mStatus:I

    #@2
    return v0
.end method
