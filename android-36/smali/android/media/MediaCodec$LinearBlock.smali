.class public final Landroid/media/MediaCodec$LinearBlock;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinearBlock"
.end annotation


# static fields
.field private static final blacklist sPool:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/media/MediaCodec$LinearBlock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mInternal:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMappable:Z

.field private blacklist mMapped:Ljava/nio/ByteBuffer;

.field private blacklist mNativeContext:J

.field private blacklist mValid:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3763
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Landroid/media/MediaCodec$LinearBlock;->sPool:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 4

    .line 3626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3766
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    .line 3767
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    .line 3768
    iput-boolean v0, p0, Landroid/media/MediaCodec$LinearBlock;->mMappable:Z

    .line 3769
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    .line 3770
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/MediaCodec$LinearBlock;->mNativeContext:J

    .line 3771
    iput-boolean v0, p0, Landroid/media/MediaCodec$LinearBlock;->mInternal:Z

    .line 3626
    return-void
.end method

.method public static whitelist isCodecCopyFreeCompatible([Ljava/lang/String;)Z
    .registers 2
    .param p0, "codecNames"    # [Ljava/lang/String;

    .line 3721
    invoke-static {p0}, Landroid/media/MediaCodec$LinearBlock;->native_checkCompatible([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native blacklist native_checkCompatible([Ljava/lang/String;)Z
.end method

.method private native blacklist native_map()Ljava/nio/ByteBuffer;
.end method

.method private native blacklist native_obtain(I[Ljava/lang/String;)V
.end method

.method private native blacklist native_recycle()V
.end method

.method public static whitelist obtain(I[Ljava/lang/String;)Landroid/media/MediaCodec$LinearBlock;
    .registers 5
    .param p0, "capacity"    # I
    .param p1, "codecNames"    # [Ljava/lang/String;

    .line 3745
    sget-object v0, Landroid/media/MediaCodec$LinearBlock;->sPool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$LinearBlock;

    .line 3746
    .local v0, "buffer":Landroid/media/MediaCodec$LinearBlock;
    if-nez v0, :cond_10

    .line 3747
    new-instance v1, Landroid/media/MediaCodec$LinearBlock;

    invoke-direct {v1}, Landroid/media/MediaCodec$LinearBlock;-><init>()V

    move-object v0, v1

    .line 3749
    :cond_10
    iget-object v1, v0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3750
    :try_start_13
    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodec$LinearBlock;->native_obtain(I[Ljava/lang/String;)V

    .line 3751
    monitor-exit v1

    .line 3752
    return-object v0

    .line 3751
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method private blacklist setInternalStateLocked(JZ)V
    .registers 6
    .param p1, "context"    # J
    .param p3, "isMappable"    # Z

    .line 3757
    iput-wide p1, p0, Landroid/media/MediaCodec$LinearBlock;->mNativeContext:J

    .line 3758
    iput-boolean p3, p0, Landroid/media/MediaCodec$LinearBlock;->mMappable:Z

    .line 3759
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    .line 3760
    iput-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mInternal:Z

    .line 3761
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 1

    .line 3705
    invoke-direct {p0}, Landroid/media/MediaCodec$LinearBlock;->native_recycle()V

    .line 3706
    return-void
.end method

.method public whitelist isMappable()Z
    .registers 4

    .line 3633
    iget-object v0, p0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3634
    :try_start_3
    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    if-eqz v1, :cond_b

    .line 3637
    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMappable:Z

    monitor-exit v0

    return v1

    .line 3635
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The linear block is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    throw v1

    .line 3638
    .restart local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist map()Ljava/nio/ByteBuffer;
    .registers 4

    .line 3652
    iget-object v0, p0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3653
    :try_start_3
    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    if-eqz v1, :cond_21

    .line 3656
    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMappable:Z

    if-eqz v1, :cond_19

    .line 3659
    iget-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_15

    .line 3660
    invoke-direct {p0}, Landroid/media/MediaCodec$LinearBlock;->native_map()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    .line 3662
    :cond_15
    iget-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    monitor-exit v0

    return-object v1

    .line 3657
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The linear block is not mappable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    throw v1

    .line 3654
    .restart local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The linear block is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    throw v1

    .line 3663
    .restart local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public whitelist recycle()V
    .registers 4

    .line 3681
    iget-object v0, p0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3682
    :try_start_3
    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    if-eqz v1, :cond_28

    .line 3685
    iget-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 3686
    iget-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 3687
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    .line 3689
    :cond_14
    invoke-direct {p0}, Landroid/media/MediaCodec$LinearBlock;->native_recycle()V

    .line 3690
    iput-boolean v2, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    .line 3691
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/MediaCodec$LinearBlock;->mNativeContext:J

    .line 3692
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_30

    .line 3694
    iget-boolean v0, p0, Landroid/media/MediaCodec$LinearBlock;->mInternal:Z

    if-nez v0, :cond_27

    .line 3695
    sget-object v0, Landroid/media/MediaCodec$LinearBlock;->sPool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 3697
    :cond_27
    return-void

    .line 3683
    :cond_28
    :try_start_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The linear block is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    throw v1

    .line 3692
    .restart local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_30

    throw v1
.end method
