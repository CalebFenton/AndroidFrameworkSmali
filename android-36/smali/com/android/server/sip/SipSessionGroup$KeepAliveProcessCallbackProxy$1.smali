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
.field final synthetic blacklist this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

.field final synthetic blacklist val$portChanged:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;
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

    .line 1824
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    iput-boolean p2, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->val$portChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1828
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->-$$Nest$fgetmCallback(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;)Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->val$portChanged:Z

    invoke-interface {v0, v1}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;->onResponse(Z)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 1831
    goto :goto_14

    .line 1829
    :catchall_c
    move-exception v0

    .line 1830
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy$1;->this$0:Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;

    const-string v2, "onResponse"

    invoke-static {v1, v2, v0}, Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;->-$$Nest$mloge(Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1832
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_14
    return-void
.end method
