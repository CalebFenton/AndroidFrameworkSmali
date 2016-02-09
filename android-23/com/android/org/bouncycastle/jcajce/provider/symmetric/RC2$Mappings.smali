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
    .line 492
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDRC2-CBC"

    #@3
    const-string/jumbo v1, "PBEWITHMD5ANDRC2"

    #@6
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 494
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDRC2-CBC"

    #@c
    const-string/jumbo v1, "PBEWITHSHA1ANDRC2"

    #@f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v1, "Alg.Alias.SecretKeyFactory."

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    const-string/jumbo v1, "PBEWITHMD5ANDRC2"

    #@2b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v1, "Alg.Alias.SecretKeyFactory."

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    const-string/jumbo v1, "PBEWITHSHA1ANDRC2"

    #@47
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 503
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.5"

    #@4d
    const-string/jumbo v1, "PBEWITHSHAAND128BITRC2-CBC"

    #@50
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@53
    .line 504
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.6"

    #@56
    const-string/jumbo v1, "PBEWITHSHAAND40BITRC2-CBC"

    #@59
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5c
    .line 509
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHMD5ANDRC2"

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    const-string/jumbo v2, "$PBEWithMD5KeyFactory"

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@78
    .line 510
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHA1ANDRC2"

    #@7b
    new-instance v1, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    const-string/jumbo v2, "$PBEWithSHA1KeyFactory"

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@94
    .line 512
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND128BITRC2-CBC"

    #@97
    new-instance v1, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    const-string/jumbo v2, "$PBEWithSHAAnd128BitKeyFactory"

    #@a5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v1

    #@ad
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@b0
    .line 513
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND40BITRC2-CBC"

    #@b3
    new-instance v1, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@ba
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v1

    #@be
    const-string/jumbo v2, "$PBEWithSHAAnd40BitKeyFactory"

    #@c1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v1

    #@c5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v1

    #@c9
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@cc
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@d4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v0

    #@d8
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v0

    #@de
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v0

    #@e2
    const-string/jumbo v1, "PBEWITHMD5ANDRC2"

    #@e5
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@e8
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v0

    #@f4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v0

    #@fa
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v0

    #@fe
    const-string/jumbo v1, "PBEWITHSHA1ANDRC2"

    #@101
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@104
    .line 523
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.5"

    #@107
    const-string/jumbo v1, "PKCS12PBE"

    #@10a
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@10d
    .line 524
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.6"

    #@110
    const-string/jumbo v1, "PKCS12PBE"

    #@113
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@116
    .line 525
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWithSHAAnd3KeyTripleDES"

    #@119
    const-string/jumbo v1, "PKCS12PBE"

    #@11c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@11f
    .line 527
    const-string/jumbo v0, "Alg.Alias.Cipher.1.2.840.113549.1.12.1.5"

    #@122
    const-string/jumbo v1, "PBEWITHSHAAND128BITRC2-CBC"

    #@125
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@128
    .line 528
    const-string/jumbo v0, "Alg.Alias.Cipher.1.2.840.113549.1.12.1.6"

    #@12b
    const-string/jumbo v1, "PBEWITHSHAAND40BITRC2-CBC"

    #@12e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@131
    .line 529
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC2-CBC"

    #@134
    const-string/jumbo v1, "PBEWITHSHAAND128BITRC2-CBC"

    #@137
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@13a
    .line 530
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC2-CBC"

    #@13d
    const-string/jumbo v1, "PBEWITHSHAAND40BITRC2-CBC"

    #@140
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@143
    .line 531
    const-string/jumbo v0, "Cipher.PBEWITHSHA1ANDRC2"

    #@146
    new-instance v1, Ljava/lang/StringBuilder;

    #@148
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14b
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@14d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v1

    #@151
    const-string/jumbo v2, "$PBEWithSHA1AndRC2"

    #@154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v1

    #@158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v1

    #@15c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@15f
    .line 533
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND128BITRC2-CBC"

    #@162
    new-instance v1, Ljava/lang/StringBuilder;

    #@164
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v1

    #@16d
    const-string/jumbo v2, "$PBEWithSHAAnd128BitRC2"

    #@170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v1

    #@174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v1

    #@178
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@17b
    .line 534
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND40BITRC2-CBC"

    #@17e
    new-instance v1, Ljava/lang/StringBuilder;

    #@180
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@183
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v1

    #@189
    const-string/jumbo v2, "$PBEWithSHAAnd40BitRC2"

    #@18c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v1

    #@190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@193
    move-result-object v1

    #@194
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@197
    .line 535
    const-string/jumbo v0, "Cipher.PBEWITHMD5ANDRC2"

    #@19a
    new-instance v1, Ljava/lang/StringBuilder;

    #@19c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19f
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/RC2$Mappings;->PREFIX:Ljava/lang/String;

    #@1a1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v1

    #@1a5
    const-string/jumbo v2, "$PBEWithMD5AndRC2"

    #@1a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v1

    #@1ac
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1af
    move-result-object v1

    #@1b0
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1b3
    .line 537
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2"

    #@1b6
    const-string/jumbo v1, "PKCS12PBE"

    #@1b9
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1bc
    .line 538
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC2"

    #@1bf
    const-string/jumbo v1, "PKCS12PBE"

    #@1c2
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1c5
    .line 539
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2-CBC"

    #@1c8
    const-string/jumbo v1, "PKCS12PBE"

    #@1cb
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1ce
    .line 540
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC2-CBC"

    #@1d1
    const-string/jumbo v1, "PKCS12PBE"

    #@1d4
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1d7
    .line 541
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC2-CBC"

    #@1da
    const-string/jumbo v1, "PKCS12PBE"

    #@1dd
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1e0
    .line 466
    return-void
.end method
