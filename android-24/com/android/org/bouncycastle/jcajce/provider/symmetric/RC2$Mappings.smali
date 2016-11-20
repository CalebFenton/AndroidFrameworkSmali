.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;
.source "RC2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 460
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@8
    .line 457
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 462
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    #@0
    .prologue
    .line 491
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDRC2-CBC"

    #@3
    const-string/jumbo v1, "PBEWITHMD5ANDRC2"

    #@6
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 493
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDRC2-CBC"

    #@c
    const-string/jumbo v1, "PBEWITHSHA1ANDRC2"

    #@f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 499
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory"

    #@15
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@17
    const-string/jumbo v2, "PBEWITHMD5ANDRC2"

    #@1a
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@1d
    .line 501
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory"

    #@20
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22
    const-string/jumbo v2, "PBEWITHSHA1ANDRC2"

    #@25
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@28
    .line 502
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.5"

    #@2b
    const-string/jumbo v1, "PBEWITHSHAAND128BITRC2-CBC"

    #@2e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 503
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.6"

    #@34
    const-string/jumbo v1, "PBEWITHSHAAND40BITRC2-CBC"

    #@37
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    .line 508
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHMD5ANDRC2"

    #@3d
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    const-string/jumbo v2, "$PBEWithMD5KeyFactory"

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@56
    .line 509
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHA1ANDRC2"

    #@59
    new-instance v1, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    const-string/jumbo v2, "$PBEWithSHA1KeyFactory"

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@72
    .line 511
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND128BITRC2-CBC"

    #@75
    new-instance v1, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@7c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    const-string/jumbo v2, "$PBEWithSHAAnd128BitKeyFactory"

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@8e
    .line 512
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND40BITRC2-CBC"

    #@91
    new-instance v1, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    const-string/jumbo v2, "$PBEWithSHAAnd40BitKeyFactory"

    #@9f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v1

    #@a7
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@aa
    .line 518
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@ad
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@af
    const-string/jumbo v2, "PBEWITHMD5ANDRC2"

    #@b2
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@b5
    .line 520
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@b8
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ba
    const-string/jumbo v2, "PBEWITHSHA1ANDRC2"

    #@bd
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@c0
    .line 522
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.5"

    #@c3
    const-string/jumbo v1, "PKCS12PBE"

    #@c6
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@c9
    .line 523
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.6"

    #@cc
    const-string/jumbo v1, "PKCS12PBE"

    #@cf
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@d2
    .line 524
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWithSHAAnd3KeyTripleDES"

    #@d5
    const-string/jumbo v1, "PKCS12PBE"

    #@d8
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@db
    .line 526
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@de
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e0
    const-string/jumbo v2, "PBEWITHSHAAND128BITRC2-CBC"

    #@e3
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@e6
    .line 527
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@e9
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@eb
    const-string/jumbo v2, "PBEWITHSHAAND40BITRC2-CBC"

    #@ee
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@f1
    .line 528
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC2-CBC"

    #@f4
    const-string/jumbo v1, "PBEWITHSHAAND128BITRC2-CBC"

    #@f7
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@fa
    .line 529
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC2-CBC"

    #@fd
    const-string/jumbo v1, "PBEWITHSHAAND40BITRC2-CBC"

    #@100
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@103
    .line 530
    const-string/jumbo v0, "Cipher.PBEWITHSHA1ANDRC2"

    #@106
    new-instance v1, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@10d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v1

    #@111
    const-string/jumbo v2, "$PBEWithSHA1AndRC2"

    #@114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v1

    #@118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v1

    #@11c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@11f
    .line 531
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHAANDRC2-CBC"

    #@122
    const-string/jumbo v1, "PBEWITHSHA1ANDRC2"

    #@125
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@128
    .line 532
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1ANDRC2-CBC"

    #@12b
    const-string/jumbo v1, "PBEWITHSHA1ANDRC2"

    #@12e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@131
    .line 534
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND128BITRC2-CBC"

    #@134
    new-instance v1, Ljava/lang/StringBuilder;

    #@136
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@139
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@13b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v1

    #@13f
    const-string/jumbo v2, "$PBEWithSHAAnd128BitRC2"

    #@142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v1

    #@146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@149
    move-result-object v1

    #@14a
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@14d
    .line 535
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND40BITRC2-CBC"

    #@150
    new-instance v1, Ljava/lang/StringBuilder;

    #@152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@155
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v1

    #@15b
    const-string/jumbo v2, "$PBEWithSHAAnd40BitRC2"

    #@15e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v1

    #@162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@165
    move-result-object v1

    #@166
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@169
    .line 536
    const-string/jumbo v0, "Cipher.PBEWITHMD5ANDRC2"

    #@16c
    new-instance v1, Ljava/lang/StringBuilder;

    #@16e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@171
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v1

    #@177
    const-string/jumbo v2, "$PBEWithMD5AndRC2"

    #@17a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v1

    #@17e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@181
    move-result-object v1

    #@182
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@185
    .line 537
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHMD5ANDRC2-CBC"

    #@188
    const-string/jumbo v1, "PBEWITHMD5ANDRC2"

    #@18b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@18e
    .line 539
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2"

    #@191
    const-string/jumbo v1, "PKCS12PBE"

    #@194
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@197
    .line 540
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC2"

    #@19a
    const-string/jumbo v1, "PKCS12PBE"

    #@19d
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1a0
    .line 541
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2-CBC"

    #@1a3
    const-string/jumbo v1, "PKCS12PBE"

    #@1a6
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1a9
    .line 542
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC2-CBC"

    #@1ac
    const-string/jumbo v1, "PKCS12PBE"

    #@1af
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1b2
    .line 543
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC2-CBC"

    #@1b5
    const-string/jumbo v1, "PKCS12PBE"

    #@1b8
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1bb
    .line 466
    return-void
.end method
