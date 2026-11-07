.class public Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;
.super Ljava/lang/Object;
.source "SSHNamedCurves.java"


# static fields
.field private static blacklist curveMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist curveNameToSSHName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist oidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist oidToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetoidMap()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;->oidMap:Ljava/util/Map;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$1;-><init>()V

    .line 27
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;->oidMap:Ljava/util/Map;

    .line 45
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$2;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;->curveNameToSSHName:Ljava/util/Map;

    .line 69
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$3;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$3;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;->curveMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$4;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$4;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;->oidToName:Ljava/util/Map;

    .line 97
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2
    .param p0, "sshName"    # Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;->oidMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public static blacklist getName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 2
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 116
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;->oidToName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getNameForParameters(Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/lang/String;
    .registers 2
    .param p0, "parameters"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 121
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;

    if-eqz v0, :cond_10

    .line 123
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;->getName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;->getNameForParameters(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNameForParameters(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Ljava/lang/String;
    .registers 3
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 132
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;->curveNameToSSHName:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;->curveMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getParameters(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 2
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 111
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getParameters(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 3
    .param p0, "sshName"    # Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;->oidMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    return-object v0
.end method
