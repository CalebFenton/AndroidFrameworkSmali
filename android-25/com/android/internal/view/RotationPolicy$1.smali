.class final Lcom/android/internal/view/RotationPolicy$1;
.super Ljava/lang/Object;
.source "RotationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enabled:Z

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0
    .param p1, "val$enabled"    # Z
    .param p2, "val$rotation"    # I

    #@0
    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    #@2
    iput p2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$rotation:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    #@3
    move-result-object v1

    #@4
    .line 142
    .local v1, "wm":Landroid/view/IWindowManager;
    iget-boolean v2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 143
    iget v2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$rotation:I

    #@a
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    #@d
    .line 139
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :goto_0
    return-void

    #@e
    .line 145
    .restart local v1    # "wm":Landroid/view/IWindowManager;
    :cond_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    goto :goto_0

    #@12
    .line 147
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    #@13
    .line 148
    .local v0, "exc":Landroid/os/RemoteException;
    const-string/jumbo v2, "RotationPolicy"

    #@16
    const-string/jumbo v3, "Unable to save auto-rotate setting"

    #@19
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    goto :goto_0
.end method
