.class Landroid/adservices/ondevicepersonalization/DownloadInputParcel$1;
.super Ljava/lang/Object;
.source "DownloadInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/DownloadInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/adservices/ondevicepersonalization/DownloadInputParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/adservices/ondevicepersonalization/DownloadInputParcel;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 135
    new-instance v0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;

    invoke-direct {v0, p1}, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;-><init>(Landroid/os/Parcel;)V

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

    .line 127
    invoke-virtual {p0, p1}, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/adservices/ondevicepersonalization/DownloadInputParcel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/adservices/ondevicepersonalization/DownloadInputParcel;
    .registers 3
    .param p1, "size"    # I

    .line 130
    new-array v0, p1, [Landroid/adservices/ondevicepersonalization/DownloadInputParcel;

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

    .line 127
    invoke-virtual {p0, p1}, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$1;->newArray(I)[Landroid/adservices/ondevicepersonalization/DownloadInputParcel;

    move-result-object p1

    return-object p1
.end method
