.class Lcom/android/server/sip/SipSessionListenerProxy$13;
.super Ljava/lang/Object;
.source "SipSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/sip/SipSessionListenerProxy;

.field final synthetic blacklist val$session:Landroid/net/sip/ISipSession;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/sip/SipSessionListenerProxy;
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

    .line 236
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy$13;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    iput-object p2, p0, Lcom/android/server/sip/SipSessionListenerProxy$13;->val$session:Landroid/net/sip/ISipSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy$13;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionListenerProxy;->-$$Nest$fgetmListener(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$13;->val$session:Landroid/net/sip/ISipSession;

    invoke-interface {v0, v1}, Landroid/net/sip/ISipSessionListener;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 243
    goto :goto_14

    .line 241
    :catchall_c
    move-exception v0

    .line 242
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$13;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    const-string v2, "onRegistrationTimeout()"

    invoke-static {v1, v0, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->-$$Nest$mhandle(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 244
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_14
    return-void
.end method
