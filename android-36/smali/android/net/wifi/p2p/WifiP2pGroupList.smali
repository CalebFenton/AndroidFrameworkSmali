.class public final Landroid/net/wifi/p2p/WifiP2pGroupList;
.super Ljava/lang/Object;
.source "WifiP2pGroupList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pGroupList;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o CREDENTIAL_MAX_NUM:I = 0x20


# instance fields
.field private greylist-max-o isClearCalled:Z

.field private final greylist mGroups:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mListener:Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetisClearCalled(Landroid/net/wifi/p2p/WifiP2pGroupList;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->isClearCalled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/net/wifi/p2p/WifiP2pGroupList;)Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mListener:Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 253
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroupList$2;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList$2;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroupList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V

    .line 56
    return-void
.end method

.method public constructor greylist <init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V
    .registers 8
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pGroupList;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->isClearCalled:Z

    .line 61
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mListener:Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    .line 62
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroupList$1;

    const/16 v1, 0x20

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/p2p/WifiP2pGroupList$1;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;I)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    .line 72
    if-eqz p1, :cond_3f

    .line 73
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 74
    .local v1, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v2, v3, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v1    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    goto :goto_21

    .line 77
    :cond_3f
    return-void
.end method


# virtual methods
.method public greylist-max-o add(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 4
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 94
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public greylist-max-o clear()Z
    .registers 4

    .line 121
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 122
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->isClearCalled:Z

    .line 123
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->evictAll()V

    .line 124
    iput-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->isClearCalled:Z

    .line 125
    return v0
.end method

.method public greylist-max-o contains(I)Z
    .registers 6
    .param p1, "netId"    # I

    .line 216
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 217
    .local v0, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 218
    .local v2, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v3

    if-ne p1, v3, :cond_22

    .line 219
    const/4 v1, 0x1

    return v1

    .line 221
    .end local v2    # "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_22
    goto :goto_e

    .line 222
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGroupList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public greylist-max-o getNetworkId(Ljava/lang/String;)I
    .registers 8
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 139
    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 141
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 142
    .local v1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 143
    .local v3, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    .line 144
    .local v4, "groupOwner":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v4, :cond_25

    .line 145
    goto :goto_12

    .line 147
    :cond_25
    iget-object v5, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 149
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v0

    return v0

    .line 152
    .end local v3    # "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v4    # "groupOwner":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_3f
    goto :goto_12

    .line 153
    :cond_40
    return v0
.end method

.method public greylist-max-o getNetworkId(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;

    .line 166
    const/4 v0, -0x1

    if-eqz p1, :cond_4d

    if-nez p2, :cond_6

    goto :goto_4d

    .line 170
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 171
    .local v1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 172
    .local v3, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    .line 173
    .local v4, "groupOwner":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v4, :cond_27

    .line 174
    goto :goto_14

    .line 176
    :cond_27
    iget-object v5, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 177
    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 179
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v0

    return v0

    .line 182
    .end local v3    # "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v4    # "groupOwner":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_4b
    goto :goto_14

    .line 184
    :cond_4c
    return v0

    .line 167
    .end local v1    # "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    :cond_4d
    :goto_4d
    return v0
.end method

.method public greylist-max-o getOwnerAddr(I)Ljava/lang/String;
    .registers 5
    .param p1, "netId"    # I

    .line 195
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 196
    .local v0, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 197
    return-object v1

    .line 199
    :cond_10
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    .line 200
    .local v2, "groupOwner":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v2, :cond_17

    .line 201
    return-object v1

    .line 203
    :cond_17
    iget-object v1, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    return-object v1
.end method

.method public greylist-max-o remove(I)V
    .registers 4
    .param p1, "netId"    # I

    .line 104
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method greylist-max-o remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 113
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    .line 114
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 227
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 230
    .local v1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 231
    .local v3, "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    .end local v3    # "grp":Landroid/net/wifi/p2p/WifiP2pGroup;
    goto :goto_13

    .line 233
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 245
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList;->mGroups:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 246
    .local v0, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 248
    .local v2, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 249
    .end local v2    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    goto :goto_15

    .line 250
    :cond_25
    return-void
.end method
