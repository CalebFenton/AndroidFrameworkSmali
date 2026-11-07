.class public Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;
.super Ljava/lang/Object;
.source "ExerciseRouteInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    }
.end annotation


# instance fields
.field private final blacklist mRouteExerciseRouteLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "routeExerciseRouteLocations":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->mRouteExerciseRouteLocations:Ljava/util/List;

    .line 44
    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;
    .registers 6
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 55
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 56
    .local v0, "routeIsNull":Z
    if-eqz v0, :cond_8

    .line 57
    const/4 v1, 0x0

    return-object v1

    .line 60
    :cond_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "routeSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .local v2, "routeLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v1, :cond_1e

    .line 63
    invoke-static {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->readFromParcel(Landroid/os/Parcel;)Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 65
    .end local v3    # "i":I
    :cond_1e
    new-instance v3, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    invoke-direct {v3, v2}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public static blacklist writeToParcel(Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;Landroid/os/Parcel;)V
    .registers 3
    .param p0, "route"    # Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 73
    if-nez p0, :cond_7

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_e

    .line 76
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 77
    invoke-direct {p0, p1}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->writeToParcel(Landroid/os/Parcel;)V

    .line 79
    :goto_e
    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 82
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->mRouteExerciseRouteLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->mRouteExerciseRouteLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    .line 84
    .local v1, "location":Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    invoke-virtual {v1, p1}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->writeToParcel(Landroid/os/Parcel;)V

    .line 85
    .end local v1    # "location":Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    goto :goto_f

    .line 86
    :cond_1f
    return-void
.end method


# virtual methods
.method blacklist addLocation(Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;)V
    .registers 3
    .param p1, "location"    # Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    .line 109
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->mRouteExerciseRouteLocations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 101
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 102
    :cond_4
    instance-of v0, p1, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 103
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;

    .line 104
    .local v0, "that":Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;
    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->getRouteLocations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->getRouteLocations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getRouteLocations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->mRouteExerciseRouteLocations:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->mRouteExerciseRouteLocations:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toExternalRoute()Landroid/health/connect/datatypes/ExerciseRoute;
    .registers 5

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->mRouteExerciseRouteLocations:Ljava/util/List;

    .line 92
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v0, "routeLocations":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/ExerciseRoute$Location;>;"
    iget-object v1, p0, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal;->mRouteExerciseRouteLocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;

    .line 94
    .local v2, "location":Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    invoke-virtual {v2}, Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;->toExternalExerciseRouteLocation()Landroid/health/connect/datatypes/ExerciseRoute$Location;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v2    # "location":Landroid/health/connect/internal/datatypes/ExerciseRouteInternal$LocationInternal;
    goto :goto_11

    .line 96
    :cond_25
    new-instance v1, Landroid/health/connect/datatypes/ExerciseRoute;

    invoke-direct {v1, v0}, Landroid/health/connect/datatypes/ExerciseRoute;-><init>(Ljava/util/List;)V

    return-object v1
.end method
