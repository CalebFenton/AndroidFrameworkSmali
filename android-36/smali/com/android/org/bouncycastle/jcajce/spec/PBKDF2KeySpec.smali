.class public Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;
.super Ljavax/crypto/spec/PBEKeySpec;
.source "PBKDF2KeySpec.java"


# static fields
.field private static final blacklist defaultPRF:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private blacklist prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;->defaultPRF:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor blacklist <init>([C[BIILcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 6

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 34
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method


# virtual methods
.method public blacklist getPrf()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;->prf:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method
