.class Lcom/android/server/wm/WindowManagerService$8;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$receiver:Lcom/android/internal/app/IAssistScreenshotReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/internal/app/IAssistScreenshotReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "val$receiver"    # Lcom/android/internal/app/IAssistScreenshotReceiver;

    #@0
    .prologue
    .line 6122
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$8;->val$receiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 6125
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v2, 0x0

    #@5
    .line 6126
    const/4 v5, 0x1

    #@6
    move v4, v3

    #@7
    .line 6125
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->screenshotApplicationsInner(Landroid/os/IBinder;IIIZ)Landroid/graphics/Bitmap;

    #@a
    move-result-object v6

    #@b
    .line 6128
    .local v6, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->val$receiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

    #@d
    invoke-interface {v0, v6}, Lcom/android/internal/app/IAssistScreenshotReceiver;->send(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 6124
    :goto_0
    return-void

    #@11
    .line 6129
    :catch_0
    move-exception v7

    #@12
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
