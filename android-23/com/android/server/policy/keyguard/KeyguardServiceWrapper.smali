.class public Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;
.super Ljava/lang/Object;
.source "KeyguardServiceWrapper.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

.field private mService:Lcom/android/internal/policy/IKeyguardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/policy/IKeyguardService;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    const-string/jumbo v0, "KeyguardServiceWrapper"

    #@6
    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@8
    .line 41
    iput-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@a
    .line 42
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    #@c
    invoke-direct {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V

    #@f
    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    #@11
    .line 40
    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    #@0
    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 73
    :goto_0
    return-void

    #@6
    .line 76
    :catch_0
    move-exception v0

    #@7
    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public dismiss()V
    .locals 3

    #@0
    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 82
    :goto_0
    return-void

    #@6
    .line 85
    :catch_0
    move-exception v0

    #@7
    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->doKeyguardTimeout(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 181
    :goto_0
    return-void

    #@6
    .line 184
    :catch_0
    move-exception v0

    #@7
    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public isInputRestricted()Z
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    #@2
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isInputRestricted()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSecure()Z
    .locals 1

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    #@2
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isSecure()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    #@2
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isShowing()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public keyguardDone(ZZ)V
    .locals 3
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    #@0
    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->keyguardDone(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 55
    :goto_0
    return-void

    #@6
    .line 58
    :catch_0
    move-exception v0

    #@7
    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public onActivityDrawn()V
    .locals 3

    #@0
    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 218
    :goto_0
    return-void

    #@6
    .line 221
    :catch_0
    move-exception v0

    #@7
    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 3

    #@0
    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onBootCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 200
    :goto_0
    return-void

    #@6
    .line 203
    :catch_0
    move-exception v0

    #@7
    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public onDreamingStarted()V
    .locals 3

    #@0
    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 91
    :goto_0
    return-void

    #@6
    .line 94
    :catch_0
    move-exception v0

    #@7
    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public onDreamingStopped()V
    .locals 3

    #@0
    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 100
    :goto_0
    return-void

    #@6
    .line 103
    :catch_0
    move-exception v0

    #@7
    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 3
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->onFinishedGoingToSleep(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 118
    :goto_0
    return-void

    #@6
    .line 121
    :catch_0
    move-exception v0

    #@7
    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 3

    #@0
    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 154
    :goto_0
    return-void

    #@6
    .line 157
    :catch_0
    move-exception v0

    #@7
    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 3

    #@0
    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 145
    :goto_0
    return-void

    #@6
    .line 148
    :catch_0
    move-exception v0

    #@7
    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    #@0
    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 136
    :goto_0
    return-void

    #@6
    .line 139
    :catch_0
    move-exception v0

    #@7
    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public onStartedGoingToSleep(I)V
    .locals 3
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->onStartedGoingToSleep(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 109
    :goto_0
    return-void

    #@6
    .line 112
    :catch_0
    move-exception v0

    #@7
    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public onStartedWakingUp()V
    .locals 3

    #@0
    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onStartedWakingUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 127
    :goto_0
    return-void

    #@6
    .line 130
    :catch_0
    move-exception v0

    #@7
    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 3

    #@0
    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 172
    :goto_0
    return-void

    #@6
    .line 175
    :catch_0
    move-exception v0

    #@7
    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->setCurrentUser(I)V

    #@5
    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@7
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->setCurrentUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 190
    :goto_0
    return-void

    #@b
    .line 194
    :catch_0
    move-exception v0

    #@c
    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v2, "Remote Exception"

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public setKeyguardEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->setKeyguardEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 163
    :goto_0
    return-void

    #@6
    .line 166
    :catch_0
    move-exception v0

    #@7
    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public setOccluded(Z)V
    .locals 3
    .param p1, "isOccluded"    # Z

    #@0
    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->setOccluded(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 64
    :goto_0
    return-void

    #@6
    .line 67
    :catch_0
    move-exception v0

    #@7
    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    #@0
    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/policy/IKeyguardService;->startKeyguardExitAnimation(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 209
    :goto_0
    return-void

    #@6
    .line 212
    :catch_0
    move-exception v0

    #@7
    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    #@0
    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 46
    :goto_0
    return-void

    #@6
    .line 49
    :catch_0
    move-exception v0

    #@7
    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    #@9
    const-string/jumbo v2, "Remote Exception"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    goto :goto_0
.end method
