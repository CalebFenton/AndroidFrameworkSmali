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

.field public static final EXTRA_DESCRIPTION:Ljava/lang/String; = "android.app.extra.DESCRIPTION"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.app.extra.TITLE"


# instance fields
.field private mTrustManager:Landroid/app/trust/ITrustManager;

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
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 162
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    #@9
    .line 164
    const-string/jumbo v0, "trust"

    #@c
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v0

    #@10
    .line 163
    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    #@16
    .line 161
    return-void
.end method


# virtual methods
.method public createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    return-object v1

    #@8
    .line 75
    :cond_0
    new-instance v0, Landroid/content/Intent;

    #@a
    const-string/jumbo v1, "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

    #@d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@10
    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.app.extra.TITLE"

    #@13
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@16
    .line 77
    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    #@19
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@1c
    .line 79
    const-string/jumbo v1, "com.android.settings"

    #@1f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@22
    .line 80
    return-object v0
.end method

.method public exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .locals 3
    .param p1, "callback"    # Landroid/app/KeyguardManager$OnKeyguardExitResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 310
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
    .line 308
    :goto_0
    return-void

    #@b
    .line 317
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
    .line 228
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
    .line 229
    :catch_0
    move-exception v0

    #@8
    .line 230
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isDeviceLocked()Z
    .locals 1

    #@0
    .prologue
    .line 242
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
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->isDeviceLocked(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 253
    :catch_0
    move-exception v0

    #@8
    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isDeviceSecure()Z
    .locals 1

    #@0
    .prologue
    .line 267
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
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    #@2
    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->isDeviceSecure(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 278
    :catch_0
    move-exception v0

    #@8
    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isKeyguardLocked()Z
    .locals 2

    #@0
    .prologue
    .line 195
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
    .line 196
    :catch_0
    move-exception v0

    #@8
    .line 197
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public isKeyguardSecure()Z
    .locals 2

    #@0
    .prologue
    .line 211
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
    .line 212
    :catch_0
    move-exception v0

    #@8
    .line 213
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
    .line 185
    new-instance v0, Landroid/app/KeyguardManager$KeyguardLock;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/app/KeyguardManager$KeyguardLock;-><init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V

    #@5
    return-object v0
.end method
