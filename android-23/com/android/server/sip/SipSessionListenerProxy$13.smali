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
.field final synthetic this$0:Lcom/android/server/sip/SipSessionListenerProxy;

.field final synthetic val$session:Landroid/net/sip/ISipSession;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/sip/SipSessionListenerProxy;
    .param p2, "val$session"    # Landroid/net/sip/ISipSession;

    #@0
    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy$13;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    #@2
    iput-object p2, p0, Lcom/android/server/sip/SipSessionListenerProxy$13;->val$session:Landroid/net/sip/ISipSession;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$13;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    #@2
    invoke-static {v1}, Lcom/android/server/sip/SipSessionListenerProxy;->-get0(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/server/sip/SipSessionListenerProxy$13;->val$session:Landroid/net/sip/ISipSession;

    #@8
    invoke-interface {v1, v2}, Landroid/net/sip/ISipSessionListener;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 238
    :goto_0
    return-void

    #@c
    .line 241
    :catch_0
    move-exception v0

    #@d
    .line 242
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$13;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    #@f
    const-string/jumbo v2, "onRegistrationTimeout()"

    #@12
    invoke-static {v1, v0, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->-wrap0(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    #@15
    goto :goto_0
.end method
