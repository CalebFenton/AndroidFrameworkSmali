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
.field private static final PACKAGE:Ljava/lang/String; = "com.android.org.bouncycastle.jcajce.provider.symmetric"

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
    .line 394
    const-string/jumbo v0, "Alg.Alias.Cipher.TDEA"

    #@57
    const-string/jumbo v1, "DESEDE"

    #@5a
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5d
    .line 395
    const-string/jumbo v0, "Alg.Alias.Cipher.TDEAWRAP"

    #@60
    const-string/jumbo v1, "DESEDEWRAP"

    #@63
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@66
    .line 396
    const-string/jumbo v0, "Alg.Alias.KeyGenerator.TDEA"

    #@69
    const-string/jumbo v1, "DESEDE"

    #@6c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6f
    .line 397
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.TDEA"

    #@72
    const-string/jumbo v1, "DESEDE"

    #@75
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@78
    .line 401
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.TDEA"

    #@7b
    const-string/jumbo v1, "DESEDE"

    #@7e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@81
    .line 403
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
    .line 405
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
    .line 410
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
    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v0

    #@d1
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v0

    #@db
    const-string/jumbo v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@de
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@e1
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v0

    #@ed
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd2_KeyTripleDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ef
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v0

    #@f3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v0

    #@f7
    const-string/jumbo v1, "PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    #@fa
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@fd
    .line 416
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1ANDDESEDE"

    #@100
    const-string/jumbo v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@103
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@106
    .line 417
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND3-KEYTRIPLEDES-CBC"

    #@109
    const-string/jumbo v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@10c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@10f
    .line 418
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND2-KEYTRIPLEDES-CBC"

    #@112
    const-string/jumbo v1, "PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    #@115
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@118
    .line 421
    :cond_0
    const-string/jumbo v0, "KeyGenerator.DESEDE"

    #@11b
    new-instance v1, Ljava/lang/StringBuilder;

    #@11d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@120
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Mappings;->PREFIX:Ljava/lang/String;

    #@122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v1

    #@126
    const-string/jumbo v2, "$KeyGenerator"

    #@129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v1

    #@12d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@130
    move-result-object v1

    #@131
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@134
    .line 427
    const-string/jumbo v0, "SecretKeyFactory.DESEDE"

    #@137
    new-instance v1, Ljava/lang/StringBuilder;

    #@139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13c
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Mappings;->PREFIX:Ljava/lang/String;

    #@13e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v1

    #@142
    const-string/jumbo v2, "$KeyFactory"

    #@145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v1

    #@149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v1

    #@14d
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@150
    .line 446
    const-string/jumbo v0, "AlgorithmParameters.DESEDE"

    #@153
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters"

    #@156
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@159
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v0

    #@165
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v0

    #@16b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16e
    move-result-object v0

    #@16f
    const-string/jumbo v1, "DESEDE"

    #@172
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@175
    .line 454
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@178
    new-instance v1, Ljava/lang/StringBuilder;

    #@17a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17d
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Mappings;->PREFIX:Ljava/lang/String;

    #@17f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v1

    #@183
    const-string/jumbo v2, "$PBEWithSHAAndDES3KeyFactory"

    #@186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v1

    #@18a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18d
    move-result-object v1

    #@18e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@191
    .line 455
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    #@194
    new-instance v1, Ljava/lang/StringBuilder;

    #@196
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@199
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DESede$Mappings;->PREFIX:Ljava/lang/String;

    #@19b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v1

    #@19f
    const-string/jumbo v2, "$PBEWithSHAAndDES2KeyFactory"

    #@1a2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v1

    #@1a6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a9
    move-result-object v1

    #@1aa
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1ad
    .line 457
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND3-KEYTRIPLEDES"

    #@1b0
    const-string/jumbo v1, "PKCS12PBE"

    #@1b3
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1b6
    .line 458
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND2-KEYTRIPLEDES"

    #@1b9
    const-string/jumbo v1, "PKCS12PBE"

    #@1bc
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1bf
    .line 459
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@1c2
    const-string/jumbo v1, "PKCS12PBE"

    #@1c5
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1c8
    .line 460
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    #@1cb
    const-string/jumbo v1, "PKCS12PBE"

    #@1ce
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1d1
    .line 461
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDDES3KEY-CBC"

    #@1d4
    const-string/jumbo v1, "PKCS12PBE"

    #@1d7
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1da
    .line 462
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDDES2KEY-CBC"

    #@1dd
    const-string/jumbo v1, "PKCS12PBE"

    #@1e0
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1e3
    .line 464
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.3"

    #@1e6
    const-string/jumbo v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@1e9
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1ec
    .line 465
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.4"

    #@1ef
    const-string/jumbo v1, "PBEWITHSHAAND2-KEYTRIPLEDES-CBC"

    #@1f2
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1f5
    .line 466
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWithSHAAnd3KeyTripleDES"

    #@1f8
    const-string/jumbo v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@1fb
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1fe
    .line 467
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.3"

    #@201
    const-string/jumbo v1, "PKCS12PBE"

    #@204
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@207
    .line 468
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.4"

    #@20a
    const-string/jumbo v1, "PKCS12PBE"

    #@20d
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@210
    .line 469
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWithSHAAnd3KeyTripleDES"

    #@213
    const-string/jumbo v1, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC"

    #@216
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@219
    .line 380
    return-void
.end method
