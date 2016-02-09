.class public abstract Landroid/service/voice/VoiceInteractionSessionService;
.super Landroid/app/Service;
.source "VoiceInteractionSessionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionSessionService$1;,
        Landroid/service/voice/VoiceInteractionSessionService$2;
    }
.end annotation


# static fields
.field static final MSG_NEW_SESSION:I = 0x1


# instance fields
.field mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field final mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

.field mInterface:Landroid/service/voice/IVoiceInteractionSessionService;

.field mSession:Landroid/service/voice/VoiceInteractionSession;

.field mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 46
    new-instance v0, Landroid/service/voice/VoiceInteractionSessionService$1;

    #@5
    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSessionService$1;-><init>(Landroid/service/voice/VoiceInteractionSessionService;)V

    #@8
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mInterface:Landroid/service/voice/IVoiceInteractionSessionService;

    #@a
    .line 55
    new-instance v0, Landroid/service/voice/VoiceInteractionSessionService$2;

    #@c
    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSessionService$2;-><init>(Landroid/service/voice/VoiceInteractionSessionService;)V

    #@f
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    #@11
    .line 39
    return-void
.end method


# virtual methods
.method doNewSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "startFlags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 118
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 119
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@7
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->doDestroy()V

    #@a
    .line 120
    iput-object v2, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@c
    .line 122
    :cond_0
    invoke-virtual {p0, p2}, Landroid/service/voice/VoiceInteractionSessionService;->onNewSession(Landroid/os/Bundle;)Landroid/service/voice/VoiceInteractionSession;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@12
    .line 124
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@14
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@16
    iget-object v2, v2, Landroid/service/voice/VoiceInteractionSession;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@18
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@1a
    iget-object v3, v3, Landroid/service/voice/VoiceInteractionSession;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@1c
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    #@1f
    .line 125
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@21
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@23
    invoke-virtual {v1, v2, p1}, Landroid/service/voice/VoiceInteractionSession;->doCreate(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 117
    :goto_0
    return-void

    #@27
    .line 126
    :catch_0
    move-exception v0

    #@28
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 110
    const-string/jumbo v0, "(no active session)"

    #@7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 108
    :goto_0
    return-void

    #@b
    .line 112
    :cond_0
    const-string/jumbo v0, "VoiceInteractionSession:"

    #@e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@11
    .line 113
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@13
    const-string/jumbo v1, "  "

    #@16
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/service/voice/VoiceInteractionSession;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@19
    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mInterface:Landroid/service/voice/IVoiceInteractionSessionService;

    #@2
    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSessionService;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 86
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 87
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@9
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@c
    .line 84
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    #@0
    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #@3
    .line 71
    const-string/jumbo v0, "voiceinteraction"

    #@6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    .line 70
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@10
    .line 72
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    #@12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@15
    move-result-object v1

    #@16
    .line 73
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    #@18
    const/4 v3, 0x1

    #@19
    .line 72
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    #@1c
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    #@1e
    .line 68
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    #@0
    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    #@3
    .line 94
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 95
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@9
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onLowMemory()V

    #@c
    .line 92
    :cond_0
    return-void
.end method

.method public abstract onNewSession(Landroid/os/Bundle;)Landroid/service/voice/VoiceInteractionSession;
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    #@3
    .line 102
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 103
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSessionService;->mSession:Landroid/service/voice/VoiceInteractionSession;

    #@9
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionSession;->onTrimMemory(I)V

    #@c
    .line 100
    :cond_0
    return-void
.end method
