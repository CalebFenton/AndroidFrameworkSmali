.class Landroid/graphics/fonts/FontUpdateRequest$Family$1;
.super Ljava/lang/Object;
.source "FontUpdateRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontUpdateRequest$Family;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/fonts/FontUpdateRequest$Family;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/fonts/FontUpdateRequest$Family;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "familyName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Landroid/graphics/fonts/FontUpdateRequest$Font;

    .line 239
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/graphics/fonts/FontUpdateRequest$Font;

    .line 238
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 240
    .local v1, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest$Font;>;"
    new-instance v2, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-direct {v2, v0, v1}, Landroid/graphics/fonts/FontUpdateRequest$Family;-><init>(Ljava/lang/String;Ljava/util/List;)V

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

    .line 233
    invoke-virtual {p0, p1}, Landroid/graphics/fonts/FontUpdateRequest$Family$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/graphics/fonts/FontUpdateRequest$Family;
    .registers 3
    .param p1, "size"    # I

    .line 245
    new-array v0, p1, [Landroid/graphics/fonts/FontUpdateRequest$Family;

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

    .line 233
    invoke-virtual {p0, p1}, Landroid/graphics/fonts/FontUpdateRequest$Family$1;->newArray(I)[Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object p1

    return-object p1
.end method
