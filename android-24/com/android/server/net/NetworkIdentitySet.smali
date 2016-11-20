.class public Lcom/android/server/net/NetworkIdentitySet;
.super Ljava/util/HashSet;
.source "NetworkIdentitySet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Landroid/net/NetworkIdentity;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/net/NetworkIdentitySet;",
        ">;"
    }
.end annotation


# static fields
.field private static final VERSION_ADD_METERED:I = 0x4

.field private static final VERSION_ADD_NETWORK_ID:I = 0x3

.field private static final VERSION_ADD_ROAMING:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 11
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    #@3
    .line 45
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@6
    move-result v10

    #@7
    .line 46
    .local v10, "version":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@a
    move-result v9

    #@b
    .line 47
    .local v9, "size":I
    const/4 v7, 0x0

    #@c
    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_5

    #@e
    .line 48
    const/4 v0, 0x1

    #@f
    if-gt v10, v0, :cond_0

    #@11
    .line 49
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@14
    move-result v8

    #@15
    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@18
    move-result v1

    #@19
    .line 52
    .local v1, "type":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@1c
    move-result v2

    #@1d
    .line 53
    .local v2, "subType":I
    invoke-static {p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 55
    .local v3, "subscriberId":Ljava/lang/String;
    const/4 v0, 0x3

    #@22
    if-lt v10, v0, :cond_1

    #@24
    .line 56
    invoke-static {p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    .line 61
    :goto_1
    const/4 v0, 0x2

    #@29
    if-lt v10, v0, :cond_2

    #@2b
    .line 62
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    #@2e
    move-result v5

    #@2f
    .line 68
    :goto_2
    const/4 v0, 0x4

    #@30
    if-lt v10, v0, :cond_3

    #@32
    .line 69
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    #@35
    move-result v6

    #@36
    .line 77
    :goto_3
    new-instance v0, Landroid/net/NetworkIdentity;

    #@38
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    #@3b
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    #@3e
    .line 47
    add-int/lit8 v7, v7, 0x1

    #@40
    goto :goto_0

    #@41
    .line 58
    :cond_1
    const/4 v4, 0x0

    #@42
    .local v4, "networkId":Ljava/lang/String;
    goto :goto_1

    #@43
    .line 64
    .end local v4    # "networkId":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    #@44
    .local v5, "roaming":Z
    goto :goto_2

    #@45
    .line 74
    .end local v5    # "roaming":Z
    :cond_3
    if-nez v1, :cond_4

    #@47
    const/4 v6, 0x1

    #@48
    .local v6, "metered":Z
    goto :goto_3

    #@49
    .end local v6    # "metered":Z
    :cond_4
    const/4 v6, 0x0

    #@4a
    .restart local v6    # "metered":Z
    goto :goto_3

    #@4b
    .line 44
    .end local v1    # "type":I
    .end local v2    # "subType":I
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v6    # "metered":Z
    :cond_5
    return-void
.end method

.method private static readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 118
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 120
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
.end method

.method private static writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    if-eqz p1, :cond_0

    #@2
    .line 109
    const/4 v0, 0x1

    #@3
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@6
    .line 110
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@9
    .line 107
    :goto_0
    return-void

    #@a
    .line 112
    :cond_0
    const/4 v0, 0x0

    #@b
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@e
    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/NetworkIdentitySet;)I
    .locals 3
    .param p1, "another"    # Lcom/android/server/net/NetworkIdentitySet;

    #@0
    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    const/4 v2, -0x1

    #@7
    return v2

    #@8
    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    const/4 v2, 0x1

    #@f
    return v2

    #@10
    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/net/NetworkIdentity;

    #@1a
    .line 130
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/net/NetworkIdentity;

    #@24
    .line 131
    .local v0, "anotherIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {v1, v0}, Landroid/net/NetworkIdentity;->compareTo(Landroid/net/NetworkIdentity;)I

    #@27
    move-result v2

    #@28
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 125
    check-cast p1, Lcom/android/server/net/NetworkIdentitySet;

    #@2
    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkIdentitySet;->compareTo(Lcom/android/server/net/NetworkIdentitySet;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isAnyMemberRoaming()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 96
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 97
    return v3

    #@8
    .line 99
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "ident$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_2

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/net/NetworkIdentity;

    #@18
    .line 100
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 101
    const/4 v2, 0x1

    #@1f
    return v2

    #@20
    .line 104
    .end local v0    # "ident":Landroid/net/NetworkIdentity;
    :cond_2
    return v3
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    const/4 v2, 0x4

    #@1
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@4
    .line 83
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->size()I

    #@7
    move-result v2

    #@8
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@b
    .line 84
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "ident$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/net/NetworkIdentity;

    #@1b
    .line 85
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getType()I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@22
    .line 86
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getSubType()I

    #@25
    move-result v2

    #@26
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@29
    .line 87
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    #@30
    .line 88
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    #@37
    .line 89
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    #@3a
    move-result v2

    #@3b
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    #@3e
    .line 90
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getMetered()Z

    #@41
    move-result v2

    #@42
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    #@45
    goto :goto_0

    #@46
    .line 81
    .end local v0    # "ident":Landroid/net/NetworkIdentity;
    :cond_0
    return-void
.end method
