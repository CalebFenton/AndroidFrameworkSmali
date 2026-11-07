.class Landroid/system/suspend/internal/WakeLockInfo$1;
.super Ljava/lang/Object;
.source "WakeLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/suspend/internal/WakeLockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/system/suspend/internal/WakeLockInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/system/suspend/internal/WakeLockInfo;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 58
    new-instance v0, Landroid/system/suspend/internal/WakeLockInfo;

    invoke-direct {v0}, Landroid/system/suspend/internal/WakeLockInfo;-><init>()V

    .line 59
    .local v0, "_aidl_out":Landroid/system/suspend/internal/WakeLockInfo;
    invoke-virtual {v0, p1}, Landroid/system/suspend/internal/WakeLockInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 60
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

    .line 55
    invoke-virtual {p0, p1}, Landroid/system/suspend/internal/WakeLockInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/system/suspend/internal/WakeLockInfo;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 64
    new-array v0, p1, [Landroid/system/suspend/internal/WakeLockInfo;

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

    .line 55
    invoke-virtual {p0, p1}, Landroid/system/suspend/internal/WakeLockInfo$1;->newArray(I)[Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object p1

    return-object p1
.end method
