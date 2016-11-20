.class public final Landroid/system/PacketSocketAddress;
.super Ljava/net/SocketAddress;
.source "PacketSocketAddress.java"


# instance fields
.field public sll_addr:[B

.field public sll_hatype:S

.field public sll_ifindex:I

.field public sll_pkttype:B

.field public sll_protocol:S


# direct methods
.method public constructor <init>(I[B)V
    .locals 6
    .param p1, "sll_ifindex"    # I
    .param p2, "sll_addr"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move v2, p1

    #@3
    move v3, v1

    #@4
    move v4, v1

    #@5
    move-object v5, p2

    #@6
    .line 62
    invoke-direct/range {v0 .. v5}, Landroid/system/PacketSocketAddress;-><init>(SISB[B)V

    #@9
    .line 61
    return-void
.end method

.method public constructor <init>(SI)V
    .locals 6
    .param p1, "sll_protocol"    # S
    .param p2, "sll_ifindex"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 57
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v4, v3

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/system/PacketSocketAddress;-><init>(SISB[B)V

    #@9
    .line 56
    return-void
.end method

.method public constructor <init>(SISB[B)V
    .locals 0
    .param p1, "sll_protocol"    # S
    .param p2, "sll_ifindex"    # I
    .param p3, "sll_hatype"    # S
    .param p4, "sll_pkttype"    # B
    .param p5, "sll_addr"    # [B

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    #@3
    .line 48
    iput-short p1, p0, Landroid/system/PacketSocketAddress;->sll_protocol:S

    #@5
    .line 49
    iput p2, p0, Landroid/system/PacketSocketAddress;->sll_ifindex:I

    #@7
    .line 50
    iput-short p3, p0, Landroid/system/PacketSocketAddress;->sll_hatype:S

    #@9
    .line 51
    iput-byte p4, p0, Landroid/system/PacketSocketAddress;->sll_pkttype:B

    #@b
    .line 52
    iput-object p5, p0, Landroid/system/PacketSocketAddress;->sll_addr:[B

    #@d
    .line 47
    return-void
.end method
