.class Landroid/telephony/CellBroadcastIdRange$1;
.super Ljava/lang/Object;
.source "CellBroadcastIdRange.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellBroadcastIdRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CellBroadcastIdRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellBroadcastIdRange;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .local v0, "startId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .local v1, "endId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .local v2, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 125
    .local v3, "isEnabled":Z
    new-instance v4, Landroid/telephony/CellBroadcastIdRange;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/telephony/CellBroadcastIdRange;-><init>(IIIZ)V

    return-object v4
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

    .line 116
    invoke-virtual {p0, p1}, Landroid/telephony/CellBroadcastIdRange$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellBroadcastIdRange;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/CellBroadcastIdRange;
    .registers 3
    .param p1, "size"    # I

    .line 131
    new-array v0, p1, [Landroid/telephony/CellBroadcastIdRange;

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

    .line 116
    invoke-virtual {p0, p1}, Landroid/telephony/CellBroadcastIdRange$1;->newArray(I)[Landroid/telephony/CellBroadcastIdRange;

    move-result-object p1

    return-object p1
.end method
