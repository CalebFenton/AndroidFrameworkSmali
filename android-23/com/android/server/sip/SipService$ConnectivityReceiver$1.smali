.class Lcom/android/server/sip/SipService$ConnectivityReceiver$1;
.super Ljava/lang/Object;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipService$ConnectivityReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

.field final synthetic val$info:Landroid/net/NetworkInfo;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/sip/SipService$ConnectivityReceiver;
    .param p2, "val$info"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    .line 1137
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    #@2
    iput-object p2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;->val$info:Landroid/net/NetworkInfo;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    #@2
    iget-object v0, v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #@4
    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;->val$info:Landroid/net/NetworkInfo;

    #@6
    invoke-static {v0, v1}, Lcom/android/server/sip/SipService;->-wrap7(Lcom/android/server/sip/SipService;Landroid/net/NetworkInfo;)V

    #@9
    .line 1139
    return-void
.end method
