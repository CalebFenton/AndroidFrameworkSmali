.class Lcom/android/server/display/WifiDisplayController$6;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    #@0
    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-set10(Lcom/android/server/display/WifiDisplayController;Z)Z

    #@6
    .line 306
    return-void
.end method

.method public onSuccess()V
    .locals 2

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 298
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-set10(Lcom/android/server/display/WifiDisplayController;Z)Z

    #@e
    .line 299
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@10
    const/4 v1, 0x1

    #@11
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-set9(Lcom/android/server/display/WifiDisplayController;Z)Z

    #@14
    .line 300
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@16
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap11(Lcom/android/server/display/WifiDisplayController;)V

    #@19
    .line 301
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@1b
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap16(Lcom/android/server/display/WifiDisplayController;)V

    #@1e
    .line 293
    :cond_0
    return-void
.end method
