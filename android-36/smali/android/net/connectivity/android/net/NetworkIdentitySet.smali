.class public Landroid/net/connectivity/android/net/NetworkIdentitySet;
.super Ljava/util/HashSet;
.source "NetworkIdentitySet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Landroid/net/NetworkIdentity;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist VERSION_ADD_DEFAULT_NETWORK:I = 0x5

.field private static final blacklist VERSION_ADD_METERED:I = 0x4

.field private static final blacklist VERSION_ADD_NETWORK_ID:I = 0x3

.field private static final blacklist VERSION_ADD_OEM_MANAGED_NETWORK:I = 0x6

.field private static final blacklist VERSION_ADD_ROAMING:I = 0x2

.field private static final blacklist VERSION_ADD_SUB_ID:I = 0x7

.field private static final blacklist VERSION_INIT:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/DataInput;)V
    .registers 16
    .param p1, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 62
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 63
    .local v0, "version":I
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 64
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_70

    .line 65
    const/4 v3, 0x1

    if-gt v0, v3, :cond_14

    .line 66
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 68
    :cond_14
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .line 69
    .local v5, "type":I
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 70
    .local v6, "ratType":I
    invoke-static {p1}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "subscriberId":Ljava/lang/String;
    const/4 v4, 0x3

    if-lt v0, v4, :cond_29

    .line 73
    invoke-static {p1}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    .local v4, "networkId":Ljava/lang/String;
    goto :goto_2b

    .line 75
    .end local v4    # "networkId":Ljava/lang/String;
    :cond_29
    const/4 v4, 0x0

    move-object v8, v4

    .line 78
    .local v8, "networkId":Ljava/lang/String;
    :goto_2b
    const/4 v4, 0x2

    if-lt v0, v4, :cond_34

    .line 79
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v4

    move v9, v4

    .local v4, "roaming":Z
    goto :goto_36

    .line 81
    .end local v4    # "roaming":Z
    :cond_34
    const/4 v4, 0x0

    move v9, v4

    .line 85
    .local v9, "roaming":Z
    :goto_36
    const/4 v4, 0x4

    if-lt v0, v4, :cond_3f

    .line 86
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v3

    move v10, v3

    .local v3, "metered":Z
    goto :goto_44

    .line 91
    .end local v3    # "metered":Z
    :cond_3f
    if-nez v5, :cond_42

    goto :goto_43

    :cond_42
    const/4 v3, 0x0

    :goto_43
    move v10, v3

    .line 95
    .local v10, "metered":Z
    :goto_44
    const/4 v3, 0x5

    if-lt v0, v3, :cond_4d

    .line 96
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v3

    move v11, v3

    .local v3, "defaultNetwork":Z
    goto :goto_4f

    .line 98
    .end local v3    # "defaultNetwork":Z
    :cond_4d
    const/4 v3, 0x1

    move v11, v3

    .line 102
    .local v11, "defaultNetwork":Z
    :goto_4f
    const/4 v3, 0x6

    if-lt v0, v3, :cond_58

    .line 103
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    move v12, v3

    .local v3, "oemNetCapabilities":I
    goto :goto_5a

    .line 105
    .end local v3    # "oemNetCapabilities":I
    :cond_58
    const/4 v3, 0x0

    move v12, v3

    .line 109
    .local v12, "oemNetCapabilities":I
    :goto_5a
    const/4 v3, 0x7

    if-lt v0, v3, :cond_63

    .line 110
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    move v13, v3

    .local v3, "subId":I
    goto :goto_65

    .line 112
    .end local v3    # "subId":I
    :cond_63
    const/4 v3, -0x1

    move v13, v3

    .line 115
    .local v13, "subId":I
    :goto_65
    new-instance v4, Landroid/net/NetworkIdentity;

    invoke-direct/range {v4 .. v13}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZII)V

    invoke-virtual {p0, v4}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v5    # "type":I
    .end local v6    # "ratType":I
    .end local v7    # "subscriberId":Ljava/lang/String;
    .end local v8    # "networkId":Ljava/lang/String;
    .end local v9    # "roaming":Z
    .end local v10    # "metered":Z
    .end local v11    # "defaultNetwork":Z
    .end local v12    # "oemNetCapabilities":I
    .end local v13    # "subId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 118
    .end local v2    # "i":I
    :cond_70
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/NetworkIdentity;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "ident":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/NetworkIdentity;>;"
    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    return-void
.end method

.method public static blacklist compare(Landroid/net/connectivity/android/net/NetworkIdentitySet;Landroid/net/connectivity/android/net/NetworkIdentitySet;)I
    .registers 5
    .param p0, "left"    # Landroid/net/connectivity/android/net/NetworkIdentitySet;
    .param p1, "right"    # Landroid/net/connectivity/android/net/NetworkIdentitySet;

    .line 207
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    return v0

    .line 210
    :cond_14
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, -0x1

    return v0

    .line 211
    :cond_1c
    invoke-virtual {p1}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    return v0

    .line 213
    :cond_24
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    .line 214
    .local v0, "leftIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 215
    .local v1, "rightIdent":Landroid/net/NetworkIdentity;
    invoke-static {v0, v1}, Landroid/net/NetworkIdentity;->compare(Landroid/net/NetworkIdentity;Landroid/net/NetworkIdentity;)I

    move-result v2

    return v2
.end method

.method private static blacklist readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;
    .registers 2
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    .line 200
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist writeOptionalString(Ljava/io/DataOutput;Ljava/lang/String;)V
    .registers 3
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    if-eqz p1, :cond_a

    .line 191
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 192
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_e

    .line 194
    :cond_a
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 196
    :goto_e
    return-void
.end method


# virtual methods
.method public blacklist areAllMembersOnDefaultNetwork()Z
    .registers 5

    .line 178
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 179
    return v1

    .line 181
    :cond_8
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    .line 182
    .local v2, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->isDefaultNetwork()Z

    move-result v3

    if-nez v3, :cond_20

    .line 183
    const/4 v0, 0x0

    return v0

    .line 185
    .end local v2    # "ident":Landroid/net/NetworkIdentity;
    :cond_20
    goto :goto_c

    .line 186
    :cond_21
    return v1
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 223
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 225
    .local v0, "start":J
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkIdentity;

    .line 226
    .local v3, "ident":Landroid/net/NetworkIdentity;
    const-wide v4, 0x20b00000001L

    invoke-virtual {v3, p1, v4, v5}, Landroid/net/NetworkIdentity;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 227
    .end local v3    # "ident":Landroid/net/NetworkIdentity;
    goto :goto_8

    .line 229
    :cond_1d
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 230
    return-void
.end method

.method public blacklist isAnyMemberMetered()Z
    .registers 5

    .line 145
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 146
    return v1

    .line 148
    :cond_8
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    .line 149
    .local v2, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->isMetered()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 150
    const/4 v0, 0x1

    return v0

    .line 152
    .end local v2    # "ident":Landroid/net/NetworkIdentity;
    :cond_20
    goto :goto_c

    .line 153
    :cond_21
    return v1
.end method

.method public blacklist isAnyMemberRoaming()Z
    .registers 5

    .line 161
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 162
    return v1

    .line 164
    :cond_8
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    .line 165
    .local v2, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 166
    const/4 v0, 0x1

    return v0

    .line 168
    .end local v2    # "ident":Landroid/net/NetworkIdentity;
    :cond_20
    goto :goto_c

    .line 169
    :cond_21
    return v1
.end method

.method public blacklist writeToStream(Ljava/io/DataOutput;)V
    .registers 5
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 126
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 127
    invoke-virtual {p0}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 128
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getType()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 129
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getRatType()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 130
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getWifiNetworkKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/net/connectivity/android/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->isRoaming()Z

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 133
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->isMetered()Z

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 134
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->isDefaultNetwork()Z

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 135
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getOemManaged()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 136
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getSubId()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 137
    .end local v1    # "ident":Landroid/net/NetworkIdentity;
    goto :goto_f

    .line 138
    :cond_5b
    return-void
.end method
