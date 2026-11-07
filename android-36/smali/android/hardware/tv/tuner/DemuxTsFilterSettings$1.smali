.class Landroid/hardware/tv/tuner/DemuxTsFilterSettings$1;
.super Ljava/lang/Object;
.source "DemuxTsFilterSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/DemuxTsFilterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/tv/tuner/DemuxTsFilterSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/tuner/DemuxTsFilterSettings;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 20
    new-instance v0, Landroid/hardware/tv/tuner/DemuxTsFilterSettings;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxTsFilterSettings;-><init>()V

    .line 21
    .local v0, "_aidl_out":Landroid/hardware/tv/tuner/DemuxTsFilterSettings;
    invoke-virtual {v0, p1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 22
    return-object v0
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

    .line 17
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/tuner/DemuxTsFilterSettings;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/tv/tuner/DemuxTsFilterSettings;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 26
    new-array v0, p1, [Landroid/hardware/tv/tuner/DemuxTsFilterSettings;

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

    .line 17
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxTsFilterSettings$1;->newArray(I)[Landroid/hardware/tv/tuner/DemuxTsFilterSettings;

    move-result-object p1

    return-object p1
.end method
