.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA256$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;
.source "SHA256.java"


# static fields
.field private static final blacklist PREFIX:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 93
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA256;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA256$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 4

    .line 119
    sget-object p0, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA256$Mappings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$HashMac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mac"

    invoke-interface {p1, v1, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addPrivateAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    return-void
.end method
