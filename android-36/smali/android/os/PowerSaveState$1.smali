.class Landroid/os/PowerSaveState$1;
.super Ljava/lang/Object;
.source "PowerSaveState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerSaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/PowerSaveState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/PowerSaveState;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 116
    new-instance v0, Landroid/os/PowerSaveState;

    invoke-direct {v0, p1}, Landroid/os/PowerSaveState;-><init>(Landroid/os/Parcel;)V

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

    .line 112
    invoke-virtual {p0, p1}, Landroid/os/PowerSaveState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/PowerSaveState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/PowerSaveState;
    .registers 3
    .param p1, "size"    # I

    .line 121
    new-array v0, p1, [Landroid/os/PowerSaveState;

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

    .line 112
    invoke-virtual {p0, p1}, Landroid/os/PowerSaveState$1;->newArray(I)[Landroid/os/PowerSaveState;

    move-result-object p1

    return-object p1
.end method
