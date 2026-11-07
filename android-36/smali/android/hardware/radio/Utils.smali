.class final Landroid/hardware/radio/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BroadcastRadio.utils"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist close(Landroid/hardware/radio/ICloseHandle;)V
    .registers 2
    .param p0, "handle"    # Landroid/hardware/radio/ICloseHandle;

    .line 133
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/radio/ICloseHandle;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 136
    goto :goto_8

    .line 134
    :catch_4
    move-exception v0

    .line 135
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 137
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_8
    return-void
.end method

.method static blacklist createIntSet(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;
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

    .line 110
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, "size":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 112
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_9
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "size":I
    .local v2, "size":I
    if-lez v0, :cond_1a

    .line 113
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_9

    .line 115
    :cond_1a
    return-object v1
.end method

.method static blacklist createSet(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/Set;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 92
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .local v0, "size":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 94
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    :goto_9
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "size":I
    .local v2, "size":I
    if-lez v0, :cond_16

    .line 95
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_9

    .line 97
    :cond_16
    return-object v1
.end method

.method static synthetic blacklist lambda$writeIntSet$1(Landroid/os/Parcel;Ljava/lang/Integer;)V
    .registers 3
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "elem"    # Ljava/lang/Integer;

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method static synthetic blacklist lambda$writeSet$0(Landroid/os/Parcel;Landroid/os/Parcelable;)V
    .registers 3
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "elem"    # Landroid/os/Parcelable;

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method

.method static blacklist readStringIntMap(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 6
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, "size":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 74
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_9
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "size":I
    .local v2, "size":I
    if-lez v0, :cond_1e

    .line 75
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .local v3, "value":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":I
    move v0, v2

    goto :goto_9

    .line 79
    :cond_1e
    return-object v1
.end method

.method static blacklist readStringMap(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "size":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 51
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_9
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "size":I
    .local v2, "size":I
    if-lez v0, :cond_1a

    .line 52
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    move v0, v2

    goto :goto_9

    .line 56
    :cond_1a
    return-object v1
.end method

.method static blacklist writeIntSet(Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 4
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez p1, :cond_7

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    return-void

    .line 105
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/hardware/radio/Utils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/hardware/radio/Utils$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 107
    return-void
.end method

.method static blacklist writeSet(Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 4
    .param p0, "dest"    # Landroid/os/Parcel;
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

    .line 83
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-nez p1, :cond_7

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void

    .line 87
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/hardware/radio/Utils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/hardware/radio/Utils$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 89
    return-void
.end method

.method static blacklist writeStringIntMap(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 5
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p1, :cond_7

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void

    .line 64
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 66
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_16

    .line 69
    :cond_39
    return-void
.end method

.method static blacklist writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 5
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    return-void

    .line 41
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 43
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_16

    .line 46
    :cond_35
    return-void
.end method

.method static blacklist writeTypedCollection(Landroid/os/Parcel;Ljava/util/Collection;)V
    .registers 4
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 120
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    .line 121
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz p1, :cond_11

    .line 122
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 123
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_11

    .line 125
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 128
    :cond_11
    :goto_11
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 129
    return-void
.end method
