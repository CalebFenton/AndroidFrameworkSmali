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
.field final synthetic blacklist this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

.field final synthetic blacklist val$description:Ljava/lang/String;

.field final synthetic blacklist val$errorCode:I


# direct methods
.method constructor blacklist <init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;
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

    .line 1839
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    iput p2, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$errorCode:I

    iput-object p3, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1843
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->-$$Nest$fgetmCallback(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;)Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    move-result-object v0

    iget v1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$errorCode:I

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->val$description:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onError(ILjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 1846
    goto :goto_16

    .line 1844
    :catchall_e
    move-exception v0

    .line 1845
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$2;->this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    const-string v2, "onError"

    invoke-static {v1, v2, v0}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->-$$Nest$mloge(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1847
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_16
    return-void
.end method
