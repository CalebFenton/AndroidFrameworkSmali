.class public Lcom/android/server/policy/keyguard/KeyguardStateMonitor;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "KeyguardStateMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardStateMonitor"


# instance fields
.field private mCurrentUserId:I

.field private volatile mInputRestricted:Z

.field private volatile mIsShowing:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private volatile mSimSecure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/policy/IKeyguardService;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    #@4
    .line 41
    iput-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    #@6
    .line 42
    iput-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    #@8
    .line 43
    iput-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    #@a
    .line 50
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    #@c
    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@f
    iput-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@11
    .line 51
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@14
    move-result v1

    #@15
    iput v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    #@17
    .line 53
    :try_start_0
    invoke-interface {p2, p0}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 49
    :goto_0
    return-void

    #@1b
    .line 54
    :catch_0
    move-exception v0

    #@1c
    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyguardStateMonitor"

    #@1f
    const-string/jumbo v2, "Remote Exception"

    #@22
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    goto :goto_0
.end method

.method private declared-synchronized getCurrentUser()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 86
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method


# virtual methods
.method public isInputRestricted()Z
    .locals 1

    #@0
    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    #@2
    return v0
.end method

.method public isSecure()Z
    .locals 2

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    #@2
    invoke-direct {p0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->getCurrentUser()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    #@2
    return v0
.end method

.method public onInputRestrictedStateChanged(Z)V
    .locals 0
    .param p1, "inputRestricted"    # Z

    #@0
    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    #@2
    .line 90
    return-void
.end method

.method public onShowingStateChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    #@0
    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    #@2
    .line 72
    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .locals 0
    .param p1, "simSecure"    # Z

    #@0
    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    #@2
    .line 77
    return-void
.end method

.method public declared-synchronized setCurrentUser(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 82
    :try_start_0
    iput p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 81
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method
