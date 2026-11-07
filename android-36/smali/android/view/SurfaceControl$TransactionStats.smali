.class public final Landroid/view/SurfaceControl$TransactionStats;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionStats"
.end annotation


# instance fields
.field private blacklist mLatchTimeNanos:J

.field private blacklist mSyncFence:Landroid/hardware/SyncFence;


# direct methods
.method private constructor blacklist <init>(JJ)V
    .registers 6
    .param p1, "latchTimeNanos"    # J
    .param p3, "presentFencePtr"    # J

    .line 2906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2907
    iput-wide p1, p0, Landroid/view/SurfaceControl$TransactionStats;->mLatchTimeNanos:J

    .line 2908
    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0, p3, p4}, Landroid/hardware/SyncFence;-><init>(J)V

    iput-object v0, p0, Landroid/view/SurfaceControl$TransactionStats;->mSyncFence:Landroid/hardware/SyncFence;

    .line 2909
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .registers 2

    .line 2916
    iget-object v0, p0, Landroid/view/SurfaceControl$TransactionStats;->mSyncFence:Landroid/hardware/SyncFence;

    invoke-virtual {v0}, Landroid/hardware/SyncFence;->close()V

    .line 2917
    return-void
.end method

.method public whitelist getLatchTimeNanos()J
    .registers 3

    .line 2925
    iget-wide v0, p0, Landroid/view/SurfaceControl$TransactionStats;->mLatchTimeNanos:J

    return-wide v0
.end method

.method public whitelist getPresentFence()Landroid/hardware/SyncFence;
    .registers 3

    .line 2936
    new-instance v0, Landroid/hardware/SyncFence;

    iget-object v1, p0, Landroid/view/SurfaceControl$TransactionStats;->mSyncFence:Landroid/hardware/SyncFence;

    invoke-direct {v0, v1}, Landroid/hardware/SyncFence;-><init>(Landroid/hardware/SyncFence;)V

    return-object v0
.end method
