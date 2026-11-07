.class Landroid/media/GetSpatializerResponse$1;
.super Ljava/lang/Object;
.source "GetSpatializerResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/GetSpatializerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/GetSpatializerResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/GetSpatializerResponse;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 21
    new-instance v0, Landroid/media/GetSpatializerResponse;

    invoke-direct {v0}, Landroid/media/GetSpatializerResponse;-><init>()V

    .line 22
    .local v0, "_aidl_out":Landroid/media/GetSpatializerResponse;
    invoke-virtual {v0, p1}, Landroid/media/GetSpatializerResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 23
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

    .line 18
    invoke-virtual {p0, p1}, Landroid/media/GetSpatializerResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/GetSpatializerResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/GetSpatializerResponse;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 27
    new-array v0, p1, [Landroid/media/GetSpatializerResponse;

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

    .line 18
    invoke-virtual {p0, p1}, Landroid/media/GetSpatializerResponse$1;->newArray(I)[Landroid/media/GetSpatializerResponse;

    move-result-object p1

    return-object p1
.end method
