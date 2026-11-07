.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;
.source "RC2.java"


# static fields
.field private static final blacklist PREFIX:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 478
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 481
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 10

    .line 514
    const-string p0, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDRC2-CBC"

    const-string v0, "PBEWITHMD5ANDRC2"

    invoke-interface {p1, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string p0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDRC2-CBC"

    const-string v1, "PBEWITHSHA1ANDRC2"

    invoke-interface {p1, p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    sget-object p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "Alg.Alias.SecretKeyFactory"

    invoke-interface {p1, v2, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 523
    sget-object v3, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1, v2, v3, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 524
    const-string v2, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.5"

    const-string v4, "PBEWITHSHAAND128BITRC2-CBC"

    invoke-interface {p1, v2, v4}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v2, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.6"

    const-string v5, "PBEWITHSHAAND40BITRC2-CBC"

    invoke-interface {p1, v2, v5}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "$PBEWithMD5KeyFactory"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "SecretKeyFactory.PBEWITHMD5ANDRC2"

    invoke-interface {p1, v7, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "$PBEWithSHA1KeyFactory"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "SecretKeyFactory.PBEWITHSHA1ANDRC2"

    invoke-interface {p1, v7, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "$PBEWithSHAAnd128BitKeyFactory"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "SecretKeyFactory.PBEWITHSHAAND128BITRC2-CBC"

    invoke-interface {p1, v7, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "$PBEWithSHAAnd40BitKeyFactory"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "SecretKeyFactory.PBEWITHSHAAND40BITRC2-CBC"

    invoke-interface {p1, v7, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v2, "Alg.Alias.Cipher"

    invoke-interface {p1, v2, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 540
    invoke-interface {p1, v2, v3, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 542
    const-string p0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.5"

    const-string v3, "PKCS12PBE"

    invoke-interface {p1, p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string p0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.6"

    invoke-interface {p1, p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWithSHAAnd3KeyTripleDES"

    invoke-interface {p1, p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    sget-object p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1, v2, p0, v4}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 547
    sget-object p0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1, v2, p0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 548
    const-string p0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC2-CBC"

    invoke-interface {p1, p0, v4}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string p0, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC2-CBC"

    invoke-interface {p1, p0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$PBEWithSHA1AndRC2"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Cipher.PBEWITHSHA1ANDRC2"

    invoke-interface {p1, v2, p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string p0, "Alg.Alias.Cipher.PBEWITHSHAANDRC2-CBC"

    invoke-interface {p1, p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string p0, "Alg.Alias.Cipher.PBEWITHSHA1ANDRC2-CBC"

    invoke-interface {p1, p0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$PBEWithSHAAnd128BitRC2"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cipher.PBEWITHSHAAND128BITRC2-CBC"

    invoke-interface {p1, v1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$PBEWithSHAAnd40BitRC2"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cipher.PBEWITHSHAAND40BITRC2-CBC"

    invoke-interface {p1, v1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$PBEWithMD5AndRC2"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cipher.PBEWITHMD5ANDRC2"

    invoke-interface {p1, v1, p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string p0, "Alg.Alias.Cipher.PBEWITHMD5ANDRC2-CBC"

    invoke-interface {p1, p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2"

    invoke-interface {p1, p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC2"

    invoke-interface {p1, p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2-CBC"

    invoke-interface {p1, p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC2-CBC"

    invoke-interface {p1, p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string p0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC2-CBC"

    invoke-interface {p1, p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
