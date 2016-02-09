.class public Landroid/hardware/camera2/legacy/CaptureCollector;
.super Ljava/lang/Object;
.source "CaptureCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FLAG_RECEIVED_ALL_JPEG:I = 0x3

.field private static final FLAG_RECEIVED_ALL_PREVIEW:I = 0xc

.field private static final FLAG_RECEIVED_JPEG:I = 0x1

.field private static final FLAG_RECEIVED_JPEG_TS:I = 0x2

.field private static final FLAG_RECEIVED_PREVIEW:I = 0x4

.field private static final FLAG_RECEIVED_PREVIEW_TS:I = 0x8

.field private static final MAX_JPEGS_IN_FLIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CaptureCollector"


# instance fields
.field private final mActiveRequests:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private mInFlight:I

.field private mInFlightPreviews:I

.field private final mIsEmpty:Ljava/util/concurrent/locks/Condition;

.field private final mJpegCaptureQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mJpegProduceQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mMaxInFlight:I

.field private final mNotFull:Ljava/util/concurrent/locks/Condition;

.field private final mPreviewCaptureQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewProduceQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CameraDeviceState;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/camera2/legacy/CaptureCollector;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/CaptureCollector;->onPreviewCompleted()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V
    .locals 0
    .param p1, "capture"    # Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/legacy/CaptureCollector;->onRequestCompleted(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V

    #@3
    return-void
.end method

.method public constructor <init>(ILandroid/hardware/camera2/legacy/CameraDeviceState;)V
    .locals 3
    .param p1, "maxInFlight"    # I
    .param p2, "deviceState"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    #@c
    .line 265
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@e
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@11
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@13
    .line 270
    iput v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    #@15
    .line 271
    iput v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    #@17
    .line 281
    iput p1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mMaxInFlight:I

    #@19
    .line 282
    new-instance v0, Ljava/util/ArrayDeque;

    #@1b
    invoke-direct {v0, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    #@1e
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    #@20
    .line 283
    new-instance v0, Ljava/util/ArrayDeque;

    #@22
    invoke-direct {v0, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    #@25
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    #@27
    .line 284
    new-instance v0, Ljava/util/ArrayDeque;

    #@29
    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mMaxInFlight:I

    #@2b
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    #@2e
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    #@30
    .line 285
    new-instance v0, Ljava/util/ArrayDeque;

    #@32
    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mMaxInFlight:I

    #@34
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    #@37
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    #@39
    .line 286
    new-instance v0, Ljava/util/TreeSet;

    #@3b
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@3e
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    #@40
    .line 287
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@42
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    #@48
    .line 288
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@4a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@4d
    move-result-object v0

    #@4e
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    #@50
    .line 289
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@52
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;

    #@58
    .line 290
    iput-object p2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    #@5a
    .line 280
    return-void
.end method

.method private onPreviewCompleted()V
    .locals 2

    #@0
    .prologue
    .line 636
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    #@6
    .line 637
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    #@8
    if-gez v0, :cond_0

    #@a
    .line 638
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    .line 639
    const-string/jumbo v1, "More preview captures completed than requests queued."

    #@f
    .line 638
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 641
    :cond_0
    iget v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    #@15
    if-nez v0, :cond_1

    #@17
    .line 642
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;

    #@19
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    #@1c
    .line 635
    :cond_1
    return-void
.end method

.method private onRequestCompleted(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)V
    .locals 3
    .param p1, "capture"    # Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@0
    .prologue
    .line 647
    invoke-static {p1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    #@3
    move-result-object v0

    #@4
    .line 649
    .local v0, "request":Landroid/hardware/camera2/legacy/RequestHolder;
    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    #@6
    add-int/lit8 v1, v1, -0x1

    #@8
    iput v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    #@a
    .line 654
    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    #@c
    if-gez v1, :cond_0

    #@e
    .line 655
    new-instance v1, Ljava/lang/IllegalStateException;

    #@10
    .line 656
    const-string/jumbo v2, "More captures completed than requests queued."

    #@13
    .line 655
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 659
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 660
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    #@1e
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    #@21
    .line 662
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    #@23
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    #@26
    .line 663
    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    #@28
    if-nez v1, :cond_1

    #@2a
    .line 664
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    #@2c
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    #@2f
    .line 646
    :cond_1
    return-void
.end method

.method private removeRequestIfCompleted(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/util/MutableLong;)Z
    .locals 6
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "timestamp"    # Landroid/util/MutableLong;

    #@0
    .prologue
    .line 444
    const/4 v2, 0x0

    #@1
    .line 445
    .local v2, "i":I
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    #@3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "h$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@13
    .line 446
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p1}, Landroid/hardware/camera2/legacy/RequestHolder;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 447
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->-get1(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J

    #@20
    move-result-wide v4

    #@21
    iput-wide v4, p2, Landroid/util/MutableLong;->value:J

    #@23
    .line 448
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mCompletedRequests:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@28
    .line 449
    const/4 v3, 0x1

    #@29
    return v3

    #@2a
    .line 451
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 454
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :cond_1
    const/4 v3, 0x0

    #@2e
    return v3
.end method


# virtual methods
.method public failAll()V
    .locals 3

    #@0
    .prologue
    .line 618
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 619
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 622
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    #@7
    invoke-virtual {v2}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@d
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    if-eqz v0, :cond_0

    #@f
    .line 623
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewFailed()V

    #@12
    .line 624
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    goto :goto_0

    #@16
    .line 630
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :catchall_0
    move-exception v2

    #@17
    .line 631
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1a
    .line 630
    throw v2

    #@1b
    .line 626
    .restart local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    #@1d
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    #@20
    .line 627
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    #@22
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    #@25
    .line 628
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    #@27
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    #@2a
    .line 629
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    #@2c
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    .line 631
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@32
    .line 617
    return-void
.end method

.method public failNextJpeg()V
    .locals 5

    #@0
    .prologue
    .line 591
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 592
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 594
    :try_start_0
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@d
    .line 595
    .local v1, "h1":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    #@f
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@15
    .line 598
    .local v2, "h2":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    if-nez v1, :cond_1

    #@17
    move-object v0, v2

    #@18
    .line 603
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :goto_0
    if-eqz v0, :cond_0

    #@1a
    .line 604
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    #@1c
    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    #@1f
    .line 605
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    #@21
    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    #@24
    .line 606
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    #@26
    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    #@29
    .line 607
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 610
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2f
    .line 590
    return-void

    #@30
    .line 599
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :cond_1
    if-nez v2, :cond_2

    #@32
    move-object v0, v1

    #@33
    .restart local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    goto :goto_0

    #@34
    .line 600
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :cond_2
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result v4

    #@38
    if-gtz v4, :cond_3

    #@3a
    move-object v0, v1

    #@3b
    .restart local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    goto :goto_0

    #@3c
    .line 601
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :cond_3
    move-object v0, v2

    #@3d
    .restart local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    goto :goto_0

    #@3e
    .line 609
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    .end local v1    # "h1":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    .end local v2    # "h2":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :catchall_0
    move-exception v4

    #@3f
    .line 610
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@42
    .line 609
    throw v4
.end method

.method public failNextPreview()V
    .locals 5

    #@0
    .prologue
    .line 564
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 565
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 567
    :try_start_0
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@d
    .line 568
    .local v1, "h1":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    #@f
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@15
    .line 571
    .local v2, "h2":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    if-nez v1, :cond_1

    #@17
    move-object v0, v2

    #@18
    .line 576
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :goto_0
    if-eqz v0, :cond_0

    #@1a
    .line 577
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    #@1c
    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    #@1f
    .line 578
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    #@21
    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    #@24
    .line 579
    iget-object v4, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    #@26
    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    #@29
    .line 580
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 583
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2f
    .line 563
    return-void

    #@30
    .line 572
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :cond_1
    if-nez v2, :cond_2

    #@32
    move-object v0, v1

    #@33
    .restart local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    goto :goto_0

    #@34
    .line 573
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :cond_2
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->compareTo(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result v4

    #@38
    if-gtz v4, :cond_3

    #@3a
    move-object v0, v1

    #@3b
    .restart local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    goto :goto_0

    #@3c
    .line 574
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :cond_3
    move-object v0, v2

    #@3d
    .restart local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    goto :goto_0

    #@3e
    .line 582
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    .end local v1    # "h1":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    .end local v2    # "h2":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :catchall_0
    move-exception v4

    #@3f
    .line 583
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@42
    .line 582
    throw v4
.end method

.method public hasPendingPreviewCaptures()Z
    .locals 2

    #@0
    .prologue
    .line 506
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    .line 507
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    .line 509
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v1, 0x0

    #@e
    .line 511
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@11
    .line 509
    return v1

    #@12
    :cond_0
    const/4 v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 510
    :catchall_0
    move-exception v1

    #@15
    .line 511
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@18
    .line 510
    throw v1
.end method

.method public jpegCaptured(J)Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 5
    .param p1, "timestamp"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 464
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    .line 465
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 467
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@e
    .line 468
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    if-nez v0, :cond_0

    #@10
    .line 469
    const-string/jumbo v2, "CaptureCollector"

    #@13
    const-string/jumbo v3, "jpegCaptured called with no jpeg request on queue!"

    #@16
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 475
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1c
    .line 470
    return-object v4

    #@1d
    .line 472
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegTimestamp(J)V

    #@20
    .line 473
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 475
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@27
    .line 473
    return-object v2

    #@28
    .line 474
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :catchall_0
    move-exception v2

    #@29
    .line 475
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2c
    .line 474
    throw v2
.end method

.method public jpegProduced()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Landroid/hardware/camera2/legacy/RequestHolder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 485
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    .line 486
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 488
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@e
    .line 489
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    if-nez v0, :cond_0

    #@10
    .line 490
    const-string/jumbo v2, "CaptureCollector"

    #@13
    const-string/jumbo v3, "jpegProduced called with no jpeg request on queue!"

    #@16
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 496
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1c
    .line 491
    return-object v4

    #@1d
    .line 493
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setJpegProduced()V

    #@20
    .line 494
    new-instance v2, Landroid/util/Pair;

    #@22
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    #@25
    move-result-object v3

    #@26
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->-get1(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J

    #@29
    move-result-wide v4

    #@2a
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2d
    move-result-object v4

    #@2e
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 496
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@34
    .line 494
    return-object v2

    #@35
    .line 495
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :catchall_0
    move-exception v2

    #@36
    .line 496
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@39
    .line 495
    throw v2
.end method

.method public previewCaptured(J)Landroid/util/Pair;
    .locals 7
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair",
            "<",
            "Landroid/hardware/camera2/legacy/RequestHolder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 522
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    .line 523
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 525
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 526
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    if-nez v0, :cond_0

    #@10
    .line 535
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@13
    .line 530
    return-object v3

    #@14
    .line 532
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewTimestamp(J)V

    #@17
    .line 533
    new-instance v2, Landroid/util/Pair;

    #@19
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->-get1(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)J

    #@20
    move-result-wide v4

    #@21
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@24
    move-result-object v4

    #@25
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 535
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2b
    .line 533
    return-object v2

    #@2c
    .line 534
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :catchall_0
    move-exception v2

    #@2d
    .line 535
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@30
    .line 534
    throw v2
.end method

.method public previewProduced()Landroid/hardware/camera2/legacy/RequestHolder;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 545
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@3
    .line 546
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@6
    .line 548
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@e
    .line 549
    .local v0, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    if-nez v0, :cond_0

    #@10
    .line 550
    const-string/jumbo v2, "CaptureCollector"

    #@13
    const-string/jumbo v3, "previewProduced called with no preview request on queue!"

    #@16
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 556
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1c
    .line 551
    return-object v4

    #@1d
    .line 553
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->setPreviewProduced()V

    #@20
    .line 554
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->-get0(Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;)Landroid/hardware/camera2/legacy/RequestHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    move-result-object v2

    #@24
    .line 556
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@27
    .line 554
    return-object v2

    #@28
    .line 555
    .end local v0    # "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    :catchall_0
    move-exception v2

    #@29
    .line 556
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2c
    .line 555
    throw v2
.end method

.method public queueRequest(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;JLjava/util/concurrent/TimeUnit;)Z
    .locals 15
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "legacy"    # Landroid/hardware/camera2/legacy/LegacyRequest;
    .param p3, "timeout"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v11, 0x0

    #@4
    .line 314
    new-instance v4, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;

    #@6
    move-object/from16 v0, p1

    #@8
    move-object/from16 v1, p2

    #@a
    invoke-direct {v4, p0, v0, v1}, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;-><init>(Landroid/hardware/camera2/legacy/CaptureCollector;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;)V

    #@d
    .line 315
    .local v4, "h":Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;
    move-object/from16 v0, p5

    #@f
    move-wide/from16 v1, p3

    #@11
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@14
    move-result-wide v6

    #@15
    .line 316
    .local v6, "nanos":J
    iget-object v5, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@17
    .line 317
    .local v5, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@1a
    .line 324
    :try_start_0
    iget-boolean v8, v4, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    #@1c
    if-nez v8, :cond_0

    #@1e
    iget-boolean v8, v4, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    #@20
    :goto_0
    if-nez v8, :cond_1

    #@22
    .line 325
    new-instance v8, Ljava/lang/IllegalStateException;

    #@24
    const-string/jumbo v9, "Request must target at least one output surface!"

    #@27
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 354
    :catchall_0
    move-exception v8

    #@2c
    .line 355
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2f
    .line 354
    throw v8

    #@30
    :cond_0
    move v8, v9

    #@31
    .line 324
    goto :goto_0

    #@32
    .line 328
    :cond_1
    :try_start_1
    iget-boolean v8, v4, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsJpeg:Z

    #@34
    if-eqz v8, :cond_4

    #@36
    .line 330
    :goto_1
    iget v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    if-lez v8, :cond_3

    #@3a
    .line 331
    cmp-long v8, v6, v12

    #@3c
    if-gtz v8, :cond_2

    #@3e
    .line 355
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@41
    .line 332
    return v11

    #@42
    .line 334
    :cond_2
    :try_start_2
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    #@44
    invoke-interface {v8, v6, v7}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    #@47
    move-result-wide v6

    #@48
    goto :goto_1

    #@49
    .line 336
    :cond_3
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegCaptureQueue:Ljava/util/ArrayDeque;

    #@4b
    invoke-virtual {v8, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    #@4e
    .line 337
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mJpegProduceQueue:Ljava/util/ArrayDeque;

    #@50
    invoke-virtual {v8, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    #@53
    .line 339
    :cond_4
    iget-boolean v8, v4, Landroid/hardware/camera2/legacy/CaptureCollector$CaptureHolder;->needsPreview:Z

    #@55
    if-eqz v8, :cond_7

    #@57
    .line 340
    :goto_2
    iget v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    #@59
    iget v10, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mMaxInFlight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    if-lt v8, v10, :cond_6

    #@5d
    .line 341
    cmp-long v8, v6, v12

    #@5f
    if-gtz v8, :cond_5

    #@61
    .line 355
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@64
    .line 342
    return v11

    #@65
    .line 344
    :cond_5
    :try_start_3
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    #@67
    invoke-interface {v8, v6, v7}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    #@6a
    move-result-wide v6

    #@6b
    goto :goto_2

    #@6c
    .line 346
    :cond_6
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewCaptureQueue:Ljava/util/ArrayDeque;

    #@6e
    invoke-virtual {v8, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    #@71
    .line 347
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewProduceQueue:Ljava/util/ArrayDeque;

    #@73
    invoke-virtual {v8, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    #@76
    .line 348
    iget v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    #@78
    add-int/lit8 v8, v8, 0x1

    #@7a
    iput v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I

    #@7c
    .line 350
    :cond_7
    iget-object v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mActiveRequests:Ljava/util/TreeSet;

    #@7e
    invoke-virtual {v8, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@81
    .line 352
    iget v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I

    #@83
    add-int/lit8 v8, v8, 0x1

    #@85
    iput v8, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@87
    .line 355
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@8a
    .line 353
    return v9
.end method

.method public waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 368
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@4
    move-result-wide v2

    #@5
    .line 369
    .local v2, "nanos":J
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@7
    .line 370
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@a
    .line 372
    :goto_0
    :try_start_0
    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    if-lez v1, :cond_1

    #@e
    .line 373
    const-wide/16 v4, 0x0

    #@10
    cmp-long v1, v2, v4

    #@12
    if-gtz v1, :cond_0

    #@14
    .line 380
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 374
    return v6

    #@18
    .line 376
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mIsEmpty:Ljava/util/concurrent/locks/Condition;

    #@1a
    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-wide v2

    #@1e
    goto :goto_0

    #@1f
    .line 378
    :cond_1
    const/4 v1, 0x1

    #@20
    .line 380
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@23
    .line 378
    return v1

    #@24
    .line 379
    :catchall_0
    move-exception v1

    #@25
    .line 380
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@28
    .line 379
    throw v1
.end method

.method public waitForPreviewsEmpty(JLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 393
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@4
    move-result-wide v2

    #@5
    .line 394
    .local v2, "nanos":J
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@7
    .line 395
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@a
    .line 397
    :goto_0
    :try_start_0
    iget v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mInFlightPreviews:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    if-lez v1, :cond_1

    #@e
    .line 398
    const-wide/16 v4, 0x0

    #@10
    cmp-long v1, v2, v4

    #@12
    if-gtz v1, :cond_0

    #@14
    .line 405
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@17
    .line 399
    return v6

    #@18
    .line 401
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mPreviewsEmpty:Ljava/util/concurrent/locks/Condition;

    #@1a
    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result-wide v2

    #@1e
    goto :goto_0

    #@1f
    .line 403
    :cond_1
    const/4 v1, 0x1

    #@20
    .line 405
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@23
    .line 403
    return v1

    #@24
    .line 404
    :catchall_0
    move-exception v1

    #@25
    .line 405
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@28
    .line 404
    throw v1
.end method

.method public waitForRequestCompleted(Landroid/hardware/camera2/legacy/RequestHolder;JLjava/util/concurrent/TimeUnit;Landroid/util/MutableLong;)Z
    .locals 6
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "timestamp"    # Landroid/util/MutableLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 427
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@3
    move-result-wide v2

    #@4
    .line 428
    .local v2, "nanos":J
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    .line 429
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@9
    .line 431
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p5}, Landroid/hardware/camera2/legacy/CaptureCollector;->removeRequestIfCompleted(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/util/MutableLong;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_1

    #@f
    .line 432
    const-wide/16 v4, 0x0

    #@11
    cmp-long v1, v2, v4

    #@13
    if-gtz v1, :cond_0

    #@15
    .line 433
    const/4 v1, 0x0

    #@16
    .line 439
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 433
    return v1

    #@1a
    .line 435
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CaptureCollector;->mNotFull:Ljava/util/concurrent/locks/Condition;

    #@1c
    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    move-result-wide v2

    #@20
    goto :goto_0

    #@21
    .line 437
    :cond_1
    const/4 v1, 0x1

    #@22
    .line 439
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@25
    .line 437
    return v1

    #@26
    .line 438
    :catchall_0
    move-exception v1

    #@27
    .line 439
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@2a
    .line 438
    throw v1
.end method
