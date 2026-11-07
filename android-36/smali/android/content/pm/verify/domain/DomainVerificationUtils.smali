.class public Landroid/content/pm/verify/domain/DomainVerificationUtils;
.super Ljava/lang/Object;
.source "DomainVerificationUtils.java"


# static fields
.field private static final blacklist STRINGS_TARGET_BYTE_SIZE:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Landroid/content/pm/verify/domain/DomainVerificationUtils;->STRINGS_TARGET_BYTE_SIZE:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist estimatedByteSizeOf(Ljava/lang/String;)I
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public static blacklist readHostMap(Landroid/os/Parcel;Ljava/util/Map;Ljava/lang/ClassLoader;)Ljava/util/Map;
    .registers 8
    .param p0, "in"    # Landroid/os/Parcel;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 77
    .local p1, "map":Ljava/util/Map;, "TT;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 79
    .local v0, "targetSizeExceeded":Z
    if-nez v0, :cond_a

    .line 80
    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 81
    return-object p1

    .line 84
    :cond_a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 86
    .local v1, "data":Landroid/os/Parcel;
    :try_start_e
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v2

    .line 87
    .local v2, "blob":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 88
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_22

    .line 91
    .end local v2    # "blob":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 92
    nop

    .line 94
    return-object p1

    .line 91
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 92
    throw v2
.end method

.method public static blacklist readHostSet(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 6
    .param p0, "in"    # Landroid/os/Parcel;
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

    .line 132
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 134
    .local v0, "targetSizeExceeded":Z
    if-nez v0, :cond_b

    .line 135
    invoke-static {p0}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->readSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 138
    :cond_b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 140
    .local v1, "data":Landroid/os/Parcel;
    :try_start_f
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v2

    .line 141
    .local v2, "blob":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 142
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 143
    invoke-static {v1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->readSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_23

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    return-object v3

    .line 145
    .end local v2    # "blob":[B
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    throw v2
.end method

.method private static blacklist readSet(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;
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

    .line 162
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 167
    :cond_c
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 168
    .local v1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "count":I
    :goto_12
    if-ge v2, v0, :cond_1e

    .line 169
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 171
    .end local v2    # "count":I
    :cond_1e
    return-object v1
.end method

.method public static blacklist writeHostMap(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 7
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 44
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    .line 45
    .local v0, "targetSizeExceeded":Z
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .line 46
    .local v1, "totalSize":I
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 47
    .local v3, "host":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->estimatedByteSizeOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 48
    sget v4, Landroid/content/pm/verify/domain/DomainVerificationUtils;->STRINGS_TARGET_BYTE_SIZE:I

    if-le v1, v4, :cond_24

    .line 49
    const/4 v0, 0x1

    .line 50
    goto :goto_25

    .line 52
    .end local v3    # "host":Ljava/lang/String;
    :cond_24
    goto :goto_d

    .line 54
    :cond_25
    :goto_25
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 56
    if-nez v0, :cond_2e

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 58
    return-void

    .line 61
    :cond_2e
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 63
    .local v2, "data":Landroid/os/Parcel;
    :try_start_32
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 64
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeBlob([B)V
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_41

    .line 66
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 67
    nop

    .line 68
    return-void

    .line 66
    :catchall_41
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 67
    throw v3
.end method

.method public static blacklist writeHostSet(Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 7
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 102
    .local v0, "targetSizeExceeded":Z
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .line 103
    .local v1, "totalSize":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 104
    .local v3, "host":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->estimatedByteSizeOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 105
    sget v4, Landroid/content/pm/verify/domain/DomainVerificationUtils;->STRINGS_TARGET_BYTE_SIZE:I

    if-le v1, v4, :cond_20

    .line 106
    const/4 v0, 0x1

    .line 107
    goto :goto_21

    .line 109
    .end local v3    # "host":Ljava/lang/String;
    :cond_20
    goto :goto_9

    .line 111
    :cond_21
    :goto_21
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 113
    if-nez v0, :cond_2a

    .line 114
    invoke-static {p0, p1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 115
    return-void

    .line 118
    :cond_2a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 120
    .local v2, "data":Landroid/os/Parcel;
    :try_start_2e
    invoke-static {v2, p1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 121
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeBlob([B)V
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_3d

    .line 123
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 124
    nop

    .line 125
    return-void

    .line 123
    :catchall_3d
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 124
    throw v3
.end method

.method private static blacklist writeSet(Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 4
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 151
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    return-void

    .line 154
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    .end local v1    # "string":Ljava/lang/String;
    goto :goto_12

    .line 158
    :cond_22
    return-void
.end method
