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
.field final synthetic this$0:Lcom/android/server/sip/SipSessionListenerProxy;

.field final synthetic val$caller:Landroid/net/sip/SipProfile;

.field final synthetic val$session:Landroid/net/sip/ISipSession;

.field final synthetic val$sessionDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionListenerProxy;Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/sip/SipSessionListenerProxy;
    .param p2, "val$session"    # Landroid/net/sip/ISipSession;
    .param p3, "val$caller"    # Landroid/net/sip/SipProfile;
    .param p4, "val$sessionDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    #@2
    iput-object p2, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$session:Landroid/net/sip/ISipSession;

    #@4
    iput-object p3, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$caller:Landroid/net/sip/SipProfile;

    #@6
    iput-object p4, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$sessionDescription:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    #@2
    invoke-static {v1}, Lcom/android/server/sip/SipSessionListenerProxy;->-get0(Lcom/android/server/sip/SipSessionListenerProxy;)Landroid/net/sip/ISipSessionListener;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$session:Landroid/net/sip/ISipSession;

    #@8
    iget-object v3, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$caller:Landroid/net/sip/SipProfile;

    #@a
    iget-object v4, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->val$sessionDescription:Ljava/lang/String;

    #@c
    invoke-interface {v1, v2, v3, v4}, Landroid/net/sip/ISipSessionListener;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 67
    :goto_0
    return-void

    #@10
    .line 70
    :catch_0
    move-exception v0

    #@11
    .line 71
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionListenerProxy$2;->this$0:Lcom/android/server/sip/SipSessionListenerProxy;

    #@13
    const-string/jumbo v2, "onRinging()"

    #@16
    invoke-static {v1, v0, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->-wrap0(Lcom/android/server/sip/SipSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    #@19
    goto :goto_0
.end method
