.class Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest$1;
.super Ljava/lang/Object;
.source "TunerFrontendRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 23
    new-instance v0, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;

    invoke-direct {v0}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;-><init>()V

    .line 24
    .local v0, "_aidl_out":Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    invoke-virtual {v0, p1}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
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

    .line 20
    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 29
    new-array v0, p1, [Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;

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

    .line 20
    invoke-virtual {p0, p1}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest$1;->newArray(I)[Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;

    move-result-object p1

    return-object p1
.end method
