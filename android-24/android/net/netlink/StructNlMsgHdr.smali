.class public Landroid/net/netlink/StructNlMsgHdr;
.super Ljava/lang/Object;
.source "StructNlMsgHdr.java"


# static fields
.field public static final NLM_F_ACK:S = 0x4s

.field public static final NLM_F_APPEND:S = 0x800s

.field public static final NLM_F_CREATE:S = 0x400s

.field public static final NLM_F_DUMP:S = 0x300s

.field public static final NLM_F_ECHO:S = 0x8s

.field public static final NLM_F_EXCL:S = 0x200s

.field public static final NLM_F_MATCH:S = 0x200s

.field public static final NLM_F_MULTI:S = 0x2s

.field public static final NLM_F_REPLACE:S = 0x100s

.field public static final NLM_F_REQUEST:S = 0x1s

.field public static final NLM_F_ROOT:S = 0x100s

.field public static final STRUCT_SIZE:I = 0x10


# instance fields
.field public nlmsg_flags:S

.field public nlmsg_len:I

.field public nlmsg_pid:I

.field public nlmsg_seq:I

.field public nlmsg_type:S


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 108
    iput v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    #@6
    .line 109
    iput-short v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    #@8
    .line 110
    iput-short v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    #@a
    .line 111
    iput v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    #@c
    .line 112
    iput v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    #@e
    .line 107
    return-void
.end method

.method public static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 78
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v1

    #@7
    const/16 v2, 0x10

    #@9
    if-lt v1, v2, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgHdr;
    .locals 4
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 82
    invoke-static {p0}, Landroid/net/netlink/StructNlMsgHdr;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    return-object v3

    #@8
    .line 87
    :cond_0
    new-instance v0, Landroid/net/netlink/StructNlMsgHdr;

    #@a
    invoke-direct {v0}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    #@d
    .line 88
    .local v0, "struct":Landroid/net/netlink/StructNlMsgHdr;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@10
    move-result v1

    #@11
    iput v1, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    #@13
    .line 89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@16
    move-result v1

    #@17
    iput-short v1, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    #@19
    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@1c
    move-result v1

    #@1d
    iput-short v1, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    #@1f
    .line 91
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@22
    move-result v1

    #@23
    iput v1, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    #@25
    .line 92
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@28
    move-result v1

    #@29
    iput v1, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    #@2b
    .line 94
    iget v1, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    #@2d
    const/16 v2, 0x10

    #@2f
    if-ge v1, v2, :cond_1

    #@31
    .line 96
    return-object v3

    #@32
    .line 98
    :cond_1
    return-object v0
.end method

.method public static stringForNlMsgFlags(S)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # S

    #@0
    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 51
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 52
    const-string/jumbo v1, "NLM_F_REQUEST"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 54
    :cond_0
    and-int/lit8 v1, p0, 0x2

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@16
    move-result v1

    #@17
    if-lez v1, :cond_1

    #@19
    const-string/jumbo v1, "|"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 56
    :cond_1
    const-string/jumbo v1, "NLM_F_MULTI"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 58
    :cond_2
    and-int/lit8 v1, p0, 0x4

    #@27
    if-eqz v1, :cond_4

    #@29
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@2c
    move-result v1

    #@2d
    if-lez v1, :cond_3

    #@2f
    const-string/jumbo v1, "|"

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 60
    :cond_3
    const-string/jumbo v1, "NLM_F_ACK"

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 62
    :cond_4
    and-int/lit8 v1, p0, 0x8

    #@3d
    if-eqz v1, :cond_6

    #@3f
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@42
    move-result v1

    #@43
    if-lez v1, :cond_5

    #@45
    const-string/jumbo v1, "|"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 64
    :cond_5
    const-string/jumbo v1, "NLM_F_ECHO"

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 66
    :cond_6
    and-int/lit16 v1, p0, 0x100

    #@53
    if-eqz v1, :cond_8

    #@55
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@58
    move-result v1

    #@59
    if-lez v1, :cond_7

    #@5b
    const-string/jumbo v1, "|"

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 68
    :cond_7
    const-string/jumbo v1, "NLM_F_ROOT"

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 70
    :cond_8
    and-int/lit16 v1, p0, 0x200

    #@69
    if-eqz v1, :cond_a

    #@6b
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@6e
    move-result v1

    #@6f
    if-lez v1, :cond_9

    #@71
    const-string/jumbo v1, "|"

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 72
    :cond_9
    const-string/jumbo v1, "NLM_F_MATCH"

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 74
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    return-object v1
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 119
    iget v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    #@2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@5
    .line 120
    iget-short v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    #@7
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@a
    .line 121
    iget-short v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    #@c
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@f
    .line 122
    iget v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    #@11
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@14
    .line 123
    iget v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    #@16
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@19
    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, ""

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-short v3, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    .line 129
    const-string/jumbo v3, "("

    #@15
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 129
    iget-short v3, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    #@1b
    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->stringForNlMsgType(S)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 129
    const-string/jumbo v3, ")"

    #@26
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 130
    .local v1, "typeStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, ""

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    iget-short v3, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    .line 131
    const-string/jumbo v3, "("

    #@43
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    .line 131
    iget-short v3, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    #@49
    invoke-static {v3}, Landroid/net/netlink/StructNlMsgHdr;->stringForNlMsgFlags(S)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    .line 131
    const-string/jumbo v3, ")"

    #@54
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    .line 132
    .local v0, "flagsStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v3, "StructNlMsgHdr{ nlmsg_len{"

    #@64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    .line 133
    iget v3, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    #@6a
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    .line 133
    const-string/jumbo v3, "}, "

    #@71
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    .line 134
    const-string/jumbo v3, "nlmsg_type{"

    #@78
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    .line 134
    const-string/jumbo v3, "}, "

    #@83
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    .line 135
    const-string/jumbo v3, "nlmsg_flags{"

    #@8a
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v2

    #@92
    .line 135
    const-string/jumbo v3, ")}, "

    #@95
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v2

    #@99
    .line 136
    const-string/jumbo v3, "nlmsg_seq{"

    #@9c
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v2

    #@a0
    .line 136
    iget v3, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    #@a2
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v2

    #@a6
    .line 136
    const-string/jumbo v3, "}, "

    #@a9
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v2

    #@ad
    .line 137
    const-string/jumbo v3, "nlmsg_pid{"

    #@b0
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v2

    #@b4
    .line 137
    iget v3, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    #@b6
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v2

    #@ba
    .line 137
    const-string/jumbo v3, "} "

    #@bd
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v2

    #@c1
    .line 138
    const-string/jumbo v3, "}"

    #@c4
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v2

    #@c8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v2

    #@cc
    return-object v2
.end method
