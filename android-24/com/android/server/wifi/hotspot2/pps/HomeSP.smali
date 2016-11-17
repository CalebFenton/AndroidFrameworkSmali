.class public Lcom/android/server/wifi/hotspot2/pps/HomeSP;
.super Ljava/lang/Object;
.source "HomeSP.java"


# instance fields
.field private final mAAATrustRoots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

.field private final mCredentialPriority:I

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

.field private final mPolicy:Lcom/android/server/wifi/hotspot2/pps/Policy;

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

.field private final mSubscriptionParameters:Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;

.field private final mSubscriptionUpdate:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

.field private final mUpdateIdentifier:I


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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 57
    .local p1, "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p3, "roamingConsortiums":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .local p4, "otherHomePartners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "matchAnyOIs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local p6, "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@5
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    #@7
    invoke-interface {p4}, Ljava/util/Set;->size()I

    #@a
    move-result v3

    #@b
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 69
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
    .line 70
    .local v0, "otherPartner":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@21
    move-result-object v3

    #@22
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_0

    #@26
    .line 72
    .end local v0    # "otherPartner":Ljava/lang/String;
    :cond_0
    iput-object p4, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    #@28
    .line 73
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    #@2a
    .line 74
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
    .line 75
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    #@37
    .line 76
    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    #@39
    .line 77
    iput-object p6, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@3b
    .line 78
    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    #@3d
    .line 79
    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    #@3f
    .line 80
    iput-object p9, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@41
    .line 82
    const/4 v3, 0x0

    #@42
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mPolicy:Lcom/android/server/wifi/hotspot2/pps/Policy;

    #@44
    .line 83
    const/4 v3, -0x1

    #@45
    iput v3, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredentialPriority:I

    #@47
    .line 84
    const/4 v3, 0x0

    #@48
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mAAATrustRoots:Ljava/util/Map;

    #@4a
    .line 85
    const/4 v3, 0x0

    #@4b
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSubscriptionUpdate:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

    #@4d
    .line 86
    const/4 v3, 0x0

    #@4e
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSubscriptionParameters:Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;

    #@50
    .line 87
    const/4 v3, -0x1

    #@51
    iput v3, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mUpdateIdentifier:I

    #@53
    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;Lcom/android/server/wifi/hotspot2/pps/Policy;ILjava/util/Map;Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;I)V
    .locals 6
    .param p2, "fqdn"    # Ljava/lang/String;
    .param p7, "friendlyName"    # Ljava/lang/String;
    .param p8, "iconURL"    # Ljava/lang/String;
    .param p9, "credential"    # Lcom/android/server/wifi/hotspot2/pps/Credential;
    .param p10, "policy"    # Lcom/android/server/wifi/hotspot2/pps/Policy;
    .param p11, "credentialPriority"    # I
    .param p13, "subscriptionUpdate"    # Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;
    .param p14, "subscriptionParameters"    # Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;
    .param p15, "updateIdentifier"    # I
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
            "Lcom/android/server/wifi/hotspot2/pps/Policy;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;",
            "Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;",
            "I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 90
    .local p1, "ssidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p3, "roamingConsortiums":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .local p4, "otherHomePartners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p5, "matchAnyOIs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local p6, "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p12, "AAATrustRoots":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 107
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@5
    .line 108
    new-instance v3, Ljava/util/ArrayList;

    #@7
    invoke-interface {p4}, Ljava/util/Set;->size()I

    #@a
    move-result v4

    #@b
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    .line 109
    .local v3, "otherPartners":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "otherPartner$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/lang/String;

    #@1e
    .line 110
    .local v1, "otherPartner":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@21
    move-result-object v4

    #@22
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_0

    #@26
    .line 112
    .end local v1    # "otherPartner":Ljava/lang/String;
    :cond_0
    iput-object p4, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    #@28
    .line 113
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    #@2a
    .line 114
    new-instance v4, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    #@2c
    invoke-static {p2}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@2f
    move-result-object v5

    #@30
    invoke-direct {v4, v5, v3}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;-><init>(Ljava/util/List;Ljava/util/List;)V

    #@33
    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mDomainMatcher:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    #@35
    .line 115
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    #@37
    .line 116
    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    #@39
    .line 117
    iput-object p6, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@3b
    .line 118
    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    #@3d
    .line 119
    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    #@3f
    .line 120
    iput-object p9, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@41
    .line 122
    move-object/from16 v0, p10

    #@43
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mPolicy:Lcom/android/server/wifi/hotspot2/pps/Policy;

    #@45
    .line 123
    move/from16 v0, p11

    #@47
    iput v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredentialPriority:I

    #@49
    .line 124
    move-object/from16 v0, p12

    #@4b
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mAAATrustRoots:Ljava/util/Map;

    #@4d
    .line 125
    move-object/from16 v0, p13

    #@4f
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSubscriptionUpdate:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

    #@51
    .line 126
    move-object/from16 v0, p14

    #@53
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSubscriptionParameters:Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;

    #@55
    .line 127
    move/from16 v0, p15

    #@57
    iput v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mUpdateIdentifier:I

    #@59
    .line 105
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
    .line 272
    if-eqz p1, :cond_0

    #@3
    if-nez p2, :cond_1

    #@5
    .line 273
    :cond_0
    return-object v6

    #@6
    .line 272
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
    .line 275
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
    .line 276
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
    .line 277
    .local v1, "mccMnc":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->imsiMatch(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    .line 278
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@3a
    .line 279
    return-object v0

    #@3b
    .line 283
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
    .line 295
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
    .line 296
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
    .line 297
    .local v0, "imsi":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 298
    return-object v0

    #@23
    .line 302
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
    .line 287
    if-nez p1, :cond_0

    #@3
    .line 288
    return-object v1

    #@4
    .line 290
    :cond_0
    invoke-static {p2}, Lcom/android/server/wifi/hotspot2/Utils;->getMccMnc(Ljava/util/List;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 291
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
    .line 331
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
    .line 332
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@d
    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@f
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    .line 331
    if-eqz v1, :cond_0

    #@15
    .line 333
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    #@17
    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    #@19
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    .line 331
    if-eqz v1, :cond_0

    #@1f
    .line 334
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    #@21
    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    #@23
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    .line 331
    if-eqz v1, :cond_0

    #@29
    .line 335
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    #@2b
    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    #@2d
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    .line 331
    if-eqz v1, :cond_0

    #@33
    .line 336
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@35
    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@37
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    .line 331
    if-eqz v1, :cond_0

    #@3d
    .line 337
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    #@3f
    iget-object v2, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v1

    #@45
    .line 331
    if-eqz v1, :cond_0

    #@47
    .line 338
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
    .line 339
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@53
    iget-object v1, p1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@55
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/hotspot2/pps/Credential;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v0

    #@59
    .line 331
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 344
    if-ne p0, p1, :cond_0

    #@2
    .line 345
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 346
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
    .line 347
    :cond_1
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 350
    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@15
    .line 351
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

.method public getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;
    .locals 1

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@2
    return-object v0
.end method

.method public getFQDN()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIconURL()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 327
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
    .line 323
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
    .line 319
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
    .line 315
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mOtherHomePartners:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getPolicy()Lcom/android/server/wifi/hotspot2/pps/Policy;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mPolicy:Lcom/android/server/wifi/hotspot2/pps/Policy;

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
    .line 307
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
    .line 311
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getSubscriptionUpdate()Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSubscriptionUpdate:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

    #@2
    return-object v0
.end method

.method public getUpdateIdentifier()I
    .locals 1

    #@0
    .prologue
    .line 131
    iget v0, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mUpdateIdentifier:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 356
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
    .line 146
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
    .line 148
    .local v1, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->matchSP(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Ljava/util/List;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@d
    move-result-object v3

    #@e
    .line 150
    .local v3, "spMatch":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@10
    if-eq v3, v4, :cond_0

    #@12
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Declined:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@14
    if-ne v3, v4, :cond_1

    #@16
    .line 151
    :cond_0
    return-object v3

    #@17
    .line 155
    :cond_1
    sget-object v4, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@19
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;

    #@1f
    .line 154
    invoke-direct {p0, v1, v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->imsiMatch(Ljava/util/List;Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;)Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    if-eqz v4, :cond_3

    #@25
    .line 157
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
    .line 161
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
    .line 163
    .local v2, "naiRealmElement":Lcom/android/server/wifi/anqp/NAIRealmElement;
    if-eqz v2, :cond_4

    #@36
    .line 164
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@38
    invoke-virtual {v2, v4}, Lcom/android/server/wifi/anqp/NAIRealmElement;->match(Lcom/android/server/wifi/hotspot2/pps/Credential;)I

    #@3b
    move-result v0

    #@3c
    .line 167
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
    .line 168
    const-string/jumbo v6, ": "

    #@61
    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    .line 168
    const-string/jumbo v6, ", auth "

    #@6c
    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    .line 168
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/AuthMatch;->toString(I)Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    .line 167
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
    .line 170
    const/4 v4, -0x1

    #@80
    if-ne v0, v4, :cond_5

    #@82
    .line 172
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@84
    return-object v4

    #@85
    .line 165
    .end local v0    # "authMatch":I
    :cond_4
    const/4 v0, 0x0

    #@86
    .restart local v0    # "authMatch":I
    goto :goto_0

    #@87
    .line 174
    :cond_5
    and-int/lit8 v4, v0, 0x4

    #@89
    if-nez v4, :cond_6

    #@8b
    .line 176
    return-object v3

    #@8c
    .line 180
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
    .line 188
    .local p2, "anqpElementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    .local p3, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@4
    move-object/from16 v18, v0

    #@6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    #@9
    move-result-object v19

    #@a
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@d
    move-result v18

    #@e
    if-eqz v18, :cond_1

    #@10
    .line 189
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@14
    move-object/from16 v18, v0

    #@16
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    #@19
    move-result-object v19

    #@1a
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v7

    #@1e
    check-cast v7, Ljava/lang/Long;

    #@20
    .line 190
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
    cmp-long v18, v18, v20

    #@2c
    if-nez v18, :cond_1

    #@2e
    .line 191
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getClass()Ljava/lang/Class;

    #@31
    move-result-object v18

    #@32
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@35
    move-result-object v18

    #@36
    const-string/jumbo v19, "match SSID"

    #@39
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 192
    sget-object v18, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@3e
    return-object v18

    #@3f
    .line 196
    .end local v7    # "hessid":Ljava/lang/Long;
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    #@41
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@44
    .line 198
    .local v3, "anOIs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getRoamingConsortiums()[J

    #@47
    move-result-object v18

    #@48
    if-eqz v18, :cond_2

    #@4a
    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getRoamingConsortiums()[J

    #@4d
    move-result-object v19

    #@4e
    const/16 v18, 0x0

    #@50
    move-object/from16 v0, v19

    #@52
    array-length v0, v0

    #@53
    move/from16 v20, v0

    #@55
    :goto_0
    move/from16 v0, v18

    #@57
    move/from16 v1, v20

    #@59
    if-ge v0, v1, :cond_2

    #@5b
    aget-wide v10, v19, v18

    #@5d
    .line 200
    .local v10, "oi":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@60
    move-result-object v21

    #@61
    move-object/from16 v0, v21

    #@63
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@66
    .line 199
    add-int/lit8 v18, v18, 0x1

    #@68
    goto :goto_0

    #@69
    .line 204
    .end local v10    # "oi":J
    :cond_2
    if-eqz p2, :cond_8

    #@6b
    .line 205
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@6e
    move-result-object v18

    #@6f
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/anqp/Constants;->hasBaseANQPElements(Ljava/util/Collection;)Z

    #@72
    move-result v17

    #@73
    .line 207
    .local v17, "validANQP":Z
    :goto_1
    if-eqz v17, :cond_9

    #@75
    .line 208
    sget-object v18, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@77
    move-object/from16 v0, p2

    #@79
    move-object/from16 v1, v18

    #@7b
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    move-result-object v18

    #@7f
    check-cast v18, Lcom/android/server/wifi/anqp/RoamingConsortiumElement;

    #@81
    move-object/from16 v12, v18

    #@83
    .line 210
    .local v12, "rcElement":Lcom/android/server/wifi/anqp/RoamingConsortiumElement;
    :goto_2
    if-eqz v12, :cond_3

    #@85
    .line 211
    invoke-virtual {v12}, Lcom/android/server/wifi/anqp/RoamingConsortiumElement;->getOIs()Ljava/util/List;

    #@88
    move-result-object v18

    #@89
    move-object/from16 v0, v18

    #@8b
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@8e
    .line 217
    :cond_3
    const/4 v13, 0x0

    #@8f
    .line 219
    .local v13, "roamingMatch":Z
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@93
    move-object/from16 v18, v0

    #@95
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    #@98
    move-result v18

    #@99
    if-nez v18, :cond_6

    #@9b
    .line 220
    const/4 v9, 0x1

    #@9c
    .line 222
    .local v9, "matchesAll":Z
    move-object/from16 v0, p0

    #@9e
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@a0
    move-object/from16 v18, v0

    #@a2
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a5
    move-result-object v16

    #@a6
    .local v16, "spOI$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@a9
    move-result v18

    #@aa
    if-eqz v18, :cond_5

    #@ac
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@af
    move-result-object v18

    #@b0
    check-cast v18, Ljava/lang/Long;

    #@b2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    #@b5
    move-result-wide v14

    #@b6
    .line 223
    .local v14, "spOI":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b9
    move-result-object v18

    #@ba
    move-object/from16 v0, v18

    #@bc
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@bf
    move-result v18

    #@c0
    if-nez v18, :cond_4

    #@c2
    .line 224
    const/4 v9, 0x0

    #@c3
    .line 228
    .end local v14    # "spOI":J
    :cond_5
    if-eqz v9, :cond_a

    #@c5
    .line 229
    const/4 v13, 0x1

    #@c6
    .line 241
    .end local v9    # "matchesAll":Z
    .end local v16    # "spOI$iterator":Ljava/util/Iterator;
    :cond_6
    if-nez v13, :cond_7

    #@c8
    .line 242
    move-object/from16 v0, p0

    #@ca
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    #@cc
    move-object/from16 v18, v0

    #@ce
    move-object/from16 v0, v18

    #@d0
    invoke-static {v0, v3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@d3
    move-result v18

    #@d4
    if-eqz v18, :cond_d

    #@d6
    .line 243
    move-object/from16 v0, p0

    #@d8
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    #@da
    move-object/from16 v18, v0

    #@dc
    move-object/from16 v0, v18

    #@de
    invoke-static {v0, v3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@e1
    move-result v18

    #@e2
    if-eqz v18, :cond_d

    #@e4
    .line 247
    :cond_7
    :goto_3
    if-nez v17, :cond_e

    #@e6
    .line 248
    sget-object v18, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@e8
    return-object v18

    #@e9
    .line 204
    .end local v12    # "rcElement":Lcom/android/server/wifi/anqp/RoamingConsortiumElement;
    .end local v13    # "roamingMatch":Z
    .end local v17    # "validANQP":Z
    :cond_8
    const/16 v17, 0x0

    #@eb
    goto :goto_1

    #@ec
    .line 209
    .restart local v17    # "validANQP":Z
    :cond_9
    const/4 v12, 0x0

    #@ed
    goto :goto_2

    #@ee
    .line 232
    .restart local v9    # "matchesAll":Z
    .restart local v12    # "rcElement":Lcom/android/server/wifi/anqp/RoamingConsortiumElement;
    .restart local v13    # "roamingMatch":Z
    .restart local v16    # "spOI$iterator":Ljava/util/Iterator;
    :cond_a
    if-nez v17, :cond_b

    #@f0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpOICount()I

    #@f3
    move-result v18

    #@f4
    if-nez v18, :cond_c

    #@f6
    .line 233
    :cond_b
    sget-object v18, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Declined:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@f8
    return-object v18

    #@f9
    .line 236
    :cond_c
    sget-object v18, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@fb
    return-object v18

    #@fc
    .line 244
    .end local v9    # "matchesAll":Z
    .end local v16    # "spOI$iterator":Ljava/util/Iterator;
    :cond_d
    const/4 v13, 0x1

    #@fd
    goto :goto_3

    #@fe
    .line 252
    :cond_e
    sget-object v18, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@100
    move-object/from16 v0, p2

    #@102
    move-object/from16 v1, v18

    #@104
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@107
    move-result-object v6

    #@108
    check-cast v6, Lcom/android/server/wifi/anqp/DomainNameElement;

    #@10a
    .line 254
    .local v6, "domainNameElement":Lcom/android/server/wifi/anqp/DomainNameElement;
    if-eqz v6, :cond_11

    #@10c
    .line 255
    invoke-virtual {v6}, Lcom/android/server/wifi/anqp/DomainNameElement;->getDomains()Ljava/util/List;

    #@10f
    move-result-object v18

    #@110
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@113
    move-result-object v5

    #@114
    .local v5, "domain$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@117
    move-result v18

    #@118
    if-eqz v18, :cond_11

    #@11a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11d
    move-result-object v4

    #@11e
    check-cast v4, Ljava/lang/String;

    #@120
    .line 256
    .local v4, "domain":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@123
    move-result-object v2

    #@124
    .line 257
    .local v2, "anLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@126
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mDomainMatcher:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    #@128
    move-object/from16 v18, v0

    #@12a
    move-object/from16 v0, v18

    #@12c
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;->isSubDomain(Ljava/util/List;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@12f
    move-result-object v8

    #@130
    .line 258
    .local v8, "match":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
    sget-object v18, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@132
    move-object/from16 v0, v18

    #@134
    if-eq v8, v0, :cond_10

    #@136
    .line 259
    sget-object v18, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@138
    return-object v18

    #@139
    .line 262
    :cond_10
    move-object/from16 v0, p0

    #@13b
    move-object/from16 v1, p3

    #@13d
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->imsiMatch(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    #@140
    move-result-object v18

    #@141
    if-eqz v18, :cond_f

    #@143
    .line 263
    sget-object v18, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@145
    return-object v18

    #@146
    .line 268
    .end local v2    # "anLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "domain":Ljava/lang/String;
    .end local v5    # "domain$iterator":Ljava/util/Iterator;
    .end local v8    # "match":Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
    :cond_11
    if-eqz v13, :cond_12

    #@148
    sget-object v18, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@14a
    :goto_4
    return-object v18

    #@14b
    :cond_12
    sget-object v18, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@14d
    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x27

    #@2
    const/16 v2, 0x7d

    #@4
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "HomeSP{SSIDs="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 362
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mSSIDs:Ljava/util/Map;

    #@12
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 363
    const-string/jumbo v1, ", FQDN=\'"

    #@19
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 363
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFQDN:Ljava/lang/String;

    #@1f
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 364
    const-string/jumbo v1, ", DomainMatcher="

    #@2a
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 364
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mDomainMatcher:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;

    #@30
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 365
    const-string/jumbo v1, ", RoamingConsortiums={"

    #@37
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 365
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mRoamingConsortiums:Ljava/util/HashSet;

    #@3d
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 367
    const-string/jumbo v1, ", MatchAnyOIs={"

    #@4c
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 367
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAnyOIs:Ljava/util/Set;

    #@52
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 368
    const-string/jumbo v1, ", MatchAllOIs={"

    #@61
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    .line 368
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mMatchAllOIs:Ljava/util/List;

    #@67
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    .line 369
    const-string/jumbo v1, ", Credential="

    #@76
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 369
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mCredential:Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@7c
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    .line 370
    const-string/jumbo v1, ", FriendlyName=\'"

    #@83
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v0

    #@87
    .line 370
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mFriendlyName:Ljava/lang/String;

    #@89
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    .line 371
    const-string/jumbo v1, ", IconURL=\'"

    #@94
    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    .line 371
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->mIconURL:Ljava/lang/String;

    #@9a
    .line 361
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
