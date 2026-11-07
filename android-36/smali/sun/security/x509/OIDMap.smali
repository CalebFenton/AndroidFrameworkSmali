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
.field private static final blacklist AUTH_INFO_ACCESS:Ljava/lang/String; = "x509.info.extensions.AuthorityInfoAccess"

.field private static final blacklist AUTH_KEY_IDENTIFIER:Ljava/lang/String; = "x509.info.extensions.AuthorityKeyIdentifier"

.field private static final blacklist BASIC_CONSTRAINTS:Ljava/lang/String; = "x509.info.extensions.BasicConstraints"

.field private static final blacklist CERT_ISSUER:Ljava/lang/String; = "x509.info.extensions.CertificateIssuer"

.field private static final blacklist CERT_POLICIES:Ljava/lang/String; = "x509.info.extensions.CertificatePolicies"

.field private static final blacklist CRL_DIST_POINTS:Ljava/lang/String; = "x509.info.extensions.CRLDistributionPoints"

.field private static final blacklist CRL_NUMBER:Ljava/lang/String; = "x509.info.extensions.CRLNumber"

.field private static final blacklist CRL_REASON:Ljava/lang/String; = "x509.info.extensions.CRLReasonCode"

.field private static final blacklist DELTA_CRL_INDICATOR:Ljava/lang/String; = "x509.info.extensions.DeltaCRLIndicator"

.field private static final blacklist EXT_KEY_USAGE:Ljava/lang/String; = "x509.info.extensions.ExtendedKeyUsage"

.field private static final blacklist FRESHEST_CRL:Ljava/lang/String; = "x509.info.extensions.FreshestCRL"

.field private static final blacklist INHIBIT_ANY_POLICY:Ljava/lang/String; = "x509.info.extensions.InhibitAnyPolicy"

.field private static final blacklist ISSUER_ALT_NAME:Ljava/lang/String; = "x509.info.extensions.IssuerAlternativeName"

.field private static final blacklist ISSUING_DIST_POINT:Ljava/lang/String; = "x509.info.extensions.IssuingDistributionPoint"

.field private static final blacklist KEY_USAGE:Ljava/lang/String; = "x509.info.extensions.KeyUsage"

.field private static final blacklist NAME_CONSTRAINTS:Ljava/lang/String; = "x509.info.extensions.NameConstraints"

.field private static final blacklist NETSCAPE_CERT:Ljava/lang/String; = "x509.info.extensions.NetscapeCertType"

.field private static final blacklist NetscapeCertType_data:[I

.field private static final blacklist OCSPNOCHECK:Ljava/lang/String; = "x509.info.extensions.OCSPNoCheck"

.field private static final blacklist POLICY_CONSTRAINTS:Ljava/lang/String; = "x509.info.extensions.PolicyConstraints"

.field private static final blacklist POLICY_MAPPINGS:Ljava/lang/String; = "x509.info.extensions.PolicyMappings"

.field private static final blacklist PRIVATE_KEY_USAGE:Ljava/lang/String; = "x509.info.extensions.PrivateKeyUsage"

.field private static final blacklist ROOT:Ljava/lang/String; = "x509.info.extensions"

.field private static final blacklist SUBJECT_INFO_ACCESS:Ljava/lang/String; = "x509.info.extensions.SubjectInfoAccess"

.field private static final blacklist SUB_ALT_NAME:Ljava/lang/String; = "x509.info.extensions.SubjectAlternativeName"

.field private static final blacklist SUB_KEY_IDENTIFIER:Ljava/lang/String; = "x509.info.extensions.SubjectKeyIdentifier"

.field private static final greylist nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsun/security/x509/OIDMap$OIDInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist oidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/x509/OIDMap$OIDInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 106
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_f6

    sput-object v1, Lsun/security/x509/OIDMap;->NetscapeCertType_data:[I

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    .line 120
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    const-class v2, Lsun/security/x509/SubjectKeyIdentifierExtension;

    const-string v3, "x509.info.extensions.SubjectKeyIdentifier"

    invoke-static {v3, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 122
    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    const-class v2, Lsun/security/x509/KeyUsageExtension;

    const-string v3, "x509.info.extensions.KeyUsage"

    invoke-static {v3, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 124
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    const-class v2, Lsun/security/x509/PrivateKeyUsageExtension;

    const-string v3, "x509.info.extensions.PrivateKeyUsage"

    invoke-static {v3, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 126
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    const-class v2, Lsun/security/x509/SubjectAlternativeNameExtension;

    const-string v3, "x509.info.extensions.SubjectAlternativeName"

    invoke-static {v3, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 128
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    const-class v2, Lsun/security/x509/IssuerAlternativeNameExtension;

    const-string v3, "x509.info.extensions.IssuerAlternativeName"

    invoke-static {v3, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 130
    sget-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    const-class v2, Lsun/security/x509/BasicConstraintsExtension;

    const-string v3, "x509.info.extensions.BasicConstraints"

    invoke-static {v3, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 132
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    const-class v2, Lsun/security/x509/CRLNumberExtension;

    const-string v3, "x509.info.extensions.CRLNumber"

    invoke-static {v3, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 134
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    const-class v2, Lsun/security/x509/CRLReasonCodeExtension;

    const-string v3, "x509.info.extensions.CRLReasonCode"

    invoke-static {v3, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 136
    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    const-class v2, Lsun/security/x509/NameConstraintsExtension;

    const-string v3, "x509.info.extensions.NameConstraints"

    invoke-static {v3, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 138
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    const-class v2, Lsun/security/x509/PolicyMappingsExtension;

    const-string v3, "x509.info.extensions.PolicyMappings"

    invoke-static {v3, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 140
    sget-object v1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    const-class v2, Lsun/security/x509/AuthorityKeyIdentifierExtension;

    const-string v3, "x509.info.extensions.AuthorityKeyIdentifier"

    invoke-static {v3, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 142
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    const-class v2, Lsun/security/x509/PolicyConstraintsExtension;

    const-string v3, "x509.info.extensions.PolicyConstraints"

    invoke-static {v3, v1, v2}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 144
    new-array v0, v0, [I

    fill-array-data v0, :array_108

    .line 145
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    const-class v1, Lsun/security/x509/NetscapeCertTypeExtension;

    .line 144
    const-string v2, "x509.info.extensions.NetscapeCertType"

    invoke-static {v2, v0, v1}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 147
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    const-class v1, Lsun/security/x509/CertificatePoliciesExtension;

    const-string v2, "x509.info.extensions.CertificatePolicies"

    invoke-static {v2, v0, v1}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 149
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    const-class v1, Lsun/security/x509/ExtendedKeyUsageExtension;

    const-string v2, "x509.info.extensions.ExtendedKeyUsage"

    invoke-static {v2, v0, v1}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 151
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    const-class v1, Lsun/security/x509/InhibitAnyPolicyExtension;

    const-string v2, "x509.info.extensions.InhibitAnyPolicy"

    invoke-static {v2, v0, v1}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 153
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    const-class v1, Lsun/security/x509/CRLDistributionPointsExtension;

    const-string v2, "x509.info.extensions.CRLDistributionPoints"

    invoke-static {v2, v0, v1}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 155
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    const-class v1, Lsun/security/x509/CertificateIssuerExtension;

    const-string v2, "x509.info.extensions.CertificateIssuer"

    invoke-static {v2, v0, v1}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 157
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    const-class v1, Lsun/security/x509/SubjectInfoAccessExtension;

    const-string v2, "x509.info.extensions.SubjectInfoAccess"

    invoke-static {v2, v0, v1}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 159
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    const-class v1, Lsun/security/x509/AuthorityInfoAccessExtension;

    const-string v2, "x509.info.extensions.AuthorityInfoAccess"

    invoke-static {v2, v0, v1}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 161
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    const-class v1, Lsun/security/x509/IssuingDistributionPointExtension;

    const-string v2, "x509.info.extensions.IssuingDistributionPoint"

    invoke-static {v2, v0, v1}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 164
    sget-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    const-class v1, Lsun/security/x509/DeltaCRLIndicatorExtension;

    const-string v2, "x509.info.extensions.DeltaCRLIndicator"

    invoke-static {v2, v0, v1}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 166
    sget-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    const-class v1, Lsun/security/x509/FreshestCRLExtension;

    const-string v2, "x509.info.extensions.FreshestCRL"

    invoke-static {v2, v0, v1}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 168
    sget-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    const-class v1, Lsun/security/x509/OCSPNoCheckExtension;

    const-string v2, "x509.info.extensions.OCSPNoCheck"

    invoke-static {v2, v0, v1}, Lsun/security/x509/OIDMap;->addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 170
    return-void

    :array_f6
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x1
        0x1
    .end array-data

    :array_108
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

.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static blacklist addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 221
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_4e

    .line 225
    .local v0, "objId":Lsun/security/util/ObjectIdentifier;
    nop

    .line 226
    new-instance v1, Lsun/security/x509/OIDMap$OIDInfo;

    invoke-direct {v1, p0, v0, p2}, Lsun/security/x509/OIDMap$OIDInfo;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 227
    .local v1, "info":Lsun/security/x509/OIDMap$OIDInfo;
    sget-object v2, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_35

    .line 231
    sget-object v2, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1c

    .line 234
    return-void

    .line 232
    :cond_1c
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name already exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    :cond_35
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object identifier already exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    .end local v0    # "objId":Lsun/security/util/ObjectIdentifier;
    .end local v1    # "info":Lsun/security/x509/OIDMap$OIDInfo;
    :catch_4e
    move-exception v0

    .line 223
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Object identifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist addInternal(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "clazz"    # Ljava/lang/Class;

    .line 178
    new-instance v0, Lsun/security/x509/OIDMap$OIDInfo;

    invoke-direct {v0, p0, p1, p2}, Lsun/security/x509/OIDMap$OIDInfo;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V

    .line 179
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    sget-object v1, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public static blacklist getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 267
    sget-object v0, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/OIDMap$OIDInfo;

    .line 268
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Lsun/security/x509/OIDMap$OIDInfo;->getClazz()Ljava/lang/Class;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public static greylist getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;
    .registers 3
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/ObjectIdentifier;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 279
    sget-object v0, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/OIDMap$OIDInfo;

    .line 280
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Lsun/security/x509/OIDMap$OIDInfo;->getClazz()Ljava/lang/Class;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public static blacklist getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;
    .registers 3
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;

    .line 244
    sget-object v0, Lsun/security/x509/OIDMap;->oidMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/OIDMap$OIDInfo;

    .line 245
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_e

    :cond_c
    iget-object v1, v0, Lsun/security/x509/OIDMap$OIDInfo;->name:Ljava/lang/String;

    :goto_e
    return-object v1
.end method

.method public static blacklist getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 256
    sget-object v0, Lsun/security/x509/OIDMap;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/OIDMap$OIDInfo;

    .line 257
    .local v0, "info":Lsun/security/x509/OIDMap$OIDInfo;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_e

    :cond_c
    iget-object v1, v0, Lsun/security/x509/OIDMap$OIDInfo;->oid:Lsun/security/util/ObjectIdentifier;

    :goto_e
    return-object v1
.end method
