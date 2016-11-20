.class Lcom/android/server/statusbar/StatusBarManagerService$5;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$dockedBounds:Landroid/graphics/Rect;

.field final synthetic val$dockedStackVis:I

.field final synthetic val$fullscreenBounds:Landroid/graphics/Rect;

.field final synthetic val$fullscreenStackVis:I

.field final synthetic val$mask:I

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "val$vis"    # I
    .param p3, "val$fullscreenStackVis"    # I
    .param p4, "val$dockedStackVis"    # I
    .param p5, "val$mask"    # I
    .param p6, "val$fullscreenBounds"    # Landroid/graphics/Rect;
    .param p7, "val$dockedBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$vis:I

    #@4
    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$fullscreenStackVis:I

    #@6
    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$dockedStackVis:I

    #@8
    iput p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$mask:I

    #@a
    iput-object p6, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$fullscreenBounds:Landroid/graphics/Rect;

    #@c
    iput-object p7, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$dockedBounds:Landroid/graphics/Rect;

    #@e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    #@a
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    #@d
    move-result-object v0

    #@e
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$vis:I

    #@10
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$fullscreenStackVis:I

    #@12
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$dockedStackVis:I

    #@14
    .line 653
    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$mask:I

    #@16
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$fullscreenBounds:Landroid/graphics/Rect;

    #@18
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$dockedBounds:Landroid/graphics/Rect;

    #@1a
    .line 652
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBar;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 649
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 654
    :catch_0
    move-exception v7

    #@1f
    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
