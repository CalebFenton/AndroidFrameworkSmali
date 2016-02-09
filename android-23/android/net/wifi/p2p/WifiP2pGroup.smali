.class public Landroid/net/wifi/p2p/WifiP2pGroup;
.super Ljava/lang/Object;
.source "WifiP2pGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pGroup$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERSISTENT_NET_ID:I = -0x2

.field public static final TEMPORARY_NET_ID:I = -0x1

.field private static final groupStartedPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mInterface:Ljava/lang/String;

.field private mIsGroupOwner:Z

.field private mNetId:I

.field private mNetworkName:Ljava/lang/String;

.field private mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mPassphrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 70
    const-string/jumbo v0, "ssid=\"(.+)\" freq=(\\d+) (?:psk=)?([0-9a-fA-F]{64})?(?:passphrase=)?(?:\"(.{0,63})\")? go_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) ?(\\[PERSISTENT\\])?"

    #@3
    .line 69
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroup;->groupStartedPattern:Ljava/util/regex/Pattern;

    #@9
    .line 312
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup$1;

    #@b
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup$1;-><init>()V

    #@e
    .line 311
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@a
    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 4
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    #@0
    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@a
    .line 285
    if-eqz p1, :cond_1

    #@c
    .line 286
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    #@12
    .line 287
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@14
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@1b
    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@1d
    .line 288
    iget-boolean v2, p1, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    #@1f
    iput-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    #@21
    .line 289
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    #@24
    move-result-object v2

    #@25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v1

    #@29
    .local v1, "d$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_0

    #@2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@35
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@37
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_0

    #@3b
    .line 290
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    #@41
    .line 291
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    #@47
    .line 292
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    #@4a
    move-result v2

    #@4b
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    #@4d
    .line 284
    .end local v1    # "d$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 13
    .param p1, "supplicantEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v9, -0x2

    #@2
    const/4 v11, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 58
    new-instance v6, Ljava/util/ArrayList;

    #@9
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@e
    .line 100
    const-string/jumbo v6, " "

    #@11
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    .line 102
    .local v5, "tokens":[Ljava/lang/String;
    array-length v6, v5

    #@16
    const/4 v8, 0x3

    #@17
    if-ge v6, v8, :cond_0

    #@19
    .line 103
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v7, "Malformed supplicant event"

    #@1e
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v6

    #@22
    .line 106
    :cond_0
    aget-object v6, v5, v7

    #@24
    const-string/jumbo v8, "P2P-GROUP"

    #@27
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_4

    #@2d
    .line 107
    aget-object v6, v5, v11

    #@2f
    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    #@31
    .line 108
    aget-object v6, v5, v12

    #@33
    const-string/jumbo v7, "GO"

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v6

    #@3a
    iput-boolean v6, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    #@3c
    .line 110
    sget-object v6, Landroid/net/wifi/p2p/WifiP2pGroup;->groupStartedPattern:Ljava/util/regex/Pattern;

    #@3e
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@41
    move-result-object v1

    #@42
    .line 111
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@45
    move-result v6

    #@46
    if-nez v6, :cond_1

    #@48
    .line 112
    return-void

    #@49
    .line 115
    :cond_1
    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    #@4f
    .line 119
    const/4 v6, 0x4

    #@50
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@53
    move-result-object v6

    #@54
    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    #@56
    .line 120
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@58
    const/4 v7, 0x5

    #@59
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    invoke-direct {v6, v7}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    #@60
    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@62
    .line 121
    const/4 v6, 0x6

    #@63
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    if-eqz v6, :cond_3

    #@69
    .line 122
    iput v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    #@6b
    .line 98
    .end local v1    # "match":Ljava/util/regex/Matcher;
    :cond_2
    :goto_0
    return-void

    #@6c
    .line 124
    .restart local v1    # "match":Ljava/util/regex/Matcher;
    :cond_3
    const/4 v6, -0x1

    #@6d
    iput v6, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    #@6f
    goto :goto_0

    #@70
    .line 126
    .end local v1    # "match":Ljava/util/regex/Matcher;
    :cond_4
    aget-object v6, v5, v7

    #@72
    const-string/jumbo v8, "P2P-INVITATION-RECEIVED"

    #@75
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v6

    #@79
    if-eqz v6, :cond_9

    #@7b
    .line 127
    const/4 v3, 0x0

    #@7c
    .line 128
    .local v3, "sa":Ljava/lang/String;
    iput v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    #@7e
    .line 129
    array-length v8, v5

    #@7f
    move v6, v7

    #@80
    .end local v3    # "sa":Ljava/lang/String;
    :goto_1
    if-ge v6, v8, :cond_2

    #@82
    aget-object v4, v5, v6

    #@84
    .line 130
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v9, "="

    #@87
    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    .line 131
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v9, v2

    #@8c
    if-eq v9, v12, :cond_6

    #@8e
    .line 129
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@90
    goto :goto_1

    #@91
    .line 133
    :cond_6
    aget-object v9, v2, v7

    #@93
    const-string/jumbo v10, "sa"

    #@96
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v9

    #@9a
    if-eqz v9, :cond_7

    #@9c
    .line 134
    aget-object v3, v2, v11

    #@9e
    .line 137
    .local v3, "sa":Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@a0
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    #@a3
    .line 138
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    aget-object v9, v2, v11

    #@a5
    iput-object v9, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@a7
    .line 139
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@a9
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ac
    goto :goto_2

    #@ad
    .line 143
    .end local v0    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v3    # "sa":Ljava/lang/String;
    :cond_7
    aget-object v9, v2, v7

    #@af
    const-string/jumbo v10, "go_dev_addr"

    #@b2
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b5
    move-result v9

    #@b6
    if-eqz v9, :cond_8

    #@b8
    .line 144
    new-instance v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@ba
    aget-object v10, v2, v11

    #@bc
    invoke-direct {v9, v10}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    #@bf
    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@c1
    goto :goto_2

    #@c2
    .line 148
    :cond_8
    aget-object v9, v2, v7

    #@c4
    const-string/jumbo v10, "persistent"

    #@c7
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ca
    move-result v9

    #@cb
    if-eqz v9, :cond_5

    #@cd
    .line 149
    new-instance v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@cf
    invoke-direct {v9, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    #@d2
    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@d4
    .line 150
    aget-object v9, v2, v11

    #@d6
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d9
    move-result v9

    #@da
    iput v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    #@dc
    goto :goto_2

    #@dd
    .line 155
    .end local v2    # "nameValue":[Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@df
    const-string/jumbo v7, "Malformed supplicant event"

    #@e2
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e5
    throw v6
.end method


# virtual methods
.method public addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 199
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "client$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@12
    .line 200
    .local v0, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    return-void

    #@19
    .line 202
    .end local v0    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@1b
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    .line 198
    return-void
.end method

.method public addClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@8
    .line 193
    return-void
.end method

.method public contains(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    :cond_0
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 223
    :cond_1
    const/4 v0, 0x0

    #@13
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 280
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getClientList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNetworkId()I
    .locals 1

    #@0
    .prologue
    .line 257
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    #@2
    return v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object v0
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isClientListEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 217
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@3
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isGroupOwner()Z
    .locals 1

    #@0
    .prologue
    .line 179
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    #@2
    return v0
.end method

.method public removeClient(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeClient(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@2
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@4
    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    #@7
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public setInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "intf"    # Ljava/lang/String;

    #@0
    .prologue
    .line 247
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    #@2
    .line 246
    return-void
.end method

.method public setIsGroupOwner(Z)V
    .locals 0
    .param p1, "isGo"    # Z

    #@0
    .prologue
    .line 174
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    #@2
    .line 173
    return-void
.end method

.method public setNetworkId(I)V
    .locals 0
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 262
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    #@2
    .line 261
    return-void
.end method

.method public setNetworkName(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    #@2
    .line 160
    return-void
.end method

.method public setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 184
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    .line 183
    return-void
.end method

.method public setPassphrase(Ljava/lang/String;)V
    .locals 0
    .param p1, "passphrase"    # Ljava/lang/String;

    #@0
    .prologue
    .line 233
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    #@2
    .line 232
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 266
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 267
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "network: "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v3

    #@c
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    .line 268
    const-string/jumbo v3, "\n isGO: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    move-result-object v3

    #@18
    iget-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@1d
    .line 269
    const-string/jumbo v3, "\n GO: "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    move-result-object v3

    #@24
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@29
    .line 270
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@2b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v1

    #@2f
    .local v1, "client$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_0

    #@35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@3b
    .line 271
    .local v0, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string/jumbo v3, "\n Client: "

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@45
    goto :goto_0

    #@46
    .line 273
    .end local v0    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    const-string/jumbo v3, "\n interface: "

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c
    move-result-object v3

    #@4d
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@52
    .line 274
    const-string/jumbo v3, "\n networkId: "

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@58
    move-result-object v3

    #@59
    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@5e
    .line 275
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 298
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 299
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@7
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    .line 300
    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    #@c
    if-eqz v2, :cond_0

    #@e
    const/4 v2, 0x1

    #@f
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@12
    .line 301
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@14
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@17
    move-result v2

    #@18
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 302
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    #@1d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "client$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2d
    .line 303
    .local v0, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@30
    goto :goto_1

    #@31
    .line 300
    .end local v0    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "client$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    #@32
    goto :goto_0

    #@33
    .line 305
    .restart local v1    # "client$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    #@35
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@38
    .line 306
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    #@3a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3d
    .line 307
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    #@3f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    .line 297
    return-void
.end method
