.class Landroid/health/connect/aidl/ReadRecordsResponseParcel$1;
.super Ljava/lang/Object;
.source "ReadRecordsResponseParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/aidl/ReadRecordsResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/health/connect/aidl/ReadRecordsResponseParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/health/connect/aidl/ReadRecordsResponseParcel;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    new-instance v0, Landroid/health/connect/aidl/ReadRecordsResponseParcel;

    invoke-direct {v0, p1}, Landroid/health/connect/aidl/ReadRecordsResponseParcel;-><init>(Landroid/os/Parcel;)V

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

    .line 57
    invoke-virtual {p0, p1}, Landroid/health/connect/aidl/ReadRecordsResponseParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/health/connect/aidl/ReadRecordsResponseParcel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/health/connect/aidl/ReadRecordsResponseParcel;
    .registers 3
    .param p1, "size"    # I

    .line 65
    new-array v0, p1, [Landroid/health/connect/aidl/ReadRecordsResponseParcel;

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

    .line 57
    invoke-virtual {p0, p1}, Landroid/health/connect/aidl/ReadRecordsResponseParcel$1;->newArray(I)[Landroid/health/connect/aidl/ReadRecordsResponseParcel;

    move-result-object p1

    return-object p1
.end method
