.class Lcom/android/server/sip/SipSessionListenerProxy$4;
.super Ljava/lang/Object;
.source "SipSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionListenerProxy;->onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipSessionListenerProxy;

.field final synthetic val$session:Landroid/net/sip/ISipSession;

.field final synthetic val$sessionDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/sip/SipSessionListenerProxy;
    .param p2, "val$session"    # Landroid/net/sip/ISipSession;
    .param p3, "val$sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy$4;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    #@2
    iput-object p2, p0, Lcom/android/server/sip/SipSessionListenerProxy$4;->val$session:Landroid/net/sip/ISipSession;

    #@4
    iput-object p3, p0, Lcom/android/server/sip/SipSessionListenerProxy$4;->val$sessionDescription:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$4;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    #@2
    invoke-static {v1}, Lcom/android/server/sip/SipSessionListenerProxy;->-get0(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/server/sip/SipSessionListenerProxy$4;->val$session:Landroid/net/sip/ISipSession;

    #@8
    iget-object v3, p0, Lcom/android/server/sip/SipSessionListenerProxy$4;->val$sessionDescription:Ljava/lang/String;

    #@a
    invoke-interface {v1, v2, v3}, Landroid/net/sip/ISipSessionListener;->onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 98
    :goto_0
    return-void

    #@e
    .line 101
    :catch_0
    move-exception v0

    #@f
    .line 102
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$4;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    #@11
    const-string/jumbo v2, "onCallEstablished()"

    #@14
    invoke-static {v1, v0, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->-wrap0(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    #@17
    goto :goto_0
.end method
