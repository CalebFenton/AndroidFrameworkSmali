.class Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;
.super Landroid/os/IUpdateEngineCallback$Stub;
.source "UpdateEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CleanupAppliedPayloadCallback"
.end annotation


# instance fields
.field private blacklist mCompleted:Z

.field private blacklist mErrorCode:I

.field private blacklist mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetResult(Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;)I
    .registers 1

    invoke-direct {p0}, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->getResult()I

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 604
    invoke-direct {p0}, Landroid/os/IUpdateEngineCallback$Stub;-><init>()V

    .line 605
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mErrorCode:I

    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mCompleted:Z

    .line 607
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/UpdateEngine-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;-><init>()V

    return-void
.end method

.method private blacklist getResult()I
    .registers 3

    .line 609
    iget-object v0, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :goto_3
    :try_start_3
    iget-boolean v1, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mCompleted:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    if-nez v1, :cond_f

    .line 612
    :try_start_7
    iget-object v1, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_13

    goto :goto_e

    .line 613
    :catch_d
    move-exception v1

    .line 615
    :goto_e
    goto :goto_3

    .line 617
    :cond_f
    :try_start_f
    iget v1, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mErrorCode:I

    monitor-exit v0

    return v1

    .line 618
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method public blacklist onPayloadApplicationComplete(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 627
    iget-object v0, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_3
    iput p1, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mErrorCode:I

    .line 629
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mCompleted:Z

    .line 630
    iget-object v1, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 631
    monitor-exit v0

    .line 632
    return-void

    .line 631
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public blacklist onStatusUpdate(IF)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "percent"    # F

    .line 623
    return-void
.end method
