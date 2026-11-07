.class Landroid/hardware/cas/Status$1;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/cas/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/cas/Status;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/cas/Status;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 18
    new-instance v0, Landroid/hardware/cas/Status;

    invoke-direct {v0}, Landroid/hardware/cas/Status;-><init>()V

    .line 19
    .local v0, "_aidl_out":Landroid/hardware/cas/Status;
    invoke-virtual {v0, p1}, Landroid/hardware/cas/Status;->readFromParcel(Landroid/os/Parcel;)V

    .line 20
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

    .line 15
    invoke-virtual {p0, p1}, Landroid/hardware/cas/Status$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/cas/Status;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/cas/Status;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 24
    new-array v0, p1, [Landroid/hardware/cas/Status;

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

    .line 15
    invoke-virtual {p0, p1}, Landroid/hardware/cas/Status$1;->newArray(I)[Landroid/hardware/cas/Status;

    move-result-object p1

    return-object p1
.end method
