.class public Landroid/net/netlink/NetlinkConstants;
.super Ljava/lang/Object;
.source "NetlinkConstants.java"


# static fields
.field public static final NLA_ALIGNTO:I = 0x4

.field public static final NLMSG_DONE:S = 0x3s

.field public static final NLMSG_ERROR:S = 0x2s

.field public static final NLMSG_MAX_RESERVED:S = 0xfs

.field public static final NLMSG_NOOP:S = 0x1s

.field public static final NLMSG_OVERRUN:S = 0x4s

.field public static final RTM_DELADDR:S = 0x15s

.field public static final RTM_DELLINK:S = 0x11s

.field public static final RTM_DELNEIGH:S = 0x1ds

.field public static final RTM_DELROUTE:S = 0x19s

.field public static final RTM_DELRULE:S = 0x21s

.field public static final RTM_GETADDR:S = 0x16s

.field public static final RTM_GETLINK:S = 0x12s

.field public static final RTM_GETNEIGH:S = 0x1es

.field public static final RTM_GETROUTE:S = 0x1as

.field public static final RTM_GETRULE:S = 0x22s

.field public static final RTM_NEWADDR:S = 0x14s

.field public static final RTM_NEWLINK:S = 0x10s

.field public static final RTM_NEWNDUSEROPT:S = 0x44s

.field public static final RTM_NEWNEIGH:S = 0x1cs

.field public static final RTM_NEWROUTE:S = 0x18s

.field public static final RTM_NEWRULE:S = 0x20s

.field public static final RTM_SETLINK:S = 0x13s


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final alignedLengthOf(I)I
    .locals 1
    .param p0, "length"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 46
    if-gtz p0, :cond_0

    #@3
    return v0

    #@4
    .line 47
    :cond_0
    add-int/lit8 v0, p0, 0x4

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    div-int/lit8 v0, v0, 0x4

    #@a
    mul-int/lit8 v0, v0, 0x4

    #@c
    return v0
.end method

.method public static final alignedLengthOf(S)I
    .locals 2
    .param p0, "length"    # S

    #@0
    .prologue
    .line 41
    const v1, 0xffff

    #@3
    and-int v0, p0, v1

    #@5
    .line 42
    .local v0, "intLength":I
    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    #@8
    move-result v1

    #@9
    return v1
.end method

.method public static hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 63
    if-nez p0, :cond_0

    #@2
    const-string/jumbo v0, "(null)"

    #@5
    return-object v0

    #@6
    .line 65
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@11
    move-result v2

    #@12
    .line 64
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public static hexify([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 58
    if-nez p0, :cond_0

    #@2
    const-string/jumbo v0, "(null)"

    #@5
    return-object v0

    #@6
    .line 59
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static stringForAddressFamily(I)Ljava/lang/String;
    .locals 1
    .param p0, "family"    # I

    #@0
    .prologue
    .line 51
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const-string/jumbo v0, "AF_INET"

    #@7
    return-object v0

    #@8
    .line 52
    :cond_0
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    #@a
    if-ne p0, v0, :cond_1

    #@c
    const-string/jumbo v0, "AF_INET6"

    #@f
    return-object v0

    #@10
    .line 53
    :cond_1
    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    #@12
    if-ne p0, v0, :cond_2

    #@14
    const-string/jumbo v0, "AF_NETLINK"

    #@17
    return-object v0

    #@18
    .line 54
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public static stringForNlMsgType(S)Ljava/lang/String;
    .locals 2
    .param p0, "nlm_type"    # S

    #@0
    .prologue
    .line 94
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "unknown RTM type: "

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
    .line 95
    :sswitch_0
    const-string/jumbo v0, "NLMSG_NOOP"

    #@1f
    return-object v0

    #@20
    .line 96
    :sswitch_1
    const-string/jumbo v0, "NLMSG_ERROR"

    #@23
    return-object v0

    #@24
    .line 97
    :sswitch_2
    const-string/jumbo v0, "NLMSG_DONE"

    #@27
    return-object v0

    #@28
    .line 98
    :sswitch_3
    const-string/jumbo v0, "NLMSG_OVERRUN"

    #@2b
    return-object v0

    #@2c
    .line 99
    :sswitch_4
    const-string/jumbo v0, "RTM_NEWLINK"

    #@2f
    return-object v0

    #@30
    .line 100
    :sswitch_5
    const-string/jumbo v0, "RTM_DELLINK"

    #@33
    return-object v0

    #@34
    .line 101
    :sswitch_6
    const-string/jumbo v0, "RTM_GETLINK"

    #@37
    return-object v0

    #@38
    .line 102
    :sswitch_7
    const-string/jumbo v0, "RTM_SETLINK"

    #@3b
    return-object v0

    #@3c
    .line 103
    :sswitch_8
    const-string/jumbo v0, "RTM_NEWADDR"

    #@3f
    return-object v0

    #@40
    .line 104
    :sswitch_9
    const-string/jumbo v0, "RTM_DELADDR"

    #@43
    return-object v0

    #@44
    .line 105
    :sswitch_a
    const-string/jumbo v0, "RTM_GETADDR"

    #@47
    return-object v0

    #@48
    .line 106
    :sswitch_b
    const-string/jumbo v0, "RTM_NEWROUTE"

    #@4b
    return-object v0

    #@4c
    .line 107
    :sswitch_c
    const-string/jumbo v0, "RTM_DELROUTE"

    #@4f
    return-object v0

    #@50
    .line 108
    :sswitch_d
    const-string/jumbo v0, "RTM_GETROUTE"

    #@53
    return-object v0

    #@54
    .line 109
    :sswitch_e
    const-string/jumbo v0, "RTM_NEWNEIGH"

    #@57
    return-object v0

    #@58
    .line 110
    :sswitch_f
    const-string/jumbo v0, "RTM_DELNEIGH"

    #@5b
    return-object v0

    #@5c
    .line 111
    :sswitch_10
    const-string/jumbo v0, "RTM_GETNEIGH"

    #@5f
    return-object v0

    #@60
    .line 112
    :sswitch_11
    const-string/jumbo v0, "RTM_NEWRULE"

    #@63
    return-object v0

    #@64
    .line 113
    :sswitch_12
    const-string/jumbo v0, "RTM_DELRULE"

    #@67
    return-object v0

    #@68
    .line 114
    :sswitch_13
    const-string/jumbo v0, "RTM_GETRULE"

    #@6b
    return-object v0

    #@6c
    .line 115
    :sswitch_14
    const-string/jumbo v0, "RTM_NEWNDUSEROPT"

    #@6f
    return-object v0

    #@70
    .line 94
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_7
        0x14 -> :sswitch_8
        0x15 -> :sswitch_9
        0x16 -> :sswitch_a
        0x18 -> :sswitch_b
        0x19 -> :sswitch_c
        0x1a -> :sswitch_d
        0x1c -> :sswitch_e
        0x1d -> :sswitch_f
        0x1e -> :sswitch_10
        0x20 -> :sswitch_11
        0x21 -> :sswitch_12
        0x22 -> :sswitch_13
        0x44 -> :sswitch_14
    .end sparse-switch
.end method
