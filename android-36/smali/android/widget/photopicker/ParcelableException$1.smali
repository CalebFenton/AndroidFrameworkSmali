.class Landroid/widget/photopicker/ParcelableException$1;
.super Ljava/lang/Object;
.source "ParcelableException.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/photopicker/ParcelableException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/widget/photopicker/ParcelableException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/widget/photopicker/ParcelableException;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 90
    new-instance v0, Landroid/widget/photopicker/ParcelableException;

    invoke-static {p1}, Landroid/widget/photopicker/ParcelableException;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/photopicker/ParcelableException;-><init>(Ljava/lang/Throwable;)V

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

    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/photopicker/ParcelableException$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/photopicker/ParcelableException;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/widget/photopicker/ParcelableException;
    .registers 3
    .param p1, "size"    # I

    .line 95
    new-array v0, p1, [Landroid/widget/photopicker/ParcelableException;

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

    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/photopicker/ParcelableException$1;->newArray(I)[Landroid/widget/photopicker/ParcelableException;

    move-result-object p1

    return-object p1
.end method
