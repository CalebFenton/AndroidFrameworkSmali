.class Landroid/hardware/radio/sim/PhonebookCapacity$1;
.super Ljava/lang/Object;
.source "PhonebookCapacity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/PhonebookCapacity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/sim/PhonebookCapacity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/sim/PhonebookCapacity;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 38
    new-instance v0, Landroid/hardware/radio/sim/PhonebookCapacity;

    invoke-direct {v0}, Landroid/hardware/radio/sim/PhonebookCapacity;-><init>()V

    .line 39
    .local v0, "_aidl_out":Landroid/hardware/radio/sim/PhonebookCapacity;
    invoke-virtual {v0, p1}, Landroid/hardware/radio/sim/PhonebookCapacity;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
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

    .line 35
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/PhonebookCapacity$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/sim/PhonebookCapacity;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/radio/sim/PhonebookCapacity;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 44
    new-array v0, p1, [Landroid/hardware/radio/sim/PhonebookCapacity;

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

    .line 35
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/PhonebookCapacity$1;->newArray(I)[Landroid/hardware/radio/sim/PhonebookCapacity;

    move-result-object p1

    return-object p1
.end method
