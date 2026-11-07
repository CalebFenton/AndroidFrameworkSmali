.class public final Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;
.super Ljava/lang/Object;
.source "ConnectivityDiagnosticsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityDiagnosticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataStallReport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityDiagnosticsManager$DataStallReport$DataStallReportBundleKeys;,
        Landroid/net/ConnectivityDiagnosticsManager$DataStallReport$DetectionMethod;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DETECTION_METHOD_DNS_EVENTS:I = 0x1

.field public static final whitelist DETECTION_METHOD_TCP_METRICS:I = 0x2

.field public static final whitelist KEY_DNS_CONSECUTIVE_TIMEOUTS:Ljava/lang/String; = "dnsConsecutiveTimeouts"

.field public static final whitelist KEY_TCP_METRICS_COLLECTION_PERIOD_MILLIS:Ljava/lang/String; = "tcpMetricsCollectionPeriodMillis"

.field public static final whitelist KEY_TCP_PACKET_FAIL_RATE:Ljava/lang/String; = "tcpPacketFailRate"


# instance fields
.field private final blacklist mDetectionMethod:I

.field private final blacklist mLinkProperties:Landroid/net/LinkProperties;

.field private final blacklist mNetwork:Landroid/net/Network;

.field private final blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private blacklist mReportTimestamp:J

.field private final blacklist mStallDetails:Landroid/os/PersistableBundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 589
    new-instance v0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport$1;

    invoke-direct {v0}, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport$1;-><init>()V

    sput-object v0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Network;JILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/os/PersistableBundle;)V
    .registers 9
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "reportTimestamp"    # J
    .param p4, "detectionMethod"    # I
    .param p5, "linkProperties"    # Landroid/net/LinkProperties;
    .param p6, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p7, "stallDetails"    # Landroid/os/PersistableBundle;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-object p1, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mNetwork:Landroid/net/Network;

    .line 474
    iput-wide p2, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mReportTimestamp:J

    .line 475
    iput p4, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mDetectionMethod:I

    .line 476
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mLinkProperties:Landroid/net/LinkProperties;

    .line 477
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p6}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 478
    iput-object p7, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mStallDetails:Landroid/os/PersistableBundle;

    .line 479
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 545
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 546
    :cond_4
    instance-of v1, p1, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 547
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    .line 552
    .local v1, "that":Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;
    iget-wide v3, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mReportTimestamp:J

    iget-wide v5, v1, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mReportTimestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_44

    iget v3, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mDetectionMethod:I

    iget v4, v1, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mDetectionMethod:I

    if-ne v3, v4, :cond_44

    iget-object v3, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mNetwork:Landroid/net/Network;

    iget-object v4, v1, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mNetwork:Landroid/net/Network;

    .line 554
    invoke-virtual {v3, v4}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v4, v1, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mLinkProperties:Landroid/net/LinkProperties;

    .line 555
    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v4, v1, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 556
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mStallDetails:Landroid/os/PersistableBundle;

    iget-object v4, v1, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mStallDetails:Landroid/os/PersistableBundle;

    .line 557
    invoke-static {v3, v4}, Landroid/net/ConnectivityDiagnosticsManager;->persistableBundleEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_45

    :cond_44
    move v0, v2

    .line 552
    :goto_45
    return v0
.end method

.method public whitelist getDetectionMethod()I
    .registers 2

    .line 506
    iget v0, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mDetectionMethod:I

    return v0
.end method

.method public whitelist getLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .line 516
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public whitelist getNetwork()Landroid/net/Network;
    .registers 2

    .line 488
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public whitelist getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 3

    .line 526
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    return-object v0
.end method

.method public whitelist getReportTimestamp()J
    .registers 3

    .line 497
    iget-wide v0, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mReportTimestamp:J

    return-wide v0
.end method

.method public whitelist getStallDetails()Landroid/os/PersistableBundle;
    .registers 3

    .line 540
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mStallDetails:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 562
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mNetwork:Landroid/net/Network;

    iget-wide v1, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mReportTimestamp:J

    .line 564
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mDetectionMethod:I

    .line 565
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v4, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v5, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mStallDetails:Landroid/os/PersistableBundle;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 562
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 580
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 581
    iget-wide v0, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mReportTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 582
    iget v0, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mDetectionMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 584
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 585
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->mStallDetails:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 586
    return-void
.end method
