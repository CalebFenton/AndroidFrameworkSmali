.class public final Landroid/net/QosCallbackException;
.super Ljava/lang/Exception;
.source "QosCallbackException.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/QosCallbackException$ExceptionType;
    }
.end annotation


# static fields
.field public static final blacklist EX_TYPE_FILTER_NETWORK_RELEASED:I = 0x1

.field public static final blacklist EX_TYPE_FILTER_NONE:I = 0x0

.field public static final blacklist EX_TYPE_FILTER_NOT_SUPPORTED:I = 0x3

.field public static final blacklist EX_TYPE_FILTER_SOCKET_LOCAL_ADDRESS_CHANGED:I = 0x4

.field public static final blacklist EX_TYPE_FILTER_SOCKET_NOT_BOUND:I = 0x2

.field public static final blacklist EX_TYPE_FILTER_SOCKET_NOT_CONNECTED:I = 0x5

.field public static final blacklist EX_TYPE_FILTER_SOCKET_REMOTE_ADDRESS_CHANGED:I = 0x6

.field private static final blacklist TAG:Ljava/lang/String; = "QosCallbackException"


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 117
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 122
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public static blacklist createException(I)Landroid/net/QosCallbackException;
    .registers 5
    .param p0, "type"    # I

    .line 92
    packed-switch p0, :pswitch_data_84

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create: No case setup for exception type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QosCallbackException"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Landroid/net/QosCallbackException;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown exception code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/net/QosCallbackException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 106
    :pswitch_3f
    new-instance v0, Landroid/net/QosCallbackException;

    new-instance v1, Landroid/net/SocketRemoteAddressChangedException;

    invoke-direct {v1}, Landroid/net/SocketRemoteAddressChangedException;-><init>()V

    invoke-direct {v0, v1}, Landroid/net/QosCallbackException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 98
    :pswitch_4a
    new-instance v0, Landroid/net/QosCallbackException;

    new-instance v1, Landroid/net/SocketNotConnectedException;

    invoke-direct {v1}, Landroid/net/SocketNotConnectedException;-><init>()V

    invoke-direct {v0, v1}, Landroid/net/QosCallbackException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 103
    :pswitch_55
    new-instance v0, Landroid/net/QosCallbackException;

    new-instance v1, Landroid/net/SocketLocalAddressChangedException;

    invoke-direct {v1}, Landroid/net/SocketLocalAddressChangedException;-><init>()V

    invoke-direct {v0, v1}, Landroid/net/QosCallbackException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 100
    :pswitch_60
    new-instance v0, Landroid/net/QosCallbackException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "This device does not support the specified filter"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/net/QosCallbackException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 96
    :pswitch_6d
    new-instance v0, Landroid/net/QosCallbackException;

    new-instance v1, Landroid/net/SocketNotBoundException;

    invoke-direct {v1}, Landroid/net/SocketNotBoundException;-><init>()V

    invoke-direct {v0, v1}, Landroid/net/QosCallbackException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 94
    :pswitch_78
    new-instance v0, Landroid/net/QosCallbackException;

    new-instance v1, Landroid/net/NetworkReleasedException;

    invoke-direct {v1}, Landroid/net/NetworkReleasedException;-><init>()V

    invoke-direct {v0, v1}, Landroid/net/QosCallbackException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_78
        :pswitch_6d
        :pswitch_60
        :pswitch_55
        :pswitch_4a
        :pswitch_3f
    .end packed-switch
.end method
