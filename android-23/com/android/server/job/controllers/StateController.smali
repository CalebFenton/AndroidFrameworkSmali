.class public abstract Lcom/android/server/job/controllers/StateController;
.super Ljava/lang/Object;
.source "StateController.java"


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDeviceIdleMode:Z

.field protected mStateChangedListener:Lcom/android/server/job/StateChangedListener;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V
    .locals 0
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@5
    .line 38
    iput-object p2, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    #@7
    .line 36
    return-void
.end method


# virtual methods
.method public deviceIdleModeChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/server/job/controllers/StateController;->mDeviceIdleMode:Z

    #@2
    .line 41
    return-void
.end method

.method public abstract dumpControllerState(Ljava/io/PrintWriter;)V
.end method

.method public abstract maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
.end method

.method public abstract maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
.end method
