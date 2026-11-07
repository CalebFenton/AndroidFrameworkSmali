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
.field final synthetic blacklist this$0:Lcom/android/server/sip/SipService;


# direct methods
.method private constructor blacklist <init>(Lcom/android/server/sip/SipService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1136
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$ConnectivityReceiver;-><init>(Lcom/android/server/sip/SipService;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1139
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1140
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1d

    .line 1141
    nop

    .line 1142
    const-string v1, "networkInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1145
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v2}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmExecutor(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    move-result-object v2

    new-instance v3, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;-><init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v3}, Lcom/android/server/sip/SipService$MyExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1152
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1d
    return-void
.end method
