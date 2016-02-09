.class public Lcom/android/server/wifi/hotspot2/pps/HomeSP;
.super Ljava/lang/Object;
.source "HomeSP.java"


# instance fields
.field private final mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

.field private final mDomainMatcher:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

.field private final mFQDN:Ljava/lang/String;

.field private final mFriendlyName:Ljava/lang/String;

.field private final mIconURL:Ljava/lang/String;

.field private final mMatchAllOIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMatchAnyOIs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mOtherHomePartners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoamingConsortiums:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSSIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;)V
    .locals 5
    .param p2, "fqdn"    # Ljava/lang/String;
    .param p7, "friendlyName"    # Ljava/lang/String;
    .param p8, "iconURL"    # Ljava/lang/String;
    .param p9, "credential"    # Lcom/android/server/wifi/hotspot2/pps/Credential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/Credential;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 42
    .local p1, "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p3, "roamingConsortiums":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .local p4, "otherHomePartners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "matchAnyOIs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local p6, "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@5
    .line 53
    new-instance v2, Ljava/util/ArrayList;

    #@7
    invoke-interface {p4}, Ljava/util/Set;->size()I

    #@a
    move-result v3

    #@b
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 54
    .local v2, "otherPartners":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "otherPartner$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/lang/String;

    #@1e
    .line 55
    .local v0, "otherPartner":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@21
    move-result-object v3

    #@22
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_0

    #@26
    .line 57
    .end local v0    # "otherPartner":Ljava/lang/String;
    :cond_0
    iput-object p4, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    #@28
    .line 58
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    #@2a
    .line 59
    new-instance v3, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    #@2c
    invoke-static {p2}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v3, v4, v2}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;-><init>(Ljava/util/List;Ljava/util/List;)V

    #@33
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mDomainMatcher:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    #@35
    .line 60
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    #@37
    .line 61
    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    #@39
    .line 62
    iput-object p6, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@3b
    .line 63
    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    #@3d
    .line 64
    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    #@3f
    .line 65
    iput-object p9, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@41
    .line 50
    return-void
.end method

.method private imsiMatch(Ljava/util/List;Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;)Ljava/lang/String;
    .locals 7
    .param p2, "plmnElement"    # Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    #@1
    .line 211
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 212
    :cond_0
    return-object v6

    #@6
    .line 211
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->getPlmns()Ljava/util/List;

    #@9
    move-result-object v5

    #@a
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v5

    #@e
    if-nez v5, :cond_0

    #@10
    .line 214
    invoke-virtual {p2}, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;->getPlmns()Ljava/util/List;

    #@13
    move-result-object v5

    #@14
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v4

    #@18
    .local v4, "network$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_4

    #@1e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Lcom/android/server/wifi/anqp/CellularNetwork;

    #@24
    .line 215
    .local v3, "network":Lcom/android/server/wifi/anqp/CellularNetwork;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v2

    #@28
    .local v2, "mccMnc$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_2

    #@2e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Ljava/lang/String;

    #@34
    .line 216
    .local v1, "mccMnc":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->imsiMatch(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    .line 217
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@3a
    .line 218
    return-object v0

    #@3b
    .line 222
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v1    # "mccMnc":Ljava/lang/String;
    .end local v2    # "mccMnc$iterator":Ljava/util/Iterator;
    .end local v3    # "network":Lcom/android/server/wifi/anqp/CellularNetwork;
    :cond_4
    return-object v6
.end method

.method private imsiMatch(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p2, "mccMnc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 234
    .local p1, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2, p2}, Lcom/android/server/wifi/IMSIParameter;->matchesMccMnc(Ljava/lang/String;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 235
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "imsi$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/String;

    #@1c
    .line 236
    .local v0, "imsi":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 237
    return-object v0

    #@23
    .line 241
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v1    # "imsi$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    #@24
    return-object v2
.end method

.method private imsiMatch(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "fqdn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@1
    .line 226
    if-nez p1, :cond_0

    #@3
    .line 227
    return-object v1

    #@4
    .line 229
    :cond_0
    invoke-static {p2}, Lcom/android/server/wifi/hotspot2/Utils;->getMccMnc(Ljava/util/List;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 230
    .local v0, "mccMnc":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@a
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->imsiMatch(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    :cond_1
    return-object v1
.end method


# virtual methods
.method public deepEquals(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Z
    .locals 3
    .param p1, "other"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 270
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    #@3
    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    #@5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 271
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@d
    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@f
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    .line 270
    if-eqz v1, :cond_0

    #@15
    .line 272
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    #@17
    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    #@19
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    .line 270
    if-eqz v1, :cond_0

    #@1f
    .line 273
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    #@21
    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    #@23
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    .line 270
    if-eqz v1, :cond_0

    #@29
    .line 274
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    #@2b
    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    #@2d
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    .line 270
    if-eqz v1, :cond_0

    #@33
    .line 275
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@35
    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@37
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    .line 270
    if-eqz v1, :cond_0

    #@3d
    .line 276
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    #@3f
    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v1

    #@45
    .line 270
    if-eqz v1, :cond_0

    #@47
    .line 277
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    #@49
    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    #@4b
    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/Utils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    #@4e
    move-result v1

    #@4f
    if-nez v1, :cond_0

    #@51
    .line 278
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@53
    iget-object v1, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@55
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/pps/Credential;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v0

    #@59
    .line 270
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 283
    if-ne p0, p1, :cond_0

    #@2
    .line 284
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 285
    :cond_0
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v2

    #@e
    if-eq v1, v2, :cond_2

    #@10
    .line 286
    :cond_1
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 289
    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@15
    .line 290
    .local v0, "that":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    #@17
    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    return v1
.end method

.method public getClone(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 11
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/pps/Credential;->hasDisregardPassword()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 70
    new-instance v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@e
    .line 71
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    #@10
    .line 72
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    #@12
    .line 73
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    #@14
    .line 74
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    #@16
    .line 75
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@18
    .line 76
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    #@1a
    .line 77
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    #@1c
    .line 78
    new-instance v9, Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@1e
    iget-object v10, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@20
    invoke-direct {v9, v10, p1}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(Lcom/android/server/wifi/hotspot2/pps/Credential;Ljava/lang/String;)V

    #@23
    .line 70
    invoke-direct/range {v0 .. v9}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;)V

    #@26
    return-object v0

    #@27
    .line 81
    :cond_0
    return-object p0
.end method

.method public getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@2
    return-object v0
.end method

.method public getFQDN()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIconURL()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMatchAllOIs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getMatchAnyOIs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getOtherHomePartners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getRoamingConsortiums()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    #@2
    return-object v0
.end method

.method public getSSIDs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public match(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Lcom/android/server/wifi/SIMAccessor;)Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .locals 7
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p3, "simAccessor"    # Lcom/android/server/wifi/SIMAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;",
            "Lcom/android/server/wifi/SIMAccessor;",
            ")",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;"
        }
    .end annotation

    #@0
    .prologue
    .line 89
    .local p2, "anqpElementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {p3, v4}, Lcom/android/server/wifi/SIMAccessor;->getMatchingImsis(Lcom/android/server/wifi/IMSIParameter;)Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    .line 91
    .local v1, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->matchSP(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Ljava/util/List;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@d
    move-result-object v3

    #@e
    .line 93
    .local v3, "spMatch":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@10
    if-eq v3, v4, :cond_0

    #@12
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Declined:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@14
    if-ne v3, v4, :cond_1

    #@16
    .line 94
    :cond_0
    return-object v3

    #@17
    .line 98
    :cond_1
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@19
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;

    #@1f
    .line 97
    invoke-direct {p0, v1, v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->imsiMatch(Ljava/util/List;Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;)Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    if-eqz v4, :cond_3

    #@25
    .line 100
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@27
    if-ne v3, v4, :cond_2

    #@29
    sget-object v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@2b
    .end local v3    # "spMatch":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_2
    return-object v3

    #@2c
    .line 104
    .restart local v3    # "spMatch":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_3
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2e
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Lcom/android/server/wifi/anqp/NAIRealmElement;

    #@34
    .line 106
    .local v2, "naiRealmElement":Lcom/android/server/wifi/anqp/NAIRealmElement;
    if-eqz v2, :cond_4

    #@36
    .line 107
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@38
    invoke-virtual {v2, v4}, Lcom/android/server/wifi/anqp/NAIRealmElement;->match(Lcom/android/server/wifi/hotspot2/pps/Credential;)I

    #@3b
    move-result v0

    #@3c
    .line 110
    .local v0, "authMatch":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getClass()Ljava/lang/Class;

    #@3f
    move-result-object v4

    #@40
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    new-instance v5, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toKeyString()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    const-string/jumbo v6, " match on "

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    #@5a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    .line 111
    const-string/jumbo v6, ": "

    #@61
    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    .line 111
    const-string/jumbo v6, ", auth "

    #@6c
    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    .line 111
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/AuthMatch;->toString(I)Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v5

    #@78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    .line 113
    const/4 v4, -0x1

    #@80
    if-ne v0, v4, :cond_5

    #@82
    .line 115
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@84
    return-object v4

    #@85
    .line 108
    .end local v0    # "authMatch":I
    :cond_4
    const/4 v0, 0x0

    #@86
    .restart local v0    # "authMatch":I
    goto :goto_0

    #@87
    .line 117
    :cond_5
    and-int/lit8 v4, v0, 0x4

    #@89
    if-nez v4, :cond_6

    #@8b
    .line 119
    return-object v3

    #@8c
    .line 123
    :cond_6
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@8e
    if-ne v3, v4, :cond_7

    #@90
    sget-object v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@92
    .end local v3    # "spMatch":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_7
    return-object v3
.end method

.method public matchSP(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Ljava/util/List;)Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .locals 22
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;"
        }
    .end annotation

    #@0
    .prologue
    .line 131
    .local p2, "anqpElementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    .local p3, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@4
    move-object/from16 v17, v0

    #@6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    #@9
    move-result-object v18

    #@a
    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@d
    move-result v17

    #@e
    if-eqz v17, :cond_1

    #@10
    .line 132
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@14
    move-object/from16 v17, v0

    #@16
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    #@19
    move-result-object v18

    #@1a
    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v7

    #@1e
    check-cast v7, Ljava/lang/Long;

    #@20
    .line 133
    .local v7, "hessid":Ljava/lang/Long;
    if-eqz v7, :cond_0

    #@22
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHESSID()J

    #@25
    move-result-wide v18

    #@26
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@29
    move-result-wide v20

    #@2a
    cmp-long v17, v18, v20

    #@2c
    if-nez v17, :cond_1

    #@2e
    .line 134
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getClass()Ljava/lang/Class;

    #@31
    move-result-object v17

    #@32
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@35
    move-result-object v17

    #@36
    const-string/jumbo v18, "match SSID"

    #@39
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 135
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@3e
    return-object v17

    #@3f
    .line 139
    .end local v7    # "hessid":Ljava/lang/Long;
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    #@41
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@44
    .line 141
    .local v3, "anOIs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getRoamingConsortiums()[J

    #@47
    move-result-object v17

    #@48
    if-eqz v17, :cond_2

    #@4a
    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getRoamingConsortiums()[J

    #@4d
    move-result-object v18

    #@4e
    const/16 v17, 0x0

    #@50
    move-object/from16 v0, v18

    #@52
    array-length v0, v0

    #@53
    move/from16 v19, v0

    #@55
    :goto_0
    move/from16 v0, v17

    #@57
    move/from16 v1, v19

    #@59
    if-ge v0, v1, :cond_2

    #@5b
    aget-wide v10, v18, v17

    #@5d
    .line 143
    .local v10, "oi":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@60
    move-result-object v20

    #@61
    move-object/from16 v0, v20

    #@63
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@66
    .line 142
    add-int/lit8 v17, v17, 0x1

    #@68
    goto :goto_0

    #@69
    .line 146
    .end local v10    # "oi":J
    :cond_2
    if-eqz p2, :cond_8

    #@6b
    .line 147
    sget-object v17, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@6d
    move-object/from16 v0, p2

    #@6f
    move-object/from16 v1, v17

    #@71
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@74
    move-result-object v12

    #@75
    check-cast v12, Lcom/android/server/wifi/anqp/RoamingConsortiumElement;

    #@77
    .line 149
    :goto_1
    if-eqz v12, :cond_3

    #@79
    .line 150
    invoke-virtual {v12}, Lcom/android/server/wifi/anqp/RoamingConsortiumElement;->getOIs()Ljava/util/List;

    #@7c
    move-result-object v17

    #@7d
    move-object/from16 v0, v17

    #@7f
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@82
    .line 156
    :cond_3
    const/4 v13, 0x0

    #@83
    .line 158
    .local v13, "roamingMatch":Z
    move-object/from16 v0, p0

    #@85
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@87
    move-object/from16 v17, v0

    #@89
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    #@8c
    move-result v17

    #@8d
    if-nez v17, :cond_6

    #@8f
    .line 159
    const/4 v9, 0x1

    #@90
    .line 161
    .local v9, "matchesAll":Z
    move-object/from16 v0, p0

    #@92
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@94
    move-object/from16 v17, v0

    #@96
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@99
    move-result-object v16

    #@9a
    .local v16, "spOI$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@9d
    move-result v17

    #@9e
    if-eqz v17, :cond_5

    #@a0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a3
    move-result-object v17

    #@a4
    check-cast v17, Ljava/lang/Long;

    #@a6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    #@a9
    move-result-wide v14

    #@aa
    .line 162
    .local v14, "spOI":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ad
    move-result-object v17

    #@ae
    move-object/from16 v0, v17

    #@b0
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@b3
    move-result v17

    #@b4
    if-nez v17, :cond_4

    #@b6
    .line 163
    const/4 v9, 0x0

    #@b7
    .line 167
    .end local v14    # "spOI":J
    :cond_5
    if-eqz v9, :cond_9

    #@b9
    .line 168
    const/4 v13, 0x1

    #@ba
    .line 180
    .end local v9    # "matchesAll":Z
    .end local v16    # "spOI$iterator":Ljava/util/Iterator;
    :cond_6
    if-nez v13, :cond_7

    #@bc
    .line 181
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    #@c0
    move-object/from16 v17, v0

    #@c2
    move-object/from16 v0, v17

    #@c4
    invoke-static {v0, v3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@c7
    move-result v17

    #@c8
    if-eqz v17, :cond_c

    #@ca
    .line 182
    move-object/from16 v0, p0

    #@cc
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    #@ce
    move-object/from16 v17, v0

    #@d0
    move-object/from16 v0, v17

    #@d2
    invoke-static {v0, v3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@d5
    move-result v17

    #@d6
    if-eqz v17, :cond_c

    #@d8
    .line 186
    :cond_7
    :goto_2
    if-nez p2, :cond_d

    #@da
    .line 187
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@dc
    return-object v17

    #@dd
    .line 148
    .end local v13    # "roamingMatch":Z
    :cond_8
    const/4 v12, 0x0

    #@de
    .local v12, "rcElement":Lcom/android/server/wifi/anqp/RoamingConsortiumElement;
    goto :goto_1

    #@df
    .line 171
    .end local v12    # "rcElement":Lcom/android/server/wifi/anqp/RoamingConsortiumElement;
    .restart local v9    # "matchesAll":Z
    .restart local v13    # "roamingMatch":Z
    .restart local v16    # "spOI$iterator":Ljava/util/Iterator;
    :cond_9
    if-nez p2, :cond_a

    #@e1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpOICount()I

    #@e4
    move-result v17

    #@e5
    if-nez v17, :cond_b

    #@e7
    .line 172
    :cond_a
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Declined:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@e9
    return-object v17

    #@ea
    .line 175
    :cond_b
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@ec
    return-object v17

    #@ed
    .line 183
    .end local v9    # "matchesAll":Z
    .end local v16    # "spOI$iterator":Ljava/util/Iterator;
    :cond_c
    const/4 v13, 0x1

    #@ee
    goto :goto_2

    #@ef
    .line 191
    :cond_d
    sget-object v17, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@f1
    move-object/from16 v0, p2

    #@f3
    move-object/from16 v1, v17

    #@f5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f8
    move-result-object v6

    #@f9
    check-cast v6, Lcom/android/server/wifi/anqp/DomainNameElement;

    #@fb
    .line 193
    .local v6, "domainNameElement":Lcom/android/server/wifi/anqp/DomainNameElement;
    if-eqz v6, :cond_10

    #@fd
    .line 194
    invoke-virtual {v6}, Lcom/android/server/wifi/anqp/DomainNameElement;->getDomains()Ljava/util/List;

    #@100
    move-result-object v17

    #@101
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@104
    move-result-object v5

    #@105
    .local v5, "domain$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@108
    move-result v17

    #@109
    if-eqz v17, :cond_10

    #@10b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10e
    move-result-object v4

    #@10f
    check-cast v4, Ljava/lang/String;

    #@111
    .line 195
    .local v4, "domain":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@114
    move-result-object v2

    #@115
    .line 196
    .local v2, "anLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@117
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mDomainMatcher:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    #@119
    move-object/from16 v17, v0

    #@11b
    move-object/from16 v0, v17

    #@11d
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->isSubDomain(Ljava/util/List;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@120
    move-result-object v8

    #@121
    .line 197
    .local v8, "match":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
    sget-object v17, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@123
    move-object/from16 v0, v17

    #@125
    if-eq v8, v0, :cond_f

    #@127
    .line 198
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@129
    return-object v17

    #@12a
    .line 201
    :cond_f
    move-object/from16 v0, p0

    #@12c
    move-object/from16 v1, p3

    #@12e
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->imsiMatch(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    #@131
    move-result-object v17

    #@132
    if-eqz v17, :cond_e

    #@134
    .line 202
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@136
    return-object v17

    #@137
    .line 207
    .end local v2    # "anLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "domain":Ljava/lang/String;
    .end local v5    # "domain$iterator":Ljava/util/Iterator;
    .end local v8    # "match":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
    :cond_10
    if-eqz v13, :cond_11

    #@139
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@13b
    :goto_3
    return-object v17

    #@13c
    :cond_11
    sget-object v17, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@13e
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x27

    #@2
    const/16 v2, 0x7d

    #@4
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "HomeSP{mSSIDs="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 301
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@12
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 302
    const-string/jumbo v1, ", mFQDN=\'"

    #@19
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 302
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    #@1f
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 303
    const-string/jumbo v1, ", mDomainMatcher="

    #@2a
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 303
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mDomainMatcher:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    #@30
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 304
    const-string/jumbo v1, ", mRoamingConsortiums={"

    #@37
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 304
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    #@3d
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 306
    const-string/jumbo v1, ", mMatchAnyOIs={"

    #@4c
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 306
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    #@52
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 307
    const-string/jumbo v1, ", mMatchAllOIs={"

    #@61
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    .line 307
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@67
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    .line 308
    const-string/jumbo v1, ", mCredential="

    #@76
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 308
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@7c
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    .line 309
    const-string/jumbo v1, ", mFriendlyName=\'"

    #@83
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v0

    #@87
    .line 309
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    #@89
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    .line 310
    const-string/jumbo v1, ", mIconURL=\'"

    #@94
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    .line 310
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    #@9a
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v0

    #@a2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v0

    #@a6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v0

    #@aa
    return-object v0
.end method
