.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.symmetric"

.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 373
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Mappings;->PREFIX:Ljava/lang/String;

    #@8
    .line 370
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 376
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
    .line 382
    const-string/jumbo v0, "Cipher.DESEDE"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Mappings;->PREFIX:Ljava/lang/String;

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, "$ECB"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 386
    const-string/jumbo v0, "Cipher.DESEDEWRAP"

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Mappings;->PREFIX:Ljava/lang/String;

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "$Wrap"

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    const-string/jumbo v1, "DESEDEWRAP"

    #@51
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@54
    .line 395
    const-string/jumbo v0, "Alg.Alias.Cipher.TDEA"

    #@57
    const-string/jumbo v1, "DESEDE"

    #@5a
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5d
    .line 396
    const-string/jumbo v0, "Alg.Alias.Cipher.TDEAWRAP"

    #@60
    const-string/jumbo v1, "DESEDEWRAP"

    #@63
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@66
    .line 397
    const-string/jumbo v0, "Alg.Alias.KeyGenerator.TDEA"

    #@69
    const-string/jumbo v1, "DESEDE"

    #@6c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6f
    .line 398
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.TDEA"

    #@72
    const-string/jumbo v1, "DESEDE"

    #@75
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@78
    .line 402
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.TDEA"

    #@7b
    const-string/jumbo v1, "DESEDE"

    #@7e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@81
    .line 404
    const-string/jumbo v0, "MessageDigest"

    #@84
    const-string/jumbo v1, "SHA-1"

    #@87
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z

    #@8a
    move-result v0

    #@8b
    if-eqz v0, :cond_0

    #@8d
    .line 406
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@90
    new-instance v1, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Mappings;->PREFIX:Ljava/lang/String;

    #@97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    const-string/jumbo v2, "$PBEWithSHAAndDES3Key"

    #@9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v1

    #@a6
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@a9
    .line 411
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    #@ac
    new-instance v1, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Mappings;->PREFIX:Ljava/lang/String;

    #@b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v1

    #@b7
    const-string/jumbo v2, "$PBEWithSHAAndDES2Key"

    #@ba
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v1

    #@be
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v1

    #@c2
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@c5
    .line 415
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@c8
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ca
    const-string/jumbo v2, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@cd
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@d0
    .line 416
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@d3
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd2_KeyTripleDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d5
    const-string/jumbo v2, "PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    #@d8
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@db
    .line 417
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1ANDDESEDE"

    #@de
    const-string/jumbo v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@e1
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@e4
    .line 418
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND3-KEYTRIPLEDES-CBC"

    #@e7
    const-string/jumbo v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@ea
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@ed
    .line 419
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND2-KEYTRIPLEDES-CBC"

    #@f0
    const-string/jumbo v1, "PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    #@f3
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@f6
    .line 420
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHAAND3-KEYDESEDE-CBC"

    #@f9
    const-string/jumbo v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@fc
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@ff
    .line 421
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHAAND2-KEYDESEDE-CBC"

    #@102
    const-string/jumbo v1, "PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    #@105
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@108
    .line 422
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND3-KEYDESEDE-CBC"

    #@10b
    const-string/jumbo v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@10e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@111
    .line 423
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND2-KEYDESEDE-CBC"

    #@114
    const-string/jumbo v1, "PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    #@117
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@11a
    .line 424
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1ANDDESEDE-CBC"

    #@11d
    const-string/jumbo v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@120
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@123
    .line 427
    :cond_0
    const-string/jumbo v0, "KeyGenerator.DESEDE"

    #@126
    new-instance v1, Ljava/lang/StringBuilder;

    #@128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12b
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Mappings;->PREFIX:Ljava/lang/String;

    #@12d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v1

    #@131
    const-string/jumbo v2, "$KeyGenerator"

    #@134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v1

    #@138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v1

    #@13c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@13f
    .line 433
    const-string/jumbo v0, "SecretKeyFactory.DESEDE"

    #@142
    new-instance v1, Ljava/lang/StringBuilder;

    #@144
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@147
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Mappings;->PREFIX:Ljava/lang/String;

    #@149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v1

    #@14d
    const-string/jumbo v2, "$KeyFactory"

    #@150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v1

    #@154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v1

    #@158
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@15b
    .line 452
    const-string/jumbo v0, "AlgorithmParameters.DESEDE"

    #@15e
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters"

    #@161
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@164
    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    #@166
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@169
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@16c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v0

    #@170
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v0

    #@176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@179
    move-result-object v0

    #@17a
    const-string/jumbo v1, "DESEDE"

    #@17d
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@180
    .line 460
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@183
    new-instance v1, Ljava/lang/StringBuilder;

    #@185
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@188
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Mappings;->PREFIX:Ljava/lang/String;

    #@18a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v1

    #@18e
    const-string/jumbo v2, "$PBEWithSHAAndDES3KeyFactory"

    #@191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v1

    #@195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@198
    move-result-object v1

    #@199
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@19c
    .line 461
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    #@19f
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a4
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Mappings;->PREFIX:Ljava/lang/String;

    #@1a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v1

    #@1aa
    const-string/jumbo v2, "$PBEWithSHAAndDES2KeyFactory"

    #@1ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v1

    #@1b1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b4
    move-result-object v1

    #@1b5
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1b8
    .line 463
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND3-KEYTRIPLEDES"

    #@1bb
    const-string/jumbo v1, "PKCS12PBE"

    #@1be
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1c1
    .line 464
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND2-KEYTRIPLEDES"

    #@1c4
    const-string/jumbo v1, "PKCS12PBE"

    #@1c7
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1ca
    .line 465
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@1cd
    const-string/jumbo v1, "PKCS12PBE"

    #@1d0
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1d3
    .line 466
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    #@1d6
    const-string/jumbo v1, "PKCS12PBE"

    #@1d9
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1dc
    .line 467
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDDES3KEY-CBC"

    #@1df
    const-string/jumbo v1, "PKCS12PBE"

    #@1e2
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1e5
    .line 468
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDDES2KEY-CBC"

    #@1e8
    const-string/jumbo v1, "PKCS12PBE"

    #@1eb
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1ee
    .line 470
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.3"

    #@1f1
    const-string/jumbo v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@1f4
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1f7
    .line 471
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.4"

    #@1fa
    const-string/jumbo v1, "PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    #@1fd
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@200
    .line 472
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWithSHAAnd3KeyTripleDES"

    #@203
    const-string/jumbo v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@206
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@209
    .line 473
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.3"

    #@20c
    const-string/jumbo v1, "PKCS12PBE"

    #@20f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@212
    .line 474
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.4"

    #@215
    const-string/jumbo v1, "PKCS12PBE"

    #@218
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@21b
    .line 475
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWithSHAAnd3KeyTripleDES"

    #@21e
    const-string/jumbo v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@221
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@224
    .line 380
    return-void
.end method
