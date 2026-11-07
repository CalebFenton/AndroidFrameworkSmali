.class public final Landroid/system/StructMsghdr;
.super Ljava/lang/Object;
.source "StructMsghdr.java"


# instance fields
.field public whitelist test-api msg_control:[Landroid/system/StructCmsghdr;

.field public whitelist test-api msg_flags:I

.field public final whitelist test-api msg_iov:[Ljava/nio/ByteBuffer;

.field public whitelist test-api msg_name:Ljava/net/SocketAddress;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/net/SocketAddress;[Ljava/nio/ByteBuffer;[Landroid/system/StructCmsghdr;I)V
    .registers 5
    .param p1, "msg_name"    # Ljava/net/SocketAddress;
    .param p2, "msg_iov"    # [Ljava/nio/ByteBuffer;
    .param p3, "msg_control"    # [Landroid/system/StructCmsghdr;
    .param p4, "msg_flags"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/system/StructMsghdr;->msg_name:Ljava/net/SocketAddress;

    .line 53
    iput-object p2, p0, Landroid/system/StructMsghdr;->msg_iov:[Ljava/nio/ByteBuffer;

    .line 54
    iput-object p3, p0, Landroid/system/StructMsghdr;->msg_control:[Landroid/system/StructCmsghdr;

    .line 55
    iput p4, p0, Landroid/system/StructMsghdr;->msg_flags:I

    .line 56
    return-void
.end method
