.class public final Lcom/android/adservices/AdServicesParcelableUtil;
.super Ljava/lang/Object;
.source "AdServicesParcelableUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;,
        Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;,
        Lcom/android/adservices/AdServicesParcelableUtil$StringToObjectConverter;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist readInstantListFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 8
    .param p0, "sourceParcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation

    .line 290
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    .local v0, "listSize":I
    new-array v1, v0, [J

    .line 294
    .local v1, "tempArray":[J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v2, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/time/Instant;>;"
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readLongArray([J)V

    .line 297
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_12
    if-ge v3, v0, :cond_33

    .line 300
    :try_start_14
    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_1f

    .line 308
    .local v4, "instantFromMilli":Ljava/time/Instant;
    nop

    .line 309
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 301
    .end local v4    # "instantFromMilli":Ljava/time/Instant;
    :catch_1f
    move-exception v4

    .line 302
    .local v4, "exception":Ljava/lang/Exception;
    aget-wide v5, v1, v3

    .line 306
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 302
    const-string v6, "Error encountered while unparceling Instant from long %d; skipping element"

    invoke-static {v4, v6, v5}, Lcom/android/adservices/LogUtil;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 307
    nop

    .line 297
    .end local v4    # "exception":Ljava/lang/Exception;
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 312
    .end local v3    # "ii":I
    :cond_33
    return-object v2
.end method

.method public static blacklist readIntegerSetFromParcel(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 6
    .param p0, "sourceParcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 226
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    .local v0, "setSize":I
    new-array v1, v0, [I

    .line 230
    .local v1, "tempArray":[I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 232
    .local v2, "targetSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 233
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_12
    if-ge v3, v0, :cond_20

    .line 234
    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 237
    .end local v3    # "index":I
    :cond_20
    return-object v2
.end method

.method public static blacklist readMapFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$StringToObjectConverter;Ljava/lang/Class;)Ljava/util/Map;
    .registers 9
    .param p0, "sourceParcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Lcom/android/adservices/AdServicesParcelableUtil$StringToObjectConverter<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 112
    .local p1, "stringToKeyConverter":Lcom/android/adservices/AdServicesParcelableUtil$StringToObjectConverter;, "Lcom/android/adservices/AdServicesParcelableUtil$StringToObjectConverter<TK;>;"
    .local p2, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 117
    .local v0, "tempBundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v1, "resultMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 121
    .local v3, "key":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-ge v4, v5, :cond_3c

    .line 122
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    goto :goto_42

    .line 123
    :cond_3c
    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    :goto_42
    nop

    .line 124
    .local v4, "value":Landroid/os/Parcelable;, "TV;"
    invoke-interface {p1, v3}, Lcom/android/adservices/AdServicesParcelableUtil$StringToObjectConverter;->convertFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Landroid/os/Parcelable;, "TV;"
    goto :goto_25

    .line 127
    :cond_4b
    return-object v1
.end method

.method public static blacklist readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;
    .registers 3
    .param p0, "sourceParcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 72
    .local p1, "parcelReader":Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;, "Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader<TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 76
    invoke-interface {p1, p0}, Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;->read(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 78
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readSetFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/Set;
    .registers 4
    .param p0, "sourceParcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 152
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist readStringSetFromParcel(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 3
    .param p0, "sourceParcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static blacklist writeInstantListToParcel(Landroid/os/Parcel;Ljava/util/List;)V
    .registers 9
    .param p0, "targetParcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "Ljava/time/Instant;",
            ">;)V"
        }
    .end annotation

    .line 251
    .local p1, "sourceList":Ljava/util/List;, "Ljava/util/List<Ljava/time/Instant;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 255
    .local v0, "tempArray":[J
    const/4 v1, 0x0

    .line 257
    .local v1, "actualArraySize":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/Instant;

    .line 260
    .local v3, "instant":Ljava/time/Instant;
    :try_start_1d
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_28

    .line 267
    .local v4, "instantAsEpochMilli":J
    nop

    .line 268
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "actualArraySize":I
    .local v6, "actualArraySize":I
    aput-wide v4, v0, v1

    .line 269
    .end local v3    # "instant":Ljava/time/Instant;
    .end local v4    # "instantAsEpochMilli":J
    move v1, v6

    goto :goto_11

    .line 261
    .end local v6    # "actualArraySize":I
    .restart local v1    # "actualArraySize":I
    .restart local v3    # "instant":Ljava/time/Instant;
    :catch_28
    move-exception v4

    .line 262
    .local v4, "exception":Ljava/lang/Exception;
    const-string v5, "Error encountered while parceling Instant %s to long; skipping element"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/adservices/LogUtil;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    goto :goto_11

    .line 273
    .end local v3    # "instant":Ljava/time/Instant;
    .end local v4    # "exception":Ljava/lang/Exception;
    :cond_33
    new-array v2, v1, [J

    .line 274
    .local v2, "writeArray":[J
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 278
    return-void
.end method

.method public static blacklist writeIntegerSetToParcel(Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 8
    .param p0, "targetParcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p1, "sourceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 197
    .local v0, "tempArray":[I
    const/4 v1, 0x0

    .line 199
    .local v1, "actualArraySize":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 200
    .local v3, "integer":Ljava/lang/Integer;
    if-nez v3, :cond_25

    .line 201
    const-string v4, "Null value encountered while parceling Integer to int array; skipping element"

    invoke-static {v4}, Lcom/android/adservices/LogUtil;->w(Ljava/lang/String;)I

    .line 204
    goto :goto_11

    .line 207
    :cond_25
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "actualArraySize":I
    .local v4, "actualArraySize":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    .line 208
    .end local v3    # "integer":Ljava/lang/Integer;
    move v1, v4

    goto :goto_11

    .line 212
    .end local v4    # "actualArraySize":I
    .restart local v1    # "actualArraySize":I
    :cond_2f
    new-array v2, v1, [I

    .line 213
    .local v2, "writeArray":[I
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 217
    return-void
.end method

.method public static blacklist writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 7
    .param p0, "targetParcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 92
    .local p1, "sourceMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "tempBundle":Landroid/os/Bundle;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 97
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_13

    .line 100
    :cond_31
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method public static blacklist writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V
    .registers 4
    .param p0, "targetParcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;",
            "Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    .local p1, "nullableField":Ljava/lang/Object;, "TT;"
    .local p2, "parcelWriter":Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;, "Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter<TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    if-eqz p1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 57
    .local v0, "isFieldPresent":Z
    :goto_b
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 58
    if-eqz v0, :cond_13

    .line 59
    invoke-interface {p2, p0, p1}, Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;->write(Landroid/os/Parcel;Ljava/lang/Object;)V

    .line 61
    :cond_13
    return-void
.end method

.method public static blacklist writeSetToParcel(Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 3
    .param p0, "targetParcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "TT;>;)V"
        }
    .end annotation

    .line 138
    .local p1, "sourceSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 142
    .local v0, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 143
    return-void
.end method

.method public static blacklist writeStringSetToParcel(Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 3
    .param p0, "targetParcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "sourceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 170
    .local v0, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 171
    return-void
.end method
