.class Landroid/app/admin/ParcelableResource$1;
.super Ljava/lang/Object;
.source "ParcelableResource.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/ParcelableResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/ParcelableResource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ParcelableResource;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 350
    .local v1, "resourceId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "resourceName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 354
    .local v4, "resourceType":I
    new-instance v0, Landroid/app/admin/ParcelableResource;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/app/admin/ParcelableResource;-><init>(ILjava/lang/String;Ljava/lang/String;ILandroid/app/admin/ParcelableResource-IA;)V

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

    .line 346
    invoke-virtual {p0, p1}, Landroid/app/admin/ParcelableResource$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ParcelableResource;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/ParcelableResource;
    .registers 3
    .param p1, "size"    # I

    .line 360
    new-array v0, p1, [Landroid/app/admin/ParcelableResource;

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

    .line 346
    invoke-virtual {p0, p1}, Landroid/app/admin/ParcelableResource$1;->newArray(I)[Landroid/app/admin/ParcelableResource;

    move-result-object p1

    return-object p1
.end method
