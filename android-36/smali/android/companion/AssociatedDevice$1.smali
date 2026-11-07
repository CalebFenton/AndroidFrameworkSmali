.class Landroid/companion/AssociatedDevice$1;
.super Ljava/lang/Object;
.source "AssociatedDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/AssociatedDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/companion/AssociatedDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/companion/AssociatedDevice;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 127
    new-instance v0, Landroid/companion/AssociatedDevice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/companion/AssociatedDevice;-><init>(Landroid/os/Parcel;Landroid/companion/AssociatedDevice-IA;)V

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

    .line 119
    invoke-virtual {p0, p1}, Landroid/companion/AssociatedDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/companion/AssociatedDevice;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/companion/AssociatedDevice;
    .registers 3
    .param p1, "size"    # I

    .line 122
    new-array v0, p1, [Landroid/companion/AssociatedDevice;

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

    .line 119
    invoke-virtual {p0, p1}, Landroid/companion/AssociatedDevice$1;->newArray(I)[Landroid/companion/AssociatedDevice;

    move-result-object p1

    return-object p1
.end method
