.class Lcom/android/server/sip/SipSessionListenerProxy$11;
.super Ljava/lang/Object;
.source "SipSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/sip/SipSessionListenerProxy;

.field final synthetic blacklist val$duration:I

.field final synthetic blacklist val$session:Landroid/net/sip/ISipSession;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;I)V
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

    .line 205
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    iput-object p2, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->val$session:Landroid/net/sip/ISipSession;

    iput p3, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionListenerProxy;->-$$Nest$fgetmListener(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->val$session:Landroid/net/sip/ISipSession;

    iget v2, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->val$duration:I

    invoke-interface {v0, v1, v2}, Landroid/net/sip/ISipSessionListener;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 212
    goto :goto_16

    .line 210
    :catchall_e
    move-exception v0

    .line 211
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$11;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    const-string v2, "onRegistrationDone()"

    invoke-static {v1, v0, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->-$$Nest$mhandle(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 213
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_16
    return-void
.end method
