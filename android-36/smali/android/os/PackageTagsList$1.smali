.class Landroid/os/PackageTagsList$1;
.super Ljava/lang/Object;
.source "PackageTagsList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PackageTagsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/PackageTagsList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/PackageTagsList;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .local v0, "count":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 163
    .local v1, "packageTags":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    const/4 v3, 0x0

    if-ge v2, v0, :cond_1b

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v3

    .line 166
    .local v3, "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, v4, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .end local v3    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 168
    .end local v2    # "i":I
    :cond_1b
    new-instance v2, Landroid/os/PackageTagsList;

    invoke-direct {v2, v1, v3}, Landroid/os/PackageTagsList;-><init>(Landroid/util/ArrayMap;Landroid/os/PackageTagsList-IA;)V

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

    .line 157
    invoke-virtual {p0, p1}, Landroid/os/PackageTagsList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/PackageTagsList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/PackageTagsList;
    .registers 3
    .param p1, "size"    # I

    .line 173
    new-array v0, p1, [Landroid/os/PackageTagsList;

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

    .line 157
    invoke-virtual {p0, p1}, Landroid/os/PackageTagsList$1;->newArray(I)[Landroid/os/PackageTagsList;

    move-result-object p1

    return-object p1
.end method
