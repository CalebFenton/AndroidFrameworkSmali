.class public Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;
.super Ljava/lang/Object;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkBandwidth"
.end annotation


# instance fields
.field public final blacklist downlinkBandwidthKbps:I

.field public final blacklist uplinkBandwidthKbps:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    iput p1, p0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->downlinkBandwidthKbps:I

    .line 856
    iput p2, p0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->uplinkBandwidthKbps:I

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 861
    iget v0, p0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->downlinkBandwidthKbps:I

    .line 862
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;->uplinkBandwidthKbps:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 861
    const-string v0, "NetworkBandwidth=[downlink=%d, uplink=%d]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
