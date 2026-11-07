.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;
.source "RC2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/RC2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final blacklist PREFIX:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 478
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/RC2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 481
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    .line 482
    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 9
    .param p1, "provider"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .line 514
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDRC2-CBC"

    const-string v1, "PBEWITHMD5ANDRC2"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDRC2-CBC"

    const-string v2, "PBEWITHSHA1ANDRC2"

    invoke-interface {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "Alg.Alias.SecretKeyFactory"

    invoke-interface {p1, v3, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 523
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1, v3, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 524
    const-string v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.5"

    const-string v3, "PBEWITHSHAAND128BITRC2-CBC"

    invoke-interface {p1, v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.6"

    const-string v4, "PBEWITHSHAAND40BITRC2-CBC"

    invoke-interface {p1, v0, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "$PBEWithMD5KeyFactory"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "SecretKeyFactory.PBEWITHMD5ANDRC2"

    invoke-interface {p1, v5, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "$PBEWithSHA1KeyFactory"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "SecretKeyFactory.PBEWITHSHA1ANDRC2"

    invoke-interface {p1, v5, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "$PBEWithSHAAnd128BitKeyFactory"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "SecretKeyFactory.PBEWITHSHAAND128BITRC2-CBC"

    invoke-interface {p1, v5, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "$PBEWithSHAAnd40BitKeyFactory"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "SecretKeyFactory.PBEWITHSHAAND40BITRC2-CBC"

    invoke-interface {p1, v5, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "Alg.Alias.Cipher"

    invoke-interface {p1, v5, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 540
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1, v5, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 542
    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.5"

    const-string v6, "PKCS12PBE"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.6"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWithSHAAnd3KeyTripleDES"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC2_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1, v5, v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 547
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC2_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1, v5, v0, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 548
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC2-CBC"

    invoke-interface {p1, v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC2-CBC"

    invoke-interface {p1, v0, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "$PBEWithSHA1AndRC2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Cipher.PBEWITHSHA1ANDRC2"

    invoke-interface {p1, v3, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHAANDRC2-CBC"

    invoke-interface {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v0, "Alg.Alias.Cipher.PBEWITHSHA1ANDRC2-CBC"

    invoke-interface {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$PBEWithSHAAnd128BitRC2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Cipher.PBEWITHSHAAND128BITRC2-CBC"

    invoke-interface {p1, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$PBEWithSHAAnd40BitRC2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Cipher.PBEWITHSHAAND40BITRC2-CBC"

    invoke-interface {p1, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$PBEWithMD5AndRC2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Cipher.PBEWITHMD5ANDRC2"

    invoke-interface {p1, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v0, "Alg.Alias.Cipher.PBEWITHMD5ANDRC2-CBC"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC2"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2-CBC"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC2-CBC"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC2-CBC"

    invoke-interface {p1, v0, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method
