.class public final Landroid/app/appsearch/util/SchemaMigrationUtil;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static blacklist checkDeletedAndIncompatibleAfterMigration(Landroid/app/appsearch/InternalSetSchemaResponse;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/InternalSetSchemaResponse;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/appsearch/exceptions/AppSearchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/InternalSetSchemaResponse;->isSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_2f

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroid/app/appsearch/InternalSetSchemaResponse;->getSetSchemaResponse()Landroid/app/appsearch/SetSchemaResponse;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/appsearch/SetSchemaResponse;->getIncompatibleTypes()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    new-instance v2, Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/appsearch/SetSchemaResponse;->getDeletedTypes()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_30

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_30

    .line 47
    .line 48
    :goto_2f
    return-void

    .line 49
    :cond_30
    new-instance p1, Landroid/app/appsearch/exceptions/AppSearchException;

    .line 50
    .line 51
    const/4 v0, 0x7

    .line 52
    invoke-virtual {p0}, Landroid/app/appsearch/InternalSetSchemaResponse;->getErrorMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {p1, v0, p0}, Landroid/app/appsearch/exceptions/AppSearchException;-><init>(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public static blacklist getActiveMigrators(Ljava/util/Set;Ljava/util/Map;II)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/Migrator;",
            ">;II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/Migrator;",
            ">;"
        }
    .end annotation

    .line 1
    if-ne p2, p3, :cond_5

    .line 2
    .line 3
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_5
    new-instance v0, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_26

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/app/appsearch/AppSearchSchema;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_12

    .line 39
    :cond_26
    new-instance p0, Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_33
    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_5b

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/app/appsearch/Migrator;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_33

    .line 81
    .line 82
    invoke-virtual {v1, p2, p3}, Landroid/app/appsearch/Migrator;->shouldMigrate(II)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_33

    .line 87
    .line 88
    invoke-virtual {p0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_33

    .line 92
    :cond_5b
    return-object p0
.end method
