.class public interface abstract Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;
.super Ljava/lang/Object;
.source "IANAObjectIdentifiers.java"


# static fields
.field public static final blacklist SNMPv2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist _private:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist directory:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist experimental:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist hmacMD5:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist hmacRIPEMD160:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist hmacSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist hmacTIGER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist internet:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist ipsec:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist isakmpOakley:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist mail:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist mgmt:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist pkix:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist security:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist security_mechanisms:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist security_nametypes:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 15
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->directory:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 19
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->mgmt:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "3"

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->experimental:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "4"

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->_private:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "5"

    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->security:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "6"

    invoke-virtual {v0, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->SNMPv2:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->internet:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "7"

    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->mail:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->security:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->security_mechanisms:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->security:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->security_nametypes:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 43
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->security_mechanisms:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->pkix:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->security_mechanisms:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "8"

    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->ipsec:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->ipsec:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->isakmpOakley:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->isakmpOakley:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacMD5:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->isakmpOakley:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->isakmpOakley:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacTIGER:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->isakmpOakley:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacRIPEMD160:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
