.class Landroid/app/ApplicationPackageManager$DexModuleRegisterCallbackDelegate;
.super Landroid/content/pm/IDexModuleRegisterCallback$Stub;
.source "ApplicationPackageManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DexModuleRegisterCallbackDelegate"
.end annotation


# static fields
.field private static final greylist-max-o MSG_DEX_MODULE_REGISTERED:I = 0x1


# instance fields
.field private final greylist-max-o callback:Landroid/content/pm/PackageManager$DexModuleRegisterCallback;

.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/pm/PackageManager$DexModuleRegisterCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/content/pm/PackageManager$DexModuleRegisterCallback;

    .line 3710
    invoke-direct {p0}, Landroid/content/pm/IDexModuleRegisterCallback$Stub;-><init>()V

    .line 3711
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$DexModuleRegisterCallbackDelegate;->callback:Landroid/content/pm/PackageManager$DexModuleRegisterCallback;

    .line 3712
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager$DexModuleRegisterCallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 3713
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 3724
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 3725
    const/4 v0, 0x0

    return v0

    .line 3727
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;

    .line 3728
    .local v0, "result":Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;
    iget-object v2, p0, Landroid/app/ApplicationPackageManager$DexModuleRegisterCallbackDelegate;->callback:Landroid/content/pm/PackageManager$DexModuleRegisterCallback;

    iget-object v3, v0, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;->dexModulePath:Ljava/lang/String;

    iget-boolean v4, v0, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;->success:Z

    iget-object v5, v0, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;->message:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager$DexModuleRegisterCallback;->onDexModuleRegistered(Ljava/lang/String;ZLjava/lang/String;)V

    .line 3729
    return v1
.end method

.method public greylist-max-o onDexModuleRegistered(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7
    .param p1, "dexModulePath"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3718
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$DexModuleRegisterCallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/ApplicationPackageManager-IA;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3719
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3720
    return-void
.end method
