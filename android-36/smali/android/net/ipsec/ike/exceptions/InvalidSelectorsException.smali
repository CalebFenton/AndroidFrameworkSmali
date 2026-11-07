.class public final Landroid/net/ipsec/ike/exceptions/InvalidSelectorsException;
.super Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
.source "InvalidSelectorsException.java"


# static fields
.field private static final blacklist EXPECTED_ERROR_DATA_LEN_MIN:I = 0x1c


# instance fields
.field private final blacklist mIpSecPacketInfo:[B

.field private final blacklist mIpSecSpi:I


# direct methods
.method public constructor whitelist <init>(I[B)V
    .registers 4
    .param p1, "spi"    # I
    .param p2, "packetInfo"    # [B

    .line 55
    const/16 v0, 0x27

    invoke-direct {p0, v0, p2}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 56
    const-string v0, "packetInfo is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iput p1, p0, Landroid/net/ipsec/ike/exceptions/InvalidSelectorsException;->mIpSecSpi:I

    .line 58
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/ipsec/ike/exceptions/InvalidSelectorsException;->mIpSecPacketInfo:[B

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist getIpSecPacketInfo()[B
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/net/ipsec/ike/exceptions/InvalidSelectorsException;->mIpSecPacketInfo:[B

    return-object v0
.end method

.method public whitelist getIpSecSpi()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/net/ipsec/ike/exceptions/InvalidSelectorsException;->mIpSecSpi:I

    return v0
.end method

.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 85
    const v0, 0x40027

    return v0
.end method

.method protected blacklist isValidDataLength(I)Z
    .registers 3
    .param p1, "dataLen"    # I

    .line 64
    const/16 v0, 0x1c

    if-gt v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
