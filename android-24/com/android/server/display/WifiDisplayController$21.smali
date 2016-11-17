.class Lcom/android/server/display/WifiDisplayController$21;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$flags:I

.field final synthetic val$height:I

.field final synthetic val$oldDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$oldSurface:Landroid/view/Surface;

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;
    .param p2, "val$oldSurface"    # Landroid/view/Surface;
    .param p3, "val$surface"    # Landroid/view/Surface;
    .param p4, "val$oldDisplay"    # Landroid/hardware/display/WifiDisplay;
    .param p5, "val$display"    # Landroid/hardware/display/WifiDisplay;
    .param p6, "val$width"    # I
    .param p7, "val$height"    # I
    .param p8, "val$flags"    # I

    #@0
    .prologue
    .line 961
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$oldSurface:Landroid/view/Surface;

    #@4
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController$21;->val$surface:Landroid/view/Surface;

    #@6
    iput-object p4, p0, Lcom/android/server/display/WifiDisplayController$21;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    #@8
    iput-object p5, p0, Lcom/android/server/display/WifiDisplayController$21;->val$display:Landroid/hardware/display/WifiDisplay;

    #@a
    iput p6, p0, Lcom/android/server/display/WifiDisplayController$21;->val$width:I

    #@c
    iput p7, p0, Lcom/android/server/display/WifiDisplayController$21;->val$height:I

    #@e
    iput p8, p0, Lcom/android/server/display/WifiDisplayController$21;->val$flags:I

    #@10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->val$oldSurface:Landroid/view/Surface;

    #@2
    if-eqz v0, :cond_3

    #@4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->val$surface:Landroid/view/Surface;

    #@6
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->val$oldSurface:Landroid/view/Surface;

    #@8
    if-eq v0, v1, :cond_3

    #@a
    .line 965
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@c
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get11(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnected()V

    #@13
    .line 970
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->val$display:Landroid/hardware/display/WifiDisplay;

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 971
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->val$display:Landroid/hardware/display/WifiDisplay;

    #@19
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    #@1b
    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_4

    #@21
    .line 972
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@23
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get11(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    #@26
    move-result-object v0

    #@27
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->val$display:Landroid/hardware/display/WifiDisplay;

    #@29
    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V

    #@2c
    .line 978
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->val$surface:Landroid/view/Surface;

    #@2e
    if-eqz v0, :cond_2

    #@30
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->val$surface:Landroid/view/Surface;

    #@32
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->val$oldSurface:Landroid/view/Surface;

    #@34
    if-eq v0, v1, :cond_2

    #@36
    .line 979
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@38
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get11(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    #@3b
    move-result-object v0

    #@3c
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->val$display:Landroid/hardware/display/WifiDisplay;

    #@3e
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$21;->val$surface:Landroid/view/Surface;

    #@40
    iget v3, p0, Lcom/android/server/display/WifiDisplayController$21;->val$width:I

    #@42
    iget v4, p0, Lcom/android/server/display/WifiDisplayController$21;->val$height:I

    #@44
    iget v5, p0, Lcom/android/server/display/WifiDisplayController$21;->val$flags:I

    #@46
    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    #@49
    .line 963
    :cond_2
    return-void

    #@4a
    .line 966
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    #@4c
    if-eqz v0, :cond_0

    #@4e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    #@50
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->val$display:Landroid/hardware/display/WifiDisplay;

    #@52
    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    #@55
    move-result v0

    #@56
    if-nez v0, :cond_0

    #@58
    .line 967
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@5a
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get11(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    #@5d
    move-result-object v0

    #@5e
    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnectionFailed()V

    #@61
    goto :goto_0

    #@62
    .line 973
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->val$display:Landroid/hardware/display/WifiDisplay;

    #@64
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    #@66
    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    #@69
    move-result v0

    #@6a
    if-nez v0, :cond_1

    #@6c
    .line 976
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@6e
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get11(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    #@71
    move-result-object v0

    #@72
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$21;->val$display:Landroid/hardware/display/WifiDisplay;

    #@74
    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V

    #@77
    goto :goto_1
.end method
