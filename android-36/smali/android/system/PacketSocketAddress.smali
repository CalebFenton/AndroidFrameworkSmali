.class public final Landroid/system/PacketSocketAddress;
.super Ljava/net/SocketAddress;
.source "PacketSocketAddress.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field public final greylist-max-o sll_addr:[B

.field public final blacklist sll_hatype:I

.field public final greylist-max-o sll_ifindex:I

.field public final blacklist sll_pkttype:I

.field public final blacklist sll_protocol:I


# direct methods
.method public constructor blacklist <init>(IIII[B)V
    .registers 6
    .param p1, "sll_protocol"    # I
    .param p2, "sll_ifindex"    # I
    .param p3, "sll_hatype"    # I
    .param p4, "sll_pkttype"    # I
    .param p5, "sll_addr"    # [B

    .line 80
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 81
    iput p1, p0, Landroid/system/PacketSocketAddress;->sll_protocol:I

    .line 82
    iput p2, p0, Landroid/system/PacketSocketAddress;->sll_ifindex:I

    .line 83
    iput p3, p0, Landroid/system/PacketSocketAddress;->sll_hatype:I

    .line 84
    iput p4, p0, Landroid/system/PacketSocketAddress;->sll_pkttype:I

    .line 85
    iput-object p5, p0, Landroid/system/PacketSocketAddress;->sll_addr:[B

    .line 86
    return-void
.end method

.method public constructor blacklist test-api <init>(II[B)V
    .registers 5
    .param p1, "sll_protocol"    # I
    .param p2, "sll_ifindex"    # I
    .param p3, "sll_addr"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 102
    iput p1, p0, Landroid/system/PacketSocketAddress;->sll_protocol:I

    .line 103
    iput p2, p0, Landroid/system/PacketSocketAddress;->sll_ifindex:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Landroid/system/PacketSocketAddress;->sll_hatype:I

    .line 105
    iput v0, p0, Landroid/system/PacketSocketAddress;->sll_pkttype:I

    .line 106
    iput-object p3, p0, Landroid/system/PacketSocketAddress;->sll_addr:[B

    .line 107
    return-void
.end method

.method public constructor greylist <init>(I[B)V
    .registers 4
    .param p1, "sll_ifindex"    # I
    .param p2, "sll_addr"    # [B

    .line 129
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Landroid/system/PacketSocketAddress;->sll_protocol:I

    .line 131
    iput p1, p0, Landroid/system/PacketSocketAddress;->sll_ifindex:I

    .line 132
    iput v0, p0, Landroid/system/PacketSocketAddress;->sll_hatype:I

    .line 133
    iput v0, p0, Landroid/system/PacketSocketAddress;->sll_pkttype:I

    .line 134
    iput-object p2, p0, Landroid/system/PacketSocketAddress;->sll_addr:[B

    .line 135
    return-void
.end method

.method public constructor greylist <init>(SI)V
    .registers 4
    .param p1, "sll_protocol"    # S
    .param p2, "sll_ifindex"    # I

    .line 115
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 116
    iput p1, p0, Landroid/system/PacketSocketAddress;->sll_protocol:I

    .line 117
    iput p2, p0, Landroid/system/PacketSocketAddress;->sll_ifindex:I

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Landroid/system/PacketSocketAddress;->sll_hatype:I

    .line 119
    iput v0, p0, Landroid/system/PacketSocketAddress;->sll_pkttype:I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/system/PacketSocketAddress;->sll_addr:[B

    .line 121
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 142
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
