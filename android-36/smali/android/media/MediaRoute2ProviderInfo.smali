.class public final Landroid/media/MediaRoute2ProviderInfo;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRoute2ProviderInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MediaRoute2ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mRoutes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mUniqueId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo$1;

    invoke-direct {v0}, Landroid/media/MediaRoute2ProviderInfo$1;-><init>()V

    sput-object v0, Landroid/media/MediaRoute2ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaRoute2ProviderInfo$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "builder must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iget-object v0, p1, Landroid/media/MediaRoute2ProviderInfo$Builder;->mUniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderInfo;->mUniqueId:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Landroid/media/MediaRoute2ProviderInfo$Builder;->mRoutes:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderInfo;->mRoutes:Landroid/util/ArrayMap;

    .line 59
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderInfo;->mUniqueId:Ljava/lang/String;

    .line 63
    sget-object v0, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayMap(Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 64
    .local v0, "routes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/media/MediaRoute2Info;>;"
    if-nez v0, :cond_14

    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    goto :goto_15

    :cond_14
    move-object v1, v0

    :goto_15
    iput-object v1, p0, Landroid/media/MediaRoute2ProviderInfo;->mRoutes:Landroid/util/ArrayMap;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRoute(Ljava/lang/String;)Landroid/media/MediaRoute2Info;
    .registers 4
    .param p1, "routeId"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo;->mRoutes:Landroid/util/ArrayMap;

    const-string v1, "routeId must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRoute2Info;

    return-object v0
.end method

.method public blacklist getRoutes()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUniqueId()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isValid()Z
    .registers 6

    .line 73
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo;->mUniqueId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 74
    return v1

    .line 76
    :cond_6
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 77
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_24

    .line 78
    iget-object v3, p0, Landroid/media/MediaRoute2ProviderInfo;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 79
    .local v3, "route":Landroid/media/MediaRoute2Info;
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->isValid()Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_23

    .line 77
    .end local v3    # "route":Landroid/media/MediaRoute2Info;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 80
    .restart local v3    # "route":Landroid/media/MediaRoute2Info;
    :cond_23
    :goto_23
    return v1

    .line 83
    .end local v2    # "i":I
    .end local v3    # "route":Landroid/media/MediaRoute2Info;
    :cond_24
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string v1, "MediaRouteProviderInfo { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    const-string v1, "uniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRoute2ProviderInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    const-string v1, ", routes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 120
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderInfo;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArrayMap(Landroid/util/ArrayMap;I)V

    .line 122
    return-void
.end method
