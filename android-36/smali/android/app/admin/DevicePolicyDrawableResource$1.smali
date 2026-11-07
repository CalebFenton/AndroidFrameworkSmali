.class Landroid/app/admin/DevicePolicyDrawableResource$1;
.super Ljava/lang/Object;
.source "DevicePolicyDrawableResource.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyDrawableResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/DevicePolicyDrawableResource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/DevicePolicyDrawableResource;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "drawableId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "drawableStyle":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "drawableSource":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 197
    .local v4, "resourceIdInCallingPackage":I
    sget-object v0, Landroid/app/admin/ParcelableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/admin/ParcelableResource;

    .line 199
    .local v5, "resource":Landroid/app/admin/ParcelableResource;
    new-instance v0, Landroid/app/admin/DevicePolicyDrawableResource;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/app/admin/DevicePolicyDrawableResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/admin/ParcelableResource;Landroid/app/admin/DevicePolicyDrawableResource-IA;)V

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

    .line 190
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyDrawableResource$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/DevicePolicyDrawableResource;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/DevicePolicyDrawableResource;
    .registers 3
    .param p1, "size"    # I

    .line 206
    new-array v0, p1, [Landroid/app/admin/DevicePolicyDrawableResource;

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

    .line 190
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyDrawableResource$1;->newArray(I)[Landroid/app/admin/DevicePolicyDrawableResource;

    move-result-object p1

    return-object p1
.end method
