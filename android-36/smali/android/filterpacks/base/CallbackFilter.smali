.class public Landroid/filterpacks/base/CallbackFilter;
.super Landroid/filterfw/core/Filter;
.source "CallbackFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    }
.end annotation


# instance fields
.field private blacklist mCallbacksOnUiThread:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "callUiThread"
    .end annotation
.end field

.field private blacklist mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "listener"
    .end annotation
.end field

.field private blacklist mUiThreadHandler:Landroid/os/Handler;

.field private blacklist mUserData:Ljava/lang/Object;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "userData"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    .line 67
    return-void
.end method


# virtual methods
.method public blacklist prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 75
    iget-boolean v0, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    if-eqz v0, :cond_f

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/filterpacks/base/CallbackFilter;->mUiThreadHandler:Landroid/os/Handler;

    .line 78
    :cond_f
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 9
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 82
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/CallbackFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v5

    .line 83
    .local v5, "input":Landroid/filterfw/core/Frame;
    iget-object v0, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    if-eqz v0, :cond_36

    .line 84
    iget-boolean v0, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    if-eqz v0, :cond_2d

    .line 85
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    .line 86
    new-instance v1, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;

    iget-object v3, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    iget-object v6, p0, Landroid/filterpacks/base/CallbackFilter;->mUserData:Ljava/lang/Object;

    move-object v4, p0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;-><init>(Landroid/filterpacks/base/CallbackFilter;Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    .line 87
    .local v1, "uiRunnable":Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    iget-object v0, v2, Landroid/filterpacks/base/CallbackFilter;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 90
    .end local v1    # "uiRunnable":Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    goto :goto_35

    .line 88
    .restart local v1    # "uiRunnable":Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Unable to send callback to UI thread!"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    .end local v1    # "uiRunnable":Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    :cond_2d
    move-object v2, p0

    iget-object v0, v2, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    iget-object v1, v2, Landroid/filterpacks/base/CallbackFilter;->mUserData:Ljava/lang/Object;

    invoke-interface {v0, p0, v5, v1}, Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;->onFrameReceived(Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    .line 96
    :goto_35
    return-void

    .line 94
    :cond_36
    move-object v2, p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CallbackFilter received frame, but no listener set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setupPorts()V
    .registers 2

    .line 71
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/CallbackFilter;->addInputPort(Ljava/lang/String;)V

    .line 72
    return-void
.end method
