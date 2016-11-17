.class public Lsun/security/x509/OIDMap;
.super Ljava/lang/Object;
.source "OIDMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/x509/OIDMap$OIDInfo;
    }
.end annotation


# static fields
.field private static final AUTH_INFO_ACCESS:Ljava/lang/String; = "x509.info.extensions.AuthorityInfoAccess"

.field private static final AUTH_KEY_IDENTIFIER:Ljava/lang/String; = "x509.info.extensions.AuthorityKeyIdentifier"

.field private static final BASIC_CONSTRAINTS:Ljava/lang/String; = "x509.info.extensions.BasicConstraints"

.field private static final CERT_ISSUER:Ljava/lang/String; = "x509.info.extensions.CertificateIssuer"

.field private static final CERT_POLICIES:Ljava/lang/String; = "x509.info.extensions.CertificatePolicies"

.field private static final CRL_DIST_POINTS:Ljava/lang/String; = "x509.info.extensions.CRLDistributionPoints"

.field private static final CRL_NUMBER:Ljava/lang/String; = "x509.info.extensions.CRLNumber"

.field private static final CRL_REASON:Ljava/lang/String; = "x509.info.extensions.CRLReasonCode"

.field private static final DELTA_CRL_INDICATOR:Ljava/lang/String; = "x509.info.extensions.DeltaCRLIndicator"

.field private static final EXT_KEY_USAGE:Ljava/lang/String; = "x509.info.extensions.ExtendedKeyUsage"

.field private static final FRESHEST_CRL:Ljava/lang/String; = "x509.info.extensions.FreshestCRL"

.field private static final INHIBIT_ANY_POLICY:Ljava/lang/String; = "x509.info.extensions.InhibitAnyPolicy"

.field private static final ISSUER_ALT_NAME:Ljava/lang/String; = "x509.info.extensions.IssuerAlternativeName"

.field private static final ISSUING_DIST_POINT:Ljava/lang/String; = "x509.info.extensions.IssuingDistributionPoint"

.field private static final KEY_USAGE:Ljava/lang/String; = "x509.info.extensions.KeyUsage"

.field private static final NAME_CONSTRAINTS:Ljava/lang/String; = "x509.info.extensions.NameConstraints"

.field private static final NETSCAPE_CERT:Ljava/lang/String; = "x509.info.extensions.NetscapeCertType"

.field private static final NetscapeCertType_data:[I

.field private static final OCSPNOCHECK:Ljava/lang/String; = "x509.info.extensions.OCSPNoCheck"

.field private static final POLICY_CONSTRAINTS:Ljava/lang/String; = "x509.info.extensions.PolicyConstraints"

.field private static final POLICY_MAPPINGS:Ljava/lang/String; = "x509.info.extensions.PolicyMappings"

.field private static final PRIVATE_KEY_USAGE:Ljava/lang/String; = "x509.info.extensions.PrivateKeyUsage"

.field private static final ROOT:Ljava/lang/String; = "x509.info.extensions"

.field private static final SUBJECT_INFO_ACCESS:Ljava/lang/String; = "x509.info.extensions.SubjectInfoAccess"

.field private static final SUB_ALT_NAME:Ljava/lang/String; = "x509.info.extensions.SubjectAlternativeName"

.field private static final SUB_KEY_IDENTIFIER:Ljava/lang/String; = "x509.info.extensions.SubjectKeyIdentifier"

.field private static final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/x509/OIDMap$OIDInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final oidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/x509/OIDMap$OIDInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x7

    #@1
    .line 108
    new-array v0, v3, [I

    #@3
    fill-array-data v0, :array_0

    #@6
    .line 107
    sput-object v0, Lsun/security/x509/OIDMap;->NetscapeCertType_data:[I

    #@8
    .line 117
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    sput-object v0, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    #@f
    .line 118
    new-instance v0, Ljava/util/HashMap;

    #@11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@14
    sput-object v0, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    #@16
    .line 119
    const-string/jumbo v0, "x509.info.extensions.SubjectKeyIdentifier"

    #@19
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    #@1b
    .line 120
    const-class v2, Lsun/security/x509/SubjectKeyIdentifierExtension;

    #@1d
    .line 119
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@20
    .line 121
    const-string/jumbo v0, "x509.info.extensions.KeyUsage"

    #@23
    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@25
    .line 122
    const-class v2, Lsun/security/x509/KeyUsageExtension;

    #@27
    .line 121
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@2a
    .line 123
    const-string/jumbo v0, "x509.info.extensions.PrivateKeyUsage"

    #@2d
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@2f
    .line 124
    const-class v2, Lsun/security/x509/PrivateKeyUsageExtension;

    #@31
    .line 123
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@34
    .line 125
    const-string/jumbo v0, "x509.info.extensions.SubjectAlternativeName"

    #@37
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@39
    .line 126
    const-class v2, Lsun/security/x509/SubjectAlternativeNameExtension;

    #@3b
    .line 125
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@3e
    .line 127
    const-string/jumbo v0, "x509.info.extensions.IssuerAlternativeName"

    #@41
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    #@43
    .line 128
    const-class v2, Lsun/security/x509/IssuerAlternativeNameExtension;

    #@45
    .line 127
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@48
    .line 129
    const-string/jumbo v0, "x509.info.extensions.BasicConstraints"

    #@4b
    sget-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@4d
    .line 130
    const-class v2, Lsun/security/x509/BasicConstraintsExtension;

    #@4f
    .line 129
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@52
    .line 131
    const-string/jumbo v0, "x509.info.extensions.CRLNumber"

    #@55
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    #@57
    .line 132
    const-class v2, Lsun/security/x509/CRLNumberExtension;

    #@59
    .line 131
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@5c
    .line 133
    const-string/jumbo v0, "x509.info.extensions.CRLReasonCode"

    #@5f
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    #@61
    .line 134
    const-class v2, Lsun/security/x509/CRLReasonCodeExtension;

    #@63
    .line 133
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@66
    .line 135
    const-string/jumbo v0, "x509.info.extensions.NameConstraints"

    #@69
    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@6b
    .line 136
    const-class v2, Lsun/security/x509/NameConstraintsExtension;

    #@6d
    .line 135
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@70
    .line 137
    const-string/jumbo v0, "x509.info.extensions.PolicyMappings"

    #@73
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    #@75
    .line 138
    const-class v2, Lsun/security/x509/PolicyMappingsExtension;

    #@77
    .line 137
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@7a
    .line 139
    const-string/jumbo v0, "x509.info.extensions.AuthorityKeyIdentifier"

    #@7d
    sget-object v1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    #@7f
    .line 140
    const-class v2, Lsun/security/x509/AuthorityKeyIdentifierExtension;

    #@81
    .line 139
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@84
    .line 141
    const-string/jumbo v0, "x509.info.extensions.PolicyConstraints"

    #@87
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@89
    .line 142
    const-class v2, Lsun/security/x509/PolicyConstraintsExtension;

    #@8b
    .line 141
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@8e
    .line 143
    const-string/jumbo v0, "x509.info.extensions.NetscapeCertType"

    #@91
    .line 144
    new-array v1, v3, [I

    #@93
    fill-array-data v1, :array_1

    #@96
    .line 143
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@99
    move-result-object v1

    #@9a
    .line 145
    const-class v2, Lsun/security/x509/NetscapeCertTypeExtension;

    #@9c
    .line 143
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@9f
    .line 146
    const-string/jumbo v0, "x509.info.extensions.CertificatePolicies"

    #@a2
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    #@a4
    .line 147
    const-class v2, Lsun/security/x509/CertificatePoliciesExtension;

    #@a6
    .line 146
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@a9
    .line 148
    const-string/jumbo v0, "x509.info.extensions.ExtendedKeyUsage"

    #@ac
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@ae
    .line 149
    const-class v2, Lsun/security/x509/ExtendedKeyUsageExtension;

    #@b0
    .line 148
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@b3
    .line 150
    const-string/jumbo v0, "x509.info.extensions.InhibitAnyPolicy"

    #@b6
    sget-object v1, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    #@b8
    .line 151
    const-class v2, Lsun/security/x509/InhibitAnyPolicyExtension;

    #@ba
    .line 150
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@bd
    .line 152
    const-string/jumbo v0, "x509.info.extensions.CRLDistributionPoints"

    #@c0
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    #@c2
    .line 153
    const-class v2, Lsun/security/x509/CRLDistributionPointsExtension;

    #@c4
    .line 152
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@c7
    .line 154
    const-string/jumbo v0, "x509.info.extensions.CertificateIssuer"

    #@ca
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    #@cc
    .line 155
    const-class v2, Lsun/security/x509/CertificateIssuerExtension;

    #@ce
    .line 154
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@d1
    .line 156
    const-string/jumbo v0, "x509.info.extensions.SubjectInfoAccess"

    #@d4
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    #@d6
    .line 157
    const-class v2, Lsun/security/x509/SubjectInfoAccessExtension;

    #@d8
    .line 156
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@db
    .line 158
    const-string/jumbo v0, "x509.info.extensions.AuthorityInfoAccess"

    #@de
    sget-object v1, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    #@e0
    .line 159
    const-class v2, Lsun/security/x509/AuthorityInfoAccessExtension;

    #@e2
    .line 158
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@e5
    .line 160
    const-string/jumbo v0, "x509.info.extensions.IssuingDistributionPoint"

    #@e8
    .line 161
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    #@ea
    .line 162
    const-class v2, Lsun/security/x509/IssuingDistributionPointExtension;

    #@ec
    .line 160
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@ef
    .line 163
    const-string/jumbo v0, "x509.info.extensions.DeltaCRLIndicator"

    #@f2
    sget-object v1, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    #@f4
    .line 164
    const-class v2, Lsun/security/x509/DeltaCRLIndicatorExtension;

    #@f6
    .line 163
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@f9
    .line 165
    const-string/jumbo v0, "x509.info.extensions.FreshestCRL"

    #@fc
    sget-object v1, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    #@fe
    .line 166
    const-class v2, Lsun/security/x509/FreshestCRLExtension;

    #@100
    .line 165
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@103
    .line 167
    const-string/jumbo v0, "x509.info.extensions.OCSPNoCheck"

    #@106
    sget-object v1, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    #@108
    .line 168
    const-class v2, Lsun/security/x509/OCSPNoCheckExtension;

    #@10a
    .line 167
    invoke-static {v0, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@10d
    .line 47
    return-void

    #@10e
    .line 108
    :array_0
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x1
        0x1
    .end array-data

    #@120
    .line 144
    :array_1
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x1
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    :try_start_0
    new-instance v2, Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-direct {v2, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 223
    .local v2, "objId":Lsun/security/util/ObjectIdentifier;
    new-instance v0, Lsun/security/x509/OIDMap$OIDInfo;

    #@7
    invoke-direct {v0, p0, v2, p2}, Lsun/security/x509/OIDMap$OIDInfo;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@a
    .line 224
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    sget-object v3, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    #@c
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 225
    new-instance v3, Ljava/security/cert/CertificateException;

    #@14
    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Object identifier already exists: "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    .line 225
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3

    #@2c
    .line 219
    .end local v0    # "info":Lsun/security/x509/OIDMap$OIDInfo;
    .end local v2    # "objId":Lsun/security/util/ObjectIdentifier;
    :catch_0
    move-exception v1

    #@2d
    .line 220
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateException;

    #@2f
    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v5, "Invalid Object identifier: "

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    .line 220
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@46
    throw v3

    #@47
    .line 228
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "info":Lsun/security/x509/OIDMap$OIDInfo;
    .restart local v2    # "objId":Lsun/security/util/ObjectIdentifier;
    :cond_0
    sget-object v3, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    #@49
    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    move-result-object v3

    #@4d
    if-eqz v3, :cond_1

    #@4f
    .line 229
    new-instance v3, Ljava/security/cert/CertificateException;

    #@51
    new-instance v4, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v5, "Name already exists: "

    #@59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@68
    throw v3

    #@69
    .line 215
    :cond_1
    return-void
.end method

.method private static addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 177
    new-instance v0, Lsun/security/x509/OIDMap$OIDInfo;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lsun/security/x509/OIDMap$OIDInfo;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    #@5
    .line 178
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    sget-object v1, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    #@7
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 179
    sget-object v1, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    #@c
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 176
    return-void
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 264
    sget-object v2, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    #@3
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lsun/security/x509/OIDMap$OIDInfo;

    #@9
    .line 265
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    if-nez v0, :cond_0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    invoke-virtual {v0}, Lsun/security/x509/OIDMap$OIDInfo;->getClazz()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    goto :goto_0
.end method

.method public static getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;
    .locals 3
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 276
    sget-object v2, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    #@3
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lsun/security/x509/OIDMap$OIDInfo;

    #@9
    .line 277
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    if-nez v0, :cond_0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    invoke-virtual {v0}, Lsun/security/x509/OIDMap$OIDInfo;->getClazz()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    goto :goto_0
.end method

.method public static getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;
    .locals 3
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 241
    sget-object v2, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    #@3
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lsun/security/x509/OIDMap$OIDInfo;

    #@9
    .line 242
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    if-nez v0, :cond_0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    iget-object v1, v0, Lsun/security/x509/OIDMap$OIDInfo;->name:Ljava/lang/String;

    #@e
    goto :goto_0
.end method

.method public static getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 253
    sget-object v2, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    #@3
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lsun/security/x509/OIDMap$OIDInfo;

    #@9
    .line 254
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    if-nez v0, :cond_0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    iget-object v1, v0, Lsun/security/x509/OIDMap$OIDInfo;->oid:Lsun/security/util/ObjectIdentifier;

    #@e
    goto :goto_0
.end method
