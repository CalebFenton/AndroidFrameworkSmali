.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES;
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
    .line 440
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$Mappings;->PREFIX:Ljava/lang/String;

    #@8
    .line 437
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 443
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    #@3
    return-void
.end method

.method private addAlias(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    .param p2, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Alg.Alias.KeyGenerator."

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-interface {p1, v0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v1, "Alg.Alias.KeyFactory."

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-interface {p1, v0, p3}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 524
    return-void
.end method


# virtual methods
.method public configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    #@0
    .prologue
    .line 450
    const-string/jumbo v0, "Cipher.DES"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$Mappings;->PREFIX:Ljava/lang/String;

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
    .line 459
    const-string/jumbo v0, "KeyGenerator.DES"

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$Mappings;->PREFIX:Ljava/lang/String;

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "$KeyGenerator"

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
    .line 461
    const-string/jumbo v0, "SecretKeyFactory.DES"

    #@3b
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$Mappings;->PREFIX:Ljava/lang/String;

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    const-string/jumbo v2, "$KeyFactory"

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@54
    .line 488
    const-string/jumbo v0, "AlgorithmParameters.DES"

    #@57
    const-string/jumbo v1, "com.android.org.bouncycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters"

    #@5a
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5d
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    const-string/jumbo v1, "DES"

    #@76
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@79
    .line 497
    const-string/jumbo v0, "Cipher.PBEWITHMD5ANDDES"

    #@7c
    new-instance v1, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$Mappings;->PREFIX:Ljava/lang/String;

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    const-string/jumbo v2, "$PBEWithMD5"

    #@8a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v1

    #@92
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@95
    .line 498
    const-string/jumbo v0, "Cipher.PBEWITHSHA1ANDDES"

    #@98
    new-instance v1, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$Mappings;->PREFIX:Ljava/lang/String;

    #@9f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    const-string/jumbo v2, "$PBEWithSHA1"

    #@a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v1

    #@ae
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@b1
    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@b9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v0

    #@bd
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v0

    #@c3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v0

    #@c7
    const-string/jumbo v1, "PBEWITHMD5ANDDES"

    #@ca
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@cd
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v0

    #@d9
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v0

    #@df
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v0

    #@e3
    const-string/jumbo v1, "PBEWITHSHA1ANDDES"

    #@e6
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@e9
    .line 509
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHMD5ANDDES"

    #@ec
    new-instance v1, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$Mappings;->PREFIX:Ljava/lang/String;

    #@f3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v1

    #@f7
    const-string/jumbo v2, "$PBEWithMD5KeyFactory"

    #@fa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v1

    #@fe
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v1

    #@102
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@105
    .line 510
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHA1ANDDES"

    #@108
    new-instance v1, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/DES$Mappings;->PREFIX:Ljava/lang/String;

    #@10f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v1

    #@113
    const-string/jumbo v2, "$PBEWithSHA1KeyFactory"

    #@116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v1

    #@11a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v1

    #@11e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@121
    .line 515
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDDES-CBC"

    #@124
    const-string/jumbo v1, "PBEWITHMD5ANDDES"

    #@127
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@12a
    .line 516
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDDES-CBC"

    #@12d
    const-string/jumbo v1, "PBEWITHSHA1ANDDES"

    #@130
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@133
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    #@135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string/jumbo v1, "Alg.Alias.SecretKeyFactory."

    #@13b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v0

    #@13f
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v0

    #@145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v0

    #@149
    const-string/jumbo v1, "PBEWITHMD5ANDDES"

    #@14c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@14f
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    #@151
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@154
    const-string/jumbo v1, "Alg.Alias.SecretKeyFactory."

    #@157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v0

    #@15b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v0

    #@161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v0

    #@165
    const-string/jumbo v1, "PBEWITHSHA1ANDDES"

    #@168
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@16b
    .line 447
    return-void
.end method
