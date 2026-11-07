.class public final Landroid/location/LocationResult;
.super Ljava/lang/Object;
.source "LocationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationResult$BadLocationException;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_ACCURACY_M:F = 1000000.0f

.field private static final blacklist MAX_SPEED_MPS:F = 343.0f

.field private static final blacklist TAG:Ljava/lang/String; = "LocationResult"


# instance fields
.field private final blacklist mLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 305
    new-instance v0, Landroid/location/LocationResult$1;

    invoke-direct {v0}, Landroid/location/LocationResult$1;-><init>()V

    sput-object v0, Landroid/location/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "locations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 115
    iput-object p1, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    .line 116
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/ArrayList;Landroid/location/LocationResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/LocationResult;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static blacklist create(Ljava/util/List;)Landroid/location/LocationResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)",
            "Landroid/location/LocationResult;"
        }
    .end annotation

    .line 66
    .local p0, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .local v0, "locationsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 69
    .local v2, "location":Landroid/location/Location;
    new-instance v3, Landroid/location/Location;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v2    # "location":Landroid/location/Location;
    goto :goto_16

    .line 71
    :cond_31
    new-instance v1, Landroid/location/LocationResult;

    invoke-direct {v1, v0}, Landroid/location/LocationResult;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public static varargs blacklist create([Landroid/location/Location;)Landroid/location/LocationResult;
    .registers 7
    .param p0, "locations"    # [Landroid/location/Location;

    .line 79
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .local v0, "locationsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    array-length v2, p0

    :goto_11
    if-ge v1, v2, :cond_26

    aget-object v3, p0, v1

    .line 82
    .local v3, "location":Landroid/location/Location;
    new-instance v4, Landroid/location/Location;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    invoke-direct {v4, v5}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v3    # "location":Landroid/location/Location;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 84
    :cond_26
    new-instance v1, Landroid/location/LocationResult;

    invoke-direct {v1, v0}, Landroid/location/LocationResult;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public static blacklist wrap(Ljava/util/List;)Landroid/location/LocationResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)",
            "Landroid/location/LocationResult;"
        }
    .end annotation

    .line 93
    .local p0, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 94
    new-instance v0, Landroid/location/LocationResult;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Landroid/location/LocationResult;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static varargs blacklist wrap([Landroid/location/Location;)Landroid/location/LocationResult;
    .registers 6
    .param p0, "locations"    # [Landroid/location/Location;

    .line 103
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v0, "newLocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    array-length v2, p0

    :goto_11
    if-ge v1, v2, :cond_21

    aget-object v3, p0, v1

    .line 106
    .local v3, "location":Landroid/location/Location;
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v3    # "location":Landroid/location/Location;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 108
    :cond_21
    new-instance v1, Landroid/location/LocationResult;

    invoke-direct {v1, v0}, Landroid/location/LocationResult;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method


# virtual methods
.method public blacklist asLastLocationResult()Landroid/location/LocationResult;
    .registers 4

    .line 234
    iget-object v0, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 235
    return-object p0

    .line 237
    :cond_a
    new-array v0, v1, [Landroid/location/Location;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist asList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist deepCopy()Landroid/location/LocationResult;
    .registers 6

    .line 220
    iget-object v0, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 221
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v1, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_21

    .line 223
    new-instance v3, Landroid/location/Location;

    iget-object v4, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 225
    .end local v2    # "i":I
    :cond_21
    new-instance v2, Landroid/location/LocationResult;

    invoke-direct {v2, v1}, Landroid/location/LocationResult;-><init>(Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 331
    if-ne p0, p1, :cond_4

    .line 332
    const/4 v0, 0x1

    return v0

    .line 334
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 338
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/location/LocationResult;

    .line 339
    .local v0, "that":Landroid/location/LocationResult;
    iget-object v1, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 335
    .end local v0    # "that":Landroid/location/LocationResult;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist filter(Ljava/util/function/Predicate;)Landroid/location/LocationResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/location/Location;",
            ">;)",
            "Landroid/location/LocationResult;"
        }
    .end annotation

    .line 250
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/location/Location;>;"
    iget-object v0, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    .line 251
    .local v0, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    iget-object v1, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 252
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_4f

    .line 253
    iget-object v3, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 254
    iget-object v3, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    if-ne v0, v3, :cond_4c

    .line 255
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    .end local v0    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    .local v3, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2b
    if-ge v0, v2, :cond_3b

    .line 257
    iget-object v4, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_3b
    move-object v0, v3

    .end local v0    # "j":I
    goto :goto_4c

    .line 260
    .end local v3    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    .local v0, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    :cond_3d
    iget-object v3, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    if-eq v0, v3, :cond_4c

    .line 261
    iget-object v3, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_4c
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 265
    .end local v2    # "i":I
    :cond_4f
    iget-object v2, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    if-ne v0, v2, :cond_54

    .line 266
    return-object p0

    .line 267
    :cond_54
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 268
    const/4 v2, 0x0

    return-object v2

    .line 270
    :cond_5c
    new-instance v2, Landroid/location/LocationResult;

    invoke-direct {v2, v0}, Landroid/location/LocationResult;-><init>(Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public blacklist get(I)Landroid/location/Location;
    .registers 3
    .param p1, "i"    # I

    .line 204
    iget-object v0, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    return-object v0
.end method

.method public blacklist getLastLocation()Landroid/location/Location;
    .registers 3

    .line 189
    iget-object v0, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist map(Ljava/util/function/Function;)Landroid/location/LocationResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/location/Location;",
            "Landroid/location/Location;",
            ">;)",
            "Landroid/location/LocationResult;"
        }
    .end annotation

    .line 282
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/location/Location;Landroid/location/Location;>;"
    iget-object v0, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    .line 283
    .local v0, "mapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    iget-object v1, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 284
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_46

    .line 285
    iget-object v3, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 286
    .local v3, "location":Landroid/location/Location;
    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    .line 287
    .local v4, "newLocation":Landroid/location/Location;
    iget-object v5, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    if-eq v0, v5, :cond_21

    .line 288
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 289
    :cond_21
    if-eq v4, v3, :cond_43

    .line 290
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    .end local v0    # "mapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    .local v5, "mapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2f
    if-ge v0, v2, :cond_3f

    .line 292
    iget-object v6, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Location;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 294
    .end local v0    # "j":I
    :cond_3f
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 284
    .end local v3    # "location":Landroid/location/Location;
    .end local v4    # "newLocation":Landroid/location/Location;
    .end local v5    # "mapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    .local v0, "mapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 298
    .end local v2    # "i":I
    :cond_46
    iget-object v2, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    if-ne v0, v2, :cond_4b

    .line 299
    return-object p0

    .line 301
    :cond_4b
    new-instance v2, Landroid/location/LocationResult;

    invoke-direct {v2, v0}, Landroid/location/LocationResult;-><init>(Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public blacklist size()I
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()Landroid/location/LocationResult;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/location/LocationResult$BadLocationException;
        }
    .end annotation

    .line 125
    const-wide/16 v0, 0x0

    .line 126
    .local v0, "prevElapsedRealtimeNs":J
    iget-object v2, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 127
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_18f

    .line 128
    iget-object v4, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    .line 129
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->locationValidation()Z

    move-result v5

    if-eqz v5, :cond_131

    .line 130
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    const-wide v7, -0x3fa9800000000000L    # -90.0

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_129

    .line 131
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    const-wide v7, 0x4056800000000000L    # 90.0

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_129

    .line 132
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const-wide v7, -0x3f99800000000000L    # -180.0

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_129

    .line 133
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const-wide v7, 0x4066800000000000L    # 180.0

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_129

    .line 134
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_129

    .line 135
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_129

    .line 138
    invoke-virtual {v4}, Landroid/location/Location;->hasAccuracy()Z

    move-result v5

    if-eqz v5, :cond_121

    .line 141
    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_119

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    const v7, 0x49742400    # 1000000.0f

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_119

    .line 144
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-ltz v5, :cond_111

    .line 147
    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    cmp-long v5, v0, v7

    if-gtz v5, :cond_109

    .line 151
    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-gtz v5, :cond_101

    .line 155
    invoke-virtual {v4}, Landroid/location/Location;->isMock()Z

    move-result v5

    if-nez v5, :cond_c8

    .line 156
    invoke-virtual {v4}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c0

    .line 159
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v5, v7, v9

    if-nez v5, :cond_c8

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_b8

    goto :goto_c8

    .line 160
    :cond_b8
    new-instance v5, Landroid/location/LocationResult$BadLocationException;

    const-string v6, "location must not be at 0,0"

    invoke-direct {v5, v6}, Landroid/location/LocationResult$BadLocationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 157
    :cond_c0
    new-instance v5, Landroid/location/LocationResult$BadLocationException;

    const-string v6, "location must have valid provider"

    invoke-direct {v5, v6}, Landroid/location/LocationResult$BadLocationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 164
    :cond_c8
    :goto_c8
    invoke-virtual {v4}, Landroid/location/Location;->hasSpeed()Z

    move-result v5

    if-eqz v5, :cond_141

    invoke-virtual {v4}, Landroid/location/Location;->getSpeed()F

    move-result v5

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_e1

    .line 165
    invoke-virtual {v4}, Landroid/location/Location;->getSpeed()F

    move-result v5

    const v6, 0x43ab8000    # 343.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_141

    .line 166
    :cond_e1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removed bad location speed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/location/Location;->getSpeed()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LocationResult"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v4}, Landroid/location/Location;->removeSpeed()V

    goto :goto_141

    .line 153
    :cond_101
    new-instance v5, Landroid/location/LocationResult$BadLocationException;

    const-string v6, "location must not have realtime in the future"

    invoke-direct {v5, v6}, Landroid/location/LocationResult$BadLocationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    :cond_109
    new-instance v5, Landroid/location/LocationResult$BadLocationException;

    const-string v6, "location must have valid monotonically increasing realtime"

    invoke-direct {v5, v6}, Landroid/location/LocationResult$BadLocationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 145
    :cond_111
    new-instance v5, Landroid/location/LocationResult$BadLocationException;

    const-string v6, "location must have valid time"

    invoke-direct {v5, v6}, Landroid/location/LocationResult$BadLocationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 142
    :cond_119
    new-instance v5, Landroid/location/LocationResult$BadLocationException;

    const-string v6, "location must have reasonable accuracy"

    invoke-direct {v5, v6}, Landroid/location/LocationResult$BadLocationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :cond_121
    new-instance v5, Landroid/location/LocationResult$BadLocationException;

    const-string v6, "location must have accuracy"

    invoke-direct {v5, v6}, Landroid/location/LocationResult$BadLocationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 136
    :cond_129
    new-instance v5, Landroid/location/LocationResult$BadLocationException;

    const-string v6, "location must have valid lat/lng"

    invoke-direct {v5, v6}, Landroid/location/LocationResult$BadLocationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 170
    :cond_131
    invoke-virtual {v4}, Landroid/location/Location;->isComplete()Z

    move-result v5

    const-string v6, ": "

    if-eqz v5, :cond_16c

    .line 174
    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-ltz v5, :cond_149

    .line 179
    :cond_141
    :goto_141
    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v0

    .line 127
    .end local v4    # "location":Landroid/location/Location;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 175
    .restart local v4    # "location":Landroid/location/Location;
    :cond_149
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "incorrectly ordered location at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_16c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "incomplete location at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 182
    .end local v3    # "i":I
    .end local v4    # "location":Landroid/location/Location;
    :cond_18f
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 326
    iget-object v0, p0, Landroid/location/LocationResult;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 327
    return-void
.end method
