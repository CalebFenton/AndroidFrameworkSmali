.class public final Landroid/os/PackageTagsList$Builder;
.super Ljava/lang/Object;
.source "PackageTagsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PackageTagsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mPackageTags:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    .line 256
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    .line 263
    return-void
.end method

.method private static blacklist copy(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 445
    .local p0, "value":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 446
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 447
    .local v1, "copy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_29

    .line 448
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 449
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/util/ArraySet;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 450
    .local v4, "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 447
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 452
    .end local v2    # "i":I
    :cond_29
    return-object v1
.end method

.method static synthetic blacklist lambda$add$0(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "p"    # Ljava/lang/String;

    .line 270
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist add(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;
    .registers 3
    .param p1, "packageTagsList"    # Landroid/os/PackageTagsList;

    .line 321
    invoke-static {p1}, Landroid/os/PackageTagsList;->-$$Nest$fgetmPackageTags(Landroid/os/PackageTagsList;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/PackageTagsList$Builder;->add(Ljava/util/Map;)Landroid/os/PackageTagsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 270
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    new-instance v1, Landroid/os/PackageTagsList$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/PackageTagsList$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 271
    return-object p0
.end method

.method public blacklist add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 280
    .local v0, "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_1a

    .line 281
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v1

    .line 282
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v1, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 284
    :cond_1a
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 285
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_23
    :goto_23
    return-object p0
.end method

.method public blacklist add(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/PackageTagsList$Builder;"
        }
    .end annotation

    .line 299
    .local p2, "attributionTags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 301
    return-object p0

    .line 304
    :cond_7
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 305
    .local v0, "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_1d

    .line 306
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 307
    iget-object v1, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 308
    :cond_1d
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 310
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 313
    :cond_26
    :goto_26
    return-object p0
.end method

.method public blacklist add(Ljava/util/Map;)Landroid/os/PackageTagsList$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/os/PackageTagsList$Builder;"
        }
    .end annotation

    .line 330
    .local p1, "packageTagsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 331
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 332
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 333
    .local v2, "newTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 334
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_3c

    .line 336
    :cond_33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;

    .line 338
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "newTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_3c
    goto :goto_11

    .line 340
    :cond_3d
    return-object p0
.end method

.method public blacklist build()Landroid/os/PackageTagsList;
    .registers 4

    .line 440
    new-instance v0, Landroid/os/PackageTagsList;

    iget-object v1, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-static {v1}, Landroid/os/PackageTagsList$Builder;->copy(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/PackageTagsList;-><init>(Landroid/util/ArrayMap;Landroid/os/PackageTagsList-IA;)V

    return-object v0
.end method

.method public blacklist clear()Landroid/os/PackageTagsList$Builder;
    .registers 2

    .line 432
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 433
    return-object p0
.end method

.method public blacklist remove(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;
    .registers 3
    .param p1, "packageTagsList"    # Landroid/os/PackageTagsList;

    .line 402
    invoke-static {p1}, Landroid/os/PackageTagsList;->-$$Nest$fgetmPackageTags(Landroid/os/PackageTagsList;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/PackageTagsList$Builder;->remove(Ljava/util/Map;)Landroid/os/PackageTagsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist remove(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 350
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-object p0
.end method

.method public blacklist remove(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 365
    .local v0, "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1b

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 366
    iget-object v1, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_1b
    return-object p0
.end method

.method public blacklist remove(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/PackageTagsList$Builder;"
        }
    .end annotation

    .line 381
    .local p2, "attributionTags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 383
    return-object p0

    .line 386
    :cond_7
    iget-object v0, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 387
    .local v0, "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_22

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 388
    iget-object v1, p0, Landroid/os/PackageTagsList$Builder;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_22
    return-object p0
.end method

.method public blacklist remove(Ljava/util/Map;)Landroid/os/PackageTagsList$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/os/PackageTagsList$Builder;"
        }
    .end annotation

    .line 415
    .local p1, "packageTagsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 416
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 417
    .local v2, "removedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 419
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/PackageTagsList$Builder;->remove(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_33

    .line 421
    :cond_2a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/os/PackageTagsList$Builder;->remove(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;

    .line 423
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "removedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_33
    goto :goto_8

    .line 425
    :cond_34
    return-object p0
.end method
