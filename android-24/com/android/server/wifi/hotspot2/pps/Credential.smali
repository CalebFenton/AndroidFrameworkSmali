.class public Lcom/android/server/wifi/hotspot2/pps/Credential;
.super Ljava/lang/Object;
.source "Credential.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
    }
.end annotation


# static fields
.field public static final CertTypeIEEE:Ljava/lang/String; = "802.1ar"

.field public static final CertTypeX509:Ljava/lang/String; = "x509v3"


# instance fields
.field private final mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

.field private final mCheckAAACert:Z

.field private final mCtime:J

.field private final mDisregardPassword:Z

.field private final mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

.field private final mExpTime:J

.field private final mFingerPrint:[B

.field private final mImsi:Lcom/android/server/wifi/IMSIParameter;

.field private final mMachineManaged:Z

.field private final mPassword:Ljava/lang/String;

.field private final mRealm:Ljava/lang/String;

.field private final mSTokenApp:Ljava/lang/String;

.field private final mShare:Z

.field private final mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/IMSIParameter;)V
    .locals 3
    .param p1, "ctime"    # J
    .param p3, "expTime"    # J
    .param p5, "realm"    # Ljava/lang/String;
    .param p6, "checkAAACert"    # Z
    .param p7, "eapMethod"    # Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .param p8, "imsi"    # Lcom/android/server/wifi/IMSIParameter;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 97
    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    #@7
    .line 98
    iput-wide p3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    #@9
    .line 99
    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    #@b
    .line 100
    iput-boolean p6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    #@d
    .line 101
    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@f
    .line 102
    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    #@11
    .line 104
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@13
    .line 105
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    #@15
    .line 107
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    #@17
    .line 108
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    #@19
    .line 109
    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    #@1b
    .line 110
    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    #@1d
    .line 111
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    #@1f
    .line 112
    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    #@21
    .line 96
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;[B)V
    .locals 3
    .param p1, "ctime"    # J
    .param p3, "expTime"    # J
    .param p5, "realm"    # Ljava/lang/String;
    .param p6, "checkAAACert"    # Z
    .param p7, "eapMethod"    # Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .param p8, "certType"    # Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
    .param p9, "fingerPrint"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 77
    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    #@7
    .line 78
    iput-wide p3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    #@9
    .line 79
    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    #@b
    .line 80
    iput-boolean p6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    #@d
    .line 81
    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@f
    .line 82
    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@11
    .line 83
    iput-object p9, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    #@13
    .line 85
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    #@15
    .line 86
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    #@17
    .line 87
    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    #@19
    .line 88
    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    #@1b
    .line 89
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    #@1d
    .line 90
    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    #@1f
    .line 92
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    #@21
    .line 76
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;ZLcom/android/server/wifi/anqp/eap/EAPMethod;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3
    .param p1, "ctime"    # J
    .param p3, "expTime"    # J
    .param p5, "realm"    # Ljava/lang/String;
    .param p6, "checkAAACert"    # Z
    .param p7, "eapMethod"    # Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .param p8, "userName"    # Ljava/lang/String;
    .param p9, "password"    # Ljava/lang/String;
    .param p10, "machineManaged"    # Z
    .param p11, "stApp"    # Ljava/lang/String;
    .param p12, "share"    # Z

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-wide p1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    #@5
    .line 51
    iput-wide p3, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    #@7
    .line 52
    iput-object p5, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    #@9
    .line 53
    iput-boolean p6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    #@b
    .line 54
    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@d
    .line 55
    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    #@f
    .line 57
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    .line 58
    const/4 v1, 0x0

    #@16
    invoke-static {p9, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@19
    move-result-object v0

    #@1a
    .line 59
    .local v0, "pwOctets":[B
    new-instance v1, Ljava/lang/String;

    #@1c
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@1e
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@21
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    #@23
    .line 63
    .end local v0    # "pwOctets":[B
    :goto_0
    const/4 v1, 0x0

    #@24
    iput-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    #@26
    .line 65
    iput-boolean p10, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    #@28
    .line 66
    iput-object p11, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    #@2a
    .line 67
    iput-boolean p12, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    #@2c
    .line 69
    const/4 v1, 0x0

    #@2d
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@2f
    .line 70
    const/4 v1, 0x0

    #@30
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    #@32
    .line 72
    const/4 v1, 0x0

    #@33
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    #@35
    .line 49
    return-void

    #@36
    .line 61
    :cond_0
    const/4 v1, 0x0

    #@37
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    #@39
    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/security/KeyStore;Z)V
    .locals 12
    .param p1, "enterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v10, -0x1

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v9, 0x0

    #@4
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 134
    iput-wide v10, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    #@9
    .line 135
    iput-wide v10, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    #@b
    .line 136
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getRealm()Ljava/lang/String;

    #@e
    move-result-object v7

    #@f
    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    #@11
    .line 137
    iput-boolean v9, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    #@13
    .line 138
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@16
    move-result v7

    #@17
    .line 139
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    #@1a
    move-result v10

    #@1b
    .line 138
    invoke-static {v7, v10}, Lcom/android/server/wifi/hotspot2/pps/Credential;->mapEapMethod(II)Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@1e
    move-result-object v7

    #@1f
    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@21
    .line 140
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@23
    invoke-virtual {v7}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@26
    move-result-object v7

    #@27
    sget-object v10, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@29
    if-ne v7, v10, :cond_1

    #@2b
    sget-object v7, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->x509v3:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@2d
    :goto_0
    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@2f
    .line 143
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    #@32
    move-result-object v7

    #@33
    if-eqz v7, :cond_2

    #@35
    .line 146
    :try_start_0
    const-string/jumbo v7, "SHA-256"

    #@38
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@3b
    move-result-object v1

    #@3c
    .line 147
    .local v1, "digester":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    move-result-object v2

    #@48
    .line 177
    .end local v1    # "digester":Ljava/security/MessageDigest;
    :goto_1
    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    #@4a
    .line 178
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPlmn()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    .line 179
    .local v5, "imsi":Ljava/lang/String;
    if-eqz v5, :cond_0

    #@50
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@53
    move-result v7

    #@54
    if-nez v7, :cond_5

    #@56
    :cond_0
    move-object v7, v8

    #@57
    :goto_2
    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    #@59
    .line 180
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    #@5f
    .line 181
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    #@62
    move-result-object v7

    #@63
    iput-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    #@65
    .line 182
    if-eqz p3, :cond_6

    #@67
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    #@69
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@6c
    move-result v7

    #@6d
    const/4 v10, 0x2

    #@6e
    if-ge v7, v10, :cond_6

    #@70
    const/4 v7, 0x1

    #@71
    :goto_3
    iput-boolean v7, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    #@73
    .line 183
    iput-boolean v9, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    #@75
    .line 184
    iput-object v8, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    #@77
    .line 185
    iput-boolean v9, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    #@79
    .line 133
    return-void

    #@7a
    .end local v5    # "imsi":Ljava/lang/String;
    :cond_1
    move-object v7, v8

    #@7b
    .line 140
    goto :goto_0

    #@7c
    .line 148
    :catch_0
    move-exception v3

    #@7d
    .line 149
    .local v3, "gse":Ljava/security/GeneralSecurityException;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getClass()Ljava/lang/Class;

    #@80
    move-result-object v7

    #@81
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@84
    move-result-object v7

    #@85
    .line 150
    new-instance v10, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v11, "Failed to generate certificate fingerprint: "

    #@8d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v10

    #@91
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v10

    #@95
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v10

    #@99
    .line 149
    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9c
    .line 151
    const/4 v2, 0x0

    #@9d
    .local v2, "fingerPrint":[B
    goto :goto_1

    #@9e
    .line 153
    .end local v2    # "fingerPrint":[B
    .end local v3    # "gse":Ljava/security/GeneralSecurityException;
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    #@a1
    move-result-object v7

    #@a2
    if-eqz v7, :cond_4

    #@a4
    .line 154
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    .line 155
    .local v0, "alias":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v10, "USRCERT_"

    #@b0
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v7

    #@b4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v7

    #@b8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v7

    #@bc
    invoke-virtual {p2, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    #@bf
    move-result-object v6

    #@c0
    .line 156
    .local v6, "octets":[B
    if-eqz v6, :cond_3

    #@c2
    .line 158
    :try_start_1
    const-string/jumbo v7, "SHA-256"

    #@c5
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@c8
    move-result-object v1

    #@c9
    .line 159
    .restart local v1    # "digester":Ljava/security/MessageDigest;
    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@cc
    move-result-object v2

    #@cd
    .local v2, "fingerPrint":[B
    goto/16 :goto_1

    #@cf
    .line 160
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "fingerPrint":[B
    :catch_1
    move-exception v3

    #@d0
    .line 161
    .restart local v3    # "gse":Ljava/security/GeneralSecurityException;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getClass()Ljava/lang/Class;

    #@d3
    move-result-object v7

    #@d4
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@d7
    move-result-object v7

    #@d8
    new-instance v10, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v11, "Failed to construct digest: "

    #@e0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v10

    #@e4
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v10

    #@e8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v10

    #@ec
    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ef
    .line 162
    const/4 v2, 0x0

    #@f0
    .local v2, "fingerPrint":[B
    goto/16 :goto_1

    #@f2
    .line 167
    .end local v2    # "fingerPrint":[B
    .end local v3    # "gse":Ljava/security/GeneralSecurityException;
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    #@f5
    move-result-object v7

    #@f6
    .line 168
    const/4 v10, 0x0

    #@f7
    .line 167
    invoke-static {v7, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    #@fa
    move-result-object v2

    #@fb
    .local v2, "fingerPrint":[B
    goto/16 :goto_1

    #@fd
    .line 169
    .end local v2    # "fingerPrint":[B
    :catch_2
    move-exception v4

    #@fe
    .line 170
    .local v4, "ie":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getClass()Ljava/lang/Class;

    #@101
    move-result-object v7

    #@102
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@105
    move-result-object v7

    #@106
    const-string/jumbo v10, "Bad base 64 alias"

    #@109
    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10c
    .line 171
    const/4 v2, 0x0

    #@10d
    .local v2, "fingerPrint":[B
    goto/16 :goto_1

    #@10f
    .line 175
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "fingerPrint":[B
    .end local v4    # "ie":Ljava/lang/IllegalArgumentException;
    .end local v6    # "octets":[B
    :cond_4
    const/4 v2, 0x0

    #@110
    .restart local v2    # "fingerPrint":[B
    goto/16 :goto_1

    #@112
    .line 179
    .end local v2    # "fingerPrint":[B
    .restart local v5    # "imsi":Ljava/lang/String;
    :cond_5
    new-instance v7, Lcom/android/server/wifi/IMSIParameter;

    #@114
    invoke-direct {v7, v5}, Lcom/android/server/wifi/IMSIParameter;-><init>(Ljava/lang/String;)V

    #@117
    goto/16 :goto_2

    #@119
    :cond_6
    move v7, v9

    #@11a
    .line 182
    goto/16 :goto_3
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/pps/Credential;Ljava/lang/String;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/wifi/hotspot2/pps/Credential;
    .param p2, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 116
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    #@5
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    #@7
    .line 117
    iget-wide v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    #@9
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    #@b
    .line 118
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    #@d
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    #@f
    .line 119
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    #@11
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    #@13
    .line 120
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    #@15
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    #@17
    .line 121
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    #@19
    .line 122
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    #@1b
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    #@1d
    .line 123
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    #@1f
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    #@21
    .line 124
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    #@23
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    #@25
    .line 125
    iget-boolean v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    #@27
    iput-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    #@29
    .line 126
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@2b
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@2d
    .line 127
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@2f
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@31
    .line 128
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    #@33
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    #@35
    .line 129
    iget-object v0, p1, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    #@37
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    #@39
    .line 115
    return-void
.end method

.method public static mapCertType(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
    .locals 3
    .param p0, "certType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    const-string/jumbo v0, "x509v3"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 190
    sget-object v0, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->x509v3:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@b
    return-object v0

    #@c
    .line 191
    :cond_0
    const-string/jumbo v0, "802.1ar"

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 192
    sget-object v0, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->IEEE:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@17
    return-object v0

    #@18
    .line 194
    :cond_1
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "Invalid cert type: \'"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "\'"

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0
.end method

.method private static mapEapMethod(II)Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .locals 5
    .param p0, "eapMethod"    # I
    .param p1, "phase2Method"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 199
    packed-switch p0, :pswitch_data_0

    #@4
    .line 228
    :pswitch_0
    if-ltz p0, :cond_0

    #@6
    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    #@8
    array-length v2, v2

    #@9
    if-ge p0, v2, :cond_0

    #@b
    .line 229
    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    #@d
    aget-object v1, v2, p0

    #@f
    .line 233
    .local v1, "methodName":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/IOException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "EAP method id "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, " is not valid for Passpoint"

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 201
    .end local v1    # "methodName":Ljava/lang/String;
    :pswitch_1
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@32
    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@34
    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@37
    return-object v2

    #@38
    .line 205
    :pswitch_2
    packed-switch p1, :pswitch_data_1

    #@3b
    .line 216
    new-instance v2, Ljava/io/IOException;

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v4, "TTLS phase2 method "

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    .line 217
    const-string/jumbo v4, " not valid for Passpoint"

    #@50
    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v2

    #@5c
    .line 207
    :pswitch_3
    new-instance v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    #@5e
    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->PAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@60
    invoke-direct {v0, v2}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)V

    #@63
    .line 219
    .local v0, "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    :goto_1
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@65
    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@67
    invoke-direct {v2, v3, v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@6a
    return-object v2

    #@6b
    .line 210
    .end local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    :pswitch_4
    new-instance v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    #@6d
    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@6f
    invoke-direct {v0, v2}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)V

    #@72
    .line 211
    .restart local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    goto :goto_1

    #@73
    .line 213
    .end local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    :pswitch_5
    new-instance v0, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    #@75
    sget-object v2, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAPv2:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@77
    invoke-direct {v0, v2}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)V

    #@7a
    .line 214
    .restart local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    goto :goto_1

    #@7b
    .line 221
    .end local v0    # "inner":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    :pswitch_6
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@7d
    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@7f
    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@82
    return-object v2

    #@83
    .line 223
    :pswitch_7
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@85
    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@87
    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@8a
    return-object v2

    #@8b
    .line 225
    :pswitch_8
    new-instance v2, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@8d
    sget-object v3, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@8f
    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/anqp/eap/EAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@92
    return-object v2

    #@93
    .line 231
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@96
    move-result-object v1

    #@97
    .restart local v1    # "methodName":Ljava/lang/String;
    goto/16 :goto_0

    #@99
    .line 199
    nop

    #@9a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    #@aa
    .line 205
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/Object;
    .param p1, "s2"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 312
    if-nez p0, :cond_1

    #@3
    .line 313
    if-nez p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0

    #@7
    .line 316
    :cond_1
    if-eqz p1, :cond_2

    #@9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :cond_2
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 279
    if-ne p0, p1, :cond_0

    #@4
    return v7

    #@5
    .line 280
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    :cond_1
    return v6

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 282
    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@15
    .line 284
    .local v0, "that":Lcom/android/server/wifi/hotspot2/pps/Credential;
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    #@17
    iget-boolean v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    #@19
    if-eq v1, v2, :cond_3

    #@1b
    return v6

    #@1c
    .line 285
    :cond_3
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    #@1e
    iget-wide v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    #@20
    cmp-long v1, v2, v4

    #@22
    if-eqz v1, :cond_4

    #@24
    return v6

    #@25
    .line 286
    :cond_4
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    #@27
    iget-wide v4, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    #@29
    cmp-long v1, v2, v4

    #@2b
    if-eqz v1, :cond_5

    #@2d
    return v6

    #@2e
    .line 287
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    #@30
    iget-boolean v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    #@32
    if-eq v1, v2, :cond_6

    #@34
    return v6

    #@35
    .line 288
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    #@37
    iget-boolean v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    #@39
    if-eq v1, v2, :cond_7

    #@3b
    return v6

    #@3c
    .line 289
    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@3e
    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@40
    if-eq v1, v2, :cond_8

    #@42
    return v6

    #@43
    .line 290
    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@45
    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@47
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v1

    #@4b
    if-nez v1, :cond_9

    #@4d
    return v6

    #@4e
    .line 291
    :cond_9
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    #@50
    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    #@52
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@55
    move-result v1

    #@56
    if-nez v1, :cond_a

    #@58
    return v6

    #@59
    .line 292
    :cond_a
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    #@5b
    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    #@5d
    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@60
    move-result v1

    #@61
    if-nez v1, :cond_b

    #@63
    .line 293
    return v6

    #@64
    .line 296
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    #@66
    if-nez v1, :cond_c

    #@68
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    #@6a
    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    #@6c
    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_d

    #@72
    .line 300
    :cond_c
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    #@74
    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v1

    #@7a
    if-nez v1, :cond_e

    #@7c
    return v6

    #@7d
    .line 297
    :cond_d
    return v6

    #@7e
    .line 301
    :cond_e
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    #@80
    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    #@82
    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@85
    move-result v1

    #@86
    if-nez v1, :cond_f

    #@88
    .line 302
    return v6

    #@89
    .line 304
    :cond_f
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    #@8b
    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    #@8d
    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@90
    move-result v1

    #@91
    if-nez v1, :cond_10

    #@93
    .line 305
    return v6

    #@94
    .line 308
    :cond_10
    return v7
.end method

.method public getCertType()Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;
    .locals 1

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@2
    return-object v0
.end method

.method public getCtime()J
    .locals 2

    #@0
    .prologue
    .line 270
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    #@2
    return-wide v0
.end method

.method public getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;
    .locals 1

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@2
    return-object v0
.end method

.method public getExpTime()J
    .locals 2

    #@0
    .prologue
    .line 274
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    #@2
    return-wide v0
.end method

.method public getFingerPrint()[B
    .locals 1

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    #@2
    return-object v0
.end method

.method public getImsi()Lcom/android/server/wifi/IMSIParameter;
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    #@2
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasDisregardPassword()Z
    .locals 1

    #@0
    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 322
    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    #@6
    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    #@8
    ushr-long/2addr v6, v8

    #@9
    xor-long/2addr v4, v6

    #@a
    long-to-int v0, v4

    #@b
    .line 323
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@d
    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    #@f
    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    #@11
    ushr-long/2addr v6, v8

    #@12
    xor-long/2addr v4, v6

    #@13
    long-to-int v4, v4

    #@14
    add-int v0, v1, v4

    #@16
    .line 324
    mul-int/lit8 v1, v0, 0x1f

    #@18
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    #@1a
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    #@1d
    move-result v4

    #@1e
    add-int v0, v1, v4

    #@20
    .line 325
    mul-int/lit8 v4, v0, 0x1f

    #@22
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    #@24
    if-eqz v1, :cond_1

    #@26
    move v1, v2

    #@27
    :goto_0
    add-int v0, v4, v1

    #@29
    .line 326
    mul-int/lit8 v4, v0, 0x1f

    #@2b
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    #@2d
    if-eqz v1, :cond_2

    #@2f
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    #@31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@34
    move-result v1

    #@35
    :goto_1
    add-int v0, v4, v1

    #@37
    .line 327
    mul-int/lit8 v4, v0, 0x1f

    #@39
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    #@3b
    if-eqz v1, :cond_3

    #@3d
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    #@3f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@42
    move-result v1

    #@43
    :goto_2
    add-int v0, v4, v1

    #@45
    .line 328
    mul-int/lit8 v4, v0, 0x1f

    #@47
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    #@49
    if-eqz v1, :cond_4

    #@4b
    move v1, v2

    #@4c
    :goto_3
    add-int v0, v4, v1

    #@4e
    .line 329
    mul-int/lit8 v4, v0, 0x1f

    #@50
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    #@52
    if-eqz v1, :cond_5

    #@54
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    #@56
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@59
    move-result v1

    #@5a
    :goto_4
    add-int v0, v4, v1

    #@5c
    .line 330
    mul-int/lit8 v1, v0, 0x1f

    #@5e
    iget-boolean v4, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    #@60
    if-eqz v4, :cond_6

    #@62
    :goto_5
    add-int v0, v1, v2

    #@64
    .line 331
    mul-int/lit8 v1, v0, 0x1f

    #@66
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@68
    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->hashCode()I

    #@6b
    move-result v2

    #@6c
    add-int v0, v1, v2

    #@6e
    .line 332
    mul-int/lit8 v2, v0, 0x1f

    #@70
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@72
    if-eqz v1, :cond_7

    #@74
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@76
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->hashCode()I

    #@79
    move-result v1

    #@7a
    :goto_6
    add-int v0, v2, v1

    #@7c
    .line 333
    mul-int/lit8 v2, v0, 0x1f

    #@7e
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    #@80
    if-eqz v1, :cond_8

    #@82
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    #@84
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    #@87
    move-result v1

    #@88
    :goto_7
    add-int v0, v2, v1

    #@8a
    .line 334
    mul-int/lit8 v1, v0, 0x1f

    #@8c
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    #@8e
    if-eqz v2, :cond_0

    #@90
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    #@92
    invoke-virtual {v2}, Lcom/android/server/wifi/IMSIParameter;->hashCode()I

    #@95
    move-result v3

    #@96
    :cond_0
    add-int v0, v1, v3

    #@98
    .line 335
    return v0

    #@99
    :cond_1
    move v1, v3

    #@9a
    .line 325
    goto :goto_0

    #@9b
    :cond_2
    move v1, v3

    #@9c
    .line 326
    goto :goto_1

    #@9d
    :cond_3
    move v1, v3

    #@9e
    .line 327
    goto :goto_2

    #@9f
    :cond_4
    move v1, v3

    #@a0
    .line 328
    goto :goto_3

    #@a1
    :cond_5
    move v1, v3

    #@a2
    .line 329
    goto :goto_4

    #@a3
    :cond_6
    move v2, v3

    #@a4
    .line 330
    goto :goto_5

    #@a5
    :cond_7
    move v1, v3

    #@a6
    .line 332
    goto :goto_6

    #@a7
    :cond_8
    move v1, v3

    #@a8
    .line 333
    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x27

    #@2
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "Credential{mCtime="

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    .line 341
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCtime:J

    #@10
    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->toUTCString(J)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 342
    const-string/jumbo v1, ", mExpTime="

    #@1b
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 342
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mExpTime:J

    #@21
    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->toUTCString(J)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 343
    const-string/jumbo v1, ", mRealm=\'"

    #@2c
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 343
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    #@32
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 344
    const-string/jumbo v1, ", mCheckAAACert="

    #@3d
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 344
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCheckAAACert:Z

    #@43
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 345
    const-string/jumbo v1, ", mUserName=\'"

    #@4a
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 345
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mUserName:Ljava/lang/String;

    #@50
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    .line 346
    const-string/jumbo v1, ", mPassword=\'"

    #@5b
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 346
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mPassword:Ljava/lang/String;

    #@61
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    .line 347
    const-string/jumbo v1, ", mDisregardPassword="

    #@6c
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    .line 347
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mDisregardPassword:Z

    #@72
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@75
    move-result-object v0

    #@76
    .line 348
    const-string/jumbo v1, ", mMachineManaged="

    #@79
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    .line 348
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mMachineManaged:Z

    #@7f
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    .line 349
    const-string/jumbo v1, ", mSTokenApp=\'"

    #@86
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    .line 349
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mSTokenApp:Ljava/lang/String;

    #@8c
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v0

    #@90
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@93
    move-result-object v0

    #@94
    .line 350
    const-string/jumbo v1, ", mShare="

    #@97
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    .line 350
    iget-boolean v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mShare:Z

    #@9d
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    .line 351
    const-string/jumbo v1, ", mEAPMethod="

    #@a4
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    .line 351
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mEAPMethod:Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@aa
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v0

    #@ae
    .line 352
    const-string/jumbo v1, ", mCertType="

    #@b1
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v0

    #@b5
    .line 352
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mCertType:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@b7
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v0

    #@bb
    .line 353
    const-string/jumbo v1, ", mFingerPrint="

    #@be
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v0

    #@c2
    .line 353
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mFingerPrint:[B

    #@c4
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->toHexString([B)Ljava/lang/String;

    #@c7
    move-result-object v1

    #@c8
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v0

    #@cc
    .line 354
    const-string/jumbo v1, ", mImsi=\'"

    #@cf
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v0

    #@d3
    .line 354
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Credential;->mImsi:Lcom/android/server/wifi/IMSIParameter;

    #@d5
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v0

    #@d9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v0

    #@dd
    .line 355
    const/16 v1, 0x7d

    #@df
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v0

    #@e7
    return-object v0
.end method
