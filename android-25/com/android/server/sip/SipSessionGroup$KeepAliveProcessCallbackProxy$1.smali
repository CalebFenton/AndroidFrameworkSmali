.class Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->onResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

.field final synthetic val$portChanged:Z


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;
    .param p2, "val$portChanged"    # Z

    #@0
    .prologue
    .line 1824
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->this$1:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    #@2
    iput-boolean p2, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->val$portChanged:Z

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
    .line 1828
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->this$1:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    #@2
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->-get0(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;)Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    #@5
    move-result-object v1

    #@6
    iget-boolean v2, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->val$portChanged:Z

    #@8
    invoke-interface {v1, v2}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onResponse(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1826
    :goto_0
    return-void

    #@c
    .line 1829
    :catch_0
    move-exception v0

    #@d
    .line 1830
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->this$1:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    #@f
    const-string/jumbo v2, "onResponse"

    #@12
    invoke-static {v1, v2, v0}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->-wrap0(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@15
    goto :goto_0
.end method
