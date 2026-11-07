.class Landroid/util/StatsEventParcel$1;
.super Ljava/lang/Object;
.source "StatsEventParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/StatsEventParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/util/StatsEventParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/util/StatsEventParcel;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 17
    new-instance v0, Landroid/util/StatsEventParcel;

    invoke-direct {v0}, Landroid/util/StatsEventParcel;-><init>()V

    .line 18
    .local v0, "_aidl_out":Landroid/util/StatsEventParcel;
    invoke-virtual {v0, p1}, Landroid/util/StatsEventParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 19
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

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/StatsEventParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/util/StatsEventParcel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/util/StatsEventParcel;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 23
    new-array v0, p1, [Landroid/util/StatsEventParcel;

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

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/StatsEventParcel$1;->newArray(I)[Landroid/util/StatsEventParcel;

    move-result-object p1

    return-object p1
.end method
