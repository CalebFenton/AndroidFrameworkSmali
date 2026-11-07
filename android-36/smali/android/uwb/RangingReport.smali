.class public final Landroid/uwb/RangingReport;
.super Ljava/lang/Object;
.source "RangingReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/RangingReport$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/uwb/RangingReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRangingMeasurements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/uwb/RangingMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRangingReportMetadata:Landroid/os/PersistableBundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 110
    new-instance v0, Landroid/uwb/RangingReport$1;

    invoke-direct {v0}, Landroid/uwb/RangingReport$1;-><init>()V

    sput-object v0, Landroid/uwb/RangingReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p2, "rangingReportMetadata"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/uwb/RangingMeasurement;",
            ">;",
            "Landroid/os/PersistableBundle;",
            ")V"
        }
    .end annotation

    .line 42
    .local p1, "rangingMeasurements":Ljava/util/List;, "Ljava/util/List<Landroid/uwb/RangingMeasurement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/uwb/RangingReport;->mRangingMeasurements:Ljava/util/List;

    .line 44
    iput-object p2, p0, Landroid/uwb/RangingReport;->mRangingReportMetadata:Landroid/os/PersistableBundle;

    .line 45
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/os/PersistableBundle;Landroid/uwb/RangingReport-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/uwb/RangingReport;-><init>(Ljava/util/List;Landroid/os/PersistableBundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 77
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 78
    return v0

    .line 81
    :cond_4
    instance-of v1, p1, Landroid/uwb/RangingReport;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 82
    move-object v1, p1

    check-cast v1, Landroid/uwb/RangingReport;

    .line 83
    .local v1, "other":Landroid/uwb/RangingReport;
    iget-object v3, p0, Landroid/uwb/RangingReport;->mRangingMeasurements:Ljava/util/List;

    invoke-virtual {v1}, Landroid/uwb/RangingReport;->getMeasurements()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Landroid/uwb/RangingReport;->mRangingReportMetadata:Landroid/os/PersistableBundle;

    .line 85
    invoke-virtual {v1}, Landroid/uwb/RangingReport;->getRangingReportMetadata()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 84
    invoke-static {v3, v4}, Landroid/uwb/util/PersistableBundleUtils;->isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_26

    :cond_25
    move v0, v2

    .line 83
    :goto_26
    return v0

    .line 87
    .end local v1    # "other":Landroid/uwb/RangingReport;
    :cond_27
    return v2
.end method

.method public whitelist getMeasurements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/uwb/RangingMeasurement;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Landroid/uwb/RangingReport;->mRangingMeasurements:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getRangingReportMetadata()Landroid/os/PersistableBundle;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/uwb/RangingReport;->mRangingReportMetadata:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 95
    iget-object v0, p0, Landroid/uwb/RangingReport;->mRangingMeasurements:Ljava/util/List;

    iget-object v1, p0, Landroid/uwb/RangingReport;->mRangingReportMetadata:Landroid/os/PersistableBundle;

    .line 96
    invoke-static {v1}, Landroid/uwb/util/PersistableBundleUtils;->getHashCode(Landroid/os/PersistableBundle;)I

    move-result v1

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingReport[measurements: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/RangingReport;->mRangingMeasurements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ranging report measurement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/RangingReport;->mRangingReportMetadata:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    iget-object v0, p0, Landroid/uwb/RangingReport;->mRangingMeasurements:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 107
    iget-object v0, p0, Landroid/uwb/RangingReport;->mRangingReportMetadata:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 108
    return-void
.end method
