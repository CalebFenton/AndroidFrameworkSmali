.class Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$MySocketKeepaliveCb;
.super Landroid/net/SocketKeepalive$Callback;
.source "HardwareKeepaliveImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MySocketKeepaliveCb"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$MySocketKeepaliveCb;->this$0:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    invoke-direct {p0}, Landroid/net/SocketKeepalive$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(I)V
    .registers 5
    .param p1, "error"    # I

    .line 133
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware offload failed on error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HardwareKeepaliveImpl"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    packed-switch p1, :pswitch_data_3e

    .line 152
    :pswitch_1f
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$MySocketKeepaliveCb;->this$0:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->-$$Nest$fgetmHardwareKeepaliveCb(Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;)Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;->onNetworkError()V

    .line 154
    return-void

    .line 141
    :pswitch_29
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$MySocketKeepaliveCb;->this$0:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->-$$Nest$fgetmHardwareKeepaliveCb(Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;)Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;->onNetworkError()V

    .line 142
    return-void

    .line 149
    :pswitch_33
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$MySocketKeepaliveCb;->this$0:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->-$$Nest$fgetmHardwareKeepaliveCb(Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;)Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;->onHardwareOffloadError()V

    .line 150
    return-void

    nop

    :pswitch_data_3e
    .packed-switch -0x20
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_33
        :pswitch_29
    .end packed-switch
.end method

.method public whitelist onStopped()V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$MySocketKeepaliveCb;->this$0:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;->-$$Nest$fgetmHardwareKeepaliveCb(Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;)Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$MySocketKeepaliveCb;->this$0:Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;

    invoke-interface {v0, v1}, Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl$HardwareKeepaliveCallback;->onStopped(Lcom/android/internal/net/ipsec/ike/keepalive/HardwareKeepaliveImpl;)V

    .line 159
    return-void
.end method
