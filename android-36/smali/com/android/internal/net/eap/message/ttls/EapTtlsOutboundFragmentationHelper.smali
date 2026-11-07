.class public Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;
.super Ljava/lang/Object;
.source "EapTtlsOutboundFragmentationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_FRAGMENTATION_SIZE:I = 0x400

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mFragmentSize:I

.field private blacklist mFragmentedData:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    const-class v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "fragmentSize"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->mFragmentSize:I

    .line 47
    return-void
.end method


# virtual methods
.method public blacklist getNextOutboundFragment()Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->mFragmentedData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->mFragmentedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 74
    iget v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->mFragmentSize:I

    iget-object v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->mFragmentedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 75
    .local v0, "outboundDataSize":I
    new-array v1, v0, [B

    .line 76
    .local v1, "outboundData":[B
    iget-object v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->mFragmentedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 78
    new-instance v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;

    iget-object v3, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->mFragmentedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;-><init>(Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;[BZ)V

    return-object v2

    .line 68
    .end local v0    # "outboundDataSize":I
    .end local v1    # "outboundData":[B
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error producing next outbound fragment. No fragmented packets are currently being processed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist hasRemainingFragments()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->mFragmentedData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->mFragmentedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist setupOutboundFragmentation([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 55
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;->mFragmentedData:Ljava/nio/ByteBuffer;

    .line 56
    return-void
.end method
