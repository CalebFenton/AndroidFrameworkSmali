.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;
.super Ljavax/crypto/spec/PBEKeySpec;
.source "PBKDF2KeySpec.java"


# static fields
.field private static final blacklist defaultPRF:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private blacklist prf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;->defaultPRF:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor blacklist <init>([C[BIILcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 6
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I
    .param p4, "keySize"    # I
    .param p5, "prf"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 34
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;->prf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist getPrf()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;->prf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist isDefaultPrf()Z
    .registers 3

    .line 44
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;->defaultPRF:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;->prf:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
