.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;

.field private static final wrongAES128:Ljava/lang/String; = "2.16.840.1.101.3.4.2"

.field private static final wrongAES192:Ljava/lang/String; = "2.16.840.1.101.3.4.22"

.field private static final wrongAES256:Ljava/lang/String; = "2.16.840.1.101.3.4.42"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 667
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@8
    .line 664
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 678
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    #@0
    .prologue
    .line 684
    const-string/jumbo v0, "AlgorithmParameters.AES"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, "$AlgParams"

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
    .line 685
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.2"

    #@1f
    const-string/jumbo v1, "AES"

    #@22
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 686
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.22"

    #@28
    const-string/jumbo v1, "AES"

    #@2b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 687
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.42"

    #@31
    const-string/jumbo v1, "AES"

    #@34
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    const-string/jumbo v1, "AES"

    #@50
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@53
    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    const-string/jumbo v1, "AES"

    #@6c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6f
    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    const-string/jumbo v1, "AES"

    #@88
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@8b
    .line 692
    const-string/jumbo v0, "AlgorithmParameters.GCM"

    #@8e
    new-instance v1, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v1

    #@99
    const-string/jumbo v2, "$AlgParamsGCM"

    #@9c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v1

    #@a4
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@a7
    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@af
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v0

    #@b3
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v0

    #@b9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v0

    #@bd
    const-string/jumbo v1, "GCM"

    #@c0
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@c3
    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v0

    #@cf
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@d1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v0

    #@d5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v0

    #@d9
    const-string/jumbo v1, "GCM"

    #@dc
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@df
    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@e7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v0

    #@eb
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ed
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v0

    #@f1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v0

    #@f5
    const-string/jumbo v1, "GCM"

    #@f8
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@fb
    .line 711
    const-string/jumbo v0, "Cipher.AES"

    #@fe
    new-instance v1, Ljava/lang/StringBuilder;

    #@100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v1

    #@109
    const-string/jumbo v2, "$ECB"

    #@10c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v1

    #@110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v1

    #@114
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@117
    .line 712
    const-string/jumbo v0, "Alg.Alias.Cipher.2.16.840.1.101.3.4.2"

    #@11a
    const-string/jumbo v1, "AES"

    #@11d
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@120
    .line 713
    const-string/jumbo v0, "Alg.Alias.Cipher.2.16.840.1.101.3.4.22"

    #@123
    const-string/jumbo v1, "AES"

    #@126
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@129
    .line 714
    const-string/jumbo v0, "Alg.Alias.Cipher.2.16.840.1.101.3.4.42"

    #@12c
    const-string/jumbo v1, "AES"

    #@12f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@132
    .line 729
    const-string/jumbo v0, "Cipher.AESWRAP"

    #@135
    new-instance v1, Ljava/lang/StringBuilder;

    #@137
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@13c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v1

    #@140
    const-string/jumbo v2, "$Wrap"

    #@143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v1

    #@147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a
    move-result-object v1

    #@14b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@14e
    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v0

    #@15a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v0

    #@160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@163
    move-result-object v0

    #@164
    const-string/jumbo v1, "AESWRAP"

    #@167
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@16a
    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    #@16c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16f
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v0

    #@176
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v0

    #@17c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17f
    move-result-object v0

    #@180
    const-string/jumbo v1, "AESWRAP"

    #@183
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@186
    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    #@188
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@18b
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@18e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v0

    #@192
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v0

    #@198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19b
    move-result-object v0

    #@19c
    const-string/jumbo v1, "AESWRAP"

    #@19f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1a2
    .line 755
    const-string/jumbo v0, "Cipher.AES/GCM/NOPADDING"

    #@1a5
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1aa
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@1ac
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v1

    #@1b0
    const-string/jumbo v2, "$GCM"

    #@1b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v1

    #@1b7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ba
    move-result-object v1

    #@1bb
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1be
    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c3
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@1c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v0

    #@1ca
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1cc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v0

    #@1d0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d3
    move-result-object v0

    #@1d4
    const-string/jumbo v1, "AES/GCM/NOPADDING"

    #@1d7
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1da
    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    #@1dc
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1df
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@1e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v0

    #@1e6
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1eb
    move-result-object v0

    #@1ec
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ef
    move-result-object v0

    #@1f0
    const-string/jumbo v1, "AES/GCM/NOPADDING"

    #@1f3
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1f6
    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1fb
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@1fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v0

    #@202
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v0

    #@208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20b
    move-result-object v0

    #@20c
    const-string/jumbo v1, "AES/GCM/NOPADDING"

    #@20f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@212
    .line 761
    const-string/jumbo v0, "KeyGenerator.AES"

    #@215
    new-instance v1, Ljava/lang/StringBuilder;

    #@217
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21a
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@21c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v1

    #@220
    const-string/jumbo v2, "$KeyGen"

    #@223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@226
    move-result-object v1

    #@227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22a
    move-result-object v1

    #@22b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@22e
    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    #@230
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@233
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@239
    move-result-object v0

    #@23a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@23c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@23f
    move-result-object v1

    #@240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@243
    move-result-object v0

    #@244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@247
    move-result-object v0

    #@248
    const-string/jumbo v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@24b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@24e
    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    #@250
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@253
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@259
    move-result-object v0

    #@25a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@25c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@25f
    move-result-object v1

    #@260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@263
    move-result-object v0

    #@264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@267
    move-result-object v0

    #@268
    const-string/jumbo v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@26b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@26e
    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    #@270
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@273
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@279
    move-result-object v0

    #@27a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@27c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@27f
    move-result-object v1

    #@280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@283
    move-result-object v0

    #@284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@287
    move-result-object v0

    #@288
    const-string/jumbo v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@28b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@28e
    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    #@290
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@293
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@299
    move-result-object v0

    #@29a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@29c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@29f
    move-result-object v1

    #@2a0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a3
    move-result-object v0

    #@2a4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a7
    move-result-object v0

    #@2a8
    const-string/jumbo v1, "PBEWITHSHA256AND128BITAES-CBC-BC"

    #@2ab
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2ae
    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    #@2b0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b3
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@2b6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b9
    move-result-object v0

    #@2ba
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2bc
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2bf
    move-result-object v1

    #@2c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c3
    move-result-object v0

    #@2c4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c7
    move-result-object v0

    #@2c8
    const-string/jumbo v1, "PBEWITHSHA256AND192BITAES-CBC-BC"

    #@2cb
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2ce
    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    #@2d0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d3
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@2d6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d9
    move-result-object v0

    #@2da
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2dc
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@2df
    move-result-object v1

    #@2e0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e3
    move-result-object v0

    #@2e4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e7
    move-result-object v0

    #@2e8
    const-string/jumbo v1, "PBEWITHSHA256AND256BITAES-CBC-BC"

    #@2eb
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2ee
    .line 799
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND128BITAES-CBC-BC"

    #@2f1
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f6
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@2f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fb
    move-result-object v1

    #@2fc
    const-string/jumbo v2, "$PBEWithAESCBC"

    #@2ff
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@302
    move-result-object v1

    #@303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@306
    move-result-object v1

    #@307
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@30a
    .line 800
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND192BITAES-CBC-BC"

    #@30d
    new-instance v1, Ljava/lang/StringBuilder;

    #@30f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@312
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@317
    move-result-object v1

    #@318
    const-string/jumbo v2, "$PBEWithAESCBC"

    #@31b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31e
    move-result-object v1

    #@31f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@322
    move-result-object v1

    #@323
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@326
    .line 801
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND256BITAES-CBC-BC"

    #@329
    new-instance v1, Ljava/lang/StringBuilder;

    #@32b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32e
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@333
    move-result-object v1

    #@334
    const-string/jumbo v2, "$PBEWithAESCBC"

    #@337
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33a
    move-result-object v1

    #@33b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33e
    move-result-object v1

    #@33f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@342
    .line 802
    const-string/jumbo v0, "Cipher.PBEWITHSHA256AND128BITAES-CBC-BC"

    #@345
    new-instance v1, Ljava/lang/StringBuilder;

    #@347
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34a
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@34c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34f
    move-result-object v1

    #@350
    const-string/jumbo v2, "$PBEWithAESCBC"

    #@353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@356
    move-result-object v1

    #@357
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35a
    move-result-object v1

    #@35b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@35e
    .line 803
    const-string/jumbo v0, "Cipher.PBEWITHSHA256AND192BITAES-CBC-BC"

    #@361
    new-instance v1, Ljava/lang/StringBuilder;

    #@363
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@366
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36b
    move-result-object v1

    #@36c
    const-string/jumbo v2, "$PBEWithAESCBC"

    #@36f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@372
    move-result-object v1

    #@373
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@376
    move-result-object v1

    #@377
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@37a
    .line 804
    const-string/jumbo v0, "Cipher.PBEWITHSHA256AND256BITAES-CBC-BC"

    #@37d
    new-instance v1, Ljava/lang/StringBuilder;

    #@37f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@382
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@384
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@387
    move-result-object v1

    #@388
    const-string/jumbo v2, "$PBEWithAESCBC"

    #@38b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38e
    move-result-object v1

    #@38f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@392
    move-result-object v1

    #@393
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@396
    .line 806
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-CBC-BC"

    #@399
    const-string/jumbo v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@39c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@39f
    .line 807
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-CBC-BC"

    #@3a2
    const-string/jumbo v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@3a5
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3a8
    .line 808
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-CBC-BC"

    #@3ab
    const-string/jumbo v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@3ae
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3b1
    .line 809
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-CBC-BC"

    #@3b4
    const-string/jumbo v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@3b7
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3ba
    .line 810
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-CBC-BC"

    #@3bd
    const-string/jumbo v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@3c0
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3c3
    .line 811
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-CBC-BC"

    #@3c6
    const-string/jumbo v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@3c9
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3cc
    .line 812
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-CBC-BC"

    #@3cf
    const-string/jumbo v1, "PBEWITHSHA256AND128BITAES-CBC-BC"

    #@3d2
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3d5
    .line 813
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-CBC-BC"

    #@3d8
    const-string/jumbo v1, "PBEWITHSHA256AND192BITAES-CBC-BC"

    #@3db
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3de
    .line 814
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-CBC-BC"

    #@3e1
    const-string/jumbo v1, "PBEWITHSHA256AND256BITAES-CBC-BC"

    #@3e4
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3e7
    .line 816
    const-string/jumbo v0, "Cipher.PBEWITHMD5AND128BITAES-CBC-OPENSSL"

    #@3ea
    new-instance v1, Ljava/lang/StringBuilder;

    #@3ec
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3ef
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@3f1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f4
    move-result-object v1

    #@3f5
    const-string/jumbo v2, "$PBEWithAESCBC"

    #@3f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fb
    move-result-object v1

    #@3fc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ff
    move-result-object v1

    #@400
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@403
    .line 817
    const-string/jumbo v0, "Cipher.PBEWITHMD5AND192BITAES-CBC-OPENSSL"

    #@406
    new-instance v1, Ljava/lang/StringBuilder;

    #@408
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40b
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@40d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@410
    move-result-object v1

    #@411
    const-string/jumbo v2, "$PBEWithAESCBC"

    #@414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@417
    move-result-object v1

    #@418
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41b
    move-result-object v1

    #@41c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@41f
    .line 818
    const-string/jumbo v0, "Cipher.PBEWITHMD5AND256BITAES-CBC-OPENSSL"

    #@422
    new-instance v1, Ljava/lang/StringBuilder;

    #@424
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@427
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@429
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42c
    move-result-object v1

    #@42d
    const-string/jumbo v2, "$PBEWithAESCBC"

    #@430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@433
    move-result-object v1

    #@434
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@437
    move-result-object v1

    #@438
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@43b
    .line 820
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHMD5AND128BITAES-CBC-OPENSSL"

    #@43e
    new-instance v1, Ljava/lang/StringBuilder;

    #@440
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@443
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@448
    move-result-object v1

    #@449
    const-string/jumbo v2, "$PBEWithMD5And128BitAESCBCOpenSSL"

    #@44c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44f
    move-result-object v1

    #@450
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@453
    move-result-object v1

    #@454
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@457
    .line 821
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHMD5AND192BITAES-CBC-OPENSSL"

    #@45a
    new-instance v1, Ljava/lang/StringBuilder;

    #@45c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45f
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@464
    move-result-object v1

    #@465
    const-string/jumbo v2, "$PBEWithMD5And192BitAESCBCOpenSSL"

    #@468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46b
    move-result-object v1

    #@46c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46f
    move-result-object v1

    #@470
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@473
    .line 822
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHMD5AND256BITAES-CBC-OPENSSL"

    #@476
    new-instance v1, Ljava/lang/StringBuilder;

    #@478
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47b
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@47d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@480
    move-result-object v1

    #@481
    const-string/jumbo v2, "$PBEWithMD5And256BitAESCBCOpenSSL"

    #@484
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@487
    move-result-object v1

    #@488
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48b
    move-result-object v1

    #@48c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@48f
    .line 824
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND128BITAES-CBC-BC"

    #@492
    new-instance v1, Ljava/lang/StringBuilder;

    #@494
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@497
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@499
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49c
    move-result-object v1

    #@49d
    const-string/jumbo v2, "$PBEWithSHAAnd128BitAESBC"

    #@4a0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a3
    move-result-object v1

    #@4a4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a7
    move-result-object v1

    #@4a8
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@4ab
    .line 825
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND192BITAES-CBC-BC"

    #@4ae
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4b3
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@4b5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b8
    move-result-object v1

    #@4b9
    const-string/jumbo v2, "$PBEWithSHAAnd192BitAESBC"

    #@4bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bf
    move-result-object v1

    #@4c0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c3
    move-result-object v1

    #@4c4
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@4c7
    .line 826
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND256BITAES-CBC-BC"

    #@4ca
    new-instance v1, Ljava/lang/StringBuilder;

    #@4cc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4cf
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@4d1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d4
    move-result-object v1

    #@4d5
    const-string/jumbo v2, "$PBEWithSHAAnd256BitAESBC"

    #@4d8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4db
    move-result-object v1

    #@4dc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4df
    move-result-object v1

    #@4e0
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@4e3
    .line 827
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHA256AND128BITAES-CBC-BC"

    #@4e6
    new-instance v1, Ljava/lang/StringBuilder;

    #@4e8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4eb
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@4ed
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f0
    move-result-object v1

    #@4f1
    const-string/jumbo v2, "$PBEWithSHA256And128BitAESBC"

    #@4f4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f7
    move-result-object v1

    #@4f8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4fb
    move-result-object v1

    #@4fc
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@4ff
    .line 828
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHA256AND192BITAES-CBC-BC"

    #@502
    new-instance v1, Ljava/lang/StringBuilder;

    #@504
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@507
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@509
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50c
    move-result-object v1

    #@50d
    const-string/jumbo v2, "$PBEWithSHA256And192BitAESBC"

    #@510
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@513
    move-result-object v1

    #@514
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@517
    move-result-object v1

    #@518
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@51b
    .line 829
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHA256AND256BITAES-CBC-BC"

    #@51e
    new-instance v1, Ljava/lang/StringBuilder;

    #@520
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@523
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@525
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@528
    move-result-object v1

    #@529
    const-string/jumbo v2, "$PBEWithSHA256And256BitAESBC"

    #@52c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52f
    move-result-object v1

    #@530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@533
    move-result-object v1

    #@534
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@537
    .line 830
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND128BITAES-CBC-BC"

    #@53a
    const-string/jumbo v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@53d
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@540
    .line 831
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND192BITAES-CBC-BC"

    #@543
    const-string/jumbo v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@546
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@549
    .line 832
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND256BITAES-CBC-BC"

    #@54c
    const-string/jumbo v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@54f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@552
    .line 833
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND128BITAES-CBC-BC"

    #@555
    const-string/jumbo v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@558
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@55b
    .line 834
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND192BITAES-CBC-BC"

    #@55e
    const-string/jumbo v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@561
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@564
    .line 835
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND256BITAES-CBC-BC"

    #@567
    const-string/jumbo v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@56a
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@56d
    .line 836
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-CBC-BC"

    #@570
    const-string/jumbo v1, "PBEWITHSHA256AND128BITAES-CBC-BC"

    #@573
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@576
    .line 837
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-CBC-BC"

    #@579
    const-string/jumbo v1, "PBEWITHSHA256AND192BITAES-CBC-BC"

    #@57c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@57f
    .line 838
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-CBC-BC"

    #@582
    const-string/jumbo v1, "PBEWITHSHA256AND256BITAES-CBC-BC"

    #@585
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@588
    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    #@58a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@58d
    const-string/jumbo v1, "Alg.Alias.SecretKeyFactory."

    #@590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@593
    move-result-object v0

    #@594
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@596
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@599
    move-result-object v1

    #@59a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59d
    move-result-object v0

    #@59e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a1
    move-result-object v0

    #@5a2
    const-string/jumbo v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@5a5
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5a8
    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    #@5aa
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5ad
    const-string/jumbo v1, "Alg.Alias.SecretKeyFactory."

    #@5b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b3
    move-result-object v0

    #@5b4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5b6
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5b9
    move-result-object v1

    #@5ba
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5bd
    move-result-object v0

    #@5be
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c1
    move-result-object v0

    #@5c2
    const-string/jumbo v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@5c5
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5c8
    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    #@5ca
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5cd
    const-string/jumbo v1, "Alg.Alias.SecretKeyFactory."

    #@5d0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d3
    move-result-object v0

    #@5d4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5d6
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5d9
    move-result-object v1

    #@5da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5dd
    move-result-object v0

    #@5de
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e1
    move-result-object v0

    #@5e2
    const-string/jumbo v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@5e5
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5e8
    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    #@5ea
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5ed
    const-string/jumbo v1, "Alg.Alias.SecretKeyFactory."

    #@5f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f3
    move-result-object v0

    #@5f4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5f6
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@5f9
    move-result-object v1

    #@5fa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5fd
    move-result-object v0

    #@5fe
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@601
    move-result-object v0

    #@602
    const-string/jumbo v1, "PBEWITHSHA256AND128BITAES-CBC-BC"

    #@605
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@608
    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    #@60a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@60d
    const-string/jumbo v1, "Alg.Alias.SecretKeyFactory."

    #@610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@613
    move-result-object v0

    #@614
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@616
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@619
    move-result-object v1

    #@61a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61d
    move-result-object v0

    #@61e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@621
    move-result-object v0

    #@622
    const-string/jumbo v1, "PBEWITHSHA256AND192BITAES-CBC-BC"

    #@625
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@628
    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    #@62a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@62d
    const-string/jumbo v1, "Alg.Alias.SecretKeyFactory."

    #@630
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@633
    move-result-object v0

    #@634
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@636
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@639
    move-result-object v1

    #@63a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63d
    move-result-object v0

    #@63e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@641
    move-result-object v0

    #@642
    const-string/jumbo v1, "PBEWITHSHA256AND256BITAES-CBC-BC"

    #@645
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@648
    .line 846
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITAES-CBC-BC"

    #@64b
    const-string/jumbo v1, "PKCS12PBE"

    #@64e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@651
    .line 847
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND192BITAES-CBC-BC"

    #@654
    const-string/jumbo v1, "PKCS12PBE"

    #@657
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@65a
    .line 848
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND256BITAES-CBC-BC"

    #@65d
    const-string/jumbo v1, "PKCS12PBE"

    #@660
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@663
    .line 849
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND128BITAES-CBC-BC"

    #@666
    const-string/jumbo v1, "PKCS12PBE"

    #@669
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@66c
    .line 850
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND192BITAES-CBC-BC"

    #@66f
    const-string/jumbo v1, "PKCS12PBE"

    #@672
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@675
    .line 851
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND256BITAES-CBC-BC"

    #@678
    const-string/jumbo v1, "PKCS12PBE"

    #@67b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@67e
    .line 852
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND128BITAES-CBC-BC"

    #@681
    const-string/jumbo v1, "PKCS12PBE"

    #@684
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@687
    .line 853
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND192BITAES-CBC-BC"

    #@68a
    const-string/jumbo v1, "PKCS12PBE"

    #@68d
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@690
    .line 854
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND256BITAES-CBC-BC"

    #@693
    const-string/jumbo v1, "PKCS12PBE"

    #@696
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@699
    .line 855
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND128BITAES-CBC-BC"

    #@69c
    const-string/jumbo v1, "PKCS12PBE"

    #@69f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6a2
    .line 856
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND192BITAES-CBC-BC"

    #@6a5
    const-string/jumbo v1, "PKCS12PBE"

    #@6a8
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6ab
    .line 857
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND256BITAES-CBC-BC"

    #@6ae
    const-string/jumbo v1, "PKCS12PBE"

    #@6b1
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6b4
    .line 858
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND128BITAES-CBC-BC"

    #@6b7
    const-string/jumbo v1, "PKCS12PBE"

    #@6ba
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6bd
    .line 859
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND192BITAES-CBC-BC"

    #@6c0
    const-string/jumbo v1, "PKCS12PBE"

    #@6c3
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6c6
    .line 860
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND256BITAES-CBC-BC"

    #@6c9
    const-string/jumbo v1, "PKCS12PBE"

    #@6cc
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6cf
    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    #@6d1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6d4
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@6d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6da
    move-result-object v0

    #@6db
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6dd
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@6e0
    move-result-object v1

    #@6e1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e4
    move-result-object v0

    #@6e5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e8
    move-result-object v0

    #@6e9
    const-string/jumbo v1, "PKCS12PBE"

    #@6ec
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6ef
    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    #@6f1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6f4
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@6f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6fa
    move-result-object v0

    #@6fb
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6fd
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@700
    move-result-object v1

    #@701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@704
    move-result-object v0

    #@705
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@708
    move-result-object v0

    #@709
    const-string/jumbo v1, "PKCS12PBE"

    #@70c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@70f
    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    #@711
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@714
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71a
    move-result-object v0

    #@71b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@71d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@720
    move-result-object v1

    #@721
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@724
    move-result-object v0

    #@725
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@728
    move-result-object v0

    #@729
    const-string/jumbo v1, "PKCS12PBE"

    #@72c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@72f
    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    #@731
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@734
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@737
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73a
    move-result-object v0

    #@73b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@73d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@740
    move-result-object v1

    #@741
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@744
    move-result-object v0

    #@745
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@748
    move-result-object v0

    #@749
    const-string/jumbo v1, "PKCS12PBE"

    #@74c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@74f
    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    #@751
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@754
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75a
    move-result-object v0

    #@75b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@75d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@760
    move-result-object v1

    #@761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@764
    move-result-object v0

    #@765
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@768
    move-result-object v0

    #@769
    const-string/jumbo v1, "PKCS12PBE"

    #@76c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@76f
    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    #@771
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@774
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@777
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77a
    move-result-object v0

    #@77b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@77d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@780
    move-result-object v1

    #@781
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@784
    move-result-object v0

    #@785
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@788
    move-result-object v0

    #@789
    const-string/jumbo v1, "PKCS12PBE"

    #@78c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@78f
    .line 682
    return-void
.end method
