.class Landroid/provider/CloudMediaProviderContract$Capabilities$1;
.super Ljava/lang/Object;
.source "CloudMediaProviderContract.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CloudMediaProviderContract$Capabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/provider/CloudMediaProviderContract$Capabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/provider/CloudMediaProviderContract$Capabilities;
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 192
    .local v0, "searchEnabled":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 193
    .local v1, "mediaCategoriesEnabled":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 195
    .local v2, "mAlbumsAsCategoryEnabled":Z
    new-instance v3, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;

    invoke-direct {v3}, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;-><init>()V

    .line 197
    .local v3, "builder":Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;
    invoke-static {}, Landroid/provider/media/internal/flags/Flags;->cloudMediaProviderSearch()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 198
    nop

    .line 199
    invoke-virtual {v3, v0}, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->setSearchEnabled(Z)Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;

    move-result-object v4

    .line 200
    invoke-virtual {v4, v1}, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->setMediaCategoriesEnabled(Z)Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;

    move-result-object v4

    .line 201
    invoke-virtual {v4, v2}, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->setAlbumsAsCategoryEnabled(Z)Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;

    .line 204
    :cond_23
    invoke-virtual {v3}, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->build()Landroid/provider/CloudMediaProviderContract$Capabilities;

    move-result-object v4

    return-object v4
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

    .line 186
    invoke-virtual {p0, p1}, Landroid/provider/CloudMediaProviderContract$Capabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/provider/CloudMediaProviderContract$Capabilities;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/provider/CloudMediaProviderContract$Capabilities;
    .registers 3
    .param p1, "size"    # I

    .line 210
    new-array v0, p1, [Landroid/provider/CloudMediaProviderContract$Capabilities;

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

    .line 186
    invoke-virtual {p0, p1}, Landroid/provider/CloudMediaProviderContract$Capabilities$1;->newArray(I)[Landroid/provider/CloudMediaProviderContract$Capabilities;

    move-result-object p1

    return-object p1
.end method
