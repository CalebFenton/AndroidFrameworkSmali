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
.field private mCallbacksOnUiThread:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "callUiThread"
    .end annotation
.end field

.field private mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "listener"
    .end annotation
.end field

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mUserData:Ljava/lang/Object;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "userData"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 42
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    #@6
    .line 65
    return-void
.end method


# virtual methods
.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 76
    new-instance v0, Landroid/os/Handler;

    #@6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@d
    iput-object v0, p0, Landroid/filterpacks/base/CallbackFilter;->mUiThreadHandler:Landroid/os/Handler;

    #@f
    .line 74
    :cond_0
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 82
    const-string/jumbo v1, "frame"

    #@3
    invoke-virtual {p0, v1}, Landroid/filterpacks/base/CallbackFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v4

    #@7
    .line 83
    .local v4, "input":Landroid/filterfw/core/Frame;
    iget-object v1, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    #@9
    if-eqz v1, :cond_2

    #@b
    .line 84
    iget-boolean v1, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 85
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    #@12
    .line 86
    new-instance v0, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;

    #@14
    iget-object v2, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    #@16
    iget-object v5, p0, Landroid/filterpacks/base/CallbackFilter;->mUserData:Ljava/lang/Object;

    #@18
    move-object v1, p0

    #@19
    move-object v3, p0

    #@1a
    invoke-direct/range {v0 .. v5}, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;-><init>(Landroid/filterpacks/base/CallbackFilter;Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    #@1d
    .line 87
    .local v0, "uiRunnable":Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    iget-object v1, p0, Landroid/filterpacks/base/CallbackFilter;->mUiThreadHandler:Landroid/os/Handler;

    #@1f
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_1

    #@25
    .line 88
    new-instance v1, Ljava/lang/RuntimeException;

    #@27
    const-string/jumbo v2, "Unable to send callback to UI thread!"

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 91
    .end local v0    # "uiRunnable":Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    #@30
    iget-object v2, p0, Landroid/filterpacks/base/CallbackFilter;->mUserData:Ljava/lang/Object;

    #@32
    invoke-interface {v1, p0, v4, v2}, Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;->onFrameReceived(Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    #@35
    .line 80
    :cond_1
    return-void

    #@36
    .line 94
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    #@38
    const-string/jumbo v2, "CallbackFilter received frame, but no listener set!"

    #@3b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v1
.end method

.method public setupPorts()V
    .locals 1

    #@0
    .prologue
    .line 71
    const-string/jumbo v0, "frame"

    #@3
    invoke-virtual {p0, v0}, Landroid/filterpacks/base/CallbackFilter;->addInputPort(Ljava/lang/String;)V

    #@6
    .line 70
    return-void
.end method
