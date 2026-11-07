.class Lcom/android/internal/view/RotationPolicy$1;
.super Ljava/lang/Object;
.source "RotationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$caller:Ljava/lang/String;

.field final synthetic blacklist val$enabled:Z

.field final synthetic blacklist val$rotation:I


# direct methods
.method constructor blacklist <init>(ZILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-boolean p1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    iput p2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$rotation:I

    iput-object p3, p0, Lcom/android/internal/view/RotationPolicy$1;->val$caller:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 156
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 157
    .local v0, "wm":Landroid/view/IWindowManager;
    iget-boolean v1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    if-eqz v1, :cond_10

    .line 158
    iget v1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$rotation:I

    iget-object v2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$caller:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->freezeRotation(ILjava/lang/String;)V

    goto :goto_15

    .line 160
    :cond_10
    iget-object v1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$caller:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->thawRotation(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 164
    .end local v0    # "wm":Landroid/view/IWindowManager;
    :goto_15
    goto :goto_1e

    .line 162
    :catch_16
    move-exception v0

    .line 163
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v1, "RotationPolicy"

    const-string v2, "Unable to save auto-rotate setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v0    # "exc":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method
