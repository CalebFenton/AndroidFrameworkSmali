.class Landroid/bluetooth/SdpMnsRecord$1;
.super Ljava/lang/Object;
.source "SdpMnsRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/SdpMnsRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SdpMnsRecord;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 109
    new-instance v0, Landroid/bluetooth/SdpMnsRecord;

    invoke-direct {v0, p1}, Landroid/bluetooth/SdpMnsRecord;-><init>(Landroid/os/Parcel;)V

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

    .line 107
    invoke-virtual {p0, p1}, Landroid/bluetooth/SdpMnsRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SdpMnsRecord;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/SdpMnsRecord;
    .registers 3
    .param p1, "size"    # I

    .line 113
    new-array v0, p1, [Landroid/bluetooth/SdpMnsRecord;

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

    .line 107
    invoke-virtual {p0, p1}, Landroid/bluetooth/SdpMnsRecord$1;->newArray(I)[Landroid/bluetooth/SdpMnsRecord;

    move-result-object p1

    return-object p1
.end method
