.class Landroid/health/connect/datatypes/ExerciseRoute$1;
.super Ljava/lang/Object;
.source "ExerciseRoute.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/ExerciseRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/health/connect/datatypes/ExerciseRoute;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/health/connect/datatypes/ExerciseRoute;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 44
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .local v1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/ExerciseRoute$Location;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1a

    .line 46
    sget-object v3, Landroid/health/connect/datatypes/ExerciseRoute$Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/datatypes/ExerciseRoute$Location;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 48
    .end local v2    # "i":I
    :cond_1a
    new-instance v2, Landroid/health/connect/datatypes/ExerciseRoute;

    invoke-direct {v2, v1}, Landroid/health/connect/datatypes/ExerciseRoute;-><init>(Ljava/util/List;)V

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

    .line 39
    invoke-virtual {p0, p1}, Landroid/health/connect/datatypes/ExerciseRoute$1;->createFromParcel(Landroid/os/Parcel;)Landroid/health/connect/datatypes/ExerciseRoute;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/health/connect/datatypes/ExerciseRoute;
    .registers 3
    .param p1, "size"    # I

    .line 53
    new-array v0, p1, [Landroid/health/connect/datatypes/ExerciseRoute;

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

    .line 39
    invoke-virtual {p0, p1}, Landroid/health/connect/datatypes/ExerciseRoute$1;->newArray(I)[Landroid/health/connect/datatypes/ExerciseRoute;

    move-result-object p1

    return-object p1
.end method
