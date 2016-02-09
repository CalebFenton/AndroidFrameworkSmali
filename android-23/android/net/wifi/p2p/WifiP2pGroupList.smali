.class public Landroid/net/wifi/p2p/WifiP2pGroupList;
.super Ljava/lang/Object;
.source "WifiP2pGroupList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;,
        Landroid/net/wifi/p2p/WifiP2pGroupList$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pGroupList;",
            ">;"
        }
    .end annotation
.end field

.field private static final CREDENTIAL_MAX_NUM:I = 0x20


# instance fields
.field private isClearCalled:Z

.field private final mGroups:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/p2p/WifiP2pGroupList;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->isClearCalled:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/net/wifi/p2p/WifiP2pGroupList;)Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mListener:Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 231
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroupList$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList$1;-><init>()V

    #@5
    .line 230
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroupList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 47
    invoke-direct {p0, v0, v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V

    #@4
    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V
    .locals 5
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pGroupList;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    const/4 v2, 0x0

    #@4
    iput-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->isClearCalled:Z

    #@6
    .line 52
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mListener:Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    #@8
    .line 53
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroupList$2;

    #@a
    const/16 v3, 0x20

    #@c
    invoke-direct {v2, p0, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList$2;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;I)V

    #@f
    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@11
    .line 63
    if-eqz p1, :cond_0

    #@13
    .line 64
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@15
    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    #@18
    move-result-object v2

    #@19
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_0

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Ljava/util/Map$Entry;

    #@2d
    .line 65
    .local v0, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@2f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Ljava/lang/Integer;

    #@35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@3b
    invoke-virtual {v4, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    goto :goto_0

    #@3f
    .line 51
    .end local v0    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 2
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@2
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 85
    return-void
.end method

.method public clear()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 113
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@4
    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    return v1

    #@b
    .line 114
    :cond_0
    iput-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->isClearCalled:Z

    #@d
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@f
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    #@12
    .line 116
    iput-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->isClearCalled:Z

    #@14
    .line 117
    return v2
.end method

.method public contains(I)Z
    .locals 4
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 196
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@2
    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@9
    move-result-object v0

    #@a
    .line 197
    .local v0, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .local v2, "grp$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@1a
    .line 198
    .local v1, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    #@1d
    move-result v3

    #@1e
    if-ne p1, v3, :cond_0

    #@20
    .line 199
    const/4 v3, 0x1

    #@21
    return v3

    #@22
    .line 202
    .end local v1    # "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_1
    const/4 v3, 0x0

    #@23
    return v3
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 217
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getGroupList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@2
    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getNetworkId(Ljava/lang/String;)I
    .locals 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 131
    if-nez p1, :cond_0

    #@3
    return v4

    #@4
    .line 133
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@6
    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    #@9
    move-result-object v3

    #@a
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@d
    move-result-object v0

    #@e
    .line 134
    .local v0, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "grp$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@1e
    .line 135
    .local v1, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@21
    move-result-object v3

    #@22
    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@24
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    .line 137
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@2c
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    #@2f
    move-result v4

    #@30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 138
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    #@3a
    move-result v3

    #@3b
    return v3

    #@3c
    .line 141
    .end local v1    # "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_2
    return v4
.end method

.method public getNetworkId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 154
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 155
    :cond_0
    return v4

    #@6
    .line 158
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@8
    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@f
    move-result-object v0

    #@10
    .line 159
    .local v0, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v2

    #@14
    .local v2, "grp$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_3

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@20
    .line 160
    .local v1, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@23
    move-result-object v3

    #@24
    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@26
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_2

    #@2c
    .line 161
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    .line 160
    if-eqz v3, :cond_2

    #@36
    .line 163
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@38
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    #@3b
    move-result v4

    #@3c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 164
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    #@46
    move-result v3

    #@47
    return v3

    #@48
    .line 168
    .end local v1    # "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_3
    return v4
.end method

.method public getOwnerAddr(I)Ljava/lang/String;
    .locals 4
    .param p1, "netId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 179
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@d
    .line 180
    .local v0, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v0, :cond_0

    #@f
    .line 181
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@12
    move-result-object v1

    #@13
    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@15
    return-object v1

    #@16
    .line 183
    :cond_0
    return-object v3
.end method

.method public remove(I)V
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 95
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 105
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    #@7
    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 206
    new-instance v3, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 208
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@7
    invoke-virtual {v4}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    #@a
    move-result-object v4

    #@b
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@e
    move-result-object v0

    #@f
    .line 209
    .local v0, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "grp$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_0

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@1f
    .line 210
    .local v1, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@22
    move-result-object v4

    #@23
    const-string/jumbo v5, "\n"

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    goto :goto_0

    #@2a
    .line 212
    .end local v1    # "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 222
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    #@2
    invoke-virtual {v3}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    #@5
    move-result-object v3

    #@6
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@9
    move-result-object v2

    #@a
    .line 223
    .local v2, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    #@d
    move-result v3

    #@e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 224
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "group$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@21
    .line 225
    .local v0, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@24
    goto :goto_0

    #@25
    .line 221
    .end local v0    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_0
    return-void
.end method
