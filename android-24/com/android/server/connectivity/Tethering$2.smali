.class Lcom/android/server/connectivity/Tethering$2;
.super Landroid/os/ResultReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;ILandroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$type"    # I
    .param p4, "val$receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    iput p3, p0, Lcom/android/server/connectivity/Tethering$2;->val$type:I

    #@4
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering$2;->val$receiver:Landroid/os/ResultReceiver;

    #@6
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    #@9
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 513
    if-nez p1, :cond_0

    #@2
    .line 514
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    #@4
    iget v1, p0, Lcom/android/server/connectivity/Tethering$2;->val$type:I

    #@6
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$2;->val$receiver:Landroid/os/ResultReceiver;

    #@8
    const/4 v3, 0x1

    #@9
    invoke-static {v0, v1, v3, v2}, Lcom/android/server/connectivity/Tethering;->-wrap4(Lcom/android/server/connectivity/Tethering;IZLandroid/os/ResultReceiver;)V

    #@c
    .line 511
    :goto_0
    return-void

    #@d
    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    #@f
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$2;->val$receiver:Landroid/os/ResultReceiver;

    #@11
    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/Tethering;->-wrap7(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V

    #@14
    goto :goto_0
.end method
