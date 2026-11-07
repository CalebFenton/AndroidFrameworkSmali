.class Lcom/android/server/sip/SipSessionListenerProxy$2;
.super Ljava/lang/Object;
.source "SipSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionListenerProxy;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/sip/SipSessionListenerProxy;

.field final synthetic blacklist val$caller:Landroid/net/sip/SipProfile;

.field final synthetic blacklist val$session:Landroid/net/sip/ISipSession;

.field final synthetic blacklist val$sessionDescription:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/sip/SipSessionListenerProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 65
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    iput-object p2, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$session:Landroid/net/sip/ISipSession;

    iput-object p3, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$caller:Landroid/net/sip/SipProfile;

    iput-object p4, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$sessionDescription:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionListenerProxy;->-$$Nest$fgetmListener(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$session:Landroid/net/sip/ISipSession;

    iget-object v2, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$caller:Landroid/net/sip/SipProfile;

    iget-object v3, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$sessionDescription:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/net/sip/ISipSessionListener;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 72
    goto :goto_18

    .line 70
    :catchall_10
    move-exception v0

    .line 71
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    const-string v2, "onRinging()"

    invoke-static {v1, v0, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->-$$Nest$mhandle(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 73
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_18
    return-void
.end method
