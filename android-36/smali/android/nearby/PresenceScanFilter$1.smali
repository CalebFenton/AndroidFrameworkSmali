.class Landroid/nearby/PresenceScanFilter$1;
.super Ljava/lang/Object;
.source "PresenceScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/PresenceScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nearby/PresenceScanFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nearby/PresenceScanFilter;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 101
    invoke-static {p1}, Landroid/nearby/PresenceScanFilter;->createFromParcelBody(Landroid/os/Parcel;)Landroid/nearby/PresenceScanFilter;

    move-result-object v0

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

    .line 96
    invoke-virtual {p0, p1}, Landroid/nearby/PresenceScanFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nearby/PresenceScanFilter;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nearby/PresenceScanFilter;
    .registers 3
    .param p1, "size"    # I

    .line 106
    new-array v0, p1, [Landroid/nearby/PresenceScanFilter;

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

    .line 96
    invoke-virtual {p0, p1}, Landroid/nearby/PresenceScanFilter$1;->newArray(I)[Landroid/nearby/PresenceScanFilter;

    move-result-object p1

    return-object p1
.end method
