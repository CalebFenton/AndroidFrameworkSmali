.class public final Landroid/system/StructCmsghdr;
.super Ljava/lang/Object;
.source "StructCmsghdr.java"


# instance fields
.field public final whitelist test-api cmsg_data:[B

.field public final whitelist test-api cmsg_level:I

.field public final whitelist test-api cmsg_type:I


# direct methods
.method public constructor whitelist test-api <init>(IIS)V
    .registers 6
    .param p1, "cmsg_level"    # I
    .param p2, "cmsg_type"    # I
    .param p3, "value"    # S

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 41
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 44
    iput p1, p0, Landroid/system/StructCmsghdr;->cmsg_level:I

    .line 45
    iput p2, p0, Landroid/system/StructCmsghdr;->cmsg_type:I

    .line 46
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Landroid/system/StructCmsghdr;->cmsg_data:[B

    .line 47
    return-void
.end method

.method public constructor whitelist test-api <init>(II[B)V
    .registers 4
    .param p1, "cmsg_level"    # I
    .param p2, "cmsg_type"    # I
    .param p3, "value"    # [B

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Landroid/system/StructCmsghdr;->cmsg_level:I

    .line 51
    iput p2, p0, Landroid/system/StructCmsghdr;->cmsg_type:I

    .line 52
    iput-object p3, p0, Landroid/system/StructCmsghdr;->cmsg_data:[B

    .line 53
    return-void
.end method
