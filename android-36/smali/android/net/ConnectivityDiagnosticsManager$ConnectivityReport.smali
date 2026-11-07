.class public final Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;
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
    name = "ConnectivityReport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport$ConnectivityReportBundleKeys;,
        Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport$NetworkProbe;,
        Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport$NetworkValidationResult;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist KEY_NETWORK_PROBES_ATTEMPTED_BITMASK:Ljava/lang/String; = "networkProbesAttempted"

.field public static final whitelist KEY_NETWORK_PROBES_SUCCEEDED_BITMASK:Ljava/lang/String; = "networkProbesSucceeded"

.field public static final whitelist KEY_NETWORK_VALIDATION_RESULT:Ljava/lang/String; = "networkValidationResult"

.field public static final whitelist NETWORK_PROBE_DNS:I = 0x4

.field public static final whitelist NETWORK_PROBE_FALLBACK:I = 0x20

.field public static final whitelist NETWORK_PROBE_HTTP:I = 0x8

.field public static final whitelist NETWORK_PROBE_HTTPS:I = 0x10

.field public static final whitelist NETWORK_PROBE_PRIVATE_DNS:I = 0x40

.field public static final whitelist NETWORK_VALIDATION_RESULT_INVALID:I = 0x0

.field public static final whitelist NETWORK_VALIDATION_RESULT_PARTIALLY_VALID:I = 0x2

.field public static final whitelist NETWORK_VALIDATION_RESULT_SKIPPED:I = 0x3

.field public static final whitelist NETWORK_VALIDATION_RESULT_VALID:I = 0x1


# instance fields
.field private final blacklist mAdditionalInfo:Landroid/os/PersistableBundle;

.field private final blacklist mLinkProperties:Landroid/net/LinkProperties;

.field private final blacklist mNetwork:Landroid/net/Network;

.field private final blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final blacklist mReportTimestamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 351
    new-instance v0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport$1;

    invoke-direct {v0}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport$1;-><init>()V

    sput-object v0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Network;JLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "reportTimestamp"    # J
    .param p4, "linkProperties"    # Landroid/net/LinkProperties;
    .param p5, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p6, "additionalInfo"    # Landroid/os/PersistableBundle;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mNetwork:Landroid/net/Network;

    .line 253
    iput-wide p2, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mReportTimestamp:J

    .line 254
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mLinkProperties:Landroid/net/LinkProperties;

    .line 255
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p5}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 256
    iput-object p6, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mAdditionalInfo:Landroid/os/PersistableBundle;

    .line 257
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 310
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 311
    :cond_4
    instance-of v1, p1, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 312
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    .line 317
    .local v1, "that":Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;
    iget-wide v3, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mReportTimestamp:J

    iget-wide v5, v1, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mReportTimestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3e

    iget-object v3, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mNetwork:Landroid/net/Network;

    iget-object v4, v1, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mNetwork:Landroid/net/Network;

    .line 318
    invoke-virtual {v3, v4}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v4, v1, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mLinkProperties:Landroid/net/LinkProperties;

    .line 319
    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v4, v1, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 320
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mAdditionalInfo:Landroid/os/PersistableBundle;

    iget-object v4, v1, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mAdditionalInfo:Landroid/os/PersistableBundle;

    .line 321
    invoke-static {v3, v4}, Landroid/net/ConnectivityDiagnosticsManager;->persistableBundleEquals(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v2

    .line 317
    :goto_3f
    return v0
.end method

.method public whitelist getAdditionalInfo()Landroid/os/PersistableBundle;
    .registers 3

    .line 305
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mAdditionalInfo:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist getLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .line 285
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public whitelist getNetwork()Landroid/net/Network;
    .registers 2

    .line 266
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public whitelist getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 3

    .line 295
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    return-object v0
.end method

.method public whitelist getReportTimestamp()J
    .registers 3

    .line 275
    iget-wide v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mReportTimestamp:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 326
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mNetwork:Landroid/net/Network;

    iget-wide v1, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mReportTimestamp:J

    .line 328
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v4, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mAdditionalInfo:Landroid/os/PersistableBundle;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 326
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 343
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 344
    iget-wide v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mReportTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 345
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 346
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 347
    iget-object v0, p0, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->mAdditionalInfo:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 348
    return-void
.end method
