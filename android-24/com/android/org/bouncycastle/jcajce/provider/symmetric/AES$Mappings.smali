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
    .line 713
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@8
    .line 710
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 724
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
    .line 730
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
    .line 731
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.2"

    #@1f
    const-string/jumbo v1, "AES"

    #@22
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 732
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.22"

    #@28
    const-string/jumbo v1, "AES"

    #@2b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 733
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.42"

    #@31
    const-string/jumbo v1, "AES"

    #@34
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    .line 734
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
    .line 735
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
    .line 736
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
    .line 738
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
    .line 739
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
    .line 740
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
    .line 741
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
    .line 757
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
    .line 758
    const-string/jumbo v0, "Alg.Alias.Cipher.2.16.840.1.101.3.4.2"

    #@11a
    const-string/jumbo v1, "AES"

    #@11d
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@120
    .line 759
    const-string/jumbo v0, "Alg.Alias.Cipher.2.16.840.1.101.3.4.22"

    #@123
    const-string/jumbo v1, "AES"

    #@126
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@129
    .line 760
    const-string/jumbo v0, "Alg.Alias.Cipher.2.16.840.1.101.3.4.42"

    #@12c
    const-string/jumbo v1, "AES"

    #@12f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@132
    .line 775
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
    .line 776
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@151
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@153
    const-string/jumbo v2, "AESWRAP"

    #@156
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@159
    .line 777
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@15c
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@15e
    const-string/jumbo v2, "AESWRAP"

    #@161
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@164
    .line 778
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@167
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@169
    const-string/jumbo v2, "AESWRAP"

    #@16c
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@16f
    .line 779
    const-string/jumbo v0, "Alg.Alias.Cipher.AESKW"

    #@172
    const-string/jumbo v1, "AESWRAP"

    #@175
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@178
    .line 802
    const-string/jumbo v0, "Cipher.AES/GCM/NOPADDING"

    #@17b
    new-instance v1, Ljava/lang/StringBuilder;

    #@17d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@180
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v1

    #@186
    const-string/jumbo v2, "$GCM"

    #@189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v1

    #@18d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@190
    move-result-object v1

    #@191
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@194
    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    #@196
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@199
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@19c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v0

    #@1a0
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v0

    #@1a6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a9
    move-result-object v0

    #@1aa
    const-string/jumbo v1, "AES/GCM/NOPADDING"

    #@1ad
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1b0
    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b5
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@1b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v0

    #@1bc
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v0

    #@1c2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c5
    move-result-object v0

    #@1c6
    const-string/jumbo v1, "AES/GCM/NOPADDING"

    #@1c9
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1cc
    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    #@1ce
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d1
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@1d4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v0

    #@1d8
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v0

    #@1de
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e1
    move-result-object v0

    #@1e2
    const-string/jumbo v1, "AES/GCM/NOPADDING"

    #@1e5
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1e8
    .line 808
    const-string/jumbo v0, "KeyGenerator.AES"

    #@1eb
    new-instance v1, Ljava/lang/StringBuilder;

    #@1ed
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f0
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@1f2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v1

    #@1f6
    const-string/jumbo v2, "$KeyGen"

    #@1f9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v1

    #@1fd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@200
    move-result-object v1

    #@201
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@204
    .line 839
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@207
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@209
    const-string/jumbo v2, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@20c
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@20f
    .line 840
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@212
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@214
    const-string/jumbo v2, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@217
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@21a
    .line 841
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@21d
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@21f
    const-string/jumbo v2, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@222
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@225
    .line 842
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@228
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22a
    const-string/jumbo v2, "PBEWITHSHA256AND128BITAES-CBC-BC"

    #@22d
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@230
    .line 843
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@233
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@235
    const-string/jumbo v2, "PBEWITHSHA256AND192BITAES-CBC-BC"

    #@238
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@23b
    .line 844
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@23e
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@240
    const-string/jumbo v2, "PBEWITHSHA256AND256BITAES-CBC-BC"

    #@243
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@246
    .line 846
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND128BITAES-CBC-BC"

    #@249
    new-instance v1, Ljava/lang/StringBuilder;

    #@24b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24e
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@250
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@253
    move-result-object v1

    #@254
    const-string/jumbo v2, "$PBEWithSHA1AESCBC128"

    #@257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v1

    #@25b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25e
    move-result-object v1

    #@25f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@262
    .line 847
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND192BITAES-CBC-BC"

    #@265
    new-instance v1, Ljava/lang/StringBuilder;

    #@267
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26a
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@26c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26f
    move-result-object v1

    #@270
    const-string/jumbo v2, "$PBEWithSHA1AESCBC192"

    #@273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@276
    move-result-object v1

    #@277
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27a
    move-result-object v1

    #@27b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@27e
    .line 848
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND256BITAES-CBC-BC"

    #@281
    new-instance v1, Ljava/lang/StringBuilder;

    #@283
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@286
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28b
    move-result-object v1

    #@28c
    const-string/jumbo v2, "$PBEWithSHA1AESCBC256"

    #@28f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@292
    move-result-object v1

    #@293
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@296
    move-result-object v1

    #@297
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@29a
    .line 849
    const-string/jumbo v0, "Cipher.PBEWITHSHA256AND128BITAES-CBC-BC"

    #@29d
    new-instance v1, Ljava/lang/StringBuilder;

    #@29f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a2
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@2a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a7
    move-result-object v1

    #@2a8
    const-string/jumbo v2, "$PBEWithSHA256AESCBC128"

    #@2ab
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ae
    move-result-object v1

    #@2af
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b2
    move-result-object v1

    #@2b3
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2b6
    .line 850
    const-string/jumbo v0, "Cipher.PBEWITHSHA256AND192BITAES-CBC-BC"

    #@2b9
    new-instance v1, Ljava/lang/StringBuilder;

    #@2bb
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2be
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@2c0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c3
    move-result-object v1

    #@2c4
    const-string/jumbo v2, "$PBEWithSHA256AESCBC192"

    #@2c7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ca
    move-result-object v1

    #@2cb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ce
    move-result-object v1

    #@2cf
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2d2
    .line 851
    const-string/jumbo v0, "Cipher.PBEWITHSHA256AND256BITAES-CBC-BC"

    #@2d5
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2da
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@2dc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2df
    move-result-object v1

    #@2e0
    const-string/jumbo v2, "$PBEWithSHA256AESCBC256"

    #@2e3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e6
    move-result-object v1

    #@2e7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ea
    move-result-object v1

    #@2eb
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2ee
    .line 853
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-CBC-BC"

    #@2f1
    const-string/jumbo v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@2f4
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2f7
    .line 854
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-CBC-BC"

    #@2fa
    const-string/jumbo v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@2fd
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@300
    .line 855
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-CBC-BC"

    #@303
    const-string/jumbo v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@306
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@309
    .line 856
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-CBC-BC"

    #@30c
    const-string/jumbo v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@30f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@312
    .line 857
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-CBC-BC"

    #@315
    const-string/jumbo v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@318
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@31b
    .line 858
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-CBC-BC"

    #@31e
    const-string/jumbo v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@321
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@324
    .line 859
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHAAND128BITAES-BC"

    #@327
    const-string/jumbo v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@32a
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@32d
    .line 860
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHAAND192BITAES-BC"

    #@330
    const-string/jumbo v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@333
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@336
    .line 861
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHAAND256BITAES-BC"

    #@339
    const-string/jumbo v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@33c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@33f
    .line 862
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-BC"

    #@342
    const-string/jumbo v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@345
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@348
    .line 863
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-BC"

    #@34b
    const-string/jumbo v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@34e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@351
    .line 864
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-BC"

    #@354
    const-string/jumbo v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@357
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@35a
    .line 865
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-BC"

    #@35d
    const-string/jumbo v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@360
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@363
    .line 866
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-BC"

    #@366
    const-string/jumbo v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@369
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@36c
    .line 867
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-BC"

    #@36f
    const-string/jumbo v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@372
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@375
    .line 868
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-CBC-BC"

    #@378
    const-string/jumbo v1, "PBEWITHSHA256AND128BITAES-CBC-BC"

    #@37b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@37e
    .line 869
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-CBC-BC"

    #@381
    const-string/jumbo v1, "PBEWITHSHA256AND192BITAES-CBC-BC"

    #@384
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@387
    .line 870
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-CBC-BC"

    #@38a
    const-string/jumbo v1, "PBEWITHSHA256AND256BITAES-CBC-BC"

    #@38d
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@390
    .line 871
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA256AND128BITAES-BC"

    #@393
    const-string/jumbo v1, "PBEWITHSHA256AND128BITAES-CBC-BC"

    #@396
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@399
    .line 872
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA256AND192BITAES-BC"

    #@39c
    const-string/jumbo v1, "PBEWITHSHA256AND192BITAES-CBC-BC"

    #@39f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3a2
    .line 873
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA256AND256BITAES-BC"

    #@3a5
    const-string/jumbo v1, "PBEWITHSHA256AND256BITAES-CBC-BC"

    #@3a8
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3ab
    .line 874
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-BC"

    #@3ae
    const-string/jumbo v1, "PBEWITHSHA256AND128BITAES-CBC-BC"

    #@3b1
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3b4
    .line 875
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-BC"

    #@3b7
    const-string/jumbo v1, "PBEWITHSHA256AND192BITAES-CBC-BC"

    #@3ba
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3bd
    .line 876
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-BC"

    #@3c0
    const-string/jumbo v1, "PBEWITHSHA256AND256BITAES-CBC-BC"

    #@3c3
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3c6
    .line 878
    const-string/jumbo v0, "Cipher.PBEWITHMD5AND128BITAES-CBC-OPENSSL"

    #@3c9
    new-instance v1, Ljava/lang/StringBuilder;

    #@3cb
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3ce
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@3d0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d3
    move-result-object v1

    #@3d4
    const-string/jumbo v2, "$PBEWithAESCBC"

    #@3d7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3da
    move-result-object v1

    #@3db
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3de
    move-result-object v1

    #@3df
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3e2
    .line 879
    const-string/jumbo v0, "Cipher.PBEWITHMD5AND192BITAES-CBC-OPENSSL"

    #@3e5
    new-instance v1, Ljava/lang/StringBuilder;

    #@3e7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3ea
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@3ec
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ef
    move-result-object v1

    #@3f0
    const-string/jumbo v2, "$PBEWithAESCBC"

    #@3f3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f6
    move-result-object v1

    #@3f7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3fa
    move-result-object v1

    #@3fb
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@3fe
    .line 880
    const-string/jumbo v0, "Cipher.PBEWITHMD5AND256BITAES-CBC-OPENSSL"

    #@401
    new-instance v1, Ljava/lang/StringBuilder;

    #@403
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@406
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@408
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40b
    move-result-object v1

    #@40c
    const-string/jumbo v2, "$PBEWithAESCBC"

    #@40f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@412
    move-result-object v1

    #@413
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@416
    move-result-object v1

    #@417
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@41a
    .line 882
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHMD5AND128BITAES-CBC-OPENSSL"

    #@41d
    new-instance v1, Ljava/lang/StringBuilder;

    #@41f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@422
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@427
    move-result-object v1

    #@428
    const-string/jumbo v2, "$PBEWithMD5And128BitAESCBCOpenSSL"

    #@42b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42e
    move-result-object v1

    #@42f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@432
    move-result-object v1

    #@433
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@436
    .line 883
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHMD5AND192BITAES-CBC-OPENSSL"

    #@439
    new-instance v1, Ljava/lang/StringBuilder;

    #@43b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43e
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@443
    move-result-object v1

    #@444
    const-string/jumbo v2, "$PBEWithMD5And192BitAESCBCOpenSSL"

    #@447
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44a
    move-result-object v1

    #@44b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44e
    move-result-object v1

    #@44f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@452
    .line 884
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHMD5AND256BITAES-CBC-OPENSSL"

    #@455
    new-instance v1, Ljava/lang/StringBuilder;

    #@457
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45a
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@45c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45f
    move-result-object v1

    #@460
    const-string/jumbo v2, "$PBEWithMD5And256BitAESCBCOpenSSL"

    #@463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@466
    move-result-object v1

    #@467
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46a
    move-result-object v1

    #@46b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@46e
    .line 886
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND128BITAES-CBC-BC"

    #@471
    new-instance v1, Ljava/lang/StringBuilder;

    #@473
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@476
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47b
    move-result-object v1

    #@47c
    const-string/jumbo v2, "$PBEWithSHAAnd128BitAESBC"

    #@47f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@482
    move-result-object v1

    #@483
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@486
    move-result-object v1

    #@487
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@48a
    .line 887
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND192BITAES-CBC-BC"

    #@48d
    new-instance v1, Ljava/lang/StringBuilder;

    #@48f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@492
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@494
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@497
    move-result-object v1

    #@498
    const-string/jumbo v2, "$PBEWithSHAAnd192BitAESBC"

    #@49b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49e
    move-result-object v1

    #@49f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a2
    move-result-object v1

    #@4a3
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@4a6
    .line 888
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND256BITAES-CBC-BC"

    #@4a9
    new-instance v1, Ljava/lang/StringBuilder;

    #@4ab
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4ae
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@4b0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b3
    move-result-object v1

    #@4b4
    const-string/jumbo v2, "$PBEWithSHAAnd256BitAESBC"

    #@4b7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ba
    move-result-object v1

    #@4bb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4be
    move-result-object v1

    #@4bf
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@4c2
    .line 889
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHA256AND128BITAES-CBC-BC"

    #@4c5
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4ca
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@4cc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4cf
    move-result-object v1

    #@4d0
    const-string/jumbo v2, "$PBEWithSHA256And128BitAESBC"

    #@4d3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d6
    move-result-object v1

    #@4d7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4da
    move-result-object v1

    #@4db
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@4de
    .line 890
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHA256AND192BITAES-CBC-BC"

    #@4e1
    new-instance v1, Ljava/lang/StringBuilder;

    #@4e3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e6
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@4e8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4eb
    move-result-object v1

    #@4ec
    const-string/jumbo v2, "$PBEWithSHA256And192BitAESBC"

    #@4ef
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f2
    move-result-object v1

    #@4f3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f6
    move-result-object v1

    #@4f7
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@4fa
    .line 891
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHA256AND256BITAES-CBC-BC"

    #@4fd
    new-instance v1, Ljava/lang/StringBuilder;

    #@4ff
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@502
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/AES$Mappings;->PREFIX:Ljava/lang/String;

    #@504
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@507
    move-result-object v1

    #@508
    const-string/jumbo v2, "$PBEWithSHA256And256BitAESBC"

    #@50b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50e
    move-result-object v1

    #@50f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@512
    move-result-object v1

    #@513
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@516
    .line 892
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND128BITAES-CBC-BC"

    #@519
    const-string/jumbo v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@51c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@51f
    .line 893
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND192BITAES-CBC-BC"

    #@522
    const-string/jumbo v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@525
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@528
    .line 894
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND256BITAES-CBC-BC"

    #@52b
    const-string/jumbo v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@52e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@531
    .line 895
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND128BITAES-CBC-BC"

    #@534
    const-string/jumbo v1, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@537
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@53a
    .line 896
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND192BITAES-CBC-BC"

    #@53d
    const-string/jumbo v1, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@540
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@543
    .line 897
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND256BITAES-CBC-BC"

    #@546
    const-string/jumbo v1, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@549
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@54c
    .line 898
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-CBC-BC"

    #@54f
    const-string/jumbo v1, "PBEWITHSHA256AND128BITAES-CBC-BC"

    #@552
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@555
    .line 899
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-CBC-BC"

    #@558
    const-string/jumbo v1, "PBEWITHSHA256AND192BITAES-CBC-BC"

    #@55b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@55e
    .line 900
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-CBC-BC"

    #@561
    const-string/jumbo v1, "PBEWITHSHA256AND256BITAES-CBC-BC"

    #@564
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@567
    .line 901
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-BC"

    #@56a
    const-string/jumbo v1, "PBEWITHSHA256AND128BITAES-CBC-BC"

    #@56d
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@570
    .line 902
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-BC"

    #@573
    const-string/jumbo v1, "PBEWITHSHA256AND192BITAES-CBC-BC"

    #@576
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@579
    .line 903
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-BC"

    #@57c
    const-string/jumbo v1, "PBEWITHSHA256AND256BITAES-CBC-BC"

    #@57f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@582
    .line 904
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory"

    #@585
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@587
    const-string/jumbo v2, "PBEWITHSHAAND128BITAES-CBC-BC"

    #@58a
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@58d
    .line 905
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory"

    #@590
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@592
    const-string/jumbo v2, "PBEWITHSHAAND192BITAES-CBC-BC"

    #@595
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@598
    .line 906
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory"

    #@59b
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@59d
    const-string/jumbo v2, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@5a0
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@5a3
    .line 907
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory"

    #@5a6
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5a8
    const-string/jumbo v2, "PBEWITHSHA256AND128BITAES-CBC-BC"

    #@5ab
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@5ae
    .line 908
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory"

    #@5b1
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5b3
    const-string/jumbo v2, "PBEWITHSHA256AND192BITAES-CBC-BC"

    #@5b6
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@5b9
    .line 909
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory"

    #@5bc
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5be
    const-string/jumbo v2, "PBEWITHSHA256AND256BITAES-CBC-BC"

    #@5c1
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@5c4
    .line 911
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITAES-CBC-BC"

    #@5c7
    const-string/jumbo v1, "PKCS12PBE"

    #@5ca
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5cd
    .line 912
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND192BITAES-CBC-BC"

    #@5d0
    const-string/jumbo v1, "PKCS12PBE"

    #@5d3
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5d6
    .line 913
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND256BITAES-CBC-BC"

    #@5d9
    const-string/jumbo v1, "PKCS12PBE"

    #@5dc
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5df
    .line 914
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND128BITAES-CBC-BC"

    #@5e2
    const-string/jumbo v1, "PKCS12PBE"

    #@5e5
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5e8
    .line 915
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND192BITAES-CBC-BC"

    #@5eb
    const-string/jumbo v1, "PKCS12PBE"

    #@5ee
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5f1
    .line 916
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND256BITAES-CBC-BC"

    #@5f4
    const-string/jumbo v1, "PKCS12PBE"

    #@5f7
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5fa
    .line 917
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND128BITAES-CBC-BC"

    #@5fd
    const-string/jumbo v1, "PKCS12PBE"

    #@600
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@603
    .line 918
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND192BITAES-CBC-BC"

    #@606
    const-string/jumbo v1, "PKCS12PBE"

    #@609
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@60c
    .line 919
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND256BITAES-CBC-BC"

    #@60f
    const-string/jumbo v1, "PKCS12PBE"

    #@612
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@615
    .line 920
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND128BITAES-CBC-BC"

    #@618
    const-string/jumbo v1, "PKCS12PBE"

    #@61b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@61e
    .line 921
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND192BITAES-CBC-BC"

    #@621
    const-string/jumbo v1, "PKCS12PBE"

    #@624
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@627
    .line 922
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND256BITAES-CBC-BC"

    #@62a
    const-string/jumbo v1, "PKCS12PBE"

    #@62d
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@630
    .line 923
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND128BITAES-CBC-BC"

    #@633
    const-string/jumbo v1, "PKCS12PBE"

    #@636
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@639
    .line 924
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND192BITAES-CBC-BC"

    #@63c
    const-string/jumbo v1, "PKCS12PBE"

    #@63f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@642
    .line 925
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND256BITAES-CBC-BC"

    #@645
    const-string/jumbo v1, "PKCS12PBE"

    #@648
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@64b
    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    #@64d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@650
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@656
    move-result-object v0

    #@657
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@659
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@65c
    move-result-object v1

    #@65d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@660
    move-result-object v0

    #@661
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@664
    move-result-object v0

    #@665
    const-string/jumbo v1, "PKCS12PBE"

    #@668
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@66b
    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    #@66d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@670
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@676
    move-result-object v0

    #@677
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@679
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@67c
    move-result-object v1

    #@67d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@680
    move-result-object v0

    #@681
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@684
    move-result-object v0

    #@685
    const-string/jumbo v1, "PKCS12PBE"

    #@688
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@68b
    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    #@68d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@690
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@693
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@696
    move-result-object v0

    #@697
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@699
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@69c
    move-result-object v1

    #@69d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a0
    move-result-object v0

    #@6a1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a4
    move-result-object v0

    #@6a5
    const-string/jumbo v1, "PKCS12PBE"

    #@6a8
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6ab
    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    #@6ad
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6b0
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@6b3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b6
    move-result-object v0

    #@6b7
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6b9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@6bc
    move-result-object v1

    #@6bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c0
    move-result-object v0

    #@6c1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c4
    move-result-object v0

    #@6c5
    const-string/jumbo v1, "PKCS12PBE"

    #@6c8
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6cb
    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    #@6cd
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6d0
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@6d3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d6
    move-result-object v0

    #@6d7
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6d9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@6dc
    move-result-object v1

    #@6dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e0
    move-result-object v0

    #@6e1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e4
    move-result-object v0

    #@6e5
    const-string/jumbo v1, "PKCS12PBE"

    #@6e8
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6eb
    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    #@6ed
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6f0
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@6f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f6
    move-result-object v0

    #@6f7
    sget-object v1, Lcom/android/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6f9
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@6fc
    move-result-object v1

    #@6fd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@700
    move-result-object v0

    #@701
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@704
    move-result-object v0

    #@705
    const-string/jumbo v1, "PKCS12PBE"

    #@708
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@70b
    .line 728
    return-void
.end method
