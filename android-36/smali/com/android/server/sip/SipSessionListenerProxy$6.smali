.class Lcom/android/server/sip/SipSessionListenerProxy$6;
.super Ljava/lang/Object;
.source "SipSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionListenerProxy;->onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/sip/SipSessionListenerProxy;

.field final synthetic blacklist val$newSession:Landroid/net/sip/ISipSession;

.field final synthetic blacklist val$sessionDescription:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/sip/SipSessionListenerProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy$6;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    iput-object p2, p0, Lcom/android/server/sip/SipSessionListenerProxy$6;->val$newSession:Landroid/net/sip/ISipSession;

    iput-object p3, p0, Lcom/android/server/sip/SipSessionListenerProxy$6;->val$sessionDescription:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy$6;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionListenerProxy;->-$$Nest$fgetmListener(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$6;->val$newSession:Landroid/net/sip/ISipSession;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionListenerProxy$6;->val$sessionDescription:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/net/sip/ISipSessionListener;->onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 134
    goto :goto_16

    .line 132
    :catchall_e
    move-exception v0

    .line 133
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$6;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    const-string v2, "onCallTransferring()"

    invoke-static {v1, v0, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->-$$Nest$mhandle(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 135
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_16
    return-void
.end method
