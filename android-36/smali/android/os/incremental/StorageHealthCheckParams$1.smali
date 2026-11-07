.class Landroid/os/incremental/StorageHealthCheckParams$1;
.super Ljava/lang/Object;
.source "StorageHealthCheckParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/StorageHealthCheckParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/incremental/StorageHealthCheckParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/incremental/StorageHealthCheckParams;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 30
    new-instance v0, Landroid/os/incremental/StorageHealthCheckParams;

    invoke-direct {v0}, Landroid/os/incremental/StorageHealthCheckParams;-><init>()V

    .line 31
    .local v0, "_aidl_out":Landroid/os/incremental/StorageHealthCheckParams;
    invoke-virtual {v0, p1}, Landroid/os/incremental/StorageHealthCheckParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
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

    .line 27
    invoke-virtual {p0, p1}, Landroid/os/incremental/StorageHealthCheckParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/incremental/StorageHealthCheckParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/incremental/StorageHealthCheckParams;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 36
    new-array v0, p1, [Landroid/os/incremental/StorageHealthCheckParams;

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

    .line 27
    invoke-virtual {p0, p1}, Landroid/os/incremental/StorageHealthCheckParams$1;->newArray(I)[Landroid/os/incremental/StorageHealthCheckParams;

    move-result-object p1

    return-object p1
.end method
