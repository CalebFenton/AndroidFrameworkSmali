.class Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo$1;
.super Ljava/lang/Object;
.source "TunerDemuxInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 25
    new-instance v0, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;

    invoke-direct {v0}, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;-><init>()V

    .line 26
    .local v0, "_aidl_out":Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;
    invoke-virtual {v0, p1}, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
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

    .line 22
    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 31
    new-array v0, p1, [Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;

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

    .line 22
    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo$1;->newArray(I)[Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;

    move-result-object p1

    return-object p1
.end method
