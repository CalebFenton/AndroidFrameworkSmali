.class Landroid/os/connectivity/WifiActivityEnergyInfo$1;
.super Ljava/lang/Object;
.source "WifiActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/connectivity/WifiActivityEnergyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/connectivity/WifiActivityEnergyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/WifiActivityEnergyInfo;
    .registers 14
    .param p1, "in"    # Landroid/os/Parcel;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 171
    .local v1, "timestamp":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 172
    .local v3, "stackState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 173
    .local v4, "txTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 174
    .local v6, "rxTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 175
    .local v8, "scanTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 176
    .local v10, "idleTime":J
    new-instance v0, Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-direct/range {v0 .. v11}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

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

    .line 168
    invoke-virtual {p0, p1}, Landroid/os/connectivity/WifiActivityEnergyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/connectivity/WifiActivityEnergyInfo;
    .registers 3
    .param p1, "size"    # I

    .line 180
    new-array v0, p1, [Landroid/os/connectivity/WifiActivityEnergyInfo;

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

    .line 168
    invoke-virtual {p0, p1}, Landroid/os/connectivity/WifiActivityEnergyInfo$1;->newArray(I)[Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object p1

    return-object p1
.end method
