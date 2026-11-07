.class Landroid/bluetooth/SdpRecord$1;
.super Ljava/lang/Object;
.source "SdpRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/SdpRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SdpRecord;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    new-instance v0, Landroid/bluetooth/SdpRecord;

    invoke-direct {v0, p1}, Landroid/bluetooth/SdpRecord;-><init>(Landroid/os/Parcel;)V

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

    .line 61
    invoke-virtual {p0, p1}, Landroid/bluetooth/SdpRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SdpRecord;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/SdpRecord;
    .registers 3
    .param p1, "size"    # I

    .line 67
    new-array v0, p1, [Landroid/bluetooth/SdpRecord;

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

    .line 61
    invoke-virtual {p0, p1}, Landroid/bluetooth/SdpRecord$1;->newArray(I)[Landroid/bluetooth/SdpRecord;

    move-result-object p1

    return-object p1
.end method
