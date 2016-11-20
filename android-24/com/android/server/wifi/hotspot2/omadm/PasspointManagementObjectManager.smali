.class public Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;
.super Ljava/lang/Object;
.source "PasspointManagementObjectManager.java"


# static fields
.field private static final DTFormat:Ljava/text/DateFormat;

.field private static final FQDNPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IntervalFactor:J = 0xea60L

.field public static final TAG_AAAServerTrustRoot:Ljava/lang/String; = "AAAServerTrustRoot"

.field public static final TAG_AbleToShare:Ljava/lang/String; = "AbleToShare"

.field public static final TAG_CertSHA256Fingerprint:Ljava/lang/String; = "CertSHA256Fingerprint"

.field public static final TAG_CertURL:Ljava/lang/String; = "CertURL"

.field public static final TAG_CertificateType:Ljava/lang/String; = "CertificateType"

.field public static final TAG_CheckAAAServerCertStatus:Ljava/lang/String; = "CheckAAAServerCertStatus"

.field public static final TAG_Country:Ljava/lang/String; = "Country"

.field public static final TAG_CreationDate:Ljava/lang/String; = "CreationDate"

.field public static final TAG_Credential:Ljava/lang/String; = "Credential"

.field public static final TAG_CredentialPriority:Ljava/lang/String; = "CredentialPriority"

.field public static final TAG_DLBandwidth:Ljava/lang/String; = "DLBandwidth"

.field public static final TAG_DataLimit:Ljava/lang/String; = "DataLimit"

.field public static final TAG_DigitalCertificate:Ljava/lang/String; = "DigitalCertificate"

.field public static final TAG_EAPMethod:Ljava/lang/String; = "EAPMethod"

.field public static final TAG_EAPType:Ljava/lang/String; = "EAPType"

.field public static final TAG_ExpirationDate:Ljava/lang/String; = "ExpirationDate"

.field public static final TAG_Extension:Ljava/lang/String; = "Extension"

.field public static final TAG_FQDN:Ljava/lang/String; = "FQDN"

.field public static final TAG_FQDN_Match:Ljava/lang/String; = "FQDN_Match"

.field public static final TAG_FriendlyName:Ljava/lang/String; = "FriendlyName"

.field public static final TAG_HESSID:Ljava/lang/String; = "HESSID"

.field public static final TAG_HomeOI:Ljava/lang/String; = "HomeOI"

.field public static final TAG_HomeOIList:Ljava/lang/String; = "HomeOIList"

.field public static final TAG_HomeOIRequired:Ljava/lang/String; = "HomeOIRequired"

.field public static final TAG_HomeSP:Ljava/lang/String; = "HomeSP"

.field public static final TAG_IMSI:Ljava/lang/String; = "IMSI"

.field public static final TAG_IPProtocol:Ljava/lang/String; = "IPProtocol"

.field public static final TAG_IconURL:Ljava/lang/String; = "IconURL"

.field public static final TAG_InnerEAPType:Ljava/lang/String; = "InnerEAPType"

.field public static final TAG_InnerMethod:Ljava/lang/String; = "InnerMethod"

.field public static final TAG_InnerVendorID:Ljava/lang/String; = "InnerVendorID"

.field public static final TAG_InnerVendorType:Ljava/lang/String; = "InnerVendorType"

.field public static final TAG_MachineManaged:Ljava/lang/String; = "MachineManaged"

.field public static final TAG_MaximumBSSLoadValue:Ljava/lang/String; = "MaximumBSSLoadValue"

.field public static final TAG_MinBackhaulThreshold:Ljava/lang/String; = "MinBackhaulThreshold"

.field public static final TAG_NetworkID:Ljava/lang/String; = "NetworkID"

.field public static final TAG_NetworkType:Ljava/lang/String; = "NetworkType"

.field public static final TAG_Other:Ljava/lang/String; = "Other"

.field public static final TAG_OtherHomePartners:Ljava/lang/String; = "OtherHomePartners"

.field public static final TAG_Password:Ljava/lang/String; = "Password"

.field public static final TAG_PerProviderSubscription:Ljava/lang/String; = "PerProviderSubscription"

.field public static final TAG_Policy:Ljava/lang/String; = "Policy"

.field public static final TAG_PolicyUpdate:Ljava/lang/String; = "PolicyUpdate"

.field public static final TAG_PortNumber:Ljava/lang/String; = "PortNumber"

.field public static final TAG_PreferredRoamingPartnerList:Ljava/lang/String; = "PreferredRoamingPartnerList"

.field public static final TAG_Priority:Ljava/lang/String; = "Priority"

.field public static final TAG_Realm:Ljava/lang/String; = "Realm"

.field public static final TAG_RequiredProtoPortTuple:Ljava/lang/String; = "RequiredProtoPortTuple"

.field public static final TAG_Restriction:Ljava/lang/String; = "Restriction"

.field public static final TAG_RoamingConsortiumOI:Ljava/lang/String; = "RoamingConsortiumOI"

.field public static final TAG_SIM:Ljava/lang/String; = "SIM"

.field public static final TAG_SPExclusionList:Ljava/lang/String; = "SPExclusionList"

.field public static final TAG_SSID:Ljava/lang/String; = "SSID"

.field public static final TAG_SoftTokenApp:Ljava/lang/String; = "SoftTokenApp"

.field public static final TAG_StartDate:Ljava/lang/String; = "StartDate"

.field public static final TAG_SubscriptionParameters:Ljava/lang/String; = "SubscriptionParameters"

.field public static final TAG_SubscriptionUpdate:Ljava/lang/String; = "SubscriptionUpdate"

.field public static final TAG_TimeLimit:Ljava/lang/String; = "TimeLimit"

.field public static final TAG_TrustRoot:Ljava/lang/String; = "TrustRoot"

.field public static final TAG_TypeOfSubscription:Ljava/lang/String; = "TypeOfSubscription"

.field public static final TAG_ULBandwidth:Ljava/lang/String; = "ULBandwidth"

.field public static final TAG_URI:Ljava/lang/String; = "URI"

.field public static final TAG_UpdateIdentifier:Ljava/lang/String; = "UpdateIdentifier"

.field public static final TAG_UpdateInterval:Ljava/lang/String; = "UpdateInterval"

.field public static final TAG_UpdateMethod:Ljava/lang/String; = "UpdateMethod"

.field public static final TAG_UsageLimits:Ljava/lang/String; = "UsageLimits"

.field public static final TAG_UsageTimePeriod:Ljava/lang/String; = "UsageTimePeriod"

.field public static final TAG_Username:Ljava/lang/String; = "Username"

.field public static final TAG_UsernamePassword:Ljava/lang/String; = "UsernamePassword"

.field public static final TAG_VendorId:Ljava/lang/String; = "VendorId"

.field public static final TAG_VendorType:Ljava/lang/String; = "VendorType"

.field private static final sSelectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnabled:Z

.field private final mPpsFile:Ljava/io/File;

.field private final mSPs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v3, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 125
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@7
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    #@a
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@d
    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    #@f
    .line 130
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    #@11
    const-string/jumbo v1, "UTC"

    #@14
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@1b
    .line 132
    new-instance v0, Ljava/util/HashMap;

    #@1d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@20
    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->sSelectionMap:Ljava/util/Map;

    #@22
    .line 134
    const-string/jumbo v0, "FQDN_Match"

    #@25
    new-array v1, v7, [Ljava/lang/Object;

    #@27
    .line 135
    const-string/jumbo v2, "exactmatch"

    #@2a
    aput-object v2, v1, v4

    #@2c
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@2e
    aput-object v2, v1, v5

    #@30
    .line 136
    const-string/jumbo v2, "includesubdomains"

    #@33
    aput-object v2, v1, v6

    #@35
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@37
    aput-object v2, v1, v3

    #@39
    .line 134
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->setSelections(Ljava/lang/String;[Ljava/lang/Object;)V

    #@3c
    .line 137
    const-string/jumbo v0, "UpdateMethod"

    #@3f
    new-array v1, v7, [Ljava/lang/Object;

    #@41
    .line 138
    const-string/jumbo v2, "oma-dm-clientinitiated"

    #@44
    aput-object v2, v1, v4

    #@46
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@48
    aput-object v2, v1, v5

    #@4a
    .line 139
    const-string/jumbo v2, "spp-clientinitiated"

    #@4d
    aput-object v2, v1, v6

    #@4f
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@51
    aput-object v2, v1, v3

    #@53
    .line 137
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->setSelections(Ljava/lang/String;[Ljava/lang/Object;)V

    #@56
    .line 140
    const-string/jumbo v0, "Restriction"

    #@59
    const/4 v1, 0x6

    #@5a
    new-array v1, v1, [Ljava/lang/Object;

    #@5c
    .line 141
    const-string/jumbo v2, "homesp"

    #@5f
    aput-object v2, v1, v4

    #@61
    sget-object v2, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->HomeSP:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    #@63
    aput-object v2, v1, v5

    #@65
    .line 142
    const-string/jumbo v2, "roamingpartner"

    #@68
    aput-object v2, v1, v6

    #@6a
    sget-object v2, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->RoamingPartner:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    #@6c
    aput-object v2, v1, v3

    #@6e
    .line 143
    const-string/jumbo v2, "unrestricted"

    #@71
    aput-object v2, v1, v7

    #@73
    sget-object v2, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->Unrestricted:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    #@75
    const/4 v3, 0x5

    #@76
    aput-object v2, v1, v3

    #@78
    .line 140
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->setSelections(Ljava/lang/String;[Ljava/lang/Object;)V

    #@7b
    .line 224
    new-array v0, v6, [Ljava/lang/String;

    #@7d
    const-string/jumbo v1, "HomeSP"

    #@80
    aput-object v1, v0, v4

    #@82
    const-string/jumbo v1, "FQDN"

    #@85
    aput-object v1, v0, v5

    #@87
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@8a
    move-result-object v0

    #@8b
    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->FQDNPath:Ljava/util/List;

    #@8d
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1, "ppsFile"    # Ljava/io/File;
    .param p2, "hs2enabled"    # Z

    #@0
    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 159
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    #@5
    .line 160
    iput-boolean p2, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    #@7
    .line 161
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    #@e
    .line 158
    return-void
.end method

.method private addSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    .locals 7
    .param p1, "mo"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 290
    const/4 v0, 0x0

    #@2
    .local v0, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    #@4
    new-instance v3, Ljava/io/FileInputStream;

    #@6
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    #@8
    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@b
    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    .line 291
    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@11
    move-result-object v2

    #@12
    .line 292
    .local v2, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@19
    .line 293
    if-eqz v1, :cond_0

    #@1b
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@1e
    :cond_0
    :goto_0
    if-eqz v4, :cond_4

    #@20
    throw v4

    #@21
    :catch_0
    move-exception v4

    #@22
    goto :goto_0

    #@23
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v0    # "in":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v3

    #@24
    .end local v0    # "in":Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@25
    :catchall_0
    move-exception v4

    #@26
    move-object v6, v4

    #@27
    move-object v4, v3

    #@28
    move-object v3, v6

    #@29
    :goto_2
    if-eqz v0, :cond_1

    #@2b
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    #@2e
    :cond_1
    :goto_3
    if-eqz v4, :cond_3

    #@30
    throw v4

    #@31
    :catch_2
    move-exception v5

    #@32
    if-nez v4, :cond_2

    #@34
    move-object v4, v5

    #@35
    goto :goto_3

    #@36
    :cond_2
    if-eq v4, v5, :cond_1

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@3b
    goto :goto_3

    #@3c
    :cond_3
    throw v3

    #@3d
    .line 294
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    #@3f
    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    #@42
    .line 288
    return-void

    #@43
    .line 293
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v0    # "in":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v3

    #@44
    goto :goto_2

    #@45
    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v3

    #@46
    move-object v0, v1

    #@47
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v0, "in":Ljava/io/BufferedInputStream;
    goto :goto_2

    #@48
    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v3

    #@49
    move-object v0, v1

    #@4a
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v0    # "in":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private static buildCredential(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/Credential;
    .locals 44
    .param p0, "credNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 723
    const-string/jumbo v5, "CreationDate"

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@8
    move-result-object v5

    #@9
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    #@c
    move-result-wide v6

    #@d
    .line 724
    .local v6, "ctime":J
    const-string/jumbo v5, "ExpirationDate"

    #@10
    move-object/from16 v0, p0

    #@12
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@15
    move-result-object v5

    #@16
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    #@19
    move-result-wide v8

    #@1a
    .line 725
    .local v8, "expTime":J
    const-string/jumbo v5, "Realm"

    #@1d
    move-object/from16 v0, p0

    #@1f
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@22
    move-result-object v5

    #@23
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@26
    move-result-object v10

    #@27
    .line 726
    .local v10, "realm":Ljava/lang/String;
    const-string/jumbo v5, "CheckAAAServerCertStatus"

    #@2a
    move-object/from16 v0, p0

    #@2c
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@2f
    move-result-object v5

    #@30
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    #@33
    move-result v11

    #@34
    .line 728
    .local v11, "checkAAACert":Z
    const-string/jumbo v5, "UsernamePassword"

    #@37
    move-object/from16 v0, p0

    #@39
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3c
    move-result-object v41

    #@3d
    .line 729
    .local v41, "unNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v5, "DigitalCertificate"

    #@40
    move-object/from16 v0, p0

    #@42
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@45
    move-result-object v18

    #@46
    .line 730
    .local v18, "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v5, "SIM"

    #@49
    move-object/from16 v0, p0

    #@4b
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@4e
    move-result-object v40

    #@4f
    .line 733
    .local v40, "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v41, :cond_0

    #@51
    const/4 v5, 0x1

    #@52
    :goto_0
    add-int/lit8 v4, v5, 0x0

    #@54
    .line 734
    .local v4, "alternatives":I
    if-eqz v18, :cond_1

    #@56
    const/4 v5, 0x1

    #@57
    :goto_1
    add-int/2addr v4, v5

    #@58
    .line 735
    if-eqz v40, :cond_2

    #@5a
    const/4 v5, 0x1

    #@5b
    :goto_2
    add-int/2addr v4, v5

    #@5c
    .line 736
    const/4 v5, 0x1

    #@5d
    if-eq v4, v5, :cond_3

    #@5f
    .line 737
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@61
    new-instance v19, Ljava/lang/StringBuilder;

    #@63
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v20, "Expected exactly one credential type, got "

    #@69
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v19

    #@6d
    move-object/from16 v0, v19

    #@6f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v19

    #@73
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v19

    #@77
    move-object/from16 v0, v19

    #@79
    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v5

    #@7d
    .line 733
    .end local v4    # "alternatives":I
    :cond_0
    const/4 v5, 0x0

    #@7e
    goto :goto_0

    #@7f
    .line 734
    .restart local v4    # "alternatives":I
    :cond_1
    const/4 v5, 0x0

    #@80
    goto :goto_1

    #@81
    .line 735
    :cond_2
    const/4 v5, 0x0

    #@82
    goto :goto_2

    #@83
    .line 740
    :cond_3
    if-eqz v41, :cond_a

    #@85
    .line 741
    const-string/jumbo v5, "Username"

    #@88
    move-object/from16 v0, v41

    #@8a
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@8d
    move-result-object v5

    #@8e
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@91
    move-result-object v13

    #@92
    .line 742
    .local v13, "userName":Ljava/lang/String;
    const-string/jumbo v5, "Password"

    #@95
    move-object/from16 v0, v41

    #@97
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@9a
    move-result-object v5

    #@9b
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@9e
    move-result-object v14

    #@9f
    .line 743
    .local v14, "password":Ljava/lang/String;
    const-string/jumbo v5, "MachineManaged"

    #@a2
    move-object/from16 v0, v41

    #@a4
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@a7
    move-result-object v5

    #@a8
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    #@ab
    move-result v15

    #@ac
    .line 744
    .local v15, "machineManaged":Z
    const-string/jumbo v5, "SoftTokenApp"

    #@af
    move-object/from16 v0, v41

    #@b1
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@b4
    move-result-object v5

    #@b5
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@b8
    move-result-object v16

    #@b9
    .line 745
    .local v16, "softTokenApp":Ljava/lang/String;
    const-string/jumbo v5, "AbleToShare"

    #@bc
    move-object/from16 v0, v41

    #@be
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@c1
    move-result-object v5

    #@c2
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    #@c5
    move-result v17

    #@c6
    .line 747
    .local v17, "ableToShare":Z
    const-string/jumbo v5, "EAPMethod"

    #@c9
    move-object/from16 v0, v41

    #@cb
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@ce
    move-result-object v32

    #@cf
    .line 748
    .local v32, "eapMethodNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v5, "EAPType"

    #@d2
    move-object/from16 v0, v32

    #@d4
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@d7
    move-result-object v5

    #@d8
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    #@db
    move-result v30

    #@dc
    .line 750
    .local v30, "eapID":I
    invoke-static/range {v30 .. v30}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@df
    move-result-object v31

    #@e0
    .line 751
    .local v31, "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-nez v31, :cond_4

    #@e2
    .line 752
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@e4
    new-instance v19, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v20, "Unknown EAP method: "

    #@ec
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v19

    #@f0
    move-object/from16 v0, v19

    #@f2
    move/from16 v1, v30

    #@f4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v19

    #@f8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v19

    #@fc
    move-object/from16 v0, v19

    #@fe
    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@101
    throw v5

    #@102
    .line 755
    :cond_4
    const-string/jumbo v5, "VendorId"

    #@105
    move-object/from16 v0, v32

    #@107
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@10a
    move-result-object v5

    #@10b
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    #@10e
    move-result-object v42

    #@10f
    .line 756
    .local v42, "vid":Ljava/lang/Long;
    const-string/jumbo v5, "VendorType"

    #@112
    move-object/from16 v0, v32

    #@114
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@117
    move-result-object v5

    #@118
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    #@11b
    move-result-object v43

    #@11c
    .line 757
    .local v43, "vtype":Ljava/lang/Long;
    const-string/jumbo v5, "InnerEAPType"

    #@11f
    move-object/from16 v0, v32

    #@121
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@124
    move-result-object v5

    #@125
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    #@128
    move-result-object v34

    #@129
    .line 758
    .local v34, "innerEAPType":Ljava/lang/Long;
    const/16 v33, 0x0

    #@12b
    .line 759
    .local v33, "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-eqz v34, :cond_5

    #@12d
    .line 760
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->intValue()I

    #@130
    move-result v5

    #@131
    invoke-static {v5}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@134
    move-result-object v33

    #@135
    .line 761
    .local v33, "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-nez v33, :cond_5

    #@137
    .line 762
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@139
    new-instance v19, Ljava/lang/StringBuilder;

    #@13b
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@13e
    const-string/jumbo v20, "Bad inner EAP method: "

    #@141
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v19

    #@145
    move-object/from16 v0, v19

    #@147
    move-object/from16 v1, v34

    #@149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v19

    #@14d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v19

    #@151
    move-object/from16 v0, v19

    #@153
    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@156
    throw v5

    #@157
    .line 766
    .end local v33    # "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    :cond_5
    const-string/jumbo v5, "InnerVendorID"

    #@15a
    move-object/from16 v0, v32

    #@15c
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@15f
    move-result-object v5

    #@160
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    #@163
    move-result-object v36

    #@164
    .line 767
    .local v36, "innerVid":Ljava/lang/Long;
    const-string/jumbo v5, "InnerVendorType"

    #@167
    move-object/from16 v0, v32

    #@169
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@16c
    move-result-object v5

    #@16d
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    #@170
    move-result-object v37

    #@171
    .line 768
    .local v37, "innerVtype":Ljava/lang/Long;
    const-string/jumbo v5, "InnerMethod"

    #@174
    move-object/from16 v0, v32

    #@176
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@179
    move-result-object v5

    #@17a
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@17d
    move-result-object v35

    #@17e
    .line 771
    .local v35, "innerNonEAPMethod":Ljava/lang/String;
    if-eqz v33, :cond_6

    #@180
    .line 772
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@182
    new-instance v5, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;

    #@184
    move-object/from16 v0, v33

    #@186
    invoke-direct {v5, v0}, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)V

    #@189
    move-object/from16 v0, v31

    #@18b
    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@18e
    .line 787
    .local v12, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :goto_3
    new-instance v5, Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@190
    invoke-direct/range {v5 .. v17}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    #@193
    return-object v5

    #@194
    .line 773
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_6
    if-eqz v42, :cond_7

    #@196
    .line 774
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@198
    .line 775
    new-instance v5, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    #@19a
    sget-object v19, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@19c
    .line 776
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->intValue()I

    #@19f
    move-result v20

    #@1a0
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    #@1a3
    move-result-wide v22

    #@1a4
    .line 775
    move-object/from16 v0, v19

    #@1a6
    move/from16 v1, v20

    #@1a8
    move-wide/from16 v2, v22

    #@1aa
    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;IJ)V

    #@1ad
    .line 774
    move-object/from16 v0, v31

    #@1af
    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@1b2
    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    #@1b3
    .line 777
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_7
    if-eqz v36, :cond_8

    #@1b5
    .line 779
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@1b7
    new-instance v5, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    #@1b9
    sget-object v19, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@1bb
    .line 780
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->intValue()I

    #@1be
    move-result v20

    #@1bf
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    #@1c2
    move-result-wide v22

    #@1c3
    .line 779
    move-object/from16 v0, v19

    #@1c5
    move/from16 v1, v20

    #@1c7
    move-wide/from16 v2, v22

    #@1c9
    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;IJ)V

    #@1cc
    move-object/from16 v0, v31

    #@1ce
    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@1d1
    .line 778
    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    #@1d2
    .line 781
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_8
    if-eqz v35, :cond_9

    #@1d4
    .line 782
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@1d6
    new-instance v5, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    #@1d8
    move-object/from16 v0, v35

    #@1da
    invoke-direct {v5, v0}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(Ljava/lang/String;)V

    #@1dd
    move-object/from16 v0, v31

    #@1df
    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@1e2
    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    #@1e3
    .line 784
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_9
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@1e5
    const-string/jumbo v19, "Incomplete set of EAP parameters"

    #@1e8
    move-object/from16 v0, v19

    #@1ea
    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@1ed
    throw v5

    #@1ee
    .line 790
    .end local v13    # "userName":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "machineManaged":Z
    .end local v16    # "softTokenApp":Ljava/lang/String;
    .end local v17    # "ableToShare":Z
    .end local v30    # "eapID":I
    .end local v31    # "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .end local v32    # "eapMethodNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v34    # "innerEAPType":Ljava/lang/Long;
    .end local v35    # "innerNonEAPMethod":Ljava/lang/String;
    .end local v36    # "innerVid":Ljava/lang/Long;
    .end local v37    # "innerVtype":Ljava/lang/Long;
    .end local v42    # "vid":Ljava/lang/Long;
    .end local v43    # "vtype":Ljava/lang/Long;
    :cond_a
    if-eqz v18, :cond_b

    #@1f0
    .line 792
    :try_start_0
    const-string/jumbo v5, "CertificateType"

    #@1f3
    move-object/from16 v0, v18

    #@1f5
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1f8
    move-result-object v5

    #@1f9
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@1fc
    move-result-object v29

    #@1fd
    .line 793
    .local v29, "certTypeString":Ljava/lang/String;
    const-string/jumbo v5, "CertSHA256Fingerprint"

    #@200
    move-object/from16 v0, v18

    #@202
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@205
    move-result-object v5

    #@206
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getOctets(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)[B

    #@209
    move-result-object v28

    #@20a
    .line 795
    .local v28, "fingerPrint":[B
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@20c
    sget-object v5, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@20e
    const/16 v19, 0x0

    #@210
    move-object/from16 v0, v19

    #@212
    invoke-direct {v12, v5, v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@215
    .line 797
    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    new-instance v19, Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@217
    .line 798
    invoke-static/range {v29 .. v29}, Lcom/android/server/wifi/hotspot2/pps/Credential;->mapCertType(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@21a
    move-result-object v27

    #@21b
    move-wide/from16 v20, v6

    #@21d
    move-wide/from16 v22, v8

    #@21f
    move-object/from16 v24, v10

    #@221
    move/from16 v25, v11

    #@223
    move-object/from16 v26, v12

    #@225
    .line 797
    invoke-direct/range {v19 .. v28}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;[B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@228
    return-object v19

    #@229
    .line 799
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .end local v28    # "fingerPrint":[B
    .end local v29    # "certTypeString":Ljava/lang/String;
    :catch_0
    move-exception v39

    #@22a
    .line 800
    .local v39, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@22c
    new-instance v19, Ljava/lang/StringBuilder;

    #@22e
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@231
    const-string/jumbo v20, "Bad hex string: "

    #@234
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@237
    move-result-object v19

    #@238
    invoke-virtual/range {v39 .. v39}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    #@23b
    move-result-object v20

    #@23c
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v19

    #@240
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@243
    move-result-object v19

    #@244
    move-object/from16 v0, v19

    #@246
    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@249
    throw v5

    #@24a
    .line 803
    .end local v39    # "nfe":Ljava/lang/NumberFormatException;
    :cond_b
    if-eqz v40, :cond_c

    #@24c
    .line 805
    :try_start_1
    new-instance v27, Lcom/android/server/wifi/IMSIParameter;

    #@24e
    const-string/jumbo v5, "IMSI"

    #@251
    move-object/from16 v0, v40

    #@253
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@256
    move-result-object v5

    #@257
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@25a
    move-result-object v5

    #@25b
    move-object/from16 v0, v27

    #@25d
    invoke-direct {v0, v5}, Lcom/android/server/wifi/IMSIParameter;-><init>(Ljava/lang/String;)V

    #@260
    .line 808
    .local v27, "imsi":Lcom/android/server/wifi/IMSIParameter;
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@262
    const-string/jumbo v5, "EAPType"

    #@265
    move-object/from16 v0, v40

    #@267
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@26a
    move-result-object v5

    #@26b
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    #@26e
    move-result v5

    #@26f
    invoke-static {v5}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@272
    move-result-object v5

    #@273
    .line 809
    const/16 v19, 0x0

    #@275
    .line 808
    move-object/from16 v0, v19

    #@277
    invoke-direct {v12, v5, v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@27a
    .line 811
    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    new-instance v19, Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@27c
    move-wide/from16 v20, v6

    #@27e
    move-wide/from16 v22, v8

    #@280
    move-object/from16 v24, v10

    #@282
    move/from16 v25, v11

    #@284
    move-object/from16 v26, v12

    #@286
    invoke-direct/range {v19 .. v27}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/IMSIParameter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@289
    return-object v19

    #@28a
    .line 812
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .end local v27    # "imsi":Lcom/android/server/wifi/IMSIParameter;
    :catch_1
    move-exception v38

    #@28b
    .line 813
    .local v38, "ioe":Ljava/io/IOException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@28d
    new-instance v19, Ljava/lang/StringBuilder;

    #@28f
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@292
    const-string/jumbo v20, "Failed to parse IMSI: "

    #@295
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@298
    move-result-object v19

    #@299
    move-object/from16 v0, v19

    #@29b
    move-object/from16 v1, v38

    #@29d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v19

    #@2a1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a4
    move-result-object v19

    #@2a5
    move-object/from16 v0, v19

    #@2a7
    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@2aa
    throw v5

    #@2ab
    .line 816
    .end local v38    # "ioe":Ljava/io/IOException;
    :cond_c
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@2ad
    const-string/jumbo v19, "Missing credential parameters"

    #@2b0
    move-object/from16 v0, v19

    #@2b2
    invoke-direct {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@2b5
    throw v5
.end method

.method private static buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 40
    .param p0, "ppsRoot"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "updateIdentifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 646
    const-string/jumbo v2, "HomeSP"

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@8
    move-result-object v32

    #@9
    .line 648
    .local v32, "spRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const/4 v2, 0x1

    #@a
    new-array v2, v2, [Ljava/lang/String;

    #@c
    const-string/jumbo v13, "FQDN"

    #@f
    const/16 v17, 0x0

    #@11
    aput-object v13, v2, v17

    #@13
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v2

    #@1b
    move-object/from16 v0, v32

    #@1d
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 649
    .local v4, "fqdn":Ljava/lang/String;
    const/4 v2, 0x1

    #@22
    new-array v2, v2, [Ljava/lang/String;

    #@24
    const-string/jumbo v13, "FriendlyName"

    #@27
    const/16 v17, 0x0

    #@29
    aput-object v13, v2, v17

    #@2b
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v2

    #@33
    move-object/from16 v0, v32

    #@35
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    #@38
    move-result-object v9

    #@39
    .line 650
    .local v9, "friendlyName":Ljava/lang/String;
    const/4 v2, 0x1

    #@3a
    new-array v2, v2, [Ljava/lang/String;

    #@3c
    const-string/jumbo v13, "IconURL"

    #@3f
    const/16 v17, 0x0

    #@41
    aput-object v13, v2, v17

    #@43
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@46
    move-result-object v2

    #@47
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v2

    #@4b
    move-object/from16 v0, v32

    #@4d
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    #@50
    move-result-object v10

    #@51
    .line 652
    .local v10, "iconURL":Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    #@53
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@56
    .line 653
    .local v5, "roamingConsortiums":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    #@57
    new-array v2, v2, [Ljava/lang/String;

    #@59
    const-string/jumbo v13, "RoamingConsortiumOI"

    #@5c
    const/16 v17, 0x0

    #@5e
    aput-object v13, v2, v17

    #@60
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@63
    move-result-object v2

    #@64
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v2

    #@68
    move-object/from16 v0, v32

    #@6a
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    #@6d
    move-result-object v29

    #@6e
    .line 654
    .local v29, "oiString":Ljava/lang/String;
    if-eqz v29, :cond_0

    #@70
    .line 655
    const-string/jumbo v2, ","

    #@73
    move-object/from16 v0, v29

    #@75
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@78
    move-result-object v13

    #@79
    const/4 v2, 0x0

    #@7a
    array-length v0, v13

    #@7b
    move/from16 v17, v0

    #@7d
    :goto_0
    move/from16 v0, v17

    #@7f
    if-ge v2, v0, :cond_0

    #@81
    aget-object v28, v13, v2

    #@83
    .line 656
    .local v28, "oi":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@86
    move-result-object v38

    #@87
    const/16 v39, 0x10

    #@89
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@8c
    move-result-wide v38

    #@8d
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@90
    move-result-object v38

    #@91
    move-object/from16 v0, v38

    #@93
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@96
    .line 655
    add-int/lit8 v2, v2, 0x1

    #@98
    goto :goto_0

    #@99
    .line 660
    .end local v28    # "oi":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    #@9b
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@9e
    .line 662
    .local v3, "ssids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x1

    #@9f
    new-array v2, v2, [Ljava/lang/String;

    #@a1
    const-string/jumbo v13, "NetworkID"

    #@a4
    const/16 v17, 0x0

    #@a6
    aput-object v13, v2, v17

    #@a8
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@ab
    move-result-object v2

    #@ac
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@af
    move-result-object v2

    #@b0
    move-object/from16 v0, v32

    #@b2
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@b5
    move-result-object v33

    #@b6
    .line 663
    .local v33, "ssidListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v33, :cond_1

    #@b8
    .line 664
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@bb
    move-result-object v2

    #@bc
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@bf
    move-result-object v35

    #@c0
    .local v35, "ssidRoot$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    #@c3
    move-result v2

    #@c4
    if-eqz v2, :cond_1

    #@c6
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c9
    move-result-object v34

    #@ca
    check-cast v34, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@cc
    .line 665
    .local v34, "ssidRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "HESSID"

    #@cf
    move-object/from16 v0, v34

    #@d1
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@d4
    move-result-object v23

    #@d5
    .line 666
    .local v23, "hessidNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "SSID"

    #@d8
    move-object/from16 v0, v34

    #@da
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@dd
    move-result-object v2

    #@de
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@e1
    move-result-object v2

    #@e2
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getMac(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    #@e5
    move-result-object v13

    #@e6
    invoke-interface {v3, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e9
    goto :goto_1

    #@ea
    .line 670
    .end local v23    # "hessidNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v34    # "ssidRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v35    # "ssidRoot$iterator":Ljava/util/Iterator;
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    #@ec
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@ef
    .line 671
    .local v7, "matchAnyOIs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    #@f1
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@f4
    .line 672
    .local v8, "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    #@f5
    new-array v2, v2, [Ljava/lang/String;

    #@f7
    const-string/jumbo v13, "HomeOIList"

    #@fa
    const/16 v17, 0x0

    #@fc
    aput-object v13, v2, v17

    #@fe
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@101
    move-result-object v2

    #@102
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@105
    move-result-object v2

    #@106
    move-object/from16 v0, v32

    #@108
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@10b
    move-result-object v25

    #@10c
    .line 673
    .local v25, "homeOIListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v25, :cond_3

    #@10e
    .line 674
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@111
    move-result-object v2

    #@112
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@115
    move-result-object v27

    #@116
    .local v27, "homeOIRoot$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    #@119
    move-result v2

    #@11a
    if-eqz v2, :cond_3

    #@11c
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11f
    move-result-object v26

    #@120
    check-cast v26, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@122
    .line 675
    .local v26, "homeOIRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "HomeOI"

    #@125
    move-object/from16 v0, v26

    #@127
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@12a
    move-result-object v2

    #@12b
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@12e
    move-result-object v24

    #@12f
    .line 676
    .local v24, "homeOI":Ljava/lang/String;
    const-string/jumbo v2, "HomeOIRequired"

    #@132
    move-object/from16 v0, v26

    #@134
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@137
    move-result-object v2

    #@138
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@13b
    move-result-object v2

    #@13c
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@13f
    move-result v2

    #@140
    if-eqz v2, :cond_2

    #@142
    .line 677
    const/16 v2, 0x10

    #@144
    move-object/from16 v0, v24

    #@146
    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@149
    move-result-wide v38

    #@14a
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14d
    move-result-object v2

    #@14e
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@151
    goto :goto_2

    #@152
    .line 679
    :cond_2
    const/16 v2, 0x10

    #@154
    move-object/from16 v0, v24

    #@156
    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@159
    move-result-wide v38

    #@15a
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@15d
    move-result-object v2

    #@15e
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@161
    goto :goto_2

    #@162
    .line 684
    .end local v24    # "homeOI":Ljava/lang/String;
    .end local v26    # "homeOIRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v27    # "homeOIRoot$iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v6, Ljava/util/HashSet;

    #@164
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@167
    .line 686
    .local v6, "otherHomePartners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    #@168
    new-array v2, v2, [Ljava/lang/String;

    #@16a
    const-string/jumbo v13, "OtherHomePartners"

    #@16d
    const/16 v17, 0x0

    #@16f
    aput-object v13, v2, v17

    #@171
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@174
    move-result-object v2

    #@175
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@178
    move-result-object v2

    #@179
    move-object/from16 v0, v32

    #@17b
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@17e
    move-result-object v30

    #@17f
    .line 687
    .local v30, "otherListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v30, :cond_4

    #@181
    .line 688
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@184
    move-result-object v2

    #@185
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@188
    move-result-object v22

    #@189
    .local v22, "fqdnNode$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@18c
    move-result v2

    #@18d
    if-eqz v2, :cond_4

    #@18f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@192
    move-result-object v21

    #@193
    check-cast v21, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@195
    .line 689
    .local v21, "fqdnNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "FQDN"

    #@198
    move-object/from16 v0, v21

    #@19a
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@19d
    move-result-object v2

    #@19e
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@1a1
    move-result-object v2

    #@1a2
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1a5
    goto :goto_3

    #@1a6
    .line 693
    .end local v21    # "fqdnNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v22    # "fqdnNode$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v2, "Credential"

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1ae
    move-result-object v2

    #@1af
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildCredential(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@1b2
    move-result-object v11

    #@1b3
    .line 695
    .local v11, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    const-string/jumbo v2, "Policy"

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1bb
    move-result-object v31

    #@1bc
    .line 696
    .local v31, "policyNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v31, :cond_6

    #@1be
    new-instance v12, Lcom/android/server/wifi/hotspot2/pps/Policy;

    #@1c0
    move-object/from16 v0, v31

    #@1c2
    invoke-direct {v12, v0}, Lcom/android/server/wifi/hotspot2/pps/Policy;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    #@1c5
    .line 699
    :goto_4
    const-string/jumbo v2, "AAAServerTrustRoot"

    #@1c8
    move-object/from16 v0, p0

    #@1ca
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1cd
    move-result-object v18

    #@1ce
    .line 700
    .local v18, "aaaRootNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v18, :cond_7

    #@1d0
    .line 701
    const/4 v14, 0x0

    #@1d1
    .line 710
    :cond_5
    const-string/jumbo v2, "SubscriptionUpdate"

    #@1d4
    move-object/from16 v0, p0

    #@1d6
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1d9
    move-result-object v37

    #@1da
    .line 711
    .local v37, "updateNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v37, :cond_8

    #@1dc
    new-instance v15, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

    #@1de
    move-object/from16 v0, v37

    #@1e0
    invoke-direct {v15, v0}, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    #@1e3
    .line 712
    :goto_5
    const-string/jumbo v2, "SubscriptionParameters"

    #@1e6
    move-object/from16 v0, p0

    #@1e8
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1eb
    move-result-object v36

    #@1ec
    .line 713
    .local v36, "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v36, :cond_9

    #@1ee
    .line 714
    new-instance v16, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;

    #@1f0
    move-object/from16 v0, v16

    #@1f2
    move-object/from16 v1, v36

    #@1f4
    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    #@1f7
    .line 716
    :goto_6
    new-instance v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@1f9
    .line 718
    const-string/jumbo v13, "CredentialPriority"

    #@1fc
    move-object/from16 v0, p0

    #@1fe
    invoke-virtual {v0, v13}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@201
    move-result-object v13

    #@202
    const/16 v17, 0x0

    #@204
    move/from16 v0, v17

    #@206
    invoke-static {v13, v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)I

    #@209
    move-result v13

    #@20a
    move/from16 v17, p1

    #@20c
    .line 716
    invoke-direct/range {v2 .. v17}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;Lcom/android/server/wifi/hotspot2/pps/Policy;ILjava/util/Map;Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;I)V

    #@20f
    return-object v2

    #@210
    .line 696
    .end local v18    # "aaaRootNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v36    # "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v37    # "updateNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_6
    const/4 v12, 0x0

    #@211
    .local v12, "policy":Lcom/android/server/wifi/hotspot2/pps/Policy;
    goto :goto_4

    #@212
    .line 703
    .end local v12    # "policy":Lcom/android/server/wifi/hotspot2/pps/Policy;
    .restart local v18    # "aaaRootNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_7
    new-instance v14, Ljava/util/HashMap;

    #@214
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@217
    move-result-object v2

    #@218
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    #@21b
    move-result v2

    #@21c
    invoke-direct {v14, v2}, Ljava/util/HashMap;-><init>(I)V

    #@21f
    .line 704
    .local v14, "aaaTrustRoots":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@222
    move-result-object v2

    #@223
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@226
    move-result-object v20

    #@227
    .local v20, "child$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@22a
    move-result v2

    #@22b
    if-eqz v2, :cond_5

    #@22d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@230
    move-result-object v19

    #@231
    check-cast v19, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@233
    .line 705
    .local v19, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "CertURL"

    #@236
    move-object/from16 v0, v19

    #@238
    invoke-static {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    #@23b
    move-result-object v2

    #@23c
    .line 706
    const-string/jumbo v13, "CertSHA256Fingerprint"

    #@23f
    move-object/from16 v0, v19

    #@241
    invoke-static {v0, v13}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    #@244
    move-result-object v13

    #@245
    .line 705
    invoke-interface {v14, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@248
    goto :goto_7

    #@249
    .line 711
    .end local v14    # "aaaTrustRoots":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v20    # "child$iterator":Ljava/util/Iterator;
    .restart local v37    # "updateNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_8
    const/4 v15, 0x0

    #@24a
    .local v15, "subscriptionUpdate":Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;
    goto :goto_5

    #@24b
    .line 714
    .end local v15    # "subscriptionUpdate":Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;
    .restart local v36    # "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_9
    const/16 v16, 0x0

    #@24d
    .local v16, "subscriptionParameters":Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;
    goto :goto_6
.end method

.method private static buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 32
    .param p0, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .param p1, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .param p2, "instanceID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 465
    invoke-static/range {p2 .. p2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    #@3
    move-result-object v27

    #@4
    .line 466
    const/16 v28, 0x0

    #@6
    const/16 v29, 0x0

    #@8
    const/16 v30, 0x0

    #@a
    .line 465
    move-object/from16 v0, p1

    #@c
    move-object/from16 v1, v27

    #@e
    move-object/from16 v2, v28

    #@10
    move-object/from16 v3, v29

    #@12
    move-object/from16 v4, v30

    #@14
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@17
    move-result-object v24

    #@18
    .line 469
    .local v24, "providerSubNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "HomeSP"

    #@1b
    const/16 v28, 0x0

    #@1d
    const/16 v29, 0x0

    #@1f
    const/16 v30, 0x0

    #@21
    move-object/from16 v0, v24

    #@23
    move-object/from16 v1, v27

    #@25
    move-object/from16 v2, v28

    #@27
    move-object/from16 v3, v29

    #@29
    move-object/from16 v4, v30

    #@2b
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@2e
    move-result-object v15

    #@2f
    .line 470
    .local v15, "homeSpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getSSIDs()Ljava/util/Map;

    #@32
    move-result-object v27

    #@33
    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->isEmpty()Z

    #@36
    move-result v27

    #@37
    if-nez v27, :cond_1

    #@39
    .line 472
    const-string/jumbo v27, "NetworkID"

    #@3c
    const/16 v28, 0x0

    #@3e
    const/16 v29, 0x0

    #@40
    const/16 v30, 0x0

    #@42
    move-object/from16 v0, v27

    #@44
    move-object/from16 v1, v28

    #@46
    move-object/from16 v2, v29

    #@48
    move-object/from16 v3, v30

    #@4a
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@4d
    move-result-object v20

    #@4e
    check-cast v20, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@50
    .line 473
    .local v20, "nwkIDNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    #@52
    .line 474
    .local v17, "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getSSIDs()Ljava/util/Map;

    #@55
    move-result-object v27

    #@56
    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@59
    move-result-object v27

    #@5a
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5d
    move-result-object v11

    #@5e
    .local v11, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@61
    move-result v27

    #@62
    if-eqz v27, :cond_1

    #@64
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@67
    move-result-object v10

    #@68
    check-cast v10, Ljava/util/Map$Entry;

    #@6a
    .line 476
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    add-int/lit8 v18, v17, 0x1

    #@6c
    .end local v17    # "instance":I
    .local v18, "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    #@6f
    move-result-object v27

    #@70
    .line 477
    const/16 v28, 0x0

    #@72
    const/16 v29, 0x0

    #@74
    const/16 v30, 0x0

    #@76
    .line 476
    move-object/from16 v0, v20

    #@78
    move-object/from16 v1, v27

    #@7a
    move-object/from16 v2, v28

    #@7c
    move-object/from16 v3, v29

    #@7e
    move-object/from16 v4, v30

    #@80
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@83
    move-result-object v16

    #@84
    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@86
    .line 478
    .local v16, "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v28, "SSID"

    #@89
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@8c
    move-result-object v27

    #@8d
    check-cast v27, Ljava/lang/String;

    #@8f
    const/16 v29, 0x0

    #@91
    const/16 v30, 0x0

    #@93
    move-object/from16 v0, v16

    #@95
    move-object/from16 v1, v28

    #@97
    move-object/from16 v2, v29

    #@99
    move-object/from16 v3, v27

    #@9b
    move-object/from16 v4, v30

    #@9d
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@a0
    .line 479
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@a3
    move-result-object v27

    #@a4
    if-eqz v27, :cond_0

    #@a6
    .line 480
    const-string/jumbo v27, "HESSID"

    #@a9
    .line 481
    const-string/jumbo v28, "%012x"

    #@ac
    const/16 v29, 0x1

    #@ae
    move/from16 v0, v29

    #@b0
    new-array v0, v0, [Ljava/lang/Object;

    #@b2
    move-object/from16 v29, v0

    #@b4
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@b7
    move-result-object v30

    #@b8
    const/16 v31, 0x0

    #@ba
    aput-object v30, v29, v31

    #@bc
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@bf
    move-result-object v28

    #@c0
    .line 480
    const/16 v29, 0x0

    #@c2
    .line 481
    const/16 v30, 0x0

    #@c4
    .line 480
    move-object/from16 v0, v16

    #@c6
    move-object/from16 v1, v27

    #@c8
    move-object/from16 v2, v29

    #@ca
    move-object/from16 v3, v28

    #@cc
    move-object/from16 v4, v30

    #@ce
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@d1
    :cond_0
    move/from16 v17, v18

    #@d3
    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_0

    #@d4
    .line 486
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v17    # "instance":I
    .end local v20    # "nwkIDNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_1
    const-string/jumbo v27, "FriendlyName"

    #@d7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFriendlyName()Ljava/lang/String;

    #@da
    move-result-object v28

    #@db
    const/16 v29, 0x0

    #@dd
    const/16 v30, 0x0

    #@df
    move-object/from16 v0, v27

    #@e1
    move-object/from16 v1, v29

    #@e3
    move-object/from16 v2, v28

    #@e5
    move-object/from16 v3, v30

    #@e7
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@ea
    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getIconURL()Ljava/lang/String;

    #@ed
    move-result-object v27

    #@ee
    if-eqz v27, :cond_2

    #@f0
    .line 489
    const-string/jumbo v27, "IconURL"

    #@f3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getIconURL()Ljava/lang/String;

    #@f6
    move-result-object v28

    #@f7
    const/16 v29, 0x0

    #@f9
    const/16 v30, 0x0

    #@fb
    move-object/from16 v0, v27

    #@fd
    move-object/from16 v1, v29

    #@ff
    move-object/from16 v2, v28

    #@101
    move-object/from16 v3, v30

    #@103
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@106
    .line 492
    :cond_2
    const-string/jumbo v27, "FQDN"

    #@109
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@10c
    move-result-object v28

    #@10d
    const/16 v29, 0x0

    #@10f
    const/16 v30, 0x0

    #@111
    move-object/from16 v0, v27

    #@113
    move-object/from16 v1, v29

    #@115
    move-object/from16 v2, v28

    #@117
    move-object/from16 v3, v30

    #@119
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@11c
    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAllOIs()Ljava/util/List;

    #@11f
    move-result-object v27

    #@120
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    #@123
    move-result v27

    #@124
    if-eqz v27, :cond_4

    #@126
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAnyOIs()Ljava/util/Set;

    #@129
    move-result-object v27

    #@12a
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->isEmpty()Z

    #@12d
    move-result v27

    #@12e
    if-eqz v27, :cond_4

    #@130
    .line 515
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getOtherHomePartners()Ljava/util/Collection;

    #@133
    move-result-object v27

    #@134
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->isEmpty()Z

    #@137
    move-result v27

    #@138
    if-nez v27, :cond_6

    #@13a
    .line 517
    const-string/jumbo v27, "OtherHomePartners"

    #@13d
    const/16 v28, 0x0

    #@13f
    const/16 v29, 0x0

    #@141
    const/16 v30, 0x0

    #@143
    move-object/from16 v0, v27

    #@145
    move-object/from16 v1, v28

    #@147
    move-object/from16 v2, v29

    #@149
    move-object/from16 v3, v30

    #@14b
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@14e
    move-result-object v23

    #@14f
    check-cast v23, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@151
    .line 518
    .local v23, "otherPartners":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    #@153
    .line 519
    .restart local v17    # "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getOtherHomePartners()Ljava/util/Collection;

    #@156
    move-result-object v27

    #@157
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15a
    move-result-object v13

    #@15b
    .local v13, "fqdn$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@15e
    move-result v27

    #@15f
    if-eqz v27, :cond_6

    #@161
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@164
    move-result-object v12

    #@165
    check-cast v12, Ljava/lang/String;

    #@167
    .line 521
    .local v12, "fqdn":Ljava/lang/String;
    add-int/lit8 v18, v17, 0x1

    #@169
    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    #@16c
    move-result-object v27

    #@16d
    .line 522
    const/16 v28, 0x0

    #@16f
    const/16 v29, 0x0

    #@171
    const/16 v30, 0x0

    #@173
    .line 521
    move-object/from16 v0, v23

    #@175
    move-object/from16 v1, v27

    #@177
    move-object/from16 v2, v28

    #@179
    move-object/from16 v3, v29

    #@17b
    move-object/from16 v4, v30

    #@17d
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@180
    move-result-object v16

    #@181
    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@183
    .line 523
    .restart local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v27, "FQDN"

    #@186
    const/16 v28, 0x0

    #@188
    const/16 v29, 0x0

    #@18a
    move-object/from16 v0, v16

    #@18c
    move-object/from16 v1, v27

    #@18e
    move-object/from16 v2, v28

    #@190
    move-object/from16 v3, v29

    #@192
    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@195
    move/from16 v17, v18

    #@197
    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_1

    #@198
    .line 496
    .end local v12    # "fqdn":Ljava/lang/String;
    .end local v13    # "fqdn$iterator":Ljava/util/Iterator;
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v17    # "instance":I
    .end local v23    # "otherPartners":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_4
    const-string/jumbo v27, "HomeOIList"

    #@19b
    const/16 v28, 0x0

    #@19d
    const/16 v29, 0x0

    #@19f
    const/16 v30, 0x0

    #@1a1
    move-object/from16 v0, v27

    #@1a3
    move-object/from16 v1, v28

    #@1a5
    move-object/from16 v2, v29

    #@1a7
    move-object/from16 v3, v30

    #@1a9
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1ac
    move-result-object v14

    #@1ad
    check-cast v14, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@1af
    .line 498
    .local v14, "homeOIList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    #@1b1
    .line 499
    .restart local v17    # "instance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAllOIs()Ljava/util/List;

    #@1b4
    move-result-object v27

    #@1b5
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b8
    move-result-object v22

    #@1b9
    .local v22, "oi$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@1bc
    move-result v27

    #@1bd
    if-eqz v27, :cond_5

    #@1bf
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c2
    move-result-object v21

    #@1c3
    check-cast v21, Ljava/lang/Long;

    #@1c5
    .line 501
    .local v21, "oi":Ljava/lang/Long;
    add-int/lit8 v18, v17, 0x1

    #@1c7
    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    #@1ca
    move-result-object v27

    #@1cb
    .line 502
    const/16 v28, 0x0

    #@1cd
    const/16 v29, 0x0

    #@1cf
    const/16 v30, 0x0

    #@1d1
    .line 501
    move-object/from16 v0, v27

    #@1d3
    move-object/from16 v1, v28

    #@1d5
    move-object/from16 v2, v29

    #@1d7
    move-object/from16 v3, v30

    #@1d9
    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1dc
    move-result-object v16

    #@1dd
    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@1df
    .line 503
    .restart local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v27, "HomeOI"

    #@1e2
    const-string/jumbo v28, "%x"

    #@1e5
    const/16 v29, 0x1

    #@1e7
    move/from16 v0, v29

    #@1e9
    new-array v0, v0, [Ljava/lang/Object;

    #@1eb
    move-object/from16 v29, v0

    #@1ed
    const/16 v30, 0x0

    #@1ef
    aput-object v21, v29, v30

    #@1f1
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1f4
    move-result-object v28

    #@1f5
    const/16 v29, 0x0

    #@1f7
    const/16 v30, 0x0

    #@1f9
    move-object/from16 v0, v16

    #@1fb
    move-object/from16 v1, v27

    #@1fd
    move-object/from16 v2, v29

    #@1ff
    move-object/from16 v3, v28

    #@201
    move-object/from16 v4, v30

    #@203
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@206
    .line 504
    const-string/jumbo v27, "HomeOIRequired"

    #@209
    const-string/jumbo v28, "TRUE"

    #@20c
    const/16 v29, 0x0

    #@20e
    const/16 v30, 0x0

    #@210
    move-object/from16 v0, v16

    #@212
    move-object/from16 v1, v27

    #@214
    move-object/from16 v2, v29

    #@216
    move-object/from16 v3, v28

    #@218
    move-object/from16 v4, v30

    #@21a
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@21d
    move/from16 v17, v18

    #@21f
    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_2

    #@220
    .line 506
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v21    # "oi":Ljava/lang/Long;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getMatchAnyOIs()Ljava/util/Set;

    #@223
    move-result-object v27

    #@224
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@227
    move-result-object v22

    #@228
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@22b
    move-result v27

    #@22c
    if-eqz v27, :cond_3

    #@22e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@231
    move-result-object v21

    #@232
    check-cast v21, Ljava/lang/Long;

    #@234
    .line 508
    .restart local v21    # "oi":Ljava/lang/Long;
    add-int/lit8 v18, v17, 0x1

    #@236
    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceString(I)Ljava/lang/String;

    #@239
    move-result-object v27

    #@23a
    .line 509
    const/16 v28, 0x0

    #@23c
    const/16 v29, 0x0

    #@23e
    const/16 v30, 0x0

    #@240
    .line 508
    move-object/from16 v0, v27

    #@242
    move-object/from16 v1, v28

    #@244
    move-object/from16 v2, v29

    #@246
    move-object/from16 v3, v30

    #@248
    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@24b
    move-result-object v16

    #@24c
    check-cast v16, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@24e
    .line 510
    .restart local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v27, "HomeOI"

    #@251
    const-string/jumbo v28, "%x"

    #@254
    const/16 v29, 0x1

    #@256
    move/from16 v0, v29

    #@258
    new-array v0, v0, [Ljava/lang/Object;

    #@25a
    move-object/from16 v29, v0

    #@25c
    const/16 v30, 0x0

    #@25e
    aput-object v21, v29, v30

    #@260
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@263
    move-result-object v28

    #@264
    const/16 v29, 0x0

    #@266
    const/16 v30, 0x0

    #@268
    move-object/from16 v0, v16

    #@26a
    move-object/from16 v1, v27

    #@26c
    move-object/from16 v2, v29

    #@26e
    move-object/from16 v3, v28

    #@270
    move-object/from16 v4, v30

    #@272
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@275
    .line 511
    const-string/jumbo v27, "HomeOIRequired"

    #@278
    const-string/jumbo v28, "FALSE"

    #@27b
    const/16 v29, 0x0

    #@27d
    const/16 v30, 0x0

    #@27f
    move-object/from16 v0, v16

    #@281
    move-object/from16 v1, v27

    #@283
    move-object/from16 v2, v29

    #@285
    move-object/from16 v3, v28

    #@287
    move-object/from16 v4, v30

    #@289
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@28c
    move/from16 v17, v18

    #@28e
    .end local v18    # "instance":I
    .restart local v17    # "instance":I
    goto :goto_3

    #@28f
    .line 527
    .end local v14    # "homeOIList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v16    # "inode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v17    # "instance":I
    .end local v21    # "oi":Ljava/lang/Long;
    .end local v22    # "oi$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    #@292
    move-result-object v27

    #@293
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->isEmpty()Z

    #@296
    move-result v27

    #@297
    if-nez v27, :cond_7

    #@299
    .line 528
    const-string/jumbo v27, "RoamingConsortiumOI"

    #@29c
    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    #@29f
    move-result-object v28

    #@2a0
    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getRCList(Ljava/util/Collection;)Ljava/lang/String;

    #@2a3
    move-result-object v28

    #@2a4
    .line 528
    const/16 v29, 0x0

    #@2a6
    .line 529
    const/16 v30, 0x0

    #@2a8
    .line 528
    move-object/from16 v0, v27

    #@2aa
    move-object/from16 v1, v29

    #@2ac
    move-object/from16 v2, v28

    #@2ae
    move-object/from16 v3, v30

    #@2b0
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@2b3
    .line 533
    :cond_7
    const-string/jumbo v27, "Credential"

    #@2b6
    const/16 v28, 0x0

    #@2b8
    const/16 v29, 0x0

    #@2ba
    const/16 v30, 0x0

    #@2bc
    move-object/from16 v0, v24

    #@2be
    move-object/from16 v1, v27

    #@2c0
    move-object/from16 v2, v28

    #@2c2
    move-object/from16 v3, v29

    #@2c4
    move-object/from16 v4, v30

    #@2c6
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@2c9
    move-result-object v8

    #@2ca
    .line 534
    .local v8, "credentialNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@2cd
    move-result-object v7

    #@2ce
    .line 535
    .local v7, "cred":Lcom/android/server/wifi/hotspot2/pps/Credential;
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@2d1
    move-result-object v19

    #@2d2
    .line 537
    .local v19, "method":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getCtime()J

    #@2d5
    move-result-wide v28

    #@2d6
    const-wide/16 v30, 0x0

    #@2d8
    cmp-long v27, v28, v30

    #@2da
    if-lez v27, :cond_8

    #@2dc
    .line 538
    const-string/jumbo v27, "CreationDate"

    #@2df
    .line 539
    sget-object v28, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    #@2e1
    new-instance v29, Ljava/util/Date;

    #@2e3
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getCtime()J

    #@2e6
    move-result-wide v30

    #@2e7
    invoke-direct/range {v29 .. v31}, Ljava/util/Date;-><init>(J)V

    #@2ea
    invoke-virtual/range {v28 .. v29}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@2ed
    move-result-object v28

    #@2ee
    const/16 v29, 0x0

    #@2f0
    const/16 v30, 0x0

    #@2f2
    .line 538
    move-object/from16 v0, v27

    #@2f4
    move-object/from16 v1, v29

    #@2f6
    move-object/from16 v2, v28

    #@2f8
    move-object/from16 v3, v30

    #@2fa
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@2fd
    .line 541
    :cond_8
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getExpTime()J

    #@300
    move-result-wide v28

    #@301
    const-wide/16 v30, 0x0

    #@303
    cmp-long v27, v28, v30

    #@305
    if-lez v27, :cond_9

    #@307
    .line 542
    const-string/jumbo v27, "ExpirationDate"

    #@30a
    .line 543
    sget-object v28, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    #@30c
    new-instance v29, Ljava/util/Date;

    #@30e
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getExpTime()J

    #@311
    move-result-wide v30

    #@312
    invoke-direct/range {v29 .. v31}, Ljava/util/Date;-><init>(J)V

    #@315
    invoke-virtual/range {v28 .. v29}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@318
    move-result-object v28

    #@319
    const/16 v29, 0x0

    #@31b
    const/16 v30, 0x0

    #@31d
    .line 542
    move-object/from16 v0, v27

    #@31f
    move-object/from16 v1, v29

    #@321
    move-object/from16 v2, v28

    #@323
    move-object/from16 v3, v30

    #@325
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@328
    .line 546
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@32b
    move-result-object v27

    #@32c
    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@32e
    move-object/from16 v0, v27

    #@330
    move-object/from16 v1, v28

    #@332
    if-eq v0, v1, :cond_a

    #@334
    .line 547
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@337
    move-result-object v27

    #@338
    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@33a
    move-object/from16 v0, v27

    #@33c
    move-object/from16 v1, v28

    #@33e
    if-ne v0, v1, :cond_b

    #@340
    .line 550
    :cond_a
    const-string/jumbo v27, "SIM"

    #@343
    const/16 v28, 0x0

    #@345
    const/16 v29, 0x0

    #@347
    const/16 v30, 0x0

    #@349
    move-object/from16 v0, v27

    #@34b
    move-object/from16 v1, v28

    #@34d
    move-object/from16 v2, v29

    #@34f
    move-object/from16 v3, v30

    #@351
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@354
    move-result-object v25

    #@355
    .line 551
    .local v25, "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "IMSI"

    #@358
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    #@35b
    move-result-object v28

    #@35c
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wifi/IMSIParameter;->toString()Ljava/lang/String;

    #@35f
    move-result-object v28

    #@360
    const/16 v29, 0x0

    #@362
    const/16 v30, 0x0

    #@364
    move-object/from16 v0, v25

    #@366
    move-object/from16 v1, v27

    #@368
    move-object/from16 v2, v29

    #@36a
    move-object/from16 v3, v28

    #@36c
    move-object/from16 v4, v30

    #@36e
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@371
    .line 552
    const-string/jumbo v27, "EAPType"

    #@374
    .line 553
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@377
    move-result-object v28

    #@378
    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/Integer;

    #@37b
    move-result-object v28

    #@37c
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    #@37f
    move-result v28

    #@380
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@383
    move-result-object v28

    #@384
    .line 552
    const/16 v29, 0x0

    #@386
    .line 553
    const/16 v30, 0x0

    #@388
    .line 552
    move-object/from16 v0, v25

    #@38a
    move-object/from16 v1, v27

    #@38c
    move-object/from16 v2, v29

    #@38e
    move-object/from16 v3, v28

    #@390
    move-object/from16 v4, v30

    #@392
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@395
    .line 579
    .end local v25    # "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_4
    const-string/jumbo v27, "Realm"

    #@398
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    #@39b
    move-result-object v28

    #@39c
    const/16 v29, 0x0

    #@39e
    const/16 v30, 0x0

    #@3a0
    move-object/from16 v0, v27

    #@3a2
    move-object/from16 v1, v29

    #@3a4
    move-object/from16 v2, v28

    #@3a6
    move-object/from16 v3, v30

    #@3a8
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3ab
    .line 584
    return-object v24

    #@3ac
    .line 548
    :cond_b
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@3af
    move-result-object v27

    #@3b0
    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@3b2
    move-object/from16 v0, v27

    #@3b4
    move-object/from16 v1, v28

    #@3b6
    if-eq v0, v1, :cond_a

    #@3b8
    .line 555
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@3bb
    move-result-object v27

    #@3bc
    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@3be
    move-object/from16 v0, v27

    #@3c0
    move-object/from16 v1, v28

    #@3c2
    if-ne v0, v1, :cond_c

    #@3c4
    .line 557
    const-string/jumbo v27, "UsernamePassword"

    #@3c7
    const/16 v28, 0x0

    #@3c9
    const/16 v29, 0x0

    #@3cb
    const/16 v30, 0x0

    #@3cd
    move-object/from16 v0, v27

    #@3cf
    move-object/from16 v1, v28

    #@3d1
    move-object/from16 v2, v29

    #@3d3
    move-object/from16 v3, v30

    #@3d5
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3d8
    move-result-object v26

    #@3d9
    .line 558
    .local v26, "unpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "Username"

    #@3dc
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getUserName()Ljava/lang/String;

    #@3df
    move-result-object v28

    #@3e0
    const/16 v29, 0x0

    #@3e2
    const/16 v30, 0x0

    #@3e4
    move-object/from16 v0, v26

    #@3e6
    move-object/from16 v1, v27

    #@3e8
    move-object/from16 v2, v29

    #@3ea
    move-object/from16 v3, v28

    #@3ec
    move-object/from16 v4, v30

    #@3ee
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3f1
    .line 559
    const-string/jumbo v27, "Password"

    #@3f4
    .line 560
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    #@3f7
    move-result-object v28

    #@3f8
    sget-object v29, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@3fa
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@3fd
    move-result-object v28

    #@3fe
    .line 561
    const/16 v29, 0x0

    #@400
    .line 560
    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@403
    move-result-object v28

    #@404
    .line 559
    const/16 v29, 0x0

    #@406
    .line 561
    const/16 v30, 0x0

    #@408
    .line 559
    move-object/from16 v0, v26

    #@40a
    move-object/from16 v1, v27

    #@40c
    move-object/from16 v2, v29

    #@40e
    move-object/from16 v3, v28

    #@410
    move-object/from16 v4, v30

    #@412
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@415
    .line 562
    const-string/jumbo v27, "EAPMethod"

    #@418
    const/16 v28, 0x0

    #@41a
    const/16 v29, 0x0

    #@41c
    const/16 v30, 0x0

    #@41e
    invoke-virtual/range {v26 .. v30}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@421
    move-result-object v9

    #@422
    .line 563
    .local v9, "eapNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "EAPType"

    #@425
    .line 564
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@428
    move-result-object v28

    #@429
    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/Integer;

    #@42c
    move-result-object v28

    #@42d
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    #@430
    move-result v28

    #@431
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@434
    move-result-object v28

    #@435
    .line 563
    const/16 v29, 0x0

    #@437
    .line 564
    const/16 v30, 0x0

    #@439
    .line 563
    move-object/from16 v0, v27

    #@43b
    move-object/from16 v1, v29

    #@43d
    move-object/from16 v2, v28

    #@43f
    move-object/from16 v3, v30

    #@441
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@444
    .line 565
    const-string/jumbo v28, "InnerMethod"

    #@447
    .line 566
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getAuthParam()Lcom/android/server/wifi/anqp/eap/AuthParam;

    #@44a
    move-result-object v27

    #@44b
    check-cast v27, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    #@44d
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->getOMAtype()Ljava/lang/String;

    #@450
    move-result-object v27

    #@451
    .line 565
    const/16 v29, 0x0

    #@453
    .line 566
    const/16 v30, 0x0

    #@455
    .line 565
    move-object/from16 v0, v28

    #@457
    move-object/from16 v1, v29

    #@459
    move-object/from16 v2, v27

    #@45b
    move-object/from16 v3, v30

    #@45d
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@460
    goto/16 :goto_4

    #@462
    .line 568
    .end local v9    # "eapNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v26    # "unpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@465
    move-result-object v27

    #@466
    sget-object v28, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@468
    move-object/from16 v0, v27

    #@46a
    move-object/from16 v1, v28

    #@46c
    if-ne v0, v1, :cond_d

    #@46e
    .line 570
    const-string/jumbo v27, "DigitalCertificate"

    #@471
    const/16 v28, 0x0

    #@473
    const/16 v29, 0x0

    #@475
    const/16 v30, 0x0

    #@477
    move-object/from16 v0, v27

    #@479
    move-object/from16 v1, v28

    #@47b
    move-object/from16 v2, v29

    #@47d
    move-object/from16 v3, v30

    #@47f
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@482
    move-result-object v6

    #@483
    .line 571
    .local v6, "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "CertificateType"

    #@486
    const-string/jumbo v28, "x509v3"

    #@489
    const/16 v29, 0x0

    #@48b
    const/16 v30, 0x0

    #@48d
    move-object/from16 v0, v27

    #@48f
    move-object/from16 v1, v29

    #@491
    move-object/from16 v2, v28

    #@493
    move-object/from16 v3, v30

    #@495
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@498
    .line 572
    const-string/jumbo v27, "CertSHA256Fingerprint"

    #@49b
    .line 573
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getFingerPrint()[B

    #@49e
    move-result-object v28

    #@49f
    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/hotspot2/Utils;->toHex([B)Ljava/lang/String;

    #@4a2
    move-result-object v28

    #@4a3
    .line 572
    const/16 v29, 0x0

    #@4a5
    .line 573
    const/16 v30, 0x0

    #@4a7
    .line 572
    move-object/from16 v0, v27

    #@4a9
    move-object/from16 v1, v29

    #@4ab
    move-object/from16 v2, v28

    #@4ad
    move-object/from16 v3, v30

    #@4af
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@4b2
    goto/16 :goto_4

    #@4b4
    .line 576
    .end local v6    # "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_d
    new-instance v27, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@4b6
    new-instance v28, Ljava/lang/StringBuilder;

    #@4b8
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@4bb
    const-string/jumbo v29, "Invalid credential on "

    #@4be
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c1
    move-result-object v28

    #@4c2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@4c5
    move-result-object v29

    #@4c6
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c9
    move-result-object v28

    #@4ca
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4cd
    move-result-object v28

    #@4ce
    invoke-direct/range {v27 .. v28}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@4d1
    throw v27
.end method

.method private static buildMoTree(Landroid/net/wifi/PasspointManagementObjectDefinition;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 3
    .param p0, "managementObjectDefinition"    # Landroid/net/wifi/PasspointManagementObjectDefinition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    #@5
    .line 386
    .local v0, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    invoke-virtual {p0}, Landroid/net/wifi/PasspointManagementObjectDefinition;->getMoTree()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v2, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    #@c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public static buildSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 6
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    #@5
    .line 211
    .local v0, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    const-string/jumbo v3, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    #@8
    invoke-virtual {v0, p0, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@b
    move-result-object v2

    #@c
    .line 212
    .local v2, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    #@f
    move-result-object v1

    #@10
    .line 213
    .local v1, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@13
    move-result v3

    #@14
    const/4 v4, 0x1

    #@15
    if-eq v3, v4, :cond_0

    #@17
    .line 214
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@19
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "Expected exactly one HomeSP, got "

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@28
    move-result v5

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-direct {v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@34
    throw v3

    #@35
    .line 216
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v3

    #@39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@3f
    return-object v3
.end method

.method private static buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;
    .locals 13
    .param p0, "moTree"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/omadm/MOTree;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 607
    new-instance v2, Ljava/util/ArrayList;

    #@3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 608
    .local v2, "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@9
    move-result-object v10

    #@a
    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getName()Ljava/lang/String;

    #@d
    move-result-object v10

    #@e
    const-string/jumbo v12, "PerProviderSubscription"

    #@11
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v10

    #@15
    if-eqz v10, :cond_2

    #@17
    .line 610
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@1a
    move-result-object v8

    #@1b
    .line 612
    .local v8, "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    if-nez v8, :cond_0

    #@1d
    .line 613
    return-object v2

    #@1e
    .line 616
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    #@21
    move-result-object v10

    #@22
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v5

    #@26
    .local v5, "node$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v10

    #@2a
    if-eqz v10, :cond_9

    #@2c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@32
    .line 617
    .local v4, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@35
    move-result v10

    #@36
    if-nez v10, :cond_1

    #@38
    .line 618
    invoke-static {v4, v11}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@3b
    move-result-object v10

    #@3c
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_0

    #@40
    .line 622
    .end local v4    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v5    # "node$iterator":Ljava/util/Iterator;
    .end local v8    # "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@43
    move-result-object v10

    #@44
    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    #@47
    move-result-object v10

    #@48
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4b
    move-result-object v7

    #@4c
    .local v7, "ppsRoot$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v10

    #@50
    if-eqz v10, :cond_9

    #@52
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v6

    #@56
    check-cast v6, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@58
    .line 623
    .local v6, "ppsRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    #@5b
    move-result-object v10

    #@5c
    const-string/jumbo v12, "PerProviderSubscription"

    #@5f
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v10

    #@63
    if-eqz v10, :cond_3

    #@65
    .line 624
    const/4 v9, 0x0

    #@66
    .line 625
    .local v9, "updateIdentifier":Ljava/lang/Integer;
    const/4 v3, 0x0

    #@67
    .line 626
    .local v3, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@6a
    move-result-object v10

    #@6b
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6e
    move-result-object v1

    #@6f
    .end local v3    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v9    # "updateIdentifier":Ljava/lang/Integer;
    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@72
    move-result v10

    #@73
    if-eqz v10, :cond_6

    #@75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@78
    move-result-object v0

    #@79
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@7b
    .line 627
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    #@7e
    move-result-object v10

    #@7f
    const-string/jumbo v12, "UpdateIdentifier"

    #@82
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v10

    #@86
    if-eqz v10, :cond_5

    #@88
    .line 628
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    #@8b
    move-result v10

    #@8c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8f
    move-result-object v9

    #@90
    .local v9, "updateIdentifier":Ljava/lang/Integer;
    goto :goto_2

    #@91
    .line 629
    .end local v9    # "updateIdentifier":Ljava/lang/Integer;
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@94
    move-result v10

    #@95
    if-nez v10, :cond_4

    #@97
    .line 630
    move-object v3, v0

    #@98
    .local v3, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    goto :goto_2

    #@99
    .line 633
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v3    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_6
    if-nez v3, :cond_7

    #@9b
    .line 634
    new-instance v10, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@9d
    const-string/jumbo v11, "PPS node missing instance node"

    #@a0
    invoke-direct {v10, v11}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v10

    #@a4
    .line 637
    :cond_7
    if-eqz v9, :cond_8

    #@a6
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@a9
    move-result v10

    #@aa
    .line 636
    :goto_3
    invoke-static {v3, v10}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@ad
    move-result-object v10

    #@ae
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b1
    goto :goto_1

    #@b2
    :cond_8
    move v10, v11

    #@b3
    .line 637
    goto :goto_3

    #@b4
    .line 642
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    .end local v6    # "ppsRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v7    # "ppsRoot$iterator":Ljava/util/Iterator;
    :cond_9
    return-object v2
.end method

.method private static findTargetTree(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 8
    .param p0, "moTree"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 298
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@4
    move-result-object v4

    #@5
    .line 299
    .local v4, "pps":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@8
    move-result-object v5

    #@9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "node$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_3

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@19
    .line 300
    .local v1, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const/4 v0, 0x0

    #@1a
    .line 301
    .local v0, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    const-string/jumbo v6, "PerProviderSubscription"

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_2

    #@27
    move-object v5, v1

    #@28
    .line 302
    check-cast v5, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@2a
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceNode(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@2d
    move-result-object v0

    #@2e
    .line 306
    .end local v0    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    #@30
    .line 307
    sget-object v5, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->FQDNPath:Ljava/util/List;

    #@32
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@39
    move-result-object v5

    #@3a
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 308
    .local v3, "nodeFqdn":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@41
    move-result v5

    #@42
    if-eqz v5, :cond_0

    #@44
    .line 309
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@46
    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    return-object v1

    #@47
    .line 303
    .end local v3    # "nodeFqdn":Ljava/lang/String;
    .restart local v0    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .restart local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@4a
    move-result v5

    #@4b
    if-nez v5, :cond_1

    #@4d
    .line 304
    move-object v0, v1

    #@4e
    .local v0, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    goto :goto_0

    #@4f
    .line 314
    .end local v0    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v1    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_3
    return-object v7
.end method

.method private static getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z
    .locals 1
    .param p0, "boolNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@0
    .prologue
    .line 885
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static getChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 4
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 820
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3
    move-result-object v0

    #@4
    .line 821
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_0

    #@6
    .line 822
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "No such node: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 824
    :cond_0
    return-object v0
.end method

.method private static getInstanceNode(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 4
    .param p0, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@14
    .line 319
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 320
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@1c
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    return-object v0

    #@1d
    .line 323
    :cond_1
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@1f
    const-string/jumbo v3, "Cannot find instance node"

    #@22
    invoke-direct {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2
.end method

.method private static getInstanceString(I)Ljava/lang/String;
    .locals 2
    .param p0, "instance"    # I

    #@0
    .prologue
    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "r1i"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method private static getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I
    .locals 4
    .param p0, "intNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 900
    if-nez p0, :cond_0

    #@2
    .line 901
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@4
    const-string/jumbo v2, "Missing integer value"

    #@7
    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 904
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 905
    :catch_0
    move-exception v0

    #@15
    .line 906
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "Invalid integer: "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1
.end method

.method private static getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;I)I
    .locals 1
    .param p0, "intNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "dflt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 893
    if-nez p0, :cond_0

    #@2
    .line 894
    return p1

    #@3
    .line 896
    :cond_0
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J
    .locals 8
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dflt"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 838
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3
    move-result-object v0

    #@4
    .line 839
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_1

    #@6
    .line 840
    if-eqz p2, :cond_0

    #@8
    .line 841
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    #@b
    move-result-wide v6

    #@c
    return-wide v6

    #@d
    .line 843
    :cond_0
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@f
    new-instance v6, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v7, "Missing value for "

    #@17
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-direct {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@26
    throw v5

    #@27
    .line 846
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@2a
    move-result v5

    #@2b
    if-nez v5, :cond_2

    #@2d
    .line 847
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@2f
    new-instance v6, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    const-string/jumbo v7, " is not a leaf node"

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    invoke-direct {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@46
    throw v5

    #@47
    .line 849
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    .line 851
    .local v4, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@4e
    move-result-wide v2

    #@4f
    .line 852
    .local v2, "result":J
    const-wide/16 v6, 0x0

    #@51
    cmp-long v5, v2, v6

    #@53
    if-gez v5, :cond_3

    #@55
    .line 853
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@57
    new-instance v6, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v7, "Negative value for "

    #@5f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v6

    #@6b
    invoke-direct {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    .line 856
    .end local v2    # "result":J
    :catch_0
    move-exception v1

    #@70
    .line 857
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@72
    new-instance v6, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v7, "Value for "

    #@7a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v6

    #@82
    const-string/jumbo v7, " is non-numeric: "

    #@85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v6

    #@89
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v6

    #@8d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v6

    #@91
    invoke-direct {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@94
    throw v5

    #@95
    .line 855
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v2    # "result":J
    :cond_3
    return-wide v2
.end method

.method private static getMac(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;
    .locals 4
    .param p0, "macNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 911
    if-nez p0, :cond_0

    #@3
    .line 912
    return-object v1

    #@4
    .line 915
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const/16 v2, 0x10

    #@a
    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@d
    move-result-wide v2

    #@e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 916
    :catch_0
    move-exception v0

    #@14
    .line 917
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Invalid MAC: "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1
.end method

.method private static getOctets(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)[B
    .locals 2
    .param p0, "octetNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 946
    if-nez p0, :cond_0

    #@2
    .line 947
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@4
    const-string/jumbo v1, "Missing byte value"

    #@7
    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 949
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hexToBytes(Ljava/lang/String;)[B

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method private static getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;
    .locals 4
    .param p0, "intNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 922
    if-nez p0, :cond_0

    #@3
    .line 923
    return-object v1

    #@4
    .line 926
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@b
    move-result-wide v2

    #@c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 927
    :catch_0
    move-exception v0

    #@12
    .line 928
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Invalid integer: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1
.end method

.method private static getRCList(Ljava/util/Collection;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 592
    .local p0, "rcs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 593
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    #@6
    .line 594
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v3

    #@a
    .local v3, "roamingConsortium$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/Long;

    #@16
    .line 595
    .local v2, "roamingConsortium":Ljava/lang/Long;
    if-eqz v1, :cond_0

    #@18
    .line 596
    const/4 v1, 0x0

    #@19
    .line 600
    :goto_1
    const-string/jumbo v4, "%x"

    #@1c
    const/4 v5, 0x1

    #@1d
    new-array v5, v5, [Ljava/lang/Object;

    #@1f
    const/4 v6, 0x0

    #@20
    aput-object v2, v5, v6

    #@22
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    goto :goto_0

    #@2a
    .line 598
    :cond_0
    const/16 v4, 0x2c

    #@2c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    goto :goto_1

    #@30
    .line 602
    .end local v2    # "roamingConsortium":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    return-object v4
.end method

.method public static getSelection(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 863
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3
    move-result-object v0

    #@4
    .line 864
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_0

    #@6
    .line 865
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Missing value for "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 866
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_1

    #@26
    .line 867
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@28
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    const-string/jumbo v3, " is not a leaf node"

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v1

    #@40
    .line 869
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-static {p1, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    return-object v1
.end method

.method public static getSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 873
    if-nez p1, :cond_0

    #@2
    .line 874
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "No value for "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 876
    :cond_0
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->sSelectionMap:Ljava/util/Map;

    #@1e
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/util/Map;

    #@24
    .line 877
    .local v0, "kvp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    .line 878
    .local v1, "result":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    #@2e
    .line 879
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@30
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v4, "Invalid value \'"

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    const-string/jumbo v4, "\' for "

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-direct {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@52
    throw v2

    #@53
    .line 881
    :cond_1
    return-object v1
.end method

.method public static getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;
    .locals 1
    .param p0, "stringNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 889
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    :cond_0
    return-object v0
.end method

.method public static getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 828
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3
    move-result-object v0

    #@4
    .line 829
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_0

    #@6
    .line 830
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Missing value for "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 831
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_1

    #@26
    .line 832
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@28
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    const-string/jumbo v3, " is not a leaf node"

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v1

    #@40
    .line 834
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    return-object v1
.end method

.method private static getTailPath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 6
    .param p0, "pathString"    # Ljava/lang/String;
    .param p1, "rootName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 391
    const-string/jumbo v3, "/"

    #@3
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 393
    .local v0, "path":[Ljava/lang/String;
    const/4 v1, 0x0

    #@8
    .local v1, "pathIndex":I
    :goto_0
    array-length v3, v0

    #@9
    if-ge v1, v3, :cond_0

    #@b
    .line 394
    aget-object v3, v0, v1

    #@d
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 395
    add-int/lit8 v1, v1, 0x1

    #@15
    .line 399
    :cond_0
    array-length v3, v0

    #@16
    if-lt v1, v3, :cond_2

    #@18
    .line 400
    new-instance v3, Ljava/io/IOException;

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "Bad node-path: "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@31
    throw v3

    #@32
    .line 393
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 402
    :cond_2
    new-instance v2, Ljava/util/LinkedList;

    #@37
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@3a
    .line 403
    .local v2, "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_1
    array-length v3, v0

    #@3b
    if-ge v1, v3, :cond_3

    #@3d
    .line 404
    aget-object v3, v0, v1

    #@3f
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@42
    .line 405
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_1

    #@45
    .line 407
    :cond_3
    return-object v2
.end method

.method public static getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J
    .locals 6
    .param p0, "timeNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 933
    if-nez p0, :cond_0

    #@2
    .line 934
    const-wide/16 v4, -0x1

    #@4
    return-wide v4

    #@5
    .line 936
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 938
    .local v2, "timeText":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->DTFormat:Ljava/text/DateFormat;

    #@b
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@e
    move-result-object v0

    #@f
    .line 939
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-wide v4

    #@13
    return-wide v4

    #@14
    .line 940
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    #@15
    .line 941
    .local v1, "pe":Ljava/text/ParseException;
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "Badly formatted time: "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-direct {v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v3
.end method

.method private static varargs setSelections(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "pairs"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 147
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 148
    .local v0, "kvp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v2, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->sSelectionMap:Ljava/util/Map;

    #@7
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 149
    const/4 v1, 0x0

    #@b
    .local v1, "n":I
    :goto_0
    array-length v2, p1

    #@c
    if-ge v1, v2, :cond_0

    #@e
    .line 150
    aget-object v2, p1, v1

    #@10
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    add-int/lit8 v3, v1, 0x1

    #@16
    aget-object v3, p1, v3

    #@18
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 149
    add-int/lit8 v1, v1, 0x2

    #@1d
    goto :goto_0

    #@1e
    .line 146
    :cond_0
    return-void
.end method

.method private static writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V
    .locals 6
    .param p0, "moTree"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 456
    const/4 v0, 0x0

    #@2
    .line 457
    .local v0, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    #@4
    new-instance v2, Ljava/io/FileOutputStream;

    #@6
    const/4 v4, 0x0

    #@7
    invoke-direct {v2, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@a
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@d
    .line 458
    .end local v0    # "out":Ljava/io/BufferedOutputStream;
    .local v1, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    #@10
    .line 459
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@13
    .line 460
    if-eqz v1, :cond_0

    #@15
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@18
    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    #@1a
    throw v3

    #@1b
    :catch_0
    move-exception v3

    #@1c
    goto :goto_0

    #@1d
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v0    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v2

    #@1e
    .end local v0    # "out":Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1f
    :catchall_0
    move-exception v3

    #@20
    move-object v5, v3

    #@21
    move-object v3, v2

    #@22
    move-object v2, v5

    #@23
    :goto_2
    if-eqz v0, :cond_1

    #@25
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    #@28
    :cond_1
    :goto_3
    if-eqz v3, :cond_3

    #@2a
    throw v3

    #@2b
    :catch_2
    move-exception v4

    #@2c
    if-nez v3, :cond_2

    #@2e
    move-object v3, v4

    #@2f
    goto :goto_3

    #@30
    :cond_2
    if-eq v3, v4, :cond_1

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@35
    goto :goto_3

    #@36
    :cond_3
    throw v2

    #@37
    .line 455
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :cond_4
    return-void

    #@38
    .line 460
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v0    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v2

    #@39
    goto :goto_2

    #@3a
    .end local v0    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v2

    #@3b
    move-object v0, v1

    #@3c
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .local v0, "out":Ljava/io/BufferedOutputStream;
    goto :goto_2

    #@3d
    .end local v0    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v2

    #@3e
    move-object v0, v1

    #@3f
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v0    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public addSP(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 9
    .param p1, "instanceTree"    # Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    #@3
    move-result-object v4

    #@4
    .line 257
    .local v4, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@7
    move-result v6

    #@8
    const/4 v7, 0x1

    #@9
    if-eq v6, v7, :cond_0

    #@b
    .line 258
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@d
    new-instance v7, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v8, "Expected exactly one HomeSP, got "

    #@15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v7

    #@19
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@1c
    move-result v8

    #@1d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    invoke-direct {v6, v7}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@28
    throw v6

    #@29
    .line 261
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v6

    #@2d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v3

    #@31
    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@33
    .line 262
    .local v3, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 263
    .local v1, "fqdn":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    #@39
    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v6

    #@3d
    if-eqz v6, :cond_1

    #@3f
    .line 264
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@41
    new-instance v7, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v8, "SP "

    #@49
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    const-string/jumbo v8, " already exists"

    #@54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v7

    #@5c
    invoke-direct {v6, v7}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v6

    #@60
    .line 267
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@63
    move-result-object v6

    #@64
    .line 268
    const-string/jumbo v7, "PerProviderSubscription"

    #@67
    .line 267
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@6a
    move-result-object v2

    #@6b
    check-cast v2, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@6d
    .line 271
    .local v2, "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->addSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@70
    .line 278
    :goto_0
    return-object v3

    #@71
    .line 272
    :catch_0
    move-exception v0

    #@72
    .line 273
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v5, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@74
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getUrn()Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getDtdRev()Ljava/lang/String;

    #@7b
    move-result-object v7

    #@7c
    .line 274
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@7f
    move-result-object v8

    #@80
    .line 273
    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    #@83
    .line 275
    .local v5, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    #@85
    invoke-static {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    #@88
    goto :goto_0
.end method

.method public addSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 2
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    #@5
    .line 221
    .local v0, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    const-string/jumbo v1, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    #@8
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->addSP(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public addSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 7
    .param p1, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 233
    iget-boolean v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 234
    new-instance v3, Ljava/io/IOException;

    #@7
    const-string/jumbo v4, "HS2.0 not enabled on this device"

    #@a
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 236
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    #@10
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 237
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "HS20 profile for "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    .line 238
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    .line 237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    .line 238
    const-string/jumbo v5, " already exists"

    #@39
    .line 237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 239
    return-void

    #@45
    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    #@48
    move-result-object v3

    #@49
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    new-instance v4, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v5, "Adding new HS20 profile for "

    #@55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 243
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@6a
    const-string/jumbo v3, "PerProviderSubscription"

    #@6d
    const/4 v4, 0x0

    #@6e
    new-array v4, v4, [Ljava/lang/String;

    #@70
    invoke-direct {v0, v6, v3, v6, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@73
    .line 244
    .local v0, "dummyRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    #@75
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@78
    move-result v3

    #@79
    add-int/lit8 v3, v3, 0x1

    #@7b
    invoke-static {p1, v0, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@7e
    .line 246
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->addSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@81
    .line 252
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    #@83
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    .line 232
    return-void

    #@8b
    .line 247
    :catch_0
    move-exception v1

    #@8c
    .line 248
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v3, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    #@8f
    .line 249
    const-string/jumbo v4, "1.2"

    #@92
    .line 248
    invoke-static {v3, v4, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildMgmtTree(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@95
    move-result-object v2

    #@96
    .line 250
    .local v2, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    #@98
    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    #@9b
    goto :goto_0
.end method

.method public getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 1
    .param p1, "fqdn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@8
    return-object v0
.end method

.method public getLoadedSPs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMOTree(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 439
    if-nez p1, :cond_0

    #@3
    .line 440
    return-object v7

    #@4
    .line 442
    :cond_0
    const/4 v1, 0x0

    #@5
    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    #@7
    new-instance v5, Ljava/io/FileInputStream;

    #@9
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    #@b
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@e
    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@11
    .line 443
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@14
    move-result-object v3

    #@15
    .line 444
    .local v3, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v3, p1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->findTargetTree(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@18
    move-result-object v4

    #@19
    .line 445
    .local v4, "target":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    if-nez v4, :cond_3

    #@1b
    .line 452
    if-eqz v2, :cond_1

    #@1d
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    #@20
    :cond_1
    move-object v5, v7

    #@21
    :goto_0
    if-eqz v5, :cond_2

    #@23
    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    #@24
    .line 450
    :catch_0
    move-exception v0

    #@25
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    move-object v1, v2

    #@26
    .line 451
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v4    # "target":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :goto_1
    return-object v7

    #@27
    .line 452
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v4    # "target":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_1
    move-exception v5

    #@28
    goto :goto_0

    #@29
    .line 446
    :cond_2
    return-object v7

    #@2a
    .line 448
    :cond_3
    :try_start_4
    const-string/jumbo v5, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    #@2d
    .line 449
    const-string/jumbo v6, "1.2"

    #@30
    .line 448
    invoke-static {v5, v6, v4}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildMgmtTree(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->toXml()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@37
    move-result-object v6

    #@38
    .line 452
    if-eqz v2, :cond_4

    #@3a
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    #@3d
    :cond_4
    move-object v5, v7

    #@3e
    :goto_2
    if-eqz v5, :cond_5

    #@40
    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    #@41
    :catch_2
    move-exception v5

    #@42
    goto :goto_2

    #@43
    .line 448
    :cond_5
    return-object v6

    #@44
    .line 452
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v4    # "target":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v5

    #@45
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@46
    :catchall_0
    move-exception v6

    #@47
    move-object v9, v6

    #@48
    move-object v6, v5

    #@49
    move-object v5, v9

    #@4a
    :goto_4
    if-eqz v1, :cond_6

    #@4c
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    #@4f
    :cond_6
    :goto_5
    if-eqz v6, :cond_8

    #@51
    :try_start_9
    throw v6

    #@52
    .line 450
    :catch_4
    move-exception v0

    #@53
    .restart local v0    # "fnfe":Ljava/io/FileNotFoundException;
    goto :goto_1

    #@54
    .line 452
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v8

    #@55
    if-nez v6, :cond_7

    #@57
    move-object v6, v8

    #@58
    goto :goto_5

    #@59
    :cond_7
    if-eq v6, v8, :cond_6

    #@5b
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@5e
    goto :goto_5

    #@5f
    :cond_8
    throw v5
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4

    #@60
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v5

    #@61
    move-object v6, v7

    #@62
    goto :goto_4

    #@63
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v5

    #@64
    move-object v6, v7

    #@65
    move-object v1, v2

    #@66
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .local v1, "in":Ljava/io/BufferedInputStream;
    goto :goto_4

    #@67
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v5

    #@68
    move-object v1, v2

    #@69
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method public isConfigured()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 169
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    #@7
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    #@2
    return v0
.end method

.method public loadAllSPs()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 178
    iget-boolean v7, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mEnabled:Z

    #@3
    if-eqz v7, :cond_1

    #@5
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    #@7
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_1

    #@d
    .line 182
    const/4 v1, 0x0

    #@e
    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    #@10
    new-instance v7, Ljava/io/FileInputStream;

    #@12
    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    #@14
    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@17
    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@1a
    .line 183
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    #@1c
    invoke-interface {v7}, Ljava/util/Map;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1f
    .line 186
    :try_start_2
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@22
    move-result-object v3

    #@23
    .line 191
    .local v3, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :try_start_3
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    #@26
    move-result-object v6

    #@27
    .line 192
    .local v6, "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    if-eqz v6, :cond_8

    #@29
    .line 193
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v5

    #@2d
    .local v5, "sp$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v7

    #@31
    if-eqz v7, :cond_5

    #@33
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@39
    .line 194
    .local v4, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    #@3b
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    invoke-interface {v7, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v7

    #@43
    if-eqz v7, :cond_4

    #@45
    .line 195
    new-instance v7, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@47
    new-instance v9, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v10, "Multiple SPs for FQDN \'"

    #@4f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v9

    #@53
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@56
    move-result-object v10

    #@57
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v9

    #@5b
    const-string/jumbo v10, "\'"

    #@5e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    invoke-direct {v7, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@69
    throw v7
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6a
    .line 206
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v4    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v5    # "sp$iterator":Ljava/util/Iterator;
    .end local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catch_0
    move-exception v7

    #@6b
    move-object v1, v2

    #@6c
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6d
    :catchall_0
    move-exception v8

    #@6e
    move-object v11, v8

    #@6f
    move-object v8, v7

    #@70
    move-object v7, v11

    #@71
    :goto_2
    if-eqz v1, :cond_0

    #@73
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    #@76
    :cond_0
    :goto_3
    if-eqz v8, :cond_a

    #@78
    throw v8

    #@79
    .line 179
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@7c
    move-result-object v7

    #@7d
    return-object v7

    #@7e
    .line 187
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v0

    #@7f
    .line 188
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@82
    move-result-object v7

    #@83
    .line 206
    if-eqz v2, :cond_2

    #@85
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    #@88
    :cond_2
    :goto_4
    if-eqz v8, :cond_3

    #@8a
    throw v8

    #@8b
    :catch_2
    move-exception v8

    #@8c
    goto :goto_4

    #@8d
    .line 188
    :cond_3
    return-object v7

    #@8e
    .line 197
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v4    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v5    # "sp$iterator":Ljava/util/Iterator;
    .restart local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_4
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    #@91
    move-result-object v7

    #@92
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@95
    move-result-object v7

    #@96
    .line 198
    new-instance v9, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v10, "retrieved "

    #@9e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v9

    #@a2
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@a5
    move-result-object v10

    #@a6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v9

    #@aa
    const-string/jumbo v10, " from PPS"

    #@ad
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v9

    #@b1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v9

    #@b5
    .line 197
    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@b8
    goto/16 :goto_0

    #@ba
    .line 206
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v4    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v5    # "sp$iterator":Ljava/util/Iterator;
    .end local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catchall_1
    move-exception v7

    #@bb
    move-object v1, v2

    #@bc
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .local v1, "in":Ljava/io/BufferedInputStream;
    goto :goto_2

    #@bd
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v5    # "sp$iterator":Ljava/util/Iterator;
    .restart local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_5
    if-eqz v2, :cond_6

    #@bf
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    #@c2
    :cond_6
    :goto_5
    if-eqz v8, :cond_7

    #@c4
    throw v8

    #@c5
    :catch_3
    move-exception v8

    #@c6
    goto :goto_5

    #@c7
    .line 201
    :cond_7
    return-object v6

    #@c8
    .line 204
    .end local v5    # "sp$iterator":Ljava/util/Iterator;
    :cond_8
    :try_start_a
    new-instance v7, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@ca
    const-string/jumbo v9, "Failed to build HomeSP"

    #@cd
    invoke-direct {v7, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@d0
    throw v7
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@d1
    .line 206
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v3    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v6    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catch_4
    move-exception v9

    #@d2
    if-nez v8, :cond_9

    #@d4
    move-object v8, v9

    #@d5
    goto :goto_3

    #@d6
    :cond_9
    if-eq v8, v9, :cond_0

    #@d8
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@db
    goto :goto_3

    #@dc
    :cond_a
    throw v7

    #@dd
    .local v1, "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v7

    #@de
    goto :goto_2

    #@df
    :catch_5
    move-exception v7

    #@e0
    goto :goto_1
.end method

.method public modifySP(Ljava/lang/String;Ljava/util/Collection;)I
    .locals 22
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/PasspointManagementObjectDefinition;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 329
    .local p2, "mods":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v17

    #@4
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@7
    move-result-object v17

    #@8
    new-instance v18, Ljava/lang/StringBuilder;

    #@a
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v19, "modifying SP: "

    #@10
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v18

    #@14
    move-object/from16 v0, v18

    #@16
    move-object/from16 v1, p2

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v18

    #@1c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v18

    #@20
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 331
    const/4 v13, 0x0

    #@24
    .line 333
    .local v13, "ppsMods":I
    const/16 v18, 0x0

    #@26
    const/4 v3, 0x0

    #@27
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    #@29
    new-instance v17, Ljava/io/FileInputStream;

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    #@2f
    move-object/from16 v19, v0

    #@31
    move-object/from16 v0, v17

    #@33
    move-object/from16 v1, v19

    #@35
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@38
    move-object/from16 v0, v17

    #@3a
    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@3d
    .line 334
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@40
    move-result-object v6

    #@41
    .line 337
    .local v6, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    move-object/from16 v0, p1

    #@43
    invoke-static {v6, v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->findTargetTree(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@46
    move-result-object v15

    #@47
    .line 338
    .local v15, "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    if-nez v15, :cond_1

    #@49
    .line 339
    new-instance v17, Ljava/io/IOException;

    #@4b
    new-instance v19, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v20, "Failed to find PPS tree for "

    #@53
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v19

    #@57
    move-object/from16 v0, v19

    #@59
    move-object/from16 v1, p1

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v19

    #@5f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v19

    #@63
    move-object/from16 v0, v17

    #@65
    move-object/from16 v1, v19

    #@67
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v17
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@6b
    .line 375
    .end local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_0
    move-exception v17

    #@6c
    move-object v3, v4

    #@6d
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_2
    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6e
    :catchall_0
    move-exception v18

    #@6f
    move-object/from16 v21, v18

    #@71
    move-object/from16 v18, v17

    #@73
    move-object/from16 v17, v21

    #@75
    :goto_1
    if-eqz v3, :cond_0

    #@77
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    #@7a
    :cond_0
    :goto_2
    if-eqz v18, :cond_a

    #@7c
    throw v18

    #@7d
    .line 341
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_1
    :try_start_4
    invoke-static {v15}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInstanceNode(Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@80
    move-result-object v5

    #@81
    .line 343
    .local v5, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@84
    move-result-object v8

    #@85
    .local v8, "mod$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@88
    move-result v17

    #@89
    if-eqz v17, :cond_7

    #@8b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8e
    move-result-object v7

    #@8f
    check-cast v7, Landroid/net/wifi/PasspointManagementObjectDefinition;

    #@91
    .line 344
    .local v7, "mod":Landroid/net/wifi/PasspointManagementObjectDefinition;
    invoke-virtual {v7}, Landroid/net/wifi/PasspointManagementObjectDefinition;->getBaseUri()Ljava/lang/String;

    #@94
    move-result-object v17

    #@95
    .line 345
    const-string/jumbo v19, "PerProviderSubscription"

    #@98
    .line 344
    move-object/from16 v0, v17

    #@9a
    move-object/from16 v1, v19

    #@9c
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getTailPath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;

    #@9f
    move-result-object v14

    #@a0
    .line 346
    .local v14, "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->buildMoTree(Landroid/net/wifi/PasspointManagementObjectDefinition;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@a3
    move-result-object v17

    #@a4
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@a7
    move-result-object v9

    #@a8
    .line 350
    .local v9, "modRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    invoke-virtual {v14}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    #@ab
    move-result-object v17

    #@ac
    check-cast v17, Ljava/lang/String;

    #@ae
    const-string/jumbo v19, "UpdateIdentifier"

    #@b1
    move-object/from16 v0, v17

    #@b3
    move-object/from16 v1, v19

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v17

    #@b9
    if-eqz v17, :cond_5

    #@bb
    .line 351
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    #@be
    move-result-object v17

    #@bf
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@c2
    move-result-object v17

    #@c3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c6
    move-result-object v17

    #@c7
    check-cast v17, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@c9
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    #@cc
    move-result v16

    #@cd
    .line 352
    .local v16, "updateIdentifier":I
    const-string/jumbo v17, "UpdateIdentifier"

    #@d0
    move-object/from16 v0, v17

    #@d2
    invoke-virtual {v15, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@d5
    move-result-object v12

    #@d6
    .line 353
    .local v12, "oldUdi":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-static {v12}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    #@d9
    move-result v17

    #@da
    move/from16 v0, v17

    #@dc
    move/from16 v1, v16

    #@de
    if-eq v0, v1, :cond_3

    #@e0
    .line 354
    add-int/lit8 v13, v13, 0x1

    #@e2
    .line 356
    :cond_3
    if-eqz v12, :cond_4

    #@e4
    .line 357
    const-string/jumbo v17, "UpdateIdentifier"

    #@e7
    move-object/from16 v0, v17

    #@e9
    invoke-virtual {v9, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@ec
    move-result-object v17

    #@ed
    move-object/from16 v0, v17

    #@ef
    invoke-virtual {v15, v12, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->replaceNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@f2
    goto :goto_3

    #@f3
    .line 375
    .end local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v7    # "mod":Landroid/net/wifi/PasspointManagementObjectDefinition;
    .end local v8    # "mod$iterator":Ljava/util/Iterator;
    .end local v9    # "modRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v12    # "oldUdi":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v14    # "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v16    # "updateIdentifier":I
    :catchall_1
    move-exception v17

    #@f4
    move-object v3, v4

    #@f5
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v3, "in":Ljava/io/BufferedInputStream;
    goto :goto_1

    #@f6
    .line 359
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v7    # "mod":Landroid/net/wifi/PasspointManagementObjectDefinition;
    .restart local v8    # "mod$iterator":Ljava/util/Iterator;
    .restart local v9    # "modRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v12    # "oldUdi":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .restart local v14    # "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v16    # "updateIdentifier":I
    :cond_4
    const-string/jumbo v17, "UpdateIdentifier"

    #@f9
    move-object/from16 v0, v17

    #@fb
    invoke-virtual {v9, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@fe
    move-result-object v17

    #@ff
    move-object/from16 v0, v17

    #@101
    invoke-virtual {v15, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    #@104
    goto :goto_3

    #@105
    .line 362
    .end local v12    # "oldUdi":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v16    # "updateIdentifier":I
    :cond_5
    invoke-virtual {v14}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@108
    .line 363
    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@10b
    move-result-object v17

    #@10c
    move-object/from16 v0, v17

    #@10e
    invoke-virtual {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@111
    move-result-object v2

    #@112
    .line 364
    .local v2, "current":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v2, :cond_6

    #@114
    .line 365
    new-instance v17, Ljava/io/IOException;

    #@116
    new-instance v19, Ljava/lang/StringBuilder;

    #@118
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@11b
    const-string/jumbo v20, "No previous node for "

    #@11e
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v19

    #@122
    move-object/from16 v0, v19

    #@124
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v19

    #@128
    const-string/jumbo v20, " in "

    #@12b
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v19

    #@12f
    move-object/from16 v0, v19

    #@131
    move-object/from16 v1, p1

    #@133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v19

    #@137
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v19

    #@13b
    move-object/from16 v0, v17

    #@13d
    move-object/from16 v1, v19

    #@13f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@142
    throw v17

    #@143
    .line 367
    :cond_6
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    #@146
    move-result-object v17

    #@147
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14a
    move-result-object v11

    #@14b
    .local v11, "newNode$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@14e
    move-result v17

    #@14f
    if-eqz v17, :cond_2

    #@151
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@154
    move-result-object v10

    #@155
    check-cast v10, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@157
    .line 370
    .local v10, "newNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@15a
    move-result-object v17

    #@15b
    move-object/from16 v0, v17

    #@15d
    invoke-virtual {v0, v2, v10}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->replaceNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@160
    .line 371
    add-int/lit8 v13, v13, 0x1

    #@162
    goto :goto_4

    #@163
    .line 375
    .end local v2    # "current":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v7    # "mod":Landroid/net/wifi/PasspointManagementObjectDefinition;
    .end local v9    # "modRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v10    # "newNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v11    # "newNode$iterator":Ljava/util/Iterator;
    .end local v14    # "tailPath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_7
    if-eqz v4, :cond_8

    #@165
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    #@168
    :cond_8
    :goto_5
    if-eqz v18, :cond_b

    #@16a
    throw v18

    #@16b
    :catch_1
    move-exception v18

    #@16c
    goto :goto_5

    #@16d
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v8    # "mod$iterator":Ljava/util/Iterator;
    .end local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_2
    move-exception v19

    #@16e
    if-nez v18, :cond_9

    #@170
    move-object/from16 v18, v19

    #@172
    goto/16 :goto_2

    #@174
    :cond_9
    move-object/from16 v0, v18

    #@176
    move-object/from16 v1, v19

    #@178
    if-eq v0, v1, :cond_0

    #@17a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@17d
    goto/16 :goto_2

    #@17f
    :cond_a
    throw v17

    #@180
    .line 376
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v8    # "mod$iterator":Ljava/util/Iterator;
    .restart local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_b
    move-object/from16 v0, p0

    #@182
    iget-object v0, v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    #@184
    move-object/from16 v17, v0

    #@186
    move-object/from16 v0, v17

    #@188
    invoke-static {v6, v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    #@18b
    .line 378
    return v13

    #@18c
    .line 375
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v6    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v8    # "mod$iterator":Ljava/util/Iterator;
    .end local v15    # "targetTree":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .local v3, "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v17

    #@18d
    goto/16 :goto_1

    #@18f
    :catch_3
    move-exception v17

    #@190
    goto/16 :goto_0
.end method

.method public removeSP(Ljava/lang/String;)V
    .locals 11
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 415
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mSPs:Ljava/util/Map;

    #@3
    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v6

    #@7
    if-nez v6, :cond_0

    #@9
    .line 416
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v6

    #@d
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@10
    move-result-object v6

    #@11
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "No HS20 profile to delete for "

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 417
    return-void

    #@29
    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getClass()Ljava/lang/Class;

    #@2c
    move-result-object v6

    #@2d
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    new-instance v8, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v9, "Deleting HS20 profile for "

    #@39
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v8

    #@3d
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 423
    const/4 v0, 0x0

    #@49
    .local v0, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    #@4b
    new-instance v6, Ljava/io/FileInputStream;

    #@4d
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    #@4f
    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@52
    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@55
    .line 424
    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@58
    move-result-object v2

    #@59
    .line 425
    .local v2, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v2, p1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->findTargetTree(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@5c
    move-result-object v5

    #@5d
    .line 426
    .local v5, "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    if-nez v5, :cond_2

    #@5f
    .line 427
    new-instance v6, Ljava/io/IOException;

    #@61
    new-instance v8, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v9, "Node "

    #@69
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v8

    #@6d
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v8

    #@71
    const-string/jumbo v9, " doesn\'t exist in MO tree"

    #@74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v8

    #@7c
    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@80
    .line 434
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_0
    move-exception v6

    #@81
    move-object v0, v1

    #@82
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    :goto_0
    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@83
    :catchall_0
    move-exception v7

    #@84
    move-object v10, v7

    #@85
    move-object v7, v6

    #@86
    move-object v6, v10

    #@87
    :goto_1
    if-eqz v0, :cond_1

    #@89
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    #@8c
    :cond_1
    :goto_2
    if-eqz v7, :cond_6

    #@8e
    throw v7

    #@8f
    .line 429
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@92
    move-result-object v3

    #@93
    .line 430
    .local v3, "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const-string/jumbo v6, "?"

    #@96
    invoke-virtual {v3, v6, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->removeNode(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@99
    move-result-object v4

    #@9a
    .line 431
    .local v4, "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v4, :cond_3

    #@9c
    .line 432
    new-instance v6, Ljava/io/IOException;

    #@9e
    new-instance v8, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v9, "Failed to remove "

    #@a6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v8

    #@aa
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v8

    #@ae
    const-string/jumbo v9, " out of MO tree"

    #@b1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v8

    #@b5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v8

    #@b9
    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@bd
    .line 434
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catchall_1
    move-exception v6

    #@be
    move-object v0, v1

    #@bf
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v0, "in":Ljava/io/BufferedInputStream;
    goto :goto_1

    #@c0
    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .restart local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_3
    if-eqz v1, :cond_4

    #@c2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    #@c5
    :cond_4
    :goto_3
    if-eqz v7, :cond_7

    #@c7
    throw v7

    #@c8
    :catch_1
    move-exception v7

    #@c9
    goto :goto_3

    #@ca
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :catch_2
    move-exception v8

    #@cb
    if-nez v7, :cond_5

    #@cd
    move-object v7, v8

    #@ce
    goto :goto_2

    #@cf
    :cond_5
    if-eq v7, v8, :cond_1

    #@d1
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@d4
    goto :goto_2

    #@d5
    :cond_6
    throw v6

    #@d6
    .line 435
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .restart local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .restart local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->mPpsFile:Ljava/io/File;

    #@d8
    invoke-static {v2, v6}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->writeMO(Lcom/android/server/wifi/hotspot2/omadm/MOTree;Ljava/io/File;)V

    #@db
    .line 414
    return-void

    #@dc
    .line 434
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "pps":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .end local v4    # "removed":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v5    # "tbd":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .local v0, "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v6

    #@dd
    goto :goto_1

    #@de
    :catch_3
    move-exception v6

    #@df
    goto :goto_0
.end method
