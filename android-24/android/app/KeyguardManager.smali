.class public Landroid/app/KeyguardManager;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/KeyguardManager$KeyguardLock;,
        Landroid/app/KeyguardManager$OnKeyguardExitResult;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String; = "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

.field public static final ACTION_CONFIRM_DEVICE_CREDENTIAL_WITH_USER:Ljava/lang/String; = "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

.field public static final EXTRA_DESCRIPTION:Ljava/lang/String; = "android.app.extra.DESCRIPTION"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.app.extra.TITLE"


# instance fields
.field private mTrustManager:Landroid/app/trust/ITrustManager;

.field private mUserManager:Landroid/os/IUserManager;

.field private mWM:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    #@2
    return-object v0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 195
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    #@9
    .line 197
    const-string/jumbo v0, "trust"

    #@c
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v0

    #@10
    .line 196
    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    #@16
    .line 199
    const-string/jumbo v0, "user"

    #@19
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1c
    move-result-object v0

    #@1d
    .line 198
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/app/KeyguardManager;->mUserManager:Landroid/os/IUserManager;

    #@23
    .line 194
    return-void
.end method

.method private declared-synchronized getTrustManager()Landroid/app/trust/ITrustManager;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 321
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 323
    const-string/jumbo v0, "trust"

    #@8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    .line 322
    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    #@12
    .line 325
    :cond_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    return-object v0

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method


# virtual methods
.method public createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    return-object v1

    #@8
    .line 86
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@a
    const-string/jumbo v1, "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

    #@d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.app.extra.TITLE"

    #@13
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@16
    .line 88
    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    #@19
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@1c
    .line 90
    const-string/jumbo v1, "com.android.settings"

    #@1f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@22
    .line 91
    return-object v0
.end method

.method public createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 106
    invoke-virtual {p0, p3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    return-object v1

    #@8
    .line 107
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@a
    const-string/jumbo v1, "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    #@d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 108
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.app.extra.TITLE"

    #@13
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@16
    .line 109
    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    #@19
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@1c
    .line 110
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    #@1f
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@22
    .line 112
    const-string/jumbo v1, "com.android.settings"

    #@25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@28
    .line 113
    return-object v0
.end method

.method public exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .locals 3
    .param p1, "callback"    # Landroid/app/KeyguardManager$OnKeyguardExitResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 355
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    #@2
    new-instance v2, Landroid/app/KeyguardManager$1;

    #@4
    invoke-direct {v2, p0, p1}, Landroid/app/KeyguardManager$1;-><init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    #@7
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 353
    :goto_0
    return-void

    #@b
    .line 362
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 2

    #@0
    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    #@2
    invoke-interface {v1}, Landroid/view/IWindowManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 264
    :catch_0
    move-exception v0

    #@8
    .line 265
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isDeviceLocked()Z
    .locals 1

    #@0
    .prologue
    .line 277
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isDeviceLocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 286
    invoke-direct {p0}, Landroid/app/KeyguardManager;->getTrustManager()Landroid/app/trust/ITrustManager;

    #@3
    move-result-object v1

    #@4
    .line 288
    .local v1, "trustManager":Landroid/app/trust/ITrustManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->isDeviceLocked(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 289
    :catch_0
    move-exception v0

    #@a
    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@b
    return v2
.end method

.method public isDeviceSecure()Z
    .locals 1

    #@0
    .prologue
    .line 303
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isDeviceSecure(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 312
    invoke-direct {p0}, Landroid/app/KeyguardManager;->getTrustManager()Landroid/app/trust/ITrustManager;

    #@3
    move-result-object v1

    #@4
    .line 314
    .local v1, "trustManager":Landroid/app/trust/ITrustManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->isDeviceSecure(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 315
    :catch_0
    move-exception v0

    #@a
    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@b
    return v2
.end method

.method public isKeyguardLocked()Z
    .locals 2

    #@0
    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    #@2
    invoke-interface {v1}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 231
    :catch_0
    move-exception v0

    #@8
    .line 232
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isKeyguardSecure()Z
    .locals 2

    #@0
    .prologue
    .line 246
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    #@2
    invoke-interface {v1}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 247
    :catch_0
    move-exception v0

    #@8
    .line 248
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 220
    new-instance v0, Landroid/app/KeyguardManager$KeyguardLock;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/app/KeyguardManager$KeyguardLock;-><init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V

    #@5
    return-object v0
.end method
