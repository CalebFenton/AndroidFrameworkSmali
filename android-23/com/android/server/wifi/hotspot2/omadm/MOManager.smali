.class public Lcom/android/server/wifi/hotspot2/omadm/MOManager;
.super Ljava/lang/Object;
.source "MOManager.java"


# static fields
.field private static final DTFormat:Ljava/text/DateFormat;

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
    .locals 2

    #@0
    .prologue
    .line 117
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    #@5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

    #@a
    .line 120
    sget-object v0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

    #@c
    const-string/jumbo v1, "UTC"

    #@f
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@16
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1, "ppsFile"    # Ljava/io/File;
    .param p2, "hs2enabled"    # Z

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 128
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    #@5
    .line 129
    iput-boolean p2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    #@7
    .line 130
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    #@e
    .line 127
    return-void
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
    .line 553
    const-string/jumbo v5, "CreationDate"

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@8
    move-result-object v5

    #@9
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    #@c
    move-result-wide v6

    #@d
    .line 554
    .local v6, "ctime":J
    const-string/jumbo v5, "ExpirationDate"

    #@10
    move-object/from16 v0, p0

    #@12
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@15
    move-result-object v5

    #@16
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    #@19
    move-result-wide v8

    #@1a
    .line 555
    .local v8, "expTime":J
    const-string/jumbo v5, "Realm"

    #@1d
    move-object/from16 v0, p0

    #@1f
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@22
    move-result-object v5

    #@23
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@26
    move-result-object v10

    #@27
    .line 556
    .local v10, "realm":Ljava/lang/String;
    const-string/jumbo v5, "CheckAAAServerCertStatus"

    #@2a
    move-object/from16 v0, p0

    #@2c
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@2f
    move-result-object v5

    #@30
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    #@33
    move-result v11

    #@34
    .line 558
    .local v11, "checkAAACert":Z
    const-string/jumbo v5, "UsernamePassword"

    #@37
    move-object/from16 v0, p0

    #@39
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3c
    move-result-object v41

    #@3d
    .line 559
    .local v41, "unNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v5, "DigitalCertificate"

    #@40
    move-object/from16 v0, p0

    #@42
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@45
    move-result-object v18

    #@46
    .line 560
    .local v18, "certNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v5, "SIM"

    #@49
    move-object/from16 v0, p0

    #@4b
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@4e
    move-result-object v40

    #@4f
    .line 563
    .local v40, "simNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v41, :cond_0

    #@51
    const/4 v5, 0x1

    #@52
    :goto_0
    add-int/lit8 v4, v5, 0x0

    #@54
    .line 564
    .local v4, "alternatives":I
    if-eqz v18, :cond_1

    #@56
    const/4 v5, 0x1

    #@57
    :goto_1
    add-int/2addr v4, v5

    #@58
    .line 565
    if-eqz v40, :cond_2

    #@5a
    const/4 v5, 0x1

    #@5b
    :goto_2
    add-int/2addr v4, v5

    #@5c
    .line 566
    const/4 v5, 0x1

    #@5d
    if-eq v4, v5, :cond_3

    #@5f
    .line 567
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
    .line 563
    .end local v4    # "alternatives":I
    :cond_0
    const/4 v5, 0x0

    #@7e
    goto :goto_0

    #@7f
    .line 564
    .restart local v4    # "alternatives":I
    :cond_1
    const/4 v5, 0x0

    #@80
    goto :goto_1

    #@81
    .line 565
    :cond_2
    const/4 v5, 0x0

    #@82
    goto :goto_2

    #@83
    .line 570
    :cond_3
    if-eqz v41, :cond_a

    #@85
    .line 571
    const-string/jumbo v5, "Username"

    #@88
    move-object/from16 v0, v41

    #@8a
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@8d
    move-result-object v5

    #@8e
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@91
    move-result-object v13

    #@92
    .line 572
    .local v13, "userName":Ljava/lang/String;
    const-string/jumbo v5, "Password"

    #@95
    move-object/from16 v0, v41

    #@97
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@9a
    move-result-object v5

    #@9b
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@9e
    move-result-object v14

    #@9f
    .line 573
    .local v14, "password":Ljava/lang/String;
    const-string/jumbo v5, "MachineManaged"

    #@a2
    move-object/from16 v0, v41

    #@a4
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@a7
    move-result-object v5

    #@a8
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    #@ab
    move-result v15

    #@ac
    .line 574
    .local v15, "machineManaged":Z
    const-string/jumbo v5, "SoftTokenApp"

    #@af
    move-object/from16 v0, v41

    #@b1
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@b4
    move-result-object v5

    #@b5
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@b8
    move-result-object v16

    #@b9
    .line 575
    .local v16, "softTokenApp":Ljava/lang/String;
    const-string/jumbo v5, "AbleToShare"

    #@bc
    move-object/from16 v0, v41

    #@be
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@c1
    move-result-object v5

    #@c2
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z

    #@c5
    move-result v17

    #@c6
    .line 577
    .local v17, "ableToShare":Z
    const-string/jumbo v5, "EAPMethod"

    #@c9
    move-object/from16 v0, v41

    #@cb
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@ce
    move-result-object v32

    #@cf
    .line 578
    .local v32, "eapMethodNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v5, "EAPType"

    #@d2
    move-object/from16 v0, v32

    #@d4
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@d7
    move-result-object v5

    #@d8
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    #@db
    move-result v30

    #@dc
    .line 580
    .local v30, "eapID":I
    invoke-static/range {v30 .. v30}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@df
    move-result-object v31

    #@e0
    .line 581
    .local v31, "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-nez v31, :cond_4

    #@e2
    .line 582
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
    .line 585
    :cond_4
    const-string/jumbo v5, "VendorId"

    #@105
    move-object/from16 v0, v32

    #@107
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@10a
    move-result-object v5

    #@10b
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    #@10e
    move-result-object v42

    #@10f
    .line 586
    .local v42, "vid":Ljava/lang/Long;
    const-string/jumbo v5, "VendorType"

    #@112
    move-object/from16 v0, v32

    #@114
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@117
    move-result-object v5

    #@118
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    #@11b
    move-result-object v43

    #@11c
    .line 587
    .local v43, "vtype":Ljava/lang/Long;
    const-string/jumbo v5, "InnerEAPType"

    #@11f
    move-object/from16 v0, v32

    #@121
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@124
    move-result-object v5

    #@125
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    #@128
    move-result-object v34

    #@129
    .line 588
    .local v34, "innerEAPType":Ljava/lang/Long;
    const/16 v33, 0x0

    #@12b
    .line 589
    .local v33, "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-eqz v34, :cond_5

    #@12d
    .line 590
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->intValue()I

    #@130
    move-result v5

    #@131
    invoke-static {v5}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@134
    move-result-object v33

    #@135
    .line 591
    .local v33, "innerEAPMethod":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    if-nez v33, :cond_5

    #@137
    .line 592
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
    .line 596
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
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    #@163
    move-result-object v36

    #@164
    .line 597
    .local v36, "innerVid":Ljava/lang/Long;
    const-string/jumbo v5, "InnerVendorType"

    #@167
    move-object/from16 v0, v32

    #@169
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@16c
    move-result-object v5

    #@16d
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOptionalInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    #@170
    move-result-object v37

    #@171
    .line 598
    .local v37, "innerVtype":Ljava/lang/Long;
    const-string/jumbo v5, "InnerMethod"

    #@174
    move-object/from16 v0, v32

    #@176
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@179
    move-result-object v5

    #@17a
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@17d
    move-result-object v35

    #@17e
    .line 601
    .local v35, "innerNonEAPMethod":Ljava/lang/String;
    if-eqz v33, :cond_6

    #@180
    .line 602
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
    .line 617
    .local v12, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :goto_3
    new-instance v5, Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@190
    invoke-direct/range {v5 .. v17}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    #@193
    return-object v5

    #@194
    .line 603
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_6
    if-eqz v42, :cond_7

    #@196
    .line 604
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@198
    .line 605
    new-instance v5, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    #@19a
    sget-object v19, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@19c
    .line 606
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->intValue()I

    #@19f
    move-result v20

    #@1a0
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    #@1a3
    move-result-wide v22

    #@1a4
    .line 605
    move-object/from16 v0, v19

    #@1a6
    move/from16 v1, v20

    #@1a8
    move-wide/from16 v2, v22

    #@1aa
    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;IJ)V

    #@1ad
    .line 604
    move-object/from16 v0, v31

    #@1af
    invoke-direct {v12, v0, v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@1b2
    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    #@1b3
    .line 607
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_7
    if-eqz v36, :cond_8

    #@1b5
    .line 609
    new-instance v12, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@1b7
    new-instance v5, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    #@1b9
    sget-object v19, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@1bb
    .line 610
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->intValue()I

    #@1be
    move-result v20

    #@1bf
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    #@1c2
    move-result-wide v22

    #@1c3
    .line 609
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
    .line 608
    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    goto :goto_3

    #@1d2
    .line 611
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    :cond_8
    if-eqz v35, :cond_9

    #@1d4
    .line 612
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
    .line 614
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
    .line 620
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
    .line 622
    :try_start_0
    const-string/jumbo v5, "CertificateType"

    #@1f3
    move-object/from16 v0, v18

    #@1f5
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1f8
    move-result-object v5

    #@1f9
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@1fc
    move-result-object v29

    #@1fd
    .line 623
    .local v29, "certTypeString":Ljava/lang/String;
    const-string/jumbo v5, "CertSHA256Fingerprint"

    #@200
    move-object/from16 v0, v18

    #@202
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@205
    move-result-object v5

    #@206
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getOctets(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)[B

    #@209
    move-result-object v28

    #@20a
    .line 625
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
    .line 627
    .restart local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    new-instance v19, Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@217
    .line 628
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
    .line 627
    invoke-direct/range {v19 .. v28}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;[B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@228
    return-object v19

    #@229
    .line 630
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .end local v28    # "fingerPrint":[B
    .end local v29    # "certTypeString":Ljava/lang/String;
    :catch_0
    move-exception v39

    #@22a
    .line 631
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
    .line 634
    .end local v39    # "nfe":Ljava/lang/NumberFormatException;
    :cond_b
    if-eqz v40, :cond_c

    #@24c
    .line 636
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
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@25a
    move-result-object v5

    #@25b
    move-object/from16 v0, v27

    #@25d
    invoke-direct {v0, v5}, Lcom/android/server/wifi/IMSIParameter;-><init>(Ljava/lang/String;)V

    #@260
    .line 639
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
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInteger(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)I

    #@26e
    move-result v5

    #@26f
    invoke-static {v5}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@272
    move-result-object v5

    #@273
    .line 640
    const/16 v19, 0x0

    #@275
    .line 639
    move-object/from16 v0, v19

    #@277
    invoke-direct {v12, v5, v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@27a
    .line 642
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
    .line 644
    .end local v12    # "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .end local v27    # "imsi":Lcom/android/server/wifi/IMSIParameter;
    :catch_1
    move-exception v38

    #@28b
    .line 645
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
    .line 648
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

.method private static buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 30
    .param p0, "ppsRoot"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 499
    const-string/jumbo v2, "HomeSP"

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@8
    move-result-object v22

    #@9
    .line 501
    .local v22, "spRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const/4 v2, 0x1

    #@a
    new-array v2, v2, [Ljava/lang/String;

    #@c
    const-string/jumbo v26, "FQDN"

    #@f
    const/16 v27, 0x0

    #@11
    aput-object v26, v2, v27

    #@13
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v2

    #@1b
    move-object/from16 v0, v22

    #@1d
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 502
    .local v4, "fqdn":Ljava/lang/String;
    const/4 v2, 0x1

    #@22
    new-array v2, v2, [Ljava/lang/String;

    #@24
    const-string/jumbo v26, "FriendlyName"

    #@27
    const/16 v27, 0x0

    #@29
    aput-object v26, v2, v27

    #@2b
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v2

    #@33
    move-object/from16 v0, v22

    #@35
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    #@38
    move-result-object v9

    #@39
    .line 503
    .local v9, "friendlyName":Ljava/lang/String;
    const/4 v2, 0x1

    #@3a
    new-array v2, v2, [Ljava/lang/String;

    #@3c
    const-string/jumbo v26, "IconURL"

    #@3f
    const/16 v27, 0x0

    #@41
    aput-object v26, v2, v27

    #@43
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@46
    move-result-object v2

    #@47
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v2

    #@4b
    move-object/from16 v0, v22

    #@4d
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    #@50
    move-result-object v10

    #@51
    .line 505
    .local v10, "iconURL":Ljava/lang/String;
    new-instance v5, Ljava/util/HashSet;

    #@53
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@56
    .line 506
    .local v5, "roamingConsortiums":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    #@57
    new-array v2, v2, [Ljava/lang/String;

    #@59
    const-string/jumbo v26, "RoamingConsortiumOI"

    #@5c
    const/16 v27, 0x0

    #@5e
    aput-object v26, v2, v27

    #@60
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@63
    move-result-object v2

    #@64
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v2

    #@68
    move-object/from16 v0, v22

    #@6a
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;

    #@6d
    move-result-object v20

    #@6e
    .line 507
    .local v20, "oiString":Ljava/lang/String;
    if-eqz v20, :cond_0

    #@70
    .line 508
    const-string/jumbo v2, ","

    #@73
    move-object/from16 v0, v20

    #@75
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@78
    move-result-object v26

    #@79
    const/4 v2, 0x0

    #@7a
    move-object/from16 v0, v26

    #@7c
    array-length v0, v0

    #@7d
    move/from16 v27, v0

    #@7f
    :goto_0
    move/from16 v0, v27

    #@81
    if-ge v2, v0, :cond_0

    #@83
    aget-object v19, v26, v2

    #@85
    .line 509
    .local v19, "oi":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@88
    move-result-object v28

    #@89
    const/16 v29, 0x10

    #@8b
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@8e
    move-result-wide v28

    #@8f
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@92
    move-result-object v28

    #@93
    move-object/from16 v0, v28

    #@95
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@98
    .line 508
    add-int/lit8 v2, v2, 0x1

    #@9a
    goto :goto_0

    #@9b
    .line 513
    .end local v19    # "oi":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    #@9d
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@a0
    .line 515
    .local v3, "ssids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x1

    #@a1
    new-array v2, v2, [Ljava/lang/String;

    #@a3
    const-string/jumbo v26, "NetworkID"

    #@a6
    const/16 v27, 0x0

    #@a8
    aput-object v26, v2, v27

    #@aa
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@ad
    move-result-object v2

    #@ae
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@b1
    move-result-object v2

    #@b2
    move-object/from16 v0, v22

    #@b4
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@b7
    move-result-object v23

    #@b8
    .line 516
    .local v23, "ssidListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v23, :cond_1

    #@ba
    .line 517
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@bd
    move-result-object v2

    #@be
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c1
    move-result-object v25

    #@c2
    .local v25, "ssidRoot$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@c5
    move-result v2

    #@c6
    if-eqz v2, :cond_1

    #@c8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@cb
    move-result-object v24

    #@cc
    check-cast v24, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@ce
    .line 518
    .local v24, "ssidRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "HESSID"

    #@d1
    move-object/from16 v0, v24

    #@d3
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@d6
    move-result-object v14

    #@d7
    .line 519
    .local v14, "hessidNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "SSID"

    #@da
    move-object/from16 v0, v24

    #@dc
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@df
    move-result-object v2

    #@e0
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@e3
    move-result-object v2

    #@e4
    invoke-static {v14}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getMac(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/Long;

    #@e7
    move-result-object v26

    #@e8
    move-object/from16 v0, v26

    #@ea
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ed
    goto :goto_1

    #@ee
    .line 523
    .end local v14    # "hessidNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v24    # "ssidRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v25    # "ssidRoot$iterator":Ljava/util/Iterator;
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    #@f0
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@f3
    .line 524
    .local v7, "matchAnyOIs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    #@f5
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@f8
    .line 525
    .local v8, "matchAllOIs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    #@f9
    new-array v2, v2, [Ljava/lang/String;

    #@fb
    const-string/jumbo v26, "HomeOIList"

    #@fe
    const/16 v27, 0x0

    #@100
    aput-object v26, v2, v27

    #@102
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@105
    move-result-object v2

    #@106
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@109
    move-result-object v2

    #@10a
    move-object/from16 v0, v22

    #@10c
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@10f
    move-result-object v16

    #@110
    .line 526
    .local v16, "homeOIListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v16, :cond_3

    #@112
    .line 527
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@115
    move-result-object v2

    #@116
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@119
    move-result-object v18

    #@11a
    .local v18, "homeOIRoot$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@11d
    move-result v2

    #@11e
    if-eqz v2, :cond_3

    #@120
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@123
    move-result-object v17

    #@124
    check-cast v17, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@126
    .line 528
    .local v17, "homeOIRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "HomeOI"

    #@129
    move-object/from16 v0, v17

    #@12b
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@12e
    move-result-object v2

    #@12f
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@132
    move-result-object v15

    #@133
    .line 529
    .local v15, "homeOI":Ljava/lang/String;
    const-string/jumbo v2, "HomeOIRequired"

    #@136
    move-object/from16 v0, v17

    #@138
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@13b
    move-result-object v2

    #@13c
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@13f
    move-result-object v2

    #@140
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@143
    move-result v2

    #@144
    if-eqz v2, :cond_2

    #@146
    .line 530
    const/16 v2, 0x10

    #@148
    invoke-static {v15, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@14b
    move-result-wide v26

    #@14c
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14f
    move-result-object v2

    #@150
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@153
    goto :goto_2

    #@154
    .line 532
    :cond_2
    const/16 v2, 0x10

    #@156
    invoke-static {v15, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@159
    move-result-wide v26

    #@15a
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@15d
    move-result-object v2

    #@15e
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@161
    goto :goto_2

    #@162
    .line 537
    .end local v15    # "homeOI":Ljava/lang/String;
    .end local v17    # "homeOIRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v18    # "homeOIRoot$iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v6, Ljava/util/HashSet;

    #@164
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    #@167
    .line 539
    .local v6, "otherHomePartners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    #@168
    new-array v2, v2, [Ljava/lang/String;

    #@16a
    const-string/jumbo v26, "OtherHomePartners"

    #@16d
    const/16 v27, 0x0

    #@16f
    aput-object v26, v2, v27

    #@171
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@174
    move-result-object v2

    #@175
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@178
    move-result-object v2

    #@179
    move-object/from16 v0, v22

    #@17b
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@17e
    move-result-object v21

    #@17f
    .line 540
    .local v21, "otherListNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v21, :cond_4

    #@181
    .line 541
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@184
    move-result-object v2

    #@185
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@188
    move-result-object v13

    #@189
    .local v13, "fqdnNode$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@18c
    move-result v2

    #@18d
    if-eqz v2, :cond_4

    #@18f
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@192
    move-result-object v12

    #@193
    check-cast v12, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@195
    .line 542
    .local v12, "fqdnNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v2, "FQDN"

    #@198
    invoke-virtual {v12, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@19b
    move-result-object v2

    #@19c
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@19f
    move-result-object v2

    #@1a0
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1a3
    goto :goto_3

    #@1a4
    .line 546
    .end local v12    # "fqdnNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v13    # "fqdnNode$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v2, "Credential"

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1ac
    move-result-object v2

    #@1ad
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildCredential(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@1b0
    move-result-object v11

    #@1b1
    .line 548
    .local v11, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    new-instance v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@1b3
    invoke-direct/range {v2 .. v11}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;)V

    #@1b6
    return-object v2
.end method

.method private static buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)V
    .locals 32
    .param p0, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .param p1, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .param p2, "spInstance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 339
    invoke-static/range {p2 .. p2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    #@3
    move-result-object v27

    #@4
    const/16 v28, 0x0

    #@6
    const/16 v29, 0x0

    #@8
    const/16 v30, 0x0

    #@a
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
    .line 342
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
    .line 343
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
    .line 345
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
    .line 346
    .local v20, "nwkIDNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    #@52
    .line 347
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
    .line 349
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    add-int/lit8 v18, v17, 0x1

    #@6c
    .end local v17    # "instance":I
    .local v18, "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    #@6f
    move-result-object v27

    #@70
    const/16 v28, 0x0

    #@72
    const/16 v29, 0x0

    #@74
    const/16 v30, 0x0

    #@76
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
    .line 350
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
    .line 351
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@a3
    move-result-object v27

    #@a4
    if-eqz v27, :cond_0

    #@a6
    .line 352
    const-string/jumbo v27, "HESSID"

    #@a9
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
    const/16 v29, 0x0

    #@c2
    const/16 v30, 0x0

    #@c4
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
    .line 357
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
    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getIconURL()Ljava/lang/String;

    #@ed
    move-result-object v27

    #@ee
    if-eqz v27, :cond_2

    #@f0
    .line 360
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
    .line 363
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
    .line 365
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
    .line 386
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
    .line 388
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
    .line 389
    .local v23, "otherPartners":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    #@153
    .line 390
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
    .line 392
    .local v12, "fqdn":Ljava/lang/String;
    add-int/lit8 v18, v17, 0x1

    #@169
    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    #@16c
    move-result-object v27

    #@16d
    .line 393
    const/16 v28, 0x0

    #@16f
    const/16 v29, 0x0

    #@171
    const/16 v30, 0x0

    #@173
    .line 392
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
    .line 394
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
    .line 367
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
    .line 369
    .local v14, "homeOIList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/16 v17, 0x0

    #@1b1
    .line 370
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
    .line 372
    .local v21, "oi":Ljava/lang/Long;
    add-int/lit8 v18, v17, 0x1

    #@1c7
    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    #@1ca
    move-result-object v27

    #@1cb
    .line 373
    const/16 v28, 0x0

    #@1cd
    const/16 v29, 0x0

    #@1cf
    const/16 v30, 0x0

    #@1d1
    .line 372
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
    .line 374
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
    .line 375
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
    .line 377
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
    .line 379
    .restart local v21    # "oi":Ljava/lang/Long;
    add-int/lit8 v18, v17, 0x1

    #@236
    .end local v17    # "instance":I
    .restart local v18    # "instance":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getInstanceString(I)Ljava/lang/String;

    #@239
    move-result-object v27

    #@23a
    .line 380
    const/16 v28, 0x0

    #@23c
    const/16 v29, 0x0

    #@23e
    const/16 v30, 0x0

    #@240
    .line 379
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
    .line 381
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
    .line 382
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
    .line 398
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
    .line 399
    const-string/jumbo v27, "RoamingConsortiumOI"

    #@29c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    #@29f
    move-result-object v28

    #@2a0
    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getRCList(Ljava/util/Collection;)Ljava/lang/String;

    #@2a3
    move-result-object v28

    #@2a4
    const/16 v29, 0x0

    #@2a6
    const/16 v30, 0x0

    #@2a8
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
    .line 403
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
    .line 404
    .local v8, "credentialNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@2cd
    move-result-object v7

    #@2ce
    .line 405
    .local v7, "cred":Lcom/android/server/wifi/hotspot2/pps/Credential;
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@2d1
    move-result-object v19

    #@2d2
    .line 407
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
    .line 408
    const-string/jumbo v27, "CreationDate"

    #@2df
    .line 409
    sget-object v28, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

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
    .line 408
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
    .line 411
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
    .line 412
    const-string/jumbo v27, "ExpirationDate"

    #@30a
    .line 413
    sget-object v28, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

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
    .line 412
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
    .line 416
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
    .line 417
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
    .line 420
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
    .line 421
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
    .line 422
    const-string/jumbo v27, "EAPType"

    #@374
    .line 423
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
    .line 422
    const/16 v29, 0x0

    #@386
    .line 423
    const/16 v30, 0x0

    #@388
    .line 422
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
    .line 449
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
    .line 338
    return-void

    #@3ac
    .line 418
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
    .line 425
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
    .line 427
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
    .line 428
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
    .line 429
    const-string/jumbo v27, "Password"

    #@3f4
    .line 430
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
    .line 431
    const/16 v29, 0x0

    #@400
    .line 430
    invoke-static/range {v28 .. v29}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@403
    move-result-object v28

    #@404
    .line 429
    const/16 v29, 0x0

    #@406
    .line 431
    const/16 v30, 0x0

    #@408
    .line 429
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
    .line 432
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
    .line 433
    .local v9, "eapNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v27, "EAPType"

    #@425
    .line 434
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
    .line 433
    const/16 v29, 0x0

    #@437
    .line 434
    const/16 v30, 0x0

    #@439
    .line 433
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
    .line 435
    const-string/jumbo v28, "InnerMethod"

    #@447
    .line 436
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
    .line 435
    const/16 v29, 0x0

    #@453
    .line 436
    const/16 v30, 0x0

    #@455
    .line 435
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
    .line 438
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
    .line 440
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
    .line 441
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
    .line 442
    const-string/jumbo v27, "CertSHA256Fingerprint"

    #@49b
    .line 443
    invoke-virtual {v7}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getFingerPrint()[B

    #@49e
    move-result-object v28

    #@49f
    invoke-static/range {v28 .. v28}, Lcom/android/server/wifi/hotspot2/Utils;->toHex([B)Ljava/lang/String;

    #@4a2
    move-result-object v28

    #@4a3
    .line 442
    const/16 v29, 0x0

    #@4a5
    .line 443
    const/16 v30, 0x0

    #@4a7
    .line 442
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
    .line 446
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
    .line 180
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    #@2
    invoke-direct {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    #@5
    .line 181
    .local v0, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    const-string/jumbo v3, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    #@8
    invoke-virtual {v0, p0, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@b
    move-result-object v2

    #@c
    .line 182
    .local v2, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    #@f
    move-result-object v1

    #@10
    .line 183
    .local v1, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@13
    move-result v3

    #@14
    const/4 v4, 0x1

    #@15
    if-eq v3, v4, :cond_0

    #@17
    .line 184
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
    .line 186
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
    .locals 8
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
    .line 477
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@3
    move-result-object v5

    #@4
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getName()Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    const-string/jumbo v6, "PerProviderSubscription"

    #@b
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 479
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@14
    move-result-object v1

    #@15
    .line 486
    .local v1, "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    .line 488
    .local v0, "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    if-nez v1, :cond_1

    #@1c
    .line 489
    return-object v0

    #@1d
    .line 482
    .end local v0    # "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .end local v1    # "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_0
    const/4 v5, 0x1

    #@1e
    new-array v5, v5, [Ljava/lang/String;

    #@20
    const-string/jumbo v6, "PerProviderSubscription"

    #@23
    const/4 v7, 0x0

    #@24
    aput-object v6, v5, v7

    #@26
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@29
    move-result-object v2

    #@2a
    .line 483
    .local v2, "spPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@2d
    move-result-object v5

    #@2e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@35
    move-result-object v1

    #@36
    .restart local v1    # "spList":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    goto :goto_0

    #@37
    .line 491
    .end local v2    # "spPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->getChildren()Ljava/util/Collection;

    #@3a
    move-result-object v5

    #@3b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v4

    #@3f
    .local v4, "spRoot$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v5

    #@43
    if-eqz v5, :cond_2

    #@45
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v3

    #@49
    check-cast v3, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@4b
    .line 492
    .local v3, "spRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildHomeSP(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@4e
    move-result-object v5

    #@4f
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@52
    goto :goto_1

    #@53
    .line 495
    .end local v3    # "spRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_2
    return-object v0
.end method

.method private static fqdnList(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 323
    .local p0, "sps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 324
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@6
    .line 325
    .local v0, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v3

    #@a
    .local v3, "sp$iterator":Ljava/util/Iterator;
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
    check-cast v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@16
    .line 326
    .local v2, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    if-eqz v0, :cond_0

    #@18
    .line 327
    const/4 v0, 0x0

    #@19
    .line 332
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    goto :goto_0

    #@21
    .line 330
    :cond_0
    const-string/jumbo v4, ", "

    #@24
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    goto :goto_1

    #@28
    .line 334
    .end local v2    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    return-object v4
.end method

.method private static getBoolean(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Z
    .locals 1
    .param p0, "boolNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@0
    .prologue
    .line 652
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

.method private static getInstanceString(I)Ljava/lang/String;
    .locals 2
    .param p0, "instance"    # I

    #@0
    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "i"

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
    .line 660
    if-nez p0, :cond_0

    #@2
    .line 661
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@4
    const-string/jumbo v2, "Missing integer value"

    #@7
    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 664
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
    .line 665
    :catch_0
    move-exception v0

    #@15
    .line 666
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
    .line 671
    if-nez p0, :cond_0

    #@3
    .line 672
    return-object v1

    #@4
    .line 675
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
    .line 676
    :catch_0
    move-exception v0

    #@14
    .line 677
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
    .line 706
    if-nez p0, :cond_0

    #@2
    .line 707
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@4
    const-string/jumbo v1, "Missing byte value"

    #@7
    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 709
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
    .line 682
    if-nez p0, :cond_0

    #@3
    .line 683
    return-object v1

    #@4
    .line 686
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
    .line 687
    :catch_0
    move-exception v0

    #@12
    .line 688
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
    .line 461
    .local p0, "rcs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 462
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    #@6
    .line 463
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
    .line 464
    .local v2, "roamingConsortium":Ljava/lang/Long;
    if-eqz v1, :cond_0

    #@18
    .line 465
    const/4 v1, 0x0

    #@19
    .line 470
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
    .line 468
    :cond_0
    const/16 v4, 0x2c

    #@2c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    goto :goto_1

    #@30
    .line 472
    .end local v2    # "roamingConsortium":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    return-object v4
.end method

.method private static getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;
    .locals 1
    .param p0, "stringNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 656
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    :cond_0
    return-object v0
.end method

.method private static getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J
    .locals 6
    .param p0, "timeNode"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 693
    if-nez p0, :cond_0

    #@2
    .line 694
    const-wide/16 v4, -0x1

    #@4
    return-wide v4

    #@5
    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getValue()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 698
    .local v2, "timeText":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->DTFormat:Ljava/text/DateFormat;

    #@b
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@e
    move-result-object v0

    #@f
    .line 699
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-wide v4

    #@13
    return-wide v4

    #@14
    .line 700
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    #@15
    .line 701
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

.method private static rewriteMO(Ljava/util/Collection;Ljava/util/Map;Ljava/io/File;)V
    .locals 12
    .param p2, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .local p1, "current":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    const/4 v9, 0x0

    #@1
    .line 289
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    #@4
    .line 291
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@6
    const-string/jumbo v8, "PerProviderSubscription"

    #@9
    invoke-direct {v6, v9, v8, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 292
    .local v6, "ppsNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/4 v2, 0x0

    #@d
    .line 293
    .local v2, "instance":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "homeSP$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v8

    #@15
    if-eqz v8, :cond_0

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@1d
    .line 294
    .local v0, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    add-int/lit8 v3, v2, 0x1

    #@1f
    .end local v2    # "instance":I
    .local v3, "instance":I
    invoke-static {v0, v6, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)V

    #@22
    .line 295
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@25
    move-result-object v8

    #@26
    invoke-interface {p1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move v2, v3

    #@2a
    .end local v3    # "instance":I
    .restart local v2    # "instance":I
    goto :goto_0

    #@2b
    .line 298
    .end local v0    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_0
    new-instance v7, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@2d
    const-string/jumbo v8, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    #@30
    const-string/jumbo v10, "1.2"

    #@33
    invoke-direct {v7, v8, v10, v6}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    #@36
    .line 299
    .local v7, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    const/4 v4, 0x0

    #@37
    .line 300
    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    #@39
    new-instance v8, Ljava/io/FileOutputStream;

    #@3b
    const/4 v10, 0x0

    #@3c
    invoke-direct {v8, p2, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@3f
    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@42
    .line 301
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .local v5, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v7, v5}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    #@45
    .line 302
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@48
    .line 303
    if-eqz v5, :cond_1

    #@4a
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@4d
    :cond_1
    :goto_1
    if-eqz v9, :cond_5

    #@4f
    throw v9

    #@50
    :catch_0
    move-exception v9

    #@51
    goto :goto_1

    #@52
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v8

    #@53
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    :goto_2
    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@54
    :catchall_0
    move-exception v9

    #@55
    move-object v11, v9

    #@56
    move-object v9, v8

    #@57
    move-object v8, v11

    #@58
    :goto_3
    if-eqz v4, :cond_2

    #@5a
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    #@5d
    :cond_2
    :goto_4
    if-eqz v9, :cond_4

    #@5f
    throw v9

    #@60
    :catch_2
    move-exception v10

    #@61
    if-nez v9, :cond_3

    #@63
    move-object v9, v10

    #@64
    goto :goto_4

    #@65
    :cond_3
    if-eq v9, v10, :cond_2

    #@67
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@6a
    goto :goto_4

    #@6b
    :cond_4
    throw v8

    #@6c
    .line 287
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :cond_5
    return-void

    #@6d
    .line 303
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v8

    #@6e
    goto :goto_3

    #@6f
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v8

    #@70
    move-object v4, v5

    #@71
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .local v4, "out":Ljava/io/BufferedOutputStream;
    goto :goto_3

    #@72
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v8

    #@73
    move-object v4, v5

    #@74
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method

.method private static writeMO(Ljava/util/Collection;Ljava/io/File;)V
    .locals 12
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    const/4 v9, 0x0

    #@1
    .line 308
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@3
    const-string/jumbo v8, "PerProviderSubscription"

    #@6
    invoke-direct {v6, v9, v8, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 309
    .local v6, "ppsNode":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    const/4 v2, 0x0

    #@a
    .line 310
    .local v2, "instance":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "homeSP$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v8

    #@12
    if-eqz v8, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@1a
    .line 311
    .local v0, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    add-int/lit8 v3, v2, 0x1

    #@1c
    .end local v2    # "instance":I
    .local v3, "instance":I
    invoke-static {v0, v6, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildHomeSPTree(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;I)V

    #@1f
    move v2, v3

    #@20
    .end local v3    # "instance":I
    .restart local v2    # "instance":I
    goto :goto_0

    #@21
    .line 314
    .end local v0    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_0
    new-instance v7, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@23
    const-string/jumbo v8, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    #@26
    const-string/jumbo v10, "1.2"

    #@29
    invoke-direct {v7, v8, v10, v6}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    #@2c
    .line 315
    .local v7, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    const/4 v4, 0x0

    #@2d
    .line 316
    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    #@2f
    new-instance v8, Ljava/io/FileOutputStream;

    #@31
    const/4 v10, 0x0

    #@32
    invoke-direct {v8, p1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@35
    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@38
    .line 317
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .local v5, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v7, v5}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    #@3b
    .line 318
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@3e
    .line 319
    if-eqz v5, :cond_1

    #@40
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@43
    :cond_1
    :goto_1
    if-eqz v9, :cond_5

    #@45
    throw v9

    #@46
    :catch_0
    move-exception v9

    #@47
    goto :goto_1

    #@48
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v8

    #@49
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    :goto_2
    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    :catchall_0
    move-exception v9

    #@4b
    move-object v11, v9

    #@4c
    move-object v9, v8

    #@4d
    move-object v8, v11

    #@4e
    :goto_3
    if-eqz v4, :cond_2

    #@50
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    #@53
    :cond_2
    :goto_4
    if-eqz v9, :cond_4

    #@55
    throw v9

    #@56
    :catch_2
    move-exception v10

    #@57
    if-nez v9, :cond_3

    #@59
    move-object v9, v10

    #@5a
    goto :goto_4

    #@5b
    :cond_3
    if-eq v9, v10, :cond_2

    #@5d
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@60
    goto :goto_4

    #@61
    :cond_4
    throw v8

    #@62
    .line 306
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :cond_5
    return-void

    #@63
    .line 319
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v8

    #@64
    goto :goto_3

    #@65
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v8

    #@66
    move-object v4, v5

    #@67
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .local v4, "out":Ljava/io/BufferedOutputStream;
    goto :goto_3

    #@68
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v8

    #@69
    move-object v4, v5

    #@6a
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public addSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 11
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 190
    new-instance v2, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;

    #@3
    invoke-direct {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;-><init>()V

    #@6
    .line 191
    .local v2, "omaParser":Lcom/android/server/wifi/hotspot2/omadm/OMAParser;
    const-string/jumbo v8, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    #@9
    invoke-virtual {v2, p1, v8}, Lcom/android/server/wifi/hotspot2/omadm/OMAParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@c
    move-result-object v7

    #@d
    .line 192
    .local v7, "tree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    #@10
    move-result-object v6

    #@11
    .line 193
    .local v6, "spList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@14
    move-result v8

    #@15
    if-eq v8, v9, :cond_0

    #@17
    .line 194
    new-instance v8, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@19
    new-instance v9, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v10, "Expected exactly one HomeSP, got "

    #@21
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v9

    #@25
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@28
    move-result v10

    #@29
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v9

    #@2d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v9

    #@31
    invoke-direct {v8, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@34
    throw v8

    #@35
    .line 196
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v8

    #@39
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v5

    #@3d
    check-cast v5, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@3f
    .line 197
    .local v5, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    .line 198
    .local v0, "fqdn":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    #@45
    invoke-interface {v8, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v8

    #@49
    if-eqz v8, :cond_1

    #@4b
    .line 199
    new-instance v8, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@4d
    new-instance v9, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v10, "SP "

    #@55
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v9

    #@59
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v9

    #@5d
    const-string/jumbo v10, " already exists"

    #@60
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v9

    #@64
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v9

    #@68
    invoke-direct {v8, v9}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v8

    #@6c
    .line 202
    :cond_1
    const/4 v3, 0x0

    #@6d
    .line 204
    .local v3, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    #@6f
    new-instance v8, Ljava/io/FileOutputStream;

    #@71
    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    #@73
    const/4 v10, 0x1

    #@74
    invoke-direct {v8, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    #@77
    invoke-direct {v4, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7a
    .line 205
    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v7, v4}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->marshal(Ljava/io/OutputStream;)V

    #@7d
    .line 206
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@80
    .line 208
    if-eqz v4, :cond_2

    #@82
    .line 210
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@85
    .line 217
    :cond_2
    :goto_0
    return-object v5

    #@86
    .line 211
    :catch_0
    move-exception v1

    #@87
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0

    #@88
    .line 207
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v8

    #@89
    .line 208
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    :goto_1
    if-eqz v3, :cond_3

    #@8b
    .line 210
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@8e
    .line 207
    :cond_3
    :goto_2
    throw v8

    #@8f
    .line 211
    :catch_1
    move-exception v1

    #@90
    .restart local v1    # "ioe":Ljava/io/IOException;
    goto :goto_2

    #@91
    .line 207
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v8

    #@92
    move-object v3, v4

    #@93
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .local v3, "out":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method public addSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 3
    .param p1, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 226
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "HS2.0 not enabled on this device"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    #@f
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 229
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v2, "HS20 profile for "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 230
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 230
    const-string/jumbo v2, " already exists"

    #@38
    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 231
    return-void

    #@44
    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    #@47
    move-result-object v0

    #@48
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    new-instance v1, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v2, "Adding new HS20 profile for "

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 234
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    #@69
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    .line 235
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    #@72
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@75
    move-result-object v0

    #@76
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    #@78
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->writeMO(Ljava/util/Collection;Ljava/io/File;)V

    #@7b
    .line 224
    return-void
.end method

.method public getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 1
    .param p1, "fqdn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

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
    .line 146
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPpsFile()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public isConfigured()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 142
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

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
    .line 138
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    #@2
    return v0
.end method

.method public loadAllSPs()Ljava/util/List;
    .locals 11
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
    const/4 v7, 0x0

    #@1
    .line 151
    iget-boolean v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mEnabled:Z

    #@3
    if-eqz v6, :cond_1

    #@5
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    #@7
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_1

    #@d
    .line 155
    const/4 v0, 0x0

    #@e
    .local v0, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    #@10
    new-instance v6, Ljava/io/FileInputStream;

    #@12
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    #@14
    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@17
    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@1a
    .line 156
    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@1d
    move-result-object v2

    #@1e
    .line 157
    .local v2, "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    #@20
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    #@23
    .line 158
    if-nez v2, :cond_3

    #@25
    .line 159
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@28
    move-result-object v6

    #@29
    .line 176
    if-eqz v1, :cond_0

    #@2b
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@2e
    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    #@30
    throw v7

    #@31
    .line 152
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@34
    move-result-object v6

    #@35
    return-object v6

    #@36
    .line 176
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    :catch_0
    move-exception v7

    #@37
    goto :goto_0

    #@38
    .line 159
    :cond_2
    return-object v6

    #@39
    .line 162
    :cond_3
    :try_start_3
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildSPs(Lcom/android/server/wifi/hotspot2/omadm/MOTree;)Ljava/util/List;

    #@3c
    move-result-object v5

    #@3d
    .line 163
    .local v5, "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    if-eqz v5, :cond_9

    #@3f
    .line 164
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v4

    #@43
    .local v4, "sp$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v6

    #@47
    if-eqz v6, :cond_6

    #@49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v3

    #@4d
    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@4f
    .line 165
    .local v3, "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    #@51
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@54
    move-result-object v8

    #@55
    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v6

    #@59
    if-eqz v6, :cond_5

    #@5b
    .line 166
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@5d
    new-instance v8, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v9, "Multiple SPs for FQDN \'"

    #@65
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@6c
    move-result-object v9

    #@6d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v8

    #@71
    const-string/jumbo v9, "\'"

    #@74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v8

    #@7c
    invoke-direct {v6, v8}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@80
    .line 176
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v4    # "sp$iterator":Ljava/util/Iterator;
    .end local v5    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catch_1
    move-exception v6

    #@81
    move-object v0, v1

    #@82
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    :goto_2
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

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
    :goto_3
    if-eqz v0, :cond_4

    #@89
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    #@8c
    :cond_4
    :goto_4
    if-eqz v7, :cond_b

    #@8e
    throw v7

    #@8f
    .line 168
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v3    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v4    # "sp$iterator":Ljava/util/Iterator;
    .restart local v5    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_5
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    #@92
    move-result-object v6

    #@93
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@96
    move-result-object v6

    #@97
    new-instance v8, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v9, "retrieved "

    #@9f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v8

    #@a3
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@a6
    move-result-object v9

    #@a7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v8

    #@ab
    const-string/jumbo v9, " from PPS"

    #@ae
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v8

    #@b2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v8

    #@b6
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@b9
    goto :goto_1

    #@ba
    .line 176
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v3    # "sp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v4    # "sp$iterator":Ljava/util/Iterator;
    .end local v5    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catchall_1
    move-exception v6

    #@bb
    move-object v0, v1

    #@bc
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v0, "in":Ljava/io/BufferedInputStream;
    goto :goto_3

    #@bd
    .end local v0    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .restart local v4    # "sp$iterator":Ljava/util/Iterator;
    .restart local v5    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :cond_6
    if-eqz v1, :cond_7

    #@bf
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    #@c2
    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    #@c4
    throw v7

    #@c5
    :catch_2
    move-exception v7

    #@c6
    goto :goto_5

    #@c7
    .line 171
    :cond_8
    return-object v5

    #@c8
    .line 174
    .end local v4    # "sp$iterator":Ljava/util/Iterator;
    :cond_9
    :try_start_8
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@ca
    const-string/jumbo v8, "Failed to build HomeSP"

    #@cd
    invoke-direct {v6, v8}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@d0
    throw v6
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@d1
    .line 176
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v2    # "moTree":Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .end local v5    # "sps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    :catch_3
    move-exception v8

    #@d2
    if-nez v7, :cond_a

    #@d4
    move-object v7, v8

    #@d5
    goto :goto_4

    #@d6
    :cond_a
    if-eq v7, v8, :cond_4

    #@d8
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@db
    goto :goto_4

    #@dc
    :cond_b
    throw v6

    #@dd
    .local v0, "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v6

    #@de
    goto :goto_3

    #@df
    :catch_4
    move-exception v6

    #@e0
    goto :goto_2
.end method

.method public removeSP(Ljava/lang/String;)V
    .locals 3
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 240
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "No HS20 profile to delete for "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 241
    return-void

    #@28
    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    #@2b
    move-result-object v0

    #@2c
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, "Deleting HS20 profile for "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 244
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    #@49
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@4c
    move-result-object v0

    #@4d
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    #@4f
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->writeMO(Ljava/util/Collection;Ljava/io/File;)V

    #@52
    .line 238
    return-void
.end method

.method public updateAndSaveAllSps(Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 249
    .local p1, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    const/4 v0, 0x0

    #@1
    .line 250
    .local v0, "dirty":Z
    new-instance v4, Ljava/util/ArrayList;

    #@3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@6
    move-result v6

    #@7
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 252
    .local v4, "newSet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    new-instance v5, Ljava/util/HashMap;

    #@c
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    #@e
    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@11
    .line 253
    .local v5, "spClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v3

    #@15
    .local v3, "homeSP$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_2

    #@1b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@21
    .line 254
    .local v2, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    #@24
    move-result-object v6

    #@25
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    new-instance v7, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v8, "Passed HomeSP: "

    #@31
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 255
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@4a
    .line 256
    .local v1, "existing":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    if-nez v1, :cond_0

    #@4c
    .line 257
    const/4 v0, 0x1

    #@4d
    .line 258
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@50
    .line 259
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    #@53
    move-result-object v6

    #@54
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    const-string/jumbo v7, "New HomeSP"

    #@5b
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    goto :goto_0

    #@5f
    .line 261
    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->deepEquals(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Z

    #@62
    move-result v6

    #@63
    if-nez v6, :cond_1

    #@65
    .line 262
    const/4 v0, 0x1

    #@66
    .line 263
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v2, v6}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getClone(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@71
    move-result-object v6

    #@72
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@75
    .line 264
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    #@78
    move-result-object v6

    #@79
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@7c
    move-result-object v6

    #@7d
    new-instance v7, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v8, "Non-equal HomeSP: "

    #@85
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v7

    #@8d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v7

    #@91
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    goto :goto_0

    #@95
    .line 267
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@98
    .line 268
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    #@9b
    move-result-object v6

    #@9c
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@9f
    move-result-object v6

    #@a0
    new-instance v7, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v8, "Keeping HomeSP: "

    #@a8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v7

    #@ac
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v7

    #@b0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v7

    #@b4
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b7
    goto/16 :goto_0

    #@b9
    .line 272
    .end local v1    # "existing":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v2    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    #@bc
    move-result-object v6

    #@bd
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@c0
    move-result-object v7

    #@c1
    .line 273
    const-string/jumbo v8, "Saving all SPs (%s): current %s (%d), new %s (%d)"

    #@c4
    const/4 v6, 0x5

    #@c5
    new-array v9, v6, [Ljava/lang/Object;

    #@c7
    .line 274
    if-eqz v0, :cond_3

    #@c9
    const-string/jumbo v6, "dirty"

    #@cc
    :goto_1
    const/4 v10, 0x0

    #@cd
    aput-object v6, v9, v10

    #@cf
    .line 275
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    #@d1
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@d4
    move-result-object v6

    #@d5
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->fqdnList(Ljava/util/Collection;)Ljava/lang/String;

    #@d8
    move-result-object v6

    #@d9
    const/4 v10, 0x1

    #@da
    aput-object v6, v9, v10

    #@dc
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    #@de
    invoke-interface {v6}, Ljava/util/Map;->size()I

    #@e1
    move-result v6

    #@e2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e5
    move-result-object v6

    #@e6
    const/4 v10, 0x2

    #@e7
    aput-object v6, v9, v10

    #@e9
    .line 276
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->fqdnList(Ljava/util/Collection;)Ljava/lang/String;

    #@ec
    move-result-object v6

    #@ed
    const/4 v10, 0x3

    #@ee
    aput-object v6, v9, v10

    #@f0
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@f3
    move-result v6

    #@f4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f7
    move-result-object v6

    #@f8
    const/4 v10, 0x4

    #@f9
    aput-object v6, v9, v10

    #@fb
    .line 273
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@fe
    move-result-object v6

    #@ff
    .line 272
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    .line 278
    if-nez v0, :cond_4

    #@104
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    #@107
    move-result v6

    #@108
    if-eqz v6, :cond_4

    #@10a
    .line 279
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->getClass()Ljava/lang/Class;

    #@10d
    move-result-object v6

    #@10e
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@111
    move-result-object v6

    #@112
    const-string/jumbo v7, "Not persisting"

    #@115
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@118
    .line 280
    return-void

    #@119
    .line 274
    :cond_3
    const-string/jumbo v6, "clean"

    #@11c
    goto :goto_1

    #@11d
    .line 283
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mSPs:Ljava/util/Map;

    #@11f
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->mPpsFile:Ljava/io/File;

    #@121
    invoke-static {v4, v6, v7}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->rewriteMO(Ljava/util/Collection;Ljava/util/Map;Ljava/io/File;)V

    #@124
    .line 247
    return-void
.end method
