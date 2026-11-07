.class Landroid/permission/RuntimePermissionPresentationInfo$1;
.super Ljava/lang/Object;
.source "RuntimePermissionPresentationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/RuntimePermissionPresentationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/permission/RuntimePermissionPresentationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/permission/RuntimePermissionPresentationInfo;
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    .line 103
    .local v0, "label":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .local v1, "flags":I
    new-instance v2, Landroid/permission/RuntimePermissionPresentationInfo;

    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_12

    move v3, v5

    goto :goto_13

    :cond_12
    move v3, v4

    :goto_13
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_18

    move v4, v5

    :cond_18
    invoke-direct {v2, v0, v3, v4}, Landroid/permission/RuntimePermissionPresentationInfo;-><init>(Ljava/lang/CharSequence;ZZ)V

    return-object v2
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

    .line 100
    invoke-virtual {p0, p1}, Landroid/permission/RuntimePermissionPresentationInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/permission/RuntimePermissionPresentationInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/permission/RuntimePermissionPresentationInfo;
    .registers 3
    .param p1, "size"    # I

    .line 110
    new-array v0, p1, [Landroid/permission/RuntimePermissionPresentationInfo;

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

    .line 100
    invoke-virtual {p0, p1}, Landroid/permission/RuntimePermissionPresentationInfo$1;->newArray(I)[Landroid/permission/RuntimePermissionPresentationInfo;

    move-result-object p1

    return-object p1
.end method
