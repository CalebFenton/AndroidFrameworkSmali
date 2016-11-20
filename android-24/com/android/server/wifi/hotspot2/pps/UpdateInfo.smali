.class public Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;
    }
.end annotation


# instance fields
.field private final mCertFP:Ljava/lang/String;

.field private final mCertURL:Ljava/lang/String;

.field private final mInterval:J

.field private final mPassword:Ljava/lang/String;

.field private final mSPPClientInitiated:Z

.field private final mURI:Ljava/lang/String;

.field private final mUpdateRestriction:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

.field private final mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    .locals 9
    .param p1, "policyUpdate"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 36
    const-string/jumbo v3, "UpdateInterval"

    #@7
    invoke-static {p1, v3, v8}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J

    #@a
    move-result-wide v4

    #@b
    .line 37
    const-wide/32 v6, 0xea60

    #@e
    .line 36
    mul-long/2addr v4, v6

    #@f
    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mInterval:J

    #@11
    .line 39
    const-string/jumbo v3, "UpdateMethod"

    #@14
    .line 38
    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getSelection(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Ljava/lang/Boolean;

    #@1a
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@1d
    move-result v3

    #@1e
    iput-boolean v3, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mSPPClientInitiated:Z

    #@20
    .line 41
    const-string/jumbo v3, "Restriction"

    #@23
    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getSelection(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    #@29
    .line 40
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mUpdateRestriction:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    #@2b
    .line 42
    const-string/jumbo v3, "URI"

    #@2e
    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mURI:Ljava/lang/String;

    #@34
    .line 44
    const-string/jumbo v3, "UsernamePassword"

    #@37
    invoke-virtual {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3a
    move-result-object v2

    #@3b
    .line 45
    .local v2, "unp":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v2, :cond_0

    #@3d
    .line 46
    const-string/jumbo v3, "Username"

    #@40
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@43
    move-result-object v3

    #@44
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mUsername:Ljava/lang/String;

    #@4a
    .line 47
    const-string/jumbo v3, "Password"

    #@4d
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@50
    move-result-object v3

    #@51
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    .line 48
    .local v0, "pw":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    #@57
    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@59
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@5c
    move-result-object v4

    #@5d
    .line 49
    const/4 v5, 0x0

    #@5e
    .line 48
    invoke-static {v4, v5}, Landroid/util/Base64;->decode([BI)[B

    #@61
    move-result-object v4

    #@62
    .line 49
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@64
    .line 48
    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@67
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mPassword:Ljava/lang/String;

    #@69
    .line 56
    .end local v0    # "pw":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "TrustRoot"

    #@6c
    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@6f
    move-result-object v1

    #@70
    .line 57
    .local v1, "trustRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    const-string/jumbo v3, "CertURL"

    #@73
    invoke-static {v1, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    #@76
    move-result-object v3

    #@77
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mCertURL:Ljava/lang/String;

    #@79
    .line 58
    const-string/jumbo v3, "CertSHA256Fingerprint"

    #@7c
    invoke-static {v1, v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mCertFP:Ljava/lang/String;

    #@82
    .line 35
    return-void

    #@83
    .line 52
    .end local v1    # "trustRoot":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_0
    iput-object v8, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mUsername:Ljava/lang/String;

    #@85
    .line 53
    iput-object v8, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mPassword:Ljava/lang/String;

    #@87
    goto :goto_0
.end method


# virtual methods
.method public getCertFP()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mCertFP:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCertURL()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mCertURL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getInterval()J
    .locals 2

    #@0
    .prologue
    .line 62
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mInterval:J

    #@2
    return-wide v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mPassword:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mURI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUpdateRestriction()Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mUpdateRestriction:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    #@2
    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mUsername:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isSPPClientInitiated()Z
    .locals 1

    #@0
    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mSPPClientInitiated:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x27

    #@2
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "UpdateInfo{interval="

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    .line 96
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mInterval:J

    #@10
    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 97
    const-string/jumbo v1, ", SPPClientInitiated="

    #@1b
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 97
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mSPPClientInitiated:Z

    #@21
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 98
    const-string/jumbo v1, ", updateRestriction="

    #@28
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 98
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mUpdateRestriction:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    #@2e
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 99
    const-string/jumbo v1, ", URI=\'"

    #@35
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 99
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mURI:Ljava/lang/String;

    #@3b
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    .line 100
    const-string/jumbo v1, ", username=\'"

    #@46
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 100
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mUsername:Ljava/lang/String;

    #@4c
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    .line 101
    const-string/jumbo v1, ", password="

    #@57
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 101
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mPassword:Ljava/lang/String;

    #@5d
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    .line 102
    const-string/jumbo v1, ", certURL=\'"

    #@64
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    .line 102
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mCertURL:Ljava/lang/String;

    #@6a
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    .line 103
    const-string/jumbo v1, ", certFP=\'"

    #@75
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    .line 103
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;->mCertFP:Ljava/lang/String;

    #@7b
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    .line 104
    const/16 v1, 0x7d

    #@85
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v0

    #@8d
    return-object v0
.end method
