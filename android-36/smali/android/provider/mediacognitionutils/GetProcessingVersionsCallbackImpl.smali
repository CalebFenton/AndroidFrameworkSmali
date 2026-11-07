.class public final Landroid/provider/mediacognitionutils/GetProcessingVersionsCallbackImpl;
.super Ljava/lang/Object;
.source "GetProcessingVersionsCallbackImpl.java"

# interfaces
.implements Landroid/provider/MediaCognitionGetVersionsCallback;


# instance fields
.field private final blacklist mBinderCallback:Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;

.field private blacklist mCalled:Z


# direct methods
.method public constructor blacklist <init>(Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;)V
    .registers 3
    .param p1, "binderCallback"    # Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/provider/mediacognitionutils/GetProcessingVersionsCallbackImpl;->mBinderCallback:Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/provider/mediacognitionutils/GetProcessingVersionsCallbackImpl;->mCalled:Z

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist onFailure(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 61
    iget-boolean v0, p0, Landroid/provider/mediacognitionutils/GetProcessingVersionsCallbackImpl;->mCalled:Z

    const-string v1, "MediaCognitionService"

    if-eqz v0, :cond_c

    .line 62
    const-string v0, "The callback can only be called once"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 65
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/provider/mediacognitionutils/GetProcessingVersionsCallbackImpl;->mCalled:Z

    .line 67
    :try_start_f
    iget-object v0, p0, Landroid/provider/mediacognitionutils/GetProcessingVersionsCallbackImpl;->mBinderCallback:Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;

    invoke-interface {v0, p1}, Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;->onGetProcessingVersionsFailure(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 71
    goto :goto_1b

    .line 68
    :catch_15
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to send callback of Get Versions Failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public whitelist onSuccess(Landroid/provider/MediaCognitionProcessingVersions;)V
    .registers 5
    .param p1, "processingVersions"    # Landroid/provider/MediaCognitionProcessingVersions;

    .line 46
    iget-boolean v0, p0, Landroid/provider/mediacognitionutils/GetProcessingVersionsCallbackImpl;->mCalled:Z

    const-string v1, "MediaCognitionService"

    if-eqz v0, :cond_c

    .line 47
    const-string v0, "The callback can only be called once"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 50
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/provider/mediacognitionutils/GetProcessingVersionsCallbackImpl;->mCalled:Z

    .line 52
    :try_start_f
    iget-object v0, p0, Landroid/provider/mediacognitionutils/GetProcessingVersionsCallbackImpl;->mBinderCallback:Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;

    invoke-interface {v0, p1}, Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;->onGetProcessingVersionsSuccess(Landroid/provider/MediaCognitionProcessingVersions;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 56
    goto :goto_1b

    .line 53
    :catch_15
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to send callback of Get Versions result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method
