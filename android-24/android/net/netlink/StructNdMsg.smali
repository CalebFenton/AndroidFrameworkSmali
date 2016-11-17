.class public Landroid/net/netlink/StructNdMsg;
.super Ljava/lang/Object;
.source "StructNdMsg.java"


# static fields
.field public static NTF_MASTER:B = 0x0t

.field public static NTF_PROXY:B = 0x0t

.field public static NTF_ROUTER:B = 0x0t

.field public static NTF_SELF:B = 0x0t

.field public static NTF_USE:B = 0x0t

.field public static final NUD_DELAY:S = 0x8s

.field public static final NUD_FAILED:S = 0x20s

.field public static final NUD_INCOMPLETE:S = 0x1s

.field public static final NUD_NOARP:S = 0x40s

.field public static final NUD_NONE:S = 0x0s

.field public static final NUD_PERMANENT:S = 0x80s

.field public static final NUD_PROBE:S = 0x10s

.field public static final NUD_REACHABLE:S = 0x2s

.field public static final NUD_STALE:S = 0x4s

.field public static final STRUCT_SIZE:I = 0xc


# instance fields
.field public ndm_family:B

.field public ndm_flags:B

.field public ndm_ifindex:I

.field public ndm_state:S

.field public ndm_type:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    const/4 v0, 0x1

    #@1
    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_USE:B

    #@3
    .line 68
    const/4 v0, 0x2

    #@4
    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_SELF:B

    #@6
    .line 69
    const/4 v0, 0x4

    #@7
    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_MASTER:B

    #@9
    .line 70
    const/16 v0, 0x8

    #@b
    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_PROXY:B

    #@d
    .line 71
    const/16 v0, -0x80

    #@f
    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_ROUTER:B

    #@11
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 125
    sget v0, Landroid/system/OsConstants;->AF_UNSPEC:I

    #@5
    int-to-byte v0, v0

    #@6
    iput-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    #@8
    .line 124
    return-void
.end method

.method private static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 98
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v1

    #@7
    const/16 v2, 0xc

    #@9
    if-lt v1, v2, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static isNudStateConnected(S)Z
    .locals 2
    .param p0, "nudState"    # S

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 63
    and-int/lit16 v1, p0, 0xc2

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdMsg;
    .locals 4
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 102
    invoke-static {p0}, Landroid/net/netlink/StructNdMsg;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    const/4 v3, 0x0

    #@7
    return-object v3

    #@8
    .line 107
    :cond_0
    new-instance v2, Landroid/net/netlink/StructNdMsg;

    #@a
    invoke-direct {v2}, Landroid/net/netlink/StructNdMsg;-><init>()V

    #@d
    .line 108
    .local v2, "struct":Landroid/net/netlink/StructNdMsg;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@10
    move-result v3

    #@11
    iput-byte v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    #@13
    .line 109
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@16
    move-result v0

    #@17
    .line 110
    .local v0, "pad1":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@1a
    move-result v1

    #@1b
    .line 111
    .local v1, "pad2":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@1e
    move-result v3

    #@1f
    iput v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    #@21
    .line 112
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@24
    move-result v3

    #@25
    iput-short v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    #@27
    .line 113
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@2a
    move-result v3

    #@2b
    iput-byte v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    #@2d
    .line 114
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@30
    move-result v3

    #@31
    iput-byte v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    #@33
    .line 115
    return-object v2
.end method

.method public static stringForNudFlags(B)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # B

    #@0
    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 75
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_USE:B

    #@7
    and-int/2addr v1, p0

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 76
    const-string/jumbo v1, "NTF_USE"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 78
    :cond_0
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_SELF:B

    #@12
    and-int/2addr v1, p0

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@18
    move-result v1

    #@19
    if-lez v1, :cond_1

    #@1b
    const-string/jumbo v1, "|"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 80
    :cond_1
    const-string/jumbo v1, "NTF_SELF"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 82
    :cond_2
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_MASTER:B

    #@29
    and-int/2addr v1, p0

    #@2a
    if-eqz v1, :cond_4

    #@2c
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@2f
    move-result v1

    #@30
    if-lez v1, :cond_3

    #@32
    const-string/jumbo v1, "|"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 84
    :cond_3
    const-string/jumbo v1, "NTF_MASTER"

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 86
    :cond_4
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_PROXY:B

    #@40
    and-int/2addr v1, p0

    #@41
    if-eqz v1, :cond_6

    #@43
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@46
    move-result v1

    #@47
    if-lez v1, :cond_5

    #@49
    const-string/jumbo v1, "|"

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 89
    :cond_5
    const-string/jumbo v1, "NTF_PROXY"

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 90
    :cond_6
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_ROUTER:B

    #@57
    and-int/2addr v1, p0

    #@58
    if-eqz v1, :cond_8

    #@5a
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@5d
    move-result v1

    #@5e
    if-lez v1, :cond_7

    #@60
    const-string/jumbo v1, "|"

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    .line 92
    :cond_7
    const-string/jumbo v1, "NTF_ROUTER"

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 94
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    return-object v1
.end method

.method public static stringForNudState(S)Ljava/lang/String;
    .locals 2
    .param p0, "nudState"    # S

    #@0
    .prologue
    .line 47
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "unknown NUD state: "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 48
    :sswitch_0
    const-string/jumbo v0, "NUD_NONE"

    #@1f
    return-object v0

    #@20
    .line 49
    :sswitch_1
    const-string/jumbo v0, "NUD_INCOMPLETE"

    #@23
    return-object v0

    #@24
    .line 50
    :sswitch_2
    const-string/jumbo v0, "NUD_REACHABLE"

    #@27
    return-object v0

    #@28
    .line 51
    :sswitch_3
    const-string/jumbo v0, "NUD_STALE"

    #@2b
    return-object v0

    #@2c
    .line 52
    :sswitch_4
    const-string/jumbo v0, "NUD_DELAY"

    #@2f
    return-object v0

    #@30
    .line 53
    :sswitch_5
    const-string/jumbo v0, "NUD_PROBE"

    #@33
    return-object v0

    #@34
    .line 54
    :sswitch_6
    const-string/jumbo v0, "NUD_FAILED"

    #@37
    return-object v0

    #@38
    .line 55
    :sswitch_7
    const-string/jumbo v0, "NUD_NOARP"

    #@3b
    return-object v0

    #@3c
    .line 56
    :sswitch_8
    const-string/jumbo v0, "NUD_PERMANENT"

    #@3f
    return-object v0

    #@40
    .line 47
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
        0x20 -> :sswitch_6
        0x40 -> :sswitch_7
        0x80 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public nudConnected()Z
    .locals 1

    #@0
    .prologue
    .line 142
    iget-short v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    #@2
    invoke-static {v0}, Landroid/net/netlink/StructNdMsg;->isNudStateConnected(S)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nudValid()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 146
    invoke-virtual {p0}, Landroid/net/netlink/StructNdMsg;->nudConnected()Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    iget-short v2, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    #@a
    and-int/lit8 v2, v2, 0x1c

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    goto :goto_0
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 132
    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    #@3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@6
    .line 133
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@9
    .line 134
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@c
    .line 135
    iget v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    #@e
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@11
    .line 136
    iget-short v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    #@13
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@16
    .line 137
    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    #@18
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@1b
    .line 138
    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    #@1d
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@20
    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 151
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
    iget-short v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, " ("

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    iget-short v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    #@1b
    invoke-static {v3}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    const-string/jumbo v3, ")"

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 152
    .local v1, "stateStr":Ljava/lang/String;
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
    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    const-string/jumbo v3, " ("

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    #@49
    invoke-static {v3}, Landroid/net/netlink/StructNdMsg;->stringForNudFlags(B)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    const-string/jumbo v3, ")"

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    .line 153
    .local v0, "flagsStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v3, "StructNdMsg{ family{"

    #@64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    .line 154
    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    #@6a
    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->stringForAddressFamily(I)Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    .line 154
    const-string/jumbo v3, "}, "

    #@75
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    .line 155
    const-string/jumbo v3, "ifindex{"

    #@7c
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    .line 155
    iget v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    #@82
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    .line 155
    const-string/jumbo v3, "}, "

    #@89
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v2

    #@8d
    .line 156
    const-string/jumbo v3, "state{"

    #@90
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v2

    #@98
    .line 156
    const-string/jumbo v3, "}, "

    #@9b
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v2

    #@9f
    .line 157
    const-string/jumbo v3, "flags{"

    #@a2
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v2

    #@a6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v2

    #@aa
    .line 157
    const-string/jumbo v3, "}, "

    #@ad
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v2

    #@b1
    .line 158
    const-string/jumbo v3, "type{"

    #@b4
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v2

    #@b8
    .line 158
    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    #@ba
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v2

    #@be
    .line 158
    const-string/jumbo v3, "} "

    #@c1
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v2

    #@c5
    .line 159
    const-string/jumbo v3, "}"

    #@c8
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v2

    #@cc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v2

    #@d0
    return-object v2
.end method
