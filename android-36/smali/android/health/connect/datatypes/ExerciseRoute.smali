.class public final Landroid/health/connect/datatypes/ExerciseRoute;
.super Ljava/lang/Object;
.source "ExerciseRoute.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/ExerciseRoute$Location;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/datatypes/ExerciseRoute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRouteLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseRoute$Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/health/connect/datatypes/ExerciseRoute$1;

    invoke-direct {v0}, Landroid/health/connect/datatypes/ExerciseRoute$1;-><init>()V

    sput-object v0, Landroid/health/connect/datatypes/ExerciseRoute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseRoute$Location;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "routeLocations":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/ExerciseRoute$Location;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Landroid/health/connect/datatypes/ExerciseRoute;->mRouteLocations:Ljava/util/List;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 74
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 75
    :cond_4
    instance-of v0, p1, Landroid/health/connect/datatypes/ExerciseRoute;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 76
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/health/connect/datatypes/ExerciseRoute;

    .line 77
    .local v0, "that":Landroid/health/connect/datatypes/ExerciseRoute;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute;->getRouteLocations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/datatypes/ExerciseRoute;->getRouteLocations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getRouteLocations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/ExerciseRoute$Location;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute;->mRouteLocations:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 82
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute;->getRouteLocations()Ljava/util/List;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toRouteInternal()Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;
    .registers 5

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute;->getRouteLocations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v0, "routeLocations":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;>;"
    invoke-virtual {p0}, Landroid/health/connect/datatypes/ExerciseRoute;->getRouteLocations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/datatypes/ExerciseRoute$Location;

    .line 90
    .local v2, "location":Landroid/health/connect/datatypes/ExerciseRoute$Location;
    invoke-virtual {v2}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->toExerciseRouteLocationInternal()Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v2    # "location":Landroid/health/connect/datatypes/ExerciseRoute$Location;
    goto :goto_15

    .line 92
    :cond_29
    new-instance v1, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    invoke-direct {v1, v0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 102
    iget-object v0, p0, Landroid/health/connect/datatypes/ExerciseRoute;->mRouteLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Landroid/health/connect/datatypes/ExerciseRoute;->mRouteLocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 104
    iget-object v1, p0, Landroid/health/connect/datatypes/ExerciseRoute;->mRouteLocations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/datatypes/ExerciseRoute$Location;

    invoke-virtual {v1, p1, p2}, Landroid/health/connect/datatypes/ExerciseRoute$Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 106
    .end local v0    # "i":I
    :cond_20
    return-void
.end method
