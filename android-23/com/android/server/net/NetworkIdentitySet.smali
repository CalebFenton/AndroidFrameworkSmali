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
.field private static final VERSION_ADD_NETWORK_ID:I = 0x3

.field private static final VERSION_ADD_ROAMING:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
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
    .line 41
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    #@3
    .line 42
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@6
    move-result v10

    #@7
    .line 43
    .local v10, "version":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@a
    move-result v9

    #@b
    .line 44
    .local v9, "size":I
    const/4 v6, 0x0

    #@c
    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_3

    #@e
    .line 45
    const/4 v0, 0x1

    #@f
    if-gt v10, v0, :cond_0

    #@11
    .line 46
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@14
    move-result v7

    #@15
    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@18
    move-result v1

    #@19
    .line 49
    .local v1, "type":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@1c
    move-result v2

    #@1d
    .line 50
    .local v2, "subType":I
    invoke-static {p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 52
    .local v3, "subscriberId":Ljava/lang/String;
    const/4 v0, 0x3

    #@22
    if-lt v10, v0, :cond_1

    #@24
    .line 53
    invoke-static {p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    .line 58
    :goto_1
    const/4 v0, 0x2

    #@29
    if-lt v10, v0, :cond_2

    #@2b
    .line 59
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    #@2e
    move-result v8

    #@2f
    .line 64
    :goto_2
    new-instance v0, Landroid/net/NetworkIdentity;

    #@31
    const/4 v5, 0x0

    #@32
    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    #@35
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    #@38
    .line 44
    add-int/lit8 v6, v6, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 55
    :cond_1
    const/4 v4, 0x0

    #@3c
    .local v4, "networkId":Ljava/lang/String;
    goto :goto_1

    #@3d
    .line 61
    .end local v4    # "networkId":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    #@3e
    .local v8, "roaming":Z
    goto :goto_2

    #@3f
    .line 41
    .end local v1    # "type":I
    .end local v2    # "subType":I
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v8    # "roaming":Z
    :cond_3
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
    .line 90
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 91
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 93
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
    .line 81
    if-eqz p1, :cond_0

    #@2
    .line 82
    const/4 v0, 0x1

    #@3
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@6
    .line 83
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@9
    .line 80
    :goto_0
    return-void

    #@a
    .line 85
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
    .line 99
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
    .line 100
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
    .line 102
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
    .line 103
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
    .line 104
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
    .line 98
    check-cast p1, Lcom/android/server/net/NetworkIdentitySet;

    #@2
    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkIdentitySet;->compareTo(Lcom/android/server/net/NetworkIdentitySet;)I

    #@5
    move-result v0

    #@6
    return v0
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
    .line 69
    const/4 v2, 0x3

    #@1
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@4
    .line 70
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->size()I

    #@7
    move-result v2

    #@8
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@b
    .line 71
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
    .line 72
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getType()I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@22
    .line 73
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getSubType()I

    #@25
    move-result v2

    #@26
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@29
    .line 74
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    #@30
    .line 75
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    #@37
    .line 76
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    #@3a
    move-result v2

    #@3b
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    #@3e
    goto :goto_0

    #@3f
    .line 68
    .end local v0    # "ident":Landroid/net/NetworkIdentity;
    :cond_0
    return-void
.end method
