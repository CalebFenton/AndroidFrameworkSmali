.class public final Landroid/net/wifi/hotspot2/omadm/PpsMoParser;
.super Ljava/lang/Object;
.source "PpsMoParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;,
        Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;
    }
.end annotation


# static fields
.field private static final blacklist NODE_AAA_SERVER_TRUSTED_NAMES:Ljava/lang/String; = "AAAServerTrustedNames"

.field private static final greylist-max-o NODE_AAA_SERVER_TRUST_ROOT:Ljava/lang/String; = "AAAServerTrustRoot"

.field private static final greylist-max-o NODE_ABLE_TO_SHARE:Ljava/lang/String; = "AbleToShare"

.field private static final greylist-max-o NODE_CERTIFICATE_TYPE:Ljava/lang/String; = "CertificateType"

.field private static final greylist-max-o NODE_CERT_SHA256_FINGERPRINT:Ljava/lang/String; = "CertSHA256Fingerprint"

.field private static final greylist-max-o NODE_CERT_URL:Ljava/lang/String; = "CertURL"

.field private static final greylist-max-o NODE_CHECK_AAA_SERVER_CERT_STATUS:Ljava/lang/String; = "CheckAAAServerCertStatus"

.field private static final greylist-max-o NODE_COUNTRY:Ljava/lang/String; = "Country"

.field private static final greylist-max-o NODE_CREATION_DATE:Ljava/lang/String; = "CreationDate"

.field private static final greylist-max-o NODE_CREDENTIAL:Ljava/lang/String; = "Credential"

.field private static final greylist-max-o NODE_CREDENTIAL_PRIORITY:Ljava/lang/String; = "CredentialPriority"

.field private static final greylist-max-o NODE_DATA_LIMIT:Ljava/lang/String; = "DataLimit"

.field private static final blacklist NODE_DECORATED_IDENTITY_PREFIX:Ljava/lang/String; = "DecoratedPrefix"

.field private static final greylist-max-o NODE_DIGITAL_CERTIFICATE:Ljava/lang/String; = "DigitalCertificate"

.field private static final greylist-max-o NODE_DOWNLINK_BANDWIDTH:Ljava/lang/String; = "DLBandwidth"

.field private static final greylist-max-o NODE_EAP_METHOD:Ljava/lang/String; = "EAPMethod"

.field private static final greylist-max-o NODE_EAP_TYPE:Ljava/lang/String; = "EAPType"

.field private static final greylist-max-o NODE_EXPIRATION_DATE:Ljava/lang/String; = "ExpirationDate"

.field private static final greylist-max-o NODE_EXTENSION:Ljava/lang/String; = "Extension"

.field private static final blacklist NODE_EXTENSION_NAI:Ljava/lang/String; = "NAI"

.field private static final greylist-max-o NODE_FQDN:Ljava/lang/String; = "FQDN"

.field private static final greylist-max-o NODE_FQDN_MATCH:Ljava/lang/String; = "FQDN_Match"

.field private static final greylist-max-o NODE_FRIENDLY_NAME:Ljava/lang/String; = "FriendlyName"

.field private static final greylist-max-o NODE_HESSID:Ljava/lang/String; = "HESSID"

.field private static final greylist-max-o NODE_HOMESP:Ljava/lang/String; = "HomeSP"

.field private static final greylist-max-o NODE_HOME_OI:Ljava/lang/String; = "HomeOI"

.field private static final greylist-max-o NODE_HOME_OI_LIST:Ljava/lang/String; = "HomeOIList"

.field private static final greylist-max-o NODE_HOME_OI_REQUIRED:Ljava/lang/String; = "HomeOIRequired"

.field private static final greylist-max-o NODE_ICON_URL:Ljava/lang/String; = "IconURL"

.field private static final greylist-max-o NODE_INNER_EAP_TYPE:Ljava/lang/String; = "InnerEAPType"

.field private static final greylist-max-o NODE_INNER_METHOD:Ljava/lang/String; = "InnerMethod"

.field private static final greylist-max-o NODE_INNER_VENDOR_ID:Ljava/lang/String; = "InnerVendorID"

.field private static final greylist-max-o NODE_INNER_VENDOR_TYPE:Ljava/lang/String; = "InnerVendorType"

.field private static final greylist-max-o NODE_IP_PROTOCOL:Ljava/lang/String; = "IPProtocol"

.field private static final greylist-max-o NODE_MACHINE_MANAGED:Ljava/lang/String; = "MachineManaged"

.field private static final greylist-max-o NODE_MAXIMUM_BSS_LOAD_VALUE:Ljava/lang/String; = "MaximumBSSLoadValue"

.field private static final greylist-max-o NODE_MIN_BACKHAUL_THRESHOLD:Ljava/lang/String; = "MinBackhaulThreshold"

.field private static final greylist-max-o NODE_NETWORK_ID:Ljava/lang/String; = "NetworkID"

.field private static final greylist-max-o NODE_NETWORK_TYPE:Ljava/lang/String; = "NetworkType"

.field private static final greylist-max-o NODE_OTHER:Ljava/lang/String; = "Other"

.field private static final greylist-max-o NODE_OTHER_HOME_PARTNERS:Ljava/lang/String; = "OtherHomePartners"

.field private static final greylist-max-o NODE_PASSWORD:Ljava/lang/String; = "Password"

.field private static final greylist-max-o NODE_PER_PROVIDER_SUBSCRIPTION:Ljava/lang/String; = "PerProviderSubscription"

.field private static final greylist-max-o NODE_POLICY:Ljava/lang/String; = "Policy"

.field private static final greylist-max-o NODE_POLICY_UPDATE:Ljava/lang/String; = "PolicyUpdate"

.field private static final greylist-max-o NODE_PORT_NUMBER:Ljava/lang/String; = "PortNumber"

.field private static final greylist-max-o NODE_PREFERRED_ROAMING_PARTNER_LIST:Ljava/lang/String; = "PreferredRoamingPartnerList"

.field private static final greylist-max-o NODE_PRIORITY:Ljava/lang/String; = "Priority"

.field private static final greylist-max-o NODE_REALM:Ljava/lang/String; = "Realm"

.field private static final greylist-max-o NODE_REQUIRED_PROTO_PORT_TUPLE:Ljava/lang/String; = "RequiredProtoPortTuple"

.field private static final greylist-max-o NODE_RESTRICTION:Ljava/lang/String; = "Restriction"

.field private static final greylist-max-o NODE_ROAMING_CONSORTIUM_OI:Ljava/lang/String; = "RoamingConsortiumOI"

.field private static final greylist-max-o NODE_SIM:Ljava/lang/String; = "SIM"

.field private static final greylist-max-o NODE_SIM_IMSI:Ljava/lang/String; = "IMSI"

.field private static final greylist-max-o NODE_SOFT_TOKEN_APP:Ljava/lang/String; = "SoftTokenApp"

.field private static final greylist-max-o NODE_SP_EXCLUSION_LIST:Ljava/lang/String; = "SPExclusionList"

.field private static final greylist-max-o NODE_SSID:Ljava/lang/String; = "SSID"

.field private static final greylist-max-o NODE_START_DATE:Ljava/lang/String; = "StartDate"

.field private static final greylist-max-o NODE_SUBSCRIPTION_PARAMETER:Ljava/lang/String; = "SubscriptionParameters"

.field private static final greylist-max-o NODE_SUBSCRIPTION_UPDATE:Ljava/lang/String; = "SubscriptionUpdate"

.field private static final greylist-max-o NODE_TIME_LIMIT:Ljava/lang/String; = "TimeLimit"

.field private static final greylist-max-o NODE_TRUST_ROOT:Ljava/lang/String; = "TrustRoot"

.field private static final greylist-max-o NODE_TYPE_OF_SUBSCRIPTION:Ljava/lang/String; = "TypeOfSubscription"

.field private static final greylist-max-o NODE_UPDATE_IDENTIFIER:Ljava/lang/String; = "UpdateIdentifier"

.field private static final greylist-max-o NODE_UPDATE_INTERVAL:Ljava/lang/String; = "UpdateInterval"

.field private static final greylist-max-o NODE_UPDATE_METHOD:Ljava/lang/String; = "UpdateMethod"

.field private static final greylist-max-o NODE_UPLINK_BANDWIDTH:Ljava/lang/String; = "ULBandwidth"

.field private static final greylist-max-o NODE_URI:Ljava/lang/String; = "URI"

.field private static final greylist-max-o NODE_USAGE_LIMITS:Ljava/lang/String; = "UsageLimits"

.field private static final greylist-max-o NODE_USAGE_TIME_PERIOD:Ljava/lang/String; = "UsageTimePeriod"

.field private static final greylist-max-o NODE_USERNAME:Ljava/lang/String; = "Username"

.field private static final greylist-max-o NODE_USERNAME_PASSWORD:Ljava/lang/String; = "UsernamePassword"

.field private static final blacklist NODE_VENDOR_ANDROID:Ljava/lang/String; = "Android"

.field private static final greylist-max-o NODE_VENDOR_ID:Ljava/lang/String; = "VendorId"

.field private static final greylist-max-o NODE_VENDOR_TYPE:Ljava/lang/String; = "VendorType"

.field private static final blacklist NODE_VENDOR_WBA:Ljava/lang/String; = "WBA"

.field private static final greylist-max-o PPS_MO_URN:Ljava/lang/String; = "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PpsMoParser"

.field private static final greylist-max-o TAG_DDF_NAME:Ljava/lang/String; = "DDFName"

.field private static final greylist-max-o TAG_MANAGEMENT_TREE:Ljava/lang/String; = "MgmtTree"

.field private static final greylist-max-o TAG_NODE:Ljava/lang/String; = "Node"

.field private static final greylist-max-o TAG_NODE_NAME:Ljava/lang/String; = "NodeName"

.field private static final greylist-max-o TAG_RT_PROPERTIES:Ljava/lang/String; = "RTProperties"

.field private static final greylist-max-o TAG_TYPE:Ljava/lang/String; = "Type"

.field private static final greylist-max-o TAG_VALUE:Ljava/lang/String; = "Value"

.field private static final greylist-max-o TAG_VER_DTD:Ljava/lang/String; = "VerDTD"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .registers 11
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, "nodeName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 585
    .local v1, "nodeValue":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v2, "childNodes":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 589
    .local v3, "parsedNodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 590
    .local v5, "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 591
    .local v6, "tag":Ljava/lang/String;
    const-string v7, "NodeName"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 592
    if-nez v0, :cond_33

    .line 595
    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    .line 593
    :cond_33
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v7, "Duplicate NodeName node"

    invoke-direct {v4, v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 596
    :cond_3b
    const-string v7, "Node"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 597
    invoke-static {v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    move-result-object v7

    .line 598
    .local v7, "ppsNode":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5c

    .line 601
    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    .end local v7    # "ppsNode":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    goto :goto_87

    .line 599
    .restart local v7    # "ppsNode":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_5c
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Duplicate node: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 603
    .end local v7    # "ppsNode":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_79
    const-string v7, "Value"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_90

    .line 604
    if-nez v1, :cond_88

    .line 607
    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v1

    .line 611
    .end local v5    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .end local v6    # "tag":Ljava/lang/String;
    :goto_87
    goto :goto_14

    .line 605
    .restart local v5    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .restart local v6    # "tag":Ljava/lang/String;
    :cond_88
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v7, "Duplicate Value node"

    invoke-direct {v4, v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 609
    :cond_90
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 613
    .end local v5    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .end local v6    # "tag":Ljava/lang/String;
    :cond_a9
    if-eqz v0, :cond_107

    .line 616
    const-string v4, "Invalid node: "

    if-nez v1, :cond_d3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_b6

    goto :goto_d3

    .line 617
    :cond_b6
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " missing both value and children"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 620
    :cond_d3
    :goto_d3
    if-eqz v1, :cond_f9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_dc

    goto :goto_f9

    .line 621
    :cond_dc
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " contained both value and children"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 625
    :cond_f9
    :goto_f9
    if-eqz v1, :cond_101

    .line 626
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;

    invoke-direct {v4, v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 628
    :cond_101
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;

    invoke-direct {v4, v0, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v4

    .line 614
    :cond_107
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v5, "Invalid node: missing NodeName"

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static greylist-max-o convertFromLongList(Ljava/util/List;)[J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 1867
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 1868
    .local v0, "objectArray":[Ljava/lang/Long;
    array-length v1, v0

    new-array v1, v1, [J

    .line 1869
    .local v1, "primitiveArray":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, v0

    if-ge v2, v3, :cond_1e

    .line 1870
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1869
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1872
    .end local v2    # "i":I
    :cond_1e
    return-object v1
.end method

.method private static greylist-max-o getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .registers 4
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 640
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 643
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 641
    :cond_b
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get value from a non-leaf node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o parseAAAServerTrustRootList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .registers 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1543
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1546
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1547
    .local v0, "certList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1548
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v3

    .line 1549
    .local v3, "certTuple":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [B

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v3    # "certTuple":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    goto :goto_13

    .line 1551
    :cond_2f
    return-object v0

    .line 1544
    .end local v0    # "certList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_30
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for AAAServerTrustRoot"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist parseAaaServerTrustedNames(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;
    .registers 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1634
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 1637
    const/4 v0, 0x0

    .line 1638
    .local v0, "fqdnListStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1639
    .local v1, "fqdnListArray":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1640
    .local v3, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_72

    :cond_27
    goto :goto_32

    :pswitch_28
    const-string v5, "FQDN"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    goto :goto_33

    :goto_32
    const/4 v4, -0x1

    :goto_33
    packed-switch v4, :pswitch_data_78

    .line 1646
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown node under AAAServerTrustedNames instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1648
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1642
    :pswitch_53
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v0

    .line 1643
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1644
    nop

    .line 1650
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    goto :goto_10

    .line 1651
    :cond_5f
    if-eqz v1, :cond_62

    .line 1655
    return-object v1

    .line 1652
    :cond_62
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "AAAServerTrustedNames instance missing FQDN field"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1635
    .end local v0    # "fqdnListStr":Ljava/lang/String;
    .end local v1    # "fqdnListArray":[Ljava/lang/String;
    :cond_6a
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for AAAServerTrustedNames instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_72
    .packed-switch 0x210a95
        :pswitch_28
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_53
    .end packed-switch
.end method

.method private static greylist-max-o parseCertificateCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1075
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_76

    .line 1079
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>()V

    .line 1080
    .local v0, "certCred":Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1081
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_7e

    :cond_2a
    goto :goto_3f

    :sswitch_2b
    const-string v4, "CertSHA256Fingerprint"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_40

    :sswitch_35
    const-string v4, "CertificateType"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    goto :goto_40

    :goto_3f
    const/4 v3, -0x1

    :goto_40
    packed-switch v3, :pswitch_data_88

    .line 1089
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under CertificateCredential: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1090
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1086
    :pswitch_60
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHexString(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertSha256Fingerprint([B)V

    .line 1087
    goto :goto_74

    .line 1083
    :pswitch_6c
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertType(Ljava/lang/String;)V

    .line 1084
    nop

    .line 1092
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_74
    goto :goto_13

    .line 1093
    :cond_75
    return-object v0

    .line 1076
    .end local v0    # "certCred":Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    :cond_76
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for CertificateCredential"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_7e
    .sparse-switch
        -0x721ea6af -> :sswitch_35
        -0x1103a5a7 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_60
    .end packed-switch
.end method

.method private static greylist-max-o parseCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential;
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 947
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_da

    .line 951
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    .line 952
    .local v0, "credential":Landroid/net/wifi/hotspot2/pps/Credential;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 953
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_e2

    :cond_2a
    goto :goto_71

    :sswitch_2b
    const-string v4, "CreationDate"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    goto :goto_72

    :sswitch_35
    const-string v4, "CheckAAAServerCertStatus"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x5

    goto :goto_72

    :sswitch_3f
    const-string v4, "UsernamePassword"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x2

    goto :goto_72

    :sswitch_49
    const-string v4, "Realm"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x4

    goto :goto_72

    :sswitch_53
    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x6

    goto :goto_72

    :sswitch_5d
    const-string v4, "DigitalCertificate"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x3

    goto :goto_72

    :sswitch_67
    const-string v4, "ExpirationDate"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_72

    :goto_71
    const/4 v3, -0x1

    :goto_72
    packed-switch v3, :pswitch_data_100

    .line 977
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under Credential: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 978
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 974
    :pswitch_92
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSimCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    .line 975
    goto :goto_d7

    .line 970
    :pswitch_9a
    nop

    .line 971
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 970
    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setCheckAaaServerCertStatus(Z)V

    .line 972
    goto :goto_d7

    .line 967
    :pswitch_a7
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    .line 968
    goto :goto_d7

    .line 964
    :pswitch_af
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseCertificateCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    .line 965
    goto :goto_d7

    .line 961
    :pswitch_b7
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    .line 962
    goto :goto_d7

    .line 958
    :pswitch_bf
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setExpirationTimeInMillis(J)V

    .line 959
    goto :goto_d7

    .line 955
    :pswitch_cb
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setCreationTimeInMillis(J)V

    .line 956
    nop

    .line 980
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_d7
    goto/16 :goto_13

    .line 981
    :cond_d9
    return-object v0

    .line 948
    .end local v0    # "credential":Landroid/net/wifi/hotspot2/pps/Credential;
    :cond_da
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for Credential"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_e2
    .sparse-switch
        -0x639674e3 -> :sswitch_67
        -0x48058781 -> :sswitch_5d
        0x140b7 -> :sswitch_53
        0x4b2ea6f -> :sswitch_49
        0x1d7eb5b1 -> :sswitch_3f
        0x2681df32 -> :sswitch_35
        0x684c9f4d -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
        :pswitch_a7
        :pswitch_9a
        :pswitch_92
    .end packed-switch
.end method

.method private static greylist-max-o parseDate(Ljava/lang/String;)J
    .registers 5
    .param p0, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1823
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1824
    .local v0, "format":Ljava/text/DateFormat;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_f} :catch_10

    return-wide v1

    .line 1825
    .end local v0    # "format":Ljava/text/DateFormat;
    :catch_10
    move-exception v0

    .line 1826
    .local v0, "pe":Ljava/text/ParseException;
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Badly formatted time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist parseDecoratedIdentityPrefix(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .registers 4
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1697
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1700
    invoke-static {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v0

    .line 1702
    .local v0, "decoratedIdentityPrefix":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1706
    return-object v0

    .line 1703
    :cond_19
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v2, "Invalid value for node DecoratedPrefix"

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1698
    .end local v0    # "decoratedIdentityPrefix":Ljava/lang/String;
    :cond_21
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node expected for DecoratedPrefix"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o parseEAPMethod(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "userCred"    # Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1038
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 1042
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1043
    .local v1, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_ca

    :cond_25
    goto :goto_6c

    :sswitch_26
    const-string v3, "InnerVendorID"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x5

    goto :goto_6d

    :sswitch_30
    const-string v3, "InnerMethod"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    goto :goto_6d

    :sswitch_3a
    const-string v3, "InnerVendorType"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x6

    goto :goto_6d

    :sswitch_44
    const-string v3, "EAPType"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    goto :goto_6d

    :sswitch_4e
    const-string v3, "VendorType"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x3

    goto :goto_6d

    :sswitch_58
    const-string v3, "InnerEAPType"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x4

    goto :goto_6d

    :sswitch_62
    const-string v3, "VendorId"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x2

    goto :goto_6d

    :goto_6c
    const/4 v2, -0x1

    :goto_6d
    packed-switch v2, :pswitch_data_e8

    .line 1060
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown node under EAPMethod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :pswitch_8d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore unsupported EAP method parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PpsMoParser"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    goto :goto_be

    .line 1048
    :pswitch_aa
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    .line 1049
    goto :goto_be

    .line 1045
    :pswitch_b2
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setEapType(I)V

    .line 1046
    nop

    .line 1062
    .end local v1    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_be
    goto/16 :goto_e

    .line 1063
    :cond_c0
    return-void

    .line 1039
    :cond_c1
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for EAPMethod"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_ca
    .sparse-switch
        -0x7a1b1f5d -> :sswitch_62
        -0x65b65268 -> :sswitch_58
        -0x5fcb5f3e -> :sswitch_4e
        -0x4a77ab72 -> :sswitch_44
        0x204d3378 -> :sswitch_3a
        0x35b51ab7 -> :sswitch_30
        0x394ea8b9 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_aa
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
    .end packed-switch
.end method

.method private static blacklist parseExtension(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1769
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_65

    .line 1772
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1773
    .local v1, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_6e

    :cond_25
    goto :goto_3a

    :sswitch_26
    const-string v3, "Android"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    goto :goto_3b

    :sswitch_30
    const-string v3, "WBA"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    goto :goto_3b

    :goto_3a
    const/4 v2, -0x1

    :goto_3b
    packed-switch v2, :pswitch_data_78

    .line 1784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown node under Extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PpsMoParser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 1778
    :pswitch_5b
    invoke-static {v1, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseVendorWbaExtension(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    .line 1779
    goto :goto_63

    .line 1775
    :pswitch_5f
    invoke-static {v1, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseVendorAndroidExtension(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    .line 1776
    nop

    .line 1786
    .end local v1    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_63
    goto :goto_e

    .line 1787
    :cond_64
    return-void

    .line 1770
    :cond_65
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for Extension"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_6e
    .sparse-switch
        0x14ed6 -> :sswitch_30
        0x2fe0ce4f -> :sswitch_26
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5b
    .end packed-switch
.end method

.method private static greylist-max-o parseHexString(Ljava/lang/String;)[B
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1797
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_44

    .line 1802
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 1803
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_43

    .line 1804
    mul-int/lit8 v2, v1, 0x2

    .line 1806
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x2

    :try_start_18
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_25} :catch_29

    .line 1809
    nop

    .line 1803
    .end local v2    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1807
    .restart local v2    # "index":I
    :catch_29
    move-exception v3

    .line 1808
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid hex string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1811
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_43
    return-object v0

    .line 1798
    .end local v0    # "result":[B
    :cond_44
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Odd length hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1799
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o parseHomeOIInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .registers 8
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 854
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 858
    const/4 v0, 0x0

    .line 859
    .local v0, "oi":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 860
    .local v1, "required":Ljava/lang/Boolean;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 861
    .local v3, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_b2

    :cond_27
    goto :goto_3c

    :sswitch_28
    const-string v5, "HomeOIRequired"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    goto :goto_3d

    :sswitch_32
    const-string v5, "HomeOI"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    goto :goto_3d

    :goto_3c
    const/4 v4, -0x1

    :goto_3d
    packed-switch v4, :pswitch_data_bc

    .line 873
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown node under NetworkID instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 874
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 870
    :pswitch_5d
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 871
    goto :goto_71

    .line 864
    :pswitch_66
    :try_start_66
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v4
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_70} :catch_72

    .line 867
    .end local v0    # "oi":Ljava/lang/Long;
    .local v4, "oi":Ljava/lang/Long;
    move-object v0, v4

    .line 876
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v4    # "oi":Ljava/lang/Long;
    .restart local v0    # "oi":Ljava/lang/Long;
    :goto_71
    goto :goto_10

    .line 865
    .restart local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :catch_72
    move-exception v2

    .line 866
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid HomeOI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 877
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_90
    if-eqz v0, :cond_a2

    .line 880
    if-eqz v1, :cond_9a

    .line 883
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 881
    :cond_9a
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "HomeOI instance missing required field"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 878
    :cond_a2
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "HomeOI instance missing OI field"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 855
    .end local v0    # "oi":Ljava/lang/Long;
    .end local v1    # "required":Ljava/lang/Boolean;
    :cond_aa
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for HomeOI instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_b2
    .sparse-switch
        -0x7ed3d0e7 -> :sswitch_32
        -0x73586a28 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_66
        :pswitch_5d
    .end packed-switch
.end method

.method private static greylist-max-o parseHomeOIList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .registers 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 826
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_48

    .line 830
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .local v0, "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 832
    .local v1, "matchAnyOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 833
    .local v3, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeOIInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v4

    .line 834
    .local v4, "homeOI":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 835
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 837
    :cond_3a
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v4    # "homeOI":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :goto_41
    goto :goto_18

    .line 840
    :cond_42
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 827
    .end local v0    # "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "matchAnyOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_48
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for HomeOIList"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o parseHomeSP(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/HomeSp;
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_e5

    .line 706
    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    .line 707
    .local v0, "homeSp":Landroid/net/wifi/hotspot2/pps/HomeSp;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 708
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_ee

    :cond_2a
    goto :goto_71

    :sswitch_2b
    const-string v4, "OtherHomePartners"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x6

    goto :goto_72

    :sswitch_35
    const-string v4, "FriendlyName"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_72

    :sswitch_3f
    const-string v4, "RoamingConsortiumOI"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x2

    goto :goto_72

    :sswitch_49
    const-string v4, "FQDN"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    goto :goto_72

    :sswitch_53
    const-string v4, "NetworkID"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x4

    goto :goto_72

    :sswitch_5d
    const-string v4, "IconURL"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x3

    goto :goto_72

    :sswitch_67
    const-string v4, "HomeOIList"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x5

    goto :goto_72

    :goto_71
    const/4 v3, -0x1

    :goto_72
    packed-switch v3, :pswitch_data_10c

    .line 734
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under HomeSP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 731
    :pswitch_92
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseOtherHomePartners(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setOtherHomePartners([Ljava/lang/String;)V

    .line 732
    goto :goto_e2

    .line 726
    :pswitch_9a
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeOIList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v3

    .line 727
    .local v3, "homeOIs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/Long;>;Ljava/util/List<Ljava/lang/Long;>;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->convertFromLongList(Ljava/util/List;)[J

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAllOis([J)V

    .line 728
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->convertFromLongList(Ljava/util/List;)[J

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAnyOis([J)V

    .line 729
    goto :goto_e2

    .line 723
    .end local v3    # "homeOIs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/Long;>;Ljava/util/List<Ljava/lang/Long;>;>;"
    :pswitch_b5
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseNetworkIds(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setHomeNetworkIds(Ljava/util/Map;)V

    .line 724
    goto :goto_e2

    .line 720
    :pswitch_bd
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setIconUrl(Ljava/lang/String;)V

    .line 721
    goto :goto_e2

    .line 716
    :pswitch_c5
    nop

    .line 717
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseRoamingConsortiumOI(Ljava/lang/String;)[J

    move-result-object v3

    .line 716
    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setRoamingConsortiumOis([J)V

    .line 718
    goto :goto_e2

    .line 713
    :pswitch_d2
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    .line 714
    goto :goto_e2

    .line 710
    :pswitch_da
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    .line 711
    nop

    .line 736
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_e2
    goto/16 :goto_13

    .line 737
    :cond_e4
    return-object v0

    .line 703
    .end local v0    # "homeSp":Landroid/net/wifi/hotspot2/pps/HomeSp;
    :cond_e5
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for HomeSP"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_ee
    .sparse-switch
        -0x5cfee0a9 -> :sswitch_67
        -0x3b19d9ea -> :sswitch_5d
        -0xd9a5057 -> :sswitch_53
        0x210a95 -> :sswitch_49
        0x205d7ed4 -> :sswitch_3f
        0x2553ddf6 -> :sswitch_35
        0x749ec1ba -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_da
        :pswitch_d2
        :pswitch_c5
        :pswitch_bd
        :pswitch_b5
        :pswitch_9a
        :pswitch_92
    .end packed-switch
.end method

.method private static greylist-max-o parseInteger(Ljava/lang/String;)I
    .registers 5
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1839
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 1840
    :catch_5
    move-exception v0

    .line 1841
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid integer value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o parseLong(Ljava/lang/String;I)J
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1854
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide v0

    .line 1855
    :catch_5
    move-exception v0

    .line 1856
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid long integer value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o parseMinBackhaulThreshold(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V
    .registers 4
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "policy"    # Landroid/net/wifi/hotspot2/pps/Policy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1250
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1253
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1254
    .local v1, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v1, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseMinBackhaulThresholdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V

    .line 1255
    .end local v1    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    goto :goto_e

    .line 1256
    :cond_1e
    return-void

    .line 1251
    :cond_1f
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for MinBackhaulThreshold"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o parseMinBackhaulThresholdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V
    .registers 11
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "policy"    # Landroid/net/wifi/hotspot2/pps/Policy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1269
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_c5

    .line 1272
    const/4 v0, 0x0

    .line 1273
    .local v0, "networkType":Ljava/lang/String;
    const-wide/high16 v1, -0x8000000000000000L

    .line 1274
    .local v1, "downlinkBandwidth":J
    const-wide/high16 v3, -0x8000000000000000L

    .line 1275
    .local v3, "uplinkBandwidth":J
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1276
    .local v6, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_ce

    :cond_2a
    goto :goto_49

    :sswitch_2b
    const-string v8, "DLBandwidth"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    const/4 v7, 0x1

    goto :goto_4a

    :sswitch_35
    const-string v8, "ULBandwidth"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    const/4 v7, 0x2

    goto :goto_4a

    :sswitch_3f
    const-string v8, "NetworkType"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    const/4 v7, 0x0

    goto :goto_4a

    :goto_49
    const/4 v7, -0x1

    :goto_4a
    const/16 v8, 0xa

    packed-switch v7, :pswitch_data_dc

    .line 1287
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown node under MinBackhaulThreshold instance "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1288
    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1284
    :pswitch_6c
    invoke-static {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    .line 1285
    goto :goto_83

    .line 1281
    :pswitch_75
    invoke-static {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 1282
    goto :goto_83

    .line 1278
    :pswitch_7e
    invoke-static {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v0

    .line 1279
    nop

    .line 1290
    .end local v6    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_83
    goto :goto_13

    .line 1291
    :cond_84
    if-eqz v0, :cond_bd

    .line 1295
    const-string v5, "home"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 1296
    invoke-virtual {p1, v1, v2}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeDownlinkBandwidth(J)V

    .line 1297
    invoke-virtual {p1, v3, v4}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinHomeUplinkBandwidth(J)V

    goto :goto_a3

    .line 1298
    :cond_95
    const-string v5, "roaming"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 1299
    invoke-virtual {p1, v1, v2}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingDownlinkBandwidth(J)V

    .line 1300
    invoke-virtual {p1, v3, v4}, Landroid/net/wifi/hotspot2/pps/Policy;->setMinRoamingUplinkBandwidth(J)V

    .line 1304
    :goto_a3
    return-void

    .line 1302
    :cond_a4
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid network type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1292
    :cond_bd
    new-instance v5, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v6, "Missing NetworkType field"

    invoke-direct {v5, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1270
    .end local v0    # "networkType":Ljava/lang/String;
    .end local v1    # "downlinkBandwidth":J
    .end local v3    # "uplinkBandwidth":J
    :cond_c5
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for MinBackhaulThreshold instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_ce
    .sparse-switch
        -0x1041c198 -> :sswitch_3f
        -0x7fc3026 -> :sswitch_35
        0x14d3f109 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_75
        :pswitch_6c
    .end packed-switch
.end method

.method public static whitelist parseMoText(Ljava/lang/String;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .registers 11
    .param p0, "xmlString"    # Ljava/lang/String;

    .line 389
    const-string v0, "PpsMoParser"

    new-instance v1, Landroid/net/wifi/hotspot2/omadm/XMLParser;

    invoke-direct {v1}, Landroid/net/wifi/hotspot2/omadm/XMLParser;-><init>()V

    .line 390
    .local v1, "xmlParser":Landroid/net/wifi/hotspot2/omadm/XMLParser;
    const/4 v2, 0x0

    .line 392
    .local v2, "root":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    const/4 v3, 0x0

    :try_start_9
    invoke-virtual {v1, p0}, Landroid/net/wifi/hotspot2/omadm/XMLParser;->parse(Ljava/lang/String;)Landroid/net/wifi/hotspot2/omadm/XMLNode;

    move-result-object v4
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_9f
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_d} :catch_9f

    .line 396
    .end local v2    # "root":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .local v4, "root":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    nop

    .line 397
    if-nez v4, :cond_16

    .line 398
    const-string v2, "Root is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-object v3

    .line 403
    :cond_16
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v5, "MgmtTree"

    if-eq v2, v5, :cond_24

    .line 404
    const-string v2, "Root is not a MgmtTree"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-object v3

    .line 408
    :cond_24
    const/4 v2, 0x0

    .line 409
    .local v2, "verDtd":Ljava/lang/String;
    const/4 v5, 0x0

    .line 410
    .local v5, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 411
    .local v7, "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_a6

    :cond_45
    goto :goto_5a

    :sswitch_46
    const-string v9, "Node"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    const/4 v8, 0x1

    goto :goto_5b

    :sswitch_50
    const-string v9, "VerDTD"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    const/4 v8, 0x0

    goto :goto_5b

    :goto_5a
    const/4 v8, -0x1

    :goto_5b
    packed-switch v8, :pswitch_data_b0

    .line 432
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown node: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-object v3

    .line 420
    :pswitch_79
    if-eqz v5, :cond_81

    .line 421
    const-string v6, "Unexpected multiple Node element under MgmtTree"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-object v3

    .line 425
    :cond_81
    :try_start_81
    invoke-static {v7}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v8
    :try_end_85
    .catch Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException; {:try_start_81 .. :try_end_85} :catch_87

    .line 429
    .end local v5    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .local v8, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    move-object v5, v8

    goto :goto_9d

    .line 426
    .end local v8    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .restart local v5    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :catch_87
    move-exception v6

    .line 427
    .local v6, "e":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    return-object v3

    .line 413
    .end local v6    # "e":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
    :pswitch_90
    if-eqz v2, :cond_98

    .line 414
    const-string v6, "Duplicate VerDTD element"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-object v3

    .line 417
    :cond_98
    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v2

    .line 418
    nop

    .line 435
    .end local v7    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :goto_9d
    goto :goto_2e

    .line 436
    :cond_9e
    return-object v5

    .line 393
    .end local v4    # "root":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .end local v5    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .local v2, "root":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :catch_9f
    move-exception v4

    .line 394
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Failed to parse XML input"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-object v3

    :sswitch_data_a6
    .sparse-switch
        -0x677b18af -> :sswitch_50
        0x252222 -> :sswitch_46
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_90
        :pswitch_79
    .end packed-switch
.end method

.method private static greylist-max-o parseNetworkIdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .registers 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 791
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_82

    .line 795
    const/4 v0, 0x0

    .line 796
    .local v0, "ssid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 797
    .local v1, "hessid":Ljava/lang/Long;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 798
    .local v3, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_8a

    :cond_27
    goto :goto_3c

    :sswitch_28
    const-string v5, "HESSID"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    goto :goto_3d

    :sswitch_32
    const-string v5, "SSID"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    goto :goto_3d

    :goto_3c
    const/4 v4, -0x1

    :goto_3d
    packed-switch v4, :pswitch_data_94

    .line 806
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown node under NetworkID instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 807
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 803
    :pswitch_5d
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 804
    goto :goto_71

    .line 800
    :pswitch_6c
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v0

    .line 801
    nop

    .line 809
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_71
    goto :goto_10

    .line 810
    :cond_72
    if-eqz v0, :cond_7a

    .line 813
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 811
    :cond_7a
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "NetworkID instance missing SSID"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 792
    .end local v0    # "ssid":Ljava/lang/String;
    .end local v1    # "hessid":Ljava/lang/Long;
    :cond_82
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for NetworkID instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_8a
    .sparse-switch
        0x26fb7b -> :sswitch_32
        0x7ed03df8 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_5d
    .end packed-switch
.end method

.method private static greylist-max-o parseNetworkIds(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .registers 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 767
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_30

    .line 771
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 772
    .local v0, "networkIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 773
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseNetworkIdInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v3

    .line 774
    .local v3, "networkId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v3    # "networkId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_13

    .line 776
    :cond_2f
    return-object v0

    .line 768
    .end local v0    # "networkIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_30
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for NetworkID"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o parseOtherHomePartnerInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 919
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_63

    .line 922
    const/4 v0, 0x0

    .line 923
    .local v0, "fqdn":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 924
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_6c

    :cond_26
    goto :goto_31

    :pswitch_27
    const-string v4, "FQDN"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    goto :goto_32

    :goto_31
    const/4 v3, -0x1

    :goto_32
    packed-switch v3, :pswitch_data_72

    .line 929
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under OtherHomePartner instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 930
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 926
    :pswitch_52
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v0

    .line 927
    nop

    .line 932
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    goto :goto_f

    .line 933
    :cond_58
    if-eqz v0, :cond_5b

    .line 936
    return-object v0

    .line 934
    :cond_5b
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v2, "OtherHomePartner instance missing FQDN field"

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 920
    .end local v0    # "fqdn":Ljava/lang/String;
    :cond_63
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for OtherHomePartner instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_6c
    .packed-switch 0x210a95
        :pswitch_27
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_52
    .end packed-switch
.end method

.method private static greylist-max-o parseOtherHomePartners(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;
    .registers 5
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 897
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_34

    .line 900
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 901
    .local v0, "otherHomePartners":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 902
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseOtherHomePartnerInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    .line 903
    .local v3, "fqdn":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v3    # "fqdn":Ljava/lang/String;
    goto :goto_13

    .line 905
    :cond_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 898
    .end local v0    # "otherHomePartners":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_34
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for OtherHomePartners"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o parsePolicy(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy;
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1135
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 1139
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy;-><init>()V

    .line 1140
    .local v0, "policy":Landroid/net/wifi/hotspot2/pps/Policy;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1141
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_c4

    :cond_2a
    goto :goto_67

    :sswitch_2b
    const-string v4, "PreferredRoamingPartnerList"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    goto :goto_68

    :sswitch_35
    const-string v4, "RequiredProtoPortTuple"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x4

    goto :goto_68

    :sswitch_3f
    const-string v4, "SPExclusionList"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x3

    goto :goto_68

    :sswitch_49
    const-string v4, "MaximumBSSLoadValue"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x5

    goto :goto_68

    :sswitch_53
    const-string v4, "MinBackhaulThreshold"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_68

    :sswitch_5d
    const-string v4, "PolicyUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x2

    goto :goto_68

    :goto_67
    const/4 v3, -0x1

    :goto_68
    packed-switch v3, :pswitch_data_de

    .line 1161
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under Policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1158
    :pswitch_88
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setMaximumBssLoadValue(I)V

    .line 1159
    goto :goto_b8

    .line 1155
    :pswitch_94
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseRequiredProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setRequiredProtoPortMap(Ljava/util/Map;)V

    .line 1156
    goto :goto_b8

    .line 1152
    :pswitch_9c
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSpExclusionList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setExcludedSsidList([Ljava/lang/String;)V

    .line 1153
    goto :goto_b8

    .line 1149
    :pswitch_a4
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setPolicyUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 1150
    goto :goto_b8

    .line 1146
    :pswitch_ac
    invoke-static {v2, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseMinBackhaulThreshold(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Policy;)V

    .line 1147
    goto :goto_b8

    .line 1143
    :pswitch_b0
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePreferredRoamingPartnerList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->setPreferredRoamingPartnerList(Ljava/util/List;)V

    .line 1144
    nop

    .line 1163
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_b8
    goto/16 :goto_13

    .line 1164
    :cond_ba
    return-object v0

    .line 1136
    .end local v0    # "policy":Landroid/net/wifi/hotspot2/pps/Policy;
    :cond_bb
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for Policy"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_c4
    .sparse-switch
        -0x65fa0f45 -> :sswitch_5d
        -0x10c3dc9e -> :sswitch_53
        -0x9f251d7 -> :sswitch_49
        0x22edf02f -> :sswitch_3f
        0x2eb5845e -> :sswitch_35
        0x4fbd41ee -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_ac
        :pswitch_a4
        :pswitch_9c
        :pswitch_94
        :pswitch_88
    .end packed-switch
.end method

.method private static greylist-max-o parsePpsInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .registers 6
    .param p0, "root"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 655
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_db

    .line 659
    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    .line 660
    .local v0, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_da

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 661
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_e4

    :cond_2a
    goto :goto_7b

    :sswitch_2b
    const-string v4, "CredentialPriority"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x6

    goto :goto_7c

    :sswitch_35
    const-string v4, "Extension"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x7

    goto :goto_7c

    :sswitch_3f
    const-string v4, "Credential"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_7c

    :sswitch_49
    const-string v4, "SubscriptionParameters"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x5

    goto :goto_7c

    :sswitch_53
    const-string v4, "AAAServerTrustRoot"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x3

    goto :goto_7c

    :sswitch_5d
    const-string v4, "SubscriptionUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x4

    goto :goto_7c

    :sswitch_67
    const-string v4, "Policy"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x2

    goto :goto_7c

    :sswitch_71
    const-string v4, "HomeSP"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    goto :goto_7c

    :goto_7b
    const/4 v3, -0x1

    :goto_7c
    packed-switch v3, :pswitch_data_106

    .line 688
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 685
    :pswitch_9c
    invoke-static {v2, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseExtension(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    .line 686
    goto :goto_d8

    .line 681
    :pswitch_a0
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredentialPriority(I)V

    .line 682
    goto :goto_d8

    .line 678
    :pswitch_ac
    invoke-static {v2, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSubscriptionParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    .line 679
    goto :goto_d8

    .line 675
    :pswitch_b0
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 676
    goto :goto_d8

    .line 672
    :pswitch_b8
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseAAAServerTrustRootList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setTrustRootCertList(Ljava/util/Map;)V

    .line 673
    goto :goto_d8

    .line 669
    :pswitch_c0
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePolicy(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setPolicy(Landroid/net/wifi/hotspot2/pps/Policy;)V

    .line 670
    goto :goto_d8

    .line 666
    :pswitch_c8
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    .line 667
    goto :goto_d8

    .line 663
    :pswitch_d0
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHomeSP(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    .line 664
    nop

    .line 690
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_d8
    goto/16 :goto_13

    .line 691
    :cond_da
    return-object v0

    .line 656
    .end local v0    # "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :cond_db
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for PPS instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_e4
    .sparse-switch
        -0x7ed3d064 -> :sswitch_71
        -0x712d6eae -> :sswitch_67
        0x9ad3066 -> :sswitch_5d
        0x12bd88f6 -> :sswitch_53
        0x4255a307 -> :sswitch_49
        0x4e15c477 -> :sswitch_3f
        0x52ef3c1f -> :sswitch_35
        0x78443b3b -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_d0
        :pswitch_c8
        :pswitch_c0
        :pswitch_b8
        :pswitch_b0
        :pswitch_ac
        :pswitch_a0
        :pswitch_9c
    .end packed-switch
.end method

.method private static greylist-max-o parsePpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .registers 10
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "config":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    const/4 v1, 0x0

    .line 465
    .local v1, "nodeName":Ljava/lang/String;
    const/high16 v2, -0x80000000

    .line 466
    .local v2, "updateIdentifier":I
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/high16 v5, -0x80000000

    if-eqz v4, :cond_103

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 467
    .local v4, "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_10c

    :cond_25
    goto :goto_44

    :sswitch_26
    const-string v7, "NodeName"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v6, 0x0

    goto :goto_45

    :sswitch_30
    const-string v7, "Node"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v6, 0x1

    goto :goto_45

    :sswitch_3a
    const-string v7, "RTProperties"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v6, 0x2

    goto :goto_45

    :goto_44
    const/4 v6, -0x1

    :goto_45
    packed-switch v6, :pswitch_data_11a

    .line 503
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag under PPS node: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 497
    :pswitch_65
    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUrn(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, "urn":Ljava/lang/String;
    const-string v6, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_72

    goto :goto_cb

    .line 499
    :cond_72
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 481
    .end local v5    # "urn":Ljava/lang/String;
    :pswitch_8b
    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->buildPpsNode(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    move-result-object v6

    .line 482
    .local v6, "ppsNodeRoot":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UpdateIdentifier"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 483
    if-ne v2, v5, :cond_a6

    .line 486
    invoke-static {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v2

    goto :goto_cb

    .line 484
    :cond_a6
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v5, "Multiple node for UpdateIdentifier"

    invoke-direct {v3, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 489
    :cond_ae
    if-nez v0, :cond_b5

    .line 492
    invoke-static {v6}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePpsInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v0

    .line 494
    goto :goto_cb

    .line 490
    :cond_b5
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v5, "Multiple PPS instance"

    invoke-direct {v3, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 469
    .end local v6    # "ppsNodeRoot":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :pswitch_bd
    if-nez v1, :cond_e6

    .line 472
    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v1

    .line 473
    const-string v5, "PerProviderSubscription"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 505
    .end local v4    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :goto_cb
    goto/16 :goto_c

    .line 474
    .restart local v4    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :cond_cd
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected NodeName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 470
    :cond_e6
    new-instance v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate NodeName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 506
    .end local v4    # "child":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :cond_103
    if-eqz v0, :cond_10a

    if-eq v2, v5, :cond_10a

    .line 507
    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUpdateIdentifier(I)V

    .line 509
    :cond_10a
    return-object v0

    nop

    :sswitch_data_10c
    .sparse-switch
        -0x6e6ef6eb -> :sswitch_3a
        0x252222 -> :sswitch_30
        0x46c82fcd -> :sswitch_26
    .end sparse-switch

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_bd
        :pswitch_8b
        :pswitch_65
    .end packed-switch
.end method

.method private static greylist-max-o parsePreferredRoamingPartner(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    .registers 11
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1199
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 1204
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;-><init>()V

    .line 1205
    .local v0, "roamingPartner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1206
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_ea

    :cond_2d
    goto :goto_4c

    :sswitch_2e
    const-string v4, "FQDN_Match"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    move v3, v6

    goto :goto_4d

    :sswitch_38
    const-string v4, "Priority"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    move v3, v7

    goto :goto_4d

    :sswitch_42
    const-string v4, "Country"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    move v3, v5

    goto :goto_4d

    :goto_4c
    const/4 v3, -0x1

    :goto_4d
    packed-switch v3, :pswitch_data_f8

    .line 1232
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under PreferredRoamingPartnerList instance "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1233
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1229
    :pswitch_6d
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setCountries(Ljava/lang/String;)V

    .line 1230
    goto :goto_b0

    .line 1226
    :pswitch_75
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setPriority(I)V

    .line 1227
    goto :goto_b0

    .line 1211
    :pswitch_81
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    .line 1212
    .local v3, "fqdnMatch":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1213
    .local v4, "fqdnMatchArray":[Ljava/lang/String;
    array-length v8, v4

    const-string v9, "Invalid FQDN_Match: "

    if-ne v8, v5, :cond_c9

    .line 1216
    aget-object v5, v4, v6

    invoke-virtual {v0, v5}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdn(Ljava/lang/String;)V

    .line 1217
    aget-object v5, v4, v7

    const-string v8, "exactMatch"

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 1218
    invoke-virtual {v0, v7}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdnExactMatch(Z)V

    goto :goto_b0

    .line 1219
    :cond_a3
    aget-object v5, v4, v7

    const-string v7, "includeSubdomains"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 1220
    invoke-virtual {v0, v6}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdnExactMatch(Z)V

    .line 1235
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v3    # "fqdnMatch":Ljava/lang/String;
    .end local v4    # "fqdnMatchArray":[Ljava/lang/String;
    :goto_b0
    goto/16 :goto_13

    .line 1222
    .restart local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .restart local v3    # "fqdnMatch":Ljava/lang/String;
    .restart local v4    # "fqdnMatchArray":[Ljava/lang/String;
    :cond_b2
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1214
    :cond_c9
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1236
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v3    # "fqdnMatch":Ljava/lang/String;
    .end local v4    # "fqdnMatchArray":[Ljava/lang/String;
    :cond_e0
    return-object v0

    .line 1200
    .end local v0    # "roamingPartner":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    :cond_e1
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for PreferredRoamingPartner instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_ea
    .sparse-switch
        -0x63b0108a -> :sswitch_42
        -0x419d223c -> :sswitch_38
        0x1239537b -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_81
        :pswitch_75
        :pswitch_6d
    .end packed-switch
.end method

.method private static greylist-max-o parsePreferredRoamingPartnerList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/List;
    .registers 5
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1178
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    .local v0, "partnerList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1183
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parsePreferredRoamingPartner(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1184
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    goto :goto_13

    .line 1185
    :cond_27
    return-object v0

    .line 1179
    .end local v0    # "partnerList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;>;"
    :cond_28
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for PreferredRoamingPartnerList"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o parseProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .registers 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1505
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 1509
    const/high16 v0, -0x80000000

    .line 1510
    .local v0, "proto":I
    const/4 v1, 0x0

    .line 1511
    .local v1, "ports":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1512
    .local v3, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_94

    :cond_28
    goto :goto_3d

    :sswitch_29
    const-string v5, "PortNumber"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    goto :goto_3e

    :sswitch_33
    const-string v5, "IPProtocol"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x0

    goto :goto_3e

    :goto_3d
    const/4 v4, -0x1

    :goto_3e
    packed-switch v4, :pswitch_data_9e

    .line 1520
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown node under RequiredProtoPortTuple instance"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1521
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1517
    :pswitch_5e
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v1

    .line 1518
    goto :goto_6c

    .line 1514
    :pswitch_63
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v0

    .line 1515
    nop

    .line 1523
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_6c
    goto :goto_11

    .line 1524
    :cond_6d
    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_84

    .line 1527
    if-eqz v1, :cond_7c

    .line 1530
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 1528
    :cond_7c
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "Missing PortNumber field"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1525
    :cond_84
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "Missing IPProtocol field"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1506
    .end local v0    # "proto":I
    .end local v1    # "ports":Ljava/lang/String;
    :cond_8c
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for RequiredProtoPortTuple instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_94
    .sparse-switch
        -0x38c71b21 -> :sswitch_33
        0x66f6174a -> :sswitch_29
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_63
        :pswitch_5e
    .end packed-switch
.end method

.method private static greylist-max-o parseRequiredProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/util/Map;
    .registers 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1483
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1486
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1487
    .local v0, "protoPortTupleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1488
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseProtoPortTuple(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v3

    .line 1489
    .local v3, "protoPortTuple":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .end local v3    # "protoPortTuple":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_13

    .line 1491
    :cond_2f
    return-object v0

    .line 1484
    .end local v0    # "protoPortTupleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_30
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for RequiredProtoPortTuple"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o parseRoamingConsortiumOI(Ljava/lang/String;)[J
    .registers 6
    .param p0, "oiStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 749
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "oiStrArray":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [J

    .line 751
    .local v1, "oiArray":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_1a

    .line 752
    aget-object v3, v0, v2

    const/16 v4, 0x10

    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 751
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 754
    .end local v2    # "i":I
    :cond_1a
    return-object v1
.end method

.method private static greylist-max-o parseSimCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1106
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_76

    .line 1110
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>()V

    .line 1111
    .local v0, "simCred":Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1112
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_7e

    :cond_2a
    goto :goto_3f

    :sswitch_2b
    const-string v4, "IMSI"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    goto :goto_40

    :sswitch_35
    const-string v4, "EAPType"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_40

    :goto_3f
    const/4 v3, -0x1

    :goto_40
    packed-switch v3, :pswitch_data_88

    .line 1120
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under SimCredential: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1121
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1117
    :pswitch_60
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    .line 1118
    goto :goto_74

    .line 1114
    :pswitch_6c
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    .line 1115
    nop

    .line 1123
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_74
    goto :goto_13

    .line 1124
    :cond_75
    return-object v0

    .line 1107
    .end local v0    # "simCred":Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    :cond_76
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for SimCredential"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_7e
    .sparse-switch
        -0x4a77ab72 -> :sswitch_35
        0x225a7a -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_60
    .end packed-switch
.end method

.method private static greylist-max-o parseSpExclusionInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1457
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_44

    .line 1460
    const/4 v0, 0x0

    .line 1461
    .local v0, "ssid":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1462
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_4c

    :cond_26
    goto :goto_31

    :pswitch_27
    const-string v4, "SSID"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    goto :goto_32

    :goto_31
    const/4 v3, -0x1

    :goto_32
    packed-switch v3, :pswitch_data_52

    .line 1467
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "Unknown node under SPExclusion instance"

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1464
    :pswitch_3d
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v0

    .line 1465
    nop

    .line 1469
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    goto :goto_f

    .line 1470
    :cond_43
    return-object v0

    .line 1458
    .end local v0    # "ssid":Ljava/lang/String;
    :cond_44
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for SPExclusion instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_4c
    .packed-switch 0x26fb7b
        :pswitch_27
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_3d
    .end packed-switch
.end method

.method private static greylist-max-o parseSpExclusionList(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;
    .registers 5
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1438
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    .local v0, "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1443
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseSpExclusionInstance(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    goto :goto_13

    .line 1445
    :cond_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 1439
    .end local v0    # "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_34
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for SPExclusionList"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o parseSubscriptionParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1564
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_96

    .line 1567
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1568
    .local v1, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_9e

    :cond_25
    goto :goto_4e

    :sswitch_26
    const-string v3, "CreationDate"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    goto :goto_4f

    :sswitch_30
    const-string v3, "TypeOfSubscription"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x2

    goto :goto_4f

    :sswitch_3a
    const-string v3, "ExpirationDate"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    goto :goto_4f

    :sswitch_44
    const-string v3, "UsageLimits"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x3

    goto :goto_4f

    :goto_4e
    const/4 v2, -0x1

    :goto_4f
    packed-switch v2, :pswitch_data_b0

    .line 1582
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown node under SubscriptionParameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1583
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1579
    :pswitch_6f
    invoke-static {v1, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUsageLimits(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    .line 1580
    goto :goto_93

    .line 1576
    :pswitch_73
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionType(Ljava/lang/String;)V

    .line 1577
    goto :goto_93

    .line 1573
    :pswitch_7b
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionExpirationTimeInMillis(J)V

    .line 1574
    goto :goto_93

    .line 1570
    :pswitch_87
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionCreationTimeInMillis(J)V

    .line 1571
    nop

    .line 1585
    .end local v1    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_93
    goto/16 :goto_e

    .line 1586
    :cond_95
    return-void

    .line 1565
    :cond_96
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for SubscriptionParameter"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_9e
    .sparse-switch
        -0x730b3f07 -> :sswitch_44
        -0x639674e3 -> :sswitch_3a
        -0x62ae6572 -> :sswitch_30
        0x684c9f4d -> :sswitch_26
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_87
        :pswitch_7b
        :pswitch_73
        :pswitch_6f
    .end packed-switch
.end method

.method private static greylist-max-o parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .registers 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1407
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_71

    .line 1411
    const/4 v0, 0x0

    .line 1412
    .local v0, "certUrl":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1413
    .local v1, "certFingerprint":[B
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1414
    .local v3, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_7a

    :cond_27
    goto :goto_3c

    :sswitch_28
    const-string v5, "CertSHA256Fingerprint"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    goto :goto_3d

    :sswitch_32
    const-string v5, "CertURL"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    goto :goto_3d

    :goto_3c
    const/4 v4, -0x1

    :goto_3d
    packed-switch v4, :pswitch_data_84

    .line 1422
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown node under TrustRoot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1423
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1419
    :pswitch_5d
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseHexString(Ljava/lang/String;)[B

    move-result-object v1

    .line 1420
    goto :goto_6b

    .line 1416
    :pswitch_66
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v0

    .line 1417
    nop

    .line 1425
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_6b
    goto :goto_10

    .line 1426
    :cond_6c
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 1408
    .end local v0    # "certUrl":Ljava/lang/String;
    .end local v1    # "certFingerprint":[B
    :cond_71
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for TrustRoot"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_7a
    .sparse-switch
        -0x74e88b75 -> :sswitch_32
        -0x1103a5a7 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_66
        :pswitch_5d
    .end packed-switch
.end method

.method private static greylist-max-o parseUpdateParameter(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1318
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_fe

    .line 1322
    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>()V

    .line 1323
    .local v0, "updateParam":Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1324
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_106

    :cond_2a
    goto :goto_71

    :sswitch_2b
    const-string v4, "UsernamePassword"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x4

    goto :goto_72

    :sswitch_35
    const-string v4, "UpdateInterval"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    goto :goto_72

    :sswitch_3f
    const-string v4, "Restriction"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x2

    goto :goto_72

    :sswitch_49
    const-string v4, "Other"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x6

    goto :goto_72

    :sswitch_53
    const-string v4, "URI"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x3

    goto :goto_72

    :sswitch_5d
    const-string v4, "TrustRoot"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x5

    goto :goto_72

    :sswitch_67
    const-string v4, "UpdateMethod"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_72

    :goto_71
    const/4 v3, -0x1

    :goto_72
    packed-switch v3, :pswitch_data_124

    .line 1351
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under Update Parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1352
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1348
    :pswitch_92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore unsupported paramter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PpsMoParser"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    goto :goto_fb

    .line 1343
    :pswitch_af
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseTrustRoot(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v3

    .line 1344
    .local v3, "trustRoot":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertUrl(Ljava/lang/String;)V

    .line 1345
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v0, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertSha256Fingerprint([B)V

    .line 1346
    goto :goto_fb

    .line 1338
    .end local v3    # "trustRoot":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :pswitch_c2
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseUpdateUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;

    move-result-object v3

    .line 1339
    .local v3, "usernamePassword":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUsername(Ljava/lang/String;)V

    .line 1340
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setBase64EncodedPassword(Ljava/lang/String;)V

    .line 1341
    goto :goto_fb

    .line 1335
    .end local v3    # "usernamePassword":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_d5
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setServerUri(Ljava/lang/String;)V

    .line 1336
    goto :goto_fb

    .line 1332
    :pswitch_dd
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setRestriction(Ljava/lang/String;)V

    .line 1333
    goto :goto_fb

    .line 1329
    :pswitch_e5
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateMethod(Ljava/lang/String;)V

    .line 1330
    goto :goto_fb

    .line 1326
    :pswitch_ed
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateIntervalInMinutes(J)V

    .line 1327
    nop

    .line 1354
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_fb
    goto/16 :goto_13

    .line 1355
    :cond_fd
    return-object v0

    .line 1319
    .end local v0    # "updateParam":Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    :cond_fe
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for Update Parameters"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_106
    .sparse-switch
        -0x394f30d6 -> :sswitch_67
        -0x1f4598c6 -> :sswitch_5d
        0x1494c -> :sswitch_53
        0x48f8ef0 -> :sswitch_49
        0x65dbbac -> :sswitch_3f
        0x1a2474ce -> :sswitch_35
        0x1d7eb5b1 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_ed
        :pswitch_e5
        :pswitch_dd
        :pswitch_d5
        :pswitch_c2
        :pswitch_af
        :pswitch_92
    .end packed-switch
.end method

.method private static greylist-max-o parseUpdateUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/util/Pair;
    .registers 7
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1370
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 1374
    const/4 v0, 0x0

    .line 1375
    .local v0, "username":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1376
    .local v1, "password":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1377
    .local v3, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_76

    :cond_27
    goto :goto_3c

    :sswitch_28
    const-string v5, "Password"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    goto :goto_3d

    :sswitch_32
    const-string v5, "Username"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    goto :goto_3d

    :goto_3c
    const/4 v4, -0x1

    :goto_3d
    packed-switch v4, :pswitch_data_80

    .line 1385
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown node under UsernamePassword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1386
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1382
    :pswitch_5d
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v1

    .line 1383
    goto :goto_67

    .line 1379
    :pswitch_62
    invoke-static {v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v0

    .line 1380
    nop

    .line 1388
    .end local v3    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_67
    goto :goto_10

    .line 1389
    :cond_68
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 1371
    .end local v0    # "username":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    :cond_6d
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for UsernamePassword"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_76
    .sparse-switch
        -0xbfc130a -> :sswitch_32
        0x4c641ebb -> :sswitch_28
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5d
    .end packed-switch
.end method

.method private static greylist-max-o parseUrn(Landroid/net/wifi/hotspot2/omadm/XMLNode;)Ljava/lang/String;
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 526
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9b

    .line 529
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 530
    .local v0, "typeNode":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_93

    .line 533
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Type"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 537
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 538
    .local v1, "ddfNameNode":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 541
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DDFName"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 545
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 542
    :cond_51
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected tag for DDFName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 539
    :cond_6e
    new-instance v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v3, "Expect DDFName node to have no child"

    invoke-direct {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 534
    .end local v1    # "ddfNameNode":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :cond_76
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected tag for Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :cond_93
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v2, "Expect Type node to only have one child"

    invoke-direct {v1, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 527
    .end local v0    # "typeNode":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    :cond_9b
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Expect RTPProperties node to only have one child"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o parseUsageLimits(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1599
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_a5

    .line 1602
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1603
    .local v1, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_ae

    :cond_25
    goto :goto_4e

    :sswitch_26
    const-string v3, "TimeLimit"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x2

    goto :goto_4f

    :sswitch_30
    const-string v3, "DataLimit"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    goto :goto_4f

    :sswitch_3a
    const-string v3, "UsageTimePeriod"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x3

    goto :goto_4f

    :sswitch_44
    const-string v3, "StartDate"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    goto :goto_4f

    :goto_4e
    const/4 v2, -0x1

    :goto_4f
    const/16 v3, 0xa

    packed-switch v2, :pswitch_data_c0

    .line 1618
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown node under UsageLimits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1619
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1614
    :pswitch_71
    nop

    .line 1615
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 1614
    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitUsageTimePeriodInMinutes(J)V

    .line 1616
    goto :goto_a2

    .line 1611
    :pswitch_7e
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitTimeLimitInMinutes(J)V

    .line 1612
    goto :goto_a2

    .line 1608
    :pswitch_8a
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitStartTimeInMillis(J)V

    .line 1609
    goto :goto_a2

    .line 1605
    :pswitch_96
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitDataLimit(J)V

    .line 1606
    nop

    .line 1621
    .end local v1    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_a2
    goto/16 :goto_e

    .line 1622
    :cond_a4
    return-void

    .line 1600
    :cond_a5
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for UsageLimits"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_ae
    .sparse-switch
        -0x77fb8f0 -> :sswitch_44
        0x22fde34f -> :sswitch_3a
        0x60b8c611 -> :sswitch_30
        0x7890e0ce -> :sswitch_26
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_96
        :pswitch_8a
        :pswitch_7e
        :pswitch_71
    .end packed-switch
.end method

.method private static greylist-max-o parseUserCredential(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 994
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_bf

    .line 998
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;-><init>()V

    .line 999
    .local v0, "userCred":Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_be

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1000
    .local v2, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_c8

    :cond_2a
    goto :goto_67

    :sswitch_2b
    const-string v4, "EAPMethod"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x5

    goto :goto_68

    :sswitch_35
    const-string v4, "SoftTokenApp"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x3

    goto :goto_68

    :sswitch_3f
    const-string v4, "Password"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_68

    :sswitch_49
    const-string v4, "MachineManaged"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x2

    goto :goto_68

    :sswitch_53
    const-string v4, "AbleToShare"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x4

    goto :goto_68

    :sswitch_5d
    const-string v4, "Username"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v3, 0x0

    goto :goto_68

    :goto_67
    const/4 v3, -0x1

    :goto_68
    packed-switch v3, :pswitch_data_e2

    .line 1020
    new-instance v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown node under UsernamePassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1021
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1017
    :pswitch_88
    invoke-static {v2, v0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseEAPMethod(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    .line 1018
    goto :goto_bc

    .line 1014
    :pswitch_8c
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setAbleToShare(Z)V

    .line 1015
    goto :goto_bc

    .line 1011
    :pswitch_98
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setSoftTokenApp(Ljava/lang/String;)V

    .line 1012
    goto :goto_bc

    .line 1008
    :pswitch_a0
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setMachineManaged(Z)V

    .line 1009
    goto :goto_bc

    .line 1005
    :pswitch_ac
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setPassword(Ljava/lang/String;)V

    .line 1006
    goto :goto_bc

    .line 1002
    :pswitch_b4
    invoke-static {v2}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->getPpsNodeValue(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setUsername(Ljava/lang/String;)V

    .line 1003
    nop

    .line 1023
    .end local v2    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_bc
    goto/16 :goto_13

    .line 1024
    :cond_be
    return-object v0

    .line 995
    .end local v0    # "userCred":Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    :cond_bf
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for UsernamePassword"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_c8
    .sparse-switch
        -0xbfc130a -> :sswitch_5d
        -0x76408b6 -> :sswitch_53
        0x3e562178 -> :sswitch_49
        0x4c641ebb -> :sswitch_3f
        0x5416bbd2 -> :sswitch_35
        0x67bb9135 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_ac
        :pswitch_a0
        :pswitch_98
        :pswitch_8c
        :pswitch_88
    .end packed-switch
.end method

.method private static blacklist parseVendorAndroidExtension(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1719
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1722
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1723
    .local v1, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_64

    :cond_25
    goto :goto_30

    :pswitch_26
    const-string v3, "AAAServerTrustedNames"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    goto :goto_31

    :goto_30
    const/4 v2, -0x1

    :goto_31
    packed-switch v2, :pswitch_data_6a

    .line 1729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown node under Android Extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PpsMoParser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 1725
    :pswitch_51
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseAaaServerTrustedNames(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setAaaServerTrustedNames([Ljava/lang/String;)V

    .line 1726
    nop

    .line 1731
    .end local v1    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_59
    goto :goto_e

    .line 1732
    :cond_5a
    return-void

    .line 1720
    :cond_5b
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for AndroidExtension"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_64
    .packed-switch -0x5121a28b
        :pswitch_26
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_51
    .end packed-switch
.end method

.method private static blacklist parseVendorWbaExtension(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1744
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_57

    .line 1747
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1748
    .local v1, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_60

    :cond_25
    goto :goto_30

    :pswitch_26
    const-string v3, "NAI"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    goto :goto_31

    :goto_30
    const/4 v2, -0x1

    :goto_31
    packed-switch v2, :pswitch_data_66

    .line 1754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown node under WBA Extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PpsMoParser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 1750
    :pswitch_51
    invoke-static {v1, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseVendorWbaExtensionNai(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    .line 1751
    nop

    .line 1756
    .end local v1    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :goto_55
    goto :goto_e

    .line 1757
    :cond_56
    return-void

    .line 1745
    :cond_57
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for WBA Extension"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_60
    .packed-switch 0x12cf6
        :pswitch_26
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_51
    .end packed-switch
.end method

.method private static blacklist parseVendorWbaExtensionNai(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .registers 6
    .param p0, "node"    # Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    .param p1, "config"    # Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;
        }
    .end annotation

    .line 1668
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_60

    .line 1671
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;

    .line 1672
    .local v1, "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_68

    :cond_25
    goto :goto_30

    :pswitch_26
    const-string v3, "DecoratedPrefix"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    goto :goto_31

    :goto_30
    const/4 v2, -0x1

    :goto_31
    packed-switch v2, :pswitch_data_6e

    .line 1679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown node under NAI instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PpsMoParser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 1674
    :pswitch_51
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1675
    invoke-static {v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser;->parseDecoratedIdentityPrefix(Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setDecoratedIdentityPrefix(Ljava/lang/String;)V

    .line 1682
    .end local v1    # "child":Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
    :cond_5e
    :goto_5e
    goto :goto_e

    .line 1683
    :cond_5f
    return-void

    .line 1669
    :cond_60
    new-instance v0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;

    const-string v1, "Leaf node not expected for NAI instance"

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_68
    .packed-switch -0x3117c7b7
        :pswitch_26
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_51
    .end packed-switch
.end method
