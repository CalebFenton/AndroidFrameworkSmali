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
.field final synthetic blacklist this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

.field final synthetic blacklist val$info:Landroid/net/NetworkInfo;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/sip/SipService$ConnectivityReceiver;Landroid/net/NetworkInfo;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/sip/SipService$ConnectivityReceiver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1145
    iput-object p1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iput-object p2, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;->val$info:Landroid/net/NetworkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1148
    iget-object v0, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;->this$1:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    iget-object v0, v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;->this$0:Lcom/android/server/sip/SipService;

    iget-object v1, p0, Lcom/android/server/sip/SipService$ConnectivityReceiver$1;->val$info:Landroid/net/NetworkInfo;

    invoke-static {v0, v1}, Lcom/android/server/sip/SipService;->-$$Nest$monConnectivityChanged(Lcom/android/server/sip/SipService;Landroid/net/NetworkInfo;)V

    .line 1149
    return-void
.end method
