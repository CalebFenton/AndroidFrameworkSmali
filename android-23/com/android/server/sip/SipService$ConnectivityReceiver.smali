.class Lcom/android/server/sip/SipService$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method private constructor <init>(Lcom/android/server/sip/SipService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/sip/SipService;

    #@0
    .prologue
    .line 1128
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$ConnectivityReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/sip/SipService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$ConnectivityReceiver;-><init>(Lcom/android/server/sip/SipService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 1131
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    .line 1132
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@6
    .line 1134
    const-string/jumbo v2, "networkInfo"

    #@9
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    .line 1133
    check-cast v1, Landroid/net/NetworkInfo;

    #@f
    .line 1137
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    #@11
    invoke-static {v2}, Lcom/android/server/sip/SipService;->-get1(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    #@14
    move-result-object v2

    #@15
    new-instance v3, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;

    #@17
    invoke-direct {v3, p0, v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;-><init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Landroid/net/NetworkInfo;)V

    #@1a
    invoke-virtual {v2, v3}, Lcom/android/server/sip/SipService$MyExecutor;->execute(Ljava/lang/Runnable;)V

    #@1d
    .line 1130
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method
