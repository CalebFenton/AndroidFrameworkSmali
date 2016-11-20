.class public Landroid/net/netlink/StructNlMsgErr;
.super Ljava/lang/Object;
.source "StructNlMsgErr.java"


# static fields
.field public static final STRUCT_SIZE:I = 0x14


# instance fields
.field public error:I

.field public msg:Landroid/net/netlink/StructNlMsgHdr;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 37
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v1

    #@7
    const/16 v2, 0x14

    #@9
    if-lt v1, v2, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgErr;
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 41
    invoke-static {p0}, Landroid/net/netlink/StructNlMsgErr;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    return-object v1

    #@8
    .line 46
    :cond_0
    new-instance v0, Landroid/net/netlink/StructNlMsgErr;

    #@a
    invoke-direct {v0}, Landroid/net/netlink/StructNlMsgErr;-><init>()V

    #@d
    .line 47
    .local v0, "struct":Landroid/net/netlink/StructNlMsgErr;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@10
    move-result v1

    #@11
    iput v1, v0, Landroid/net/netlink/StructNlMsgErr;->error:I

    #@13
    .line 48
    invoke-static {p0}, Landroid/net/netlink/StructNlMsgHdr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgHdr;

    #@16
    move-result-object v1

    #@17
    iput-object v1, v0, Landroid/net/netlink/StructNlMsgErr;->msg:Landroid/net/netlink/StructNlMsgHdr;

    #@19
    .line 49
    return-object v0
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 59
    iget v0, p0, Landroid/net/netlink/StructNlMsgErr;->error:I

    #@2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@5
    .line 60
    iget-object v0, p0, Landroid/net/netlink/StructNlMsgErr;->msg:Landroid/net/netlink/StructNlMsgHdr;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 61
    iget-object v0, p0, Landroid/net/netlink/StructNlMsgErr;->msg:Landroid/net/netlink/StructNlMsgHdr;

    #@b
    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    #@e
    .line 55
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "StructNlMsgErr{ error{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 68
    iget v1, p0, Landroid/net/netlink/StructNlMsgErr;->error:I

    #@e
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 68
    const-string/jumbo v1, "}, "

    #@15
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 69
    const-string/jumbo v1, "msg{"

    #@1c
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 69
    iget-object v0, p0, Landroid/net/netlink/StructNlMsgErr;->msg:Landroid/net/netlink/StructNlMsgHdr;

    #@22
    if-nez v0, :cond_0

    #@24
    const-string/jumbo v0, ""

    #@27
    .line 67
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 69
    const-string/jumbo v1, "} "

    #@2e
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 70
    const-string/jumbo v1, "}"

    #@35
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0

    #@3e
    .line 69
    :cond_0
    iget-object v0, p0, Landroid/net/netlink/StructNlMsgErr;->msg:Landroid/net/netlink/StructNlMsgHdr;

    #@40
    invoke-virtual {v0}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    goto :goto_0
.end method
