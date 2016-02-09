.class Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;
    .param p2, "val$errorCode"    # I
    .param p3, "val$description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1839
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->this$1:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    #@2
    iput p2, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$errorCode:I

    #@4
    iput-object p3, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$description:Ljava/lang/String;

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
    .line 1843
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->this$1:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    #@2
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->-get0(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;)Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    #@5
    move-result-object v1

    #@6
    iget v2, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$errorCode:I

    #@8
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$description:Ljava/lang/String;

    #@a
    invoke-interface {v1, v2, v3}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1841
    :goto_0
    return-void

    #@e
    .line 1844
    :catch_0
    move-exception v0

    #@f
    .line 1845
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->this$1:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    #@11
    const-string/jumbo v2, "onError"

    #@14
    invoke-static {v1, v2, v0}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->-wrap0(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@17
    goto :goto_0
.end method
