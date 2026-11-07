.class Landroid/uwb/RangingReport$1;
.super Ljava/lang/Object;
.source "RangingReport.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/RangingReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/uwb/RangingReport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/uwb/RangingReport;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 114
    new-instance v0, Landroid/uwb/RangingReport$Builder;

    invoke-direct {v0}, Landroid/uwb/RangingReport$Builder;-><init>()V

    .line 115
    .local v0, "builder":Landroid/uwb/RangingReport$Builder;
    sget-object v1, Landroid/uwb/RangingMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/uwb/RangingReport$Builder;->addMeasurements(Ljava/util/List;)Landroid/uwb/RangingReport$Builder;

    .line 116
    nop

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 118
    .local v1, "metadata":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_20

    invoke-virtual {v0, v1}, Landroid/uwb/RangingReport$Builder;->addRangingReportMetadata(Landroid/os/PersistableBundle;)Landroid/uwb/RangingReport$Builder;

    .line 119
    :cond_20
    invoke-virtual {v0}, Landroid/uwb/RangingReport$Builder;->build()Landroid/uwb/RangingReport;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Landroid/uwb/RangingReport$1;->createFromParcel(Landroid/os/Parcel;)Landroid/uwb/RangingReport;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/uwb/RangingReport;
    .registers 3
    .param p1, "size"    # I

    .line 124
    new-array v0, p1, [Landroid/uwb/RangingReport;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Landroid/uwb/RangingReport$1;->newArray(I)[Landroid/uwb/RangingReport;

    move-result-object p1

    return-object p1
.end method
