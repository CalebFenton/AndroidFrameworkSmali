.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;
.source "SHA1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1;
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
    .line 171
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Mappings;->PREFIX:Ljava/lang/String;

    #@8
    .line 168
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/digest/DigestAlgorithmProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 4
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    #@0
    .prologue
    .line 179
    const-string/jumbo v0, "MessageDigest.SHA-1"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Mappings;->PREFIX:Ljava/lang/String;

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, "$Digest"

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
    .line 180
    const-string/jumbo v0, "Alg.Alias.MessageDigest.SHA1"

    #@1f
    const-string/jumbo v1, "SHA-1"

    #@22
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 181
    const-string/jumbo v0, "Alg.Alias.MessageDigest.SHA"

    #@28
    const-string/jumbo v1, "SHA-1"

    #@2b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v1, "Alg.Alias.MessageDigest."

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    const-string/jumbo v1, "SHA-1"

    #@47
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 184
    const-string/jumbo v0, "SHA1"

    #@4d
    new-instance v1, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Mappings;->PREFIX:Ljava/lang/String;

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    const-string/jumbo v2, "$HashMac"

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    new-instance v2, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Mappings;->PREFIX:Ljava/lang/String;

    #@6a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    const-string/jumbo v3, "$KeyGenerator"

    #@71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Mappings;->addHMACAlgorithm(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@7c
    .line 185
    const-string/jumbo v0, "SHA1"

    #@7f
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@81
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Mappings;->addHMACAlias(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@84
    .line 186
    const-string/jumbo v0, "SHA1"

    #@87
    sget-object v1, Lcom/android/org/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@89
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Mappings;->addHMACAlias(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    #@8c
    .line 188
    const-string/jumbo v0, "Mac.PBEWITHHMACSHA"

    #@8f
    new-instance v1, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Mappings;->PREFIX:Ljava/lang/String;

    #@96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    const-string/jumbo v2, "$SHA1Mac"

    #@9d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v1

    #@a5
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@a8
    .line 189
    const-string/jumbo v0, "Mac.PBEWITHHMACSHA1"

    #@ab
    new-instance v1, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Mappings;->PREFIX:Ljava/lang/String;

    #@b2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v1

    #@b6
    const-string/jumbo v2, "$SHA1Mac"

    #@b9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v1

    #@bd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v1

    #@c1
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@c4
    .line 190
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBEWITHHMACSHA"

    #@c7
    const-string/jumbo v1, "PBEWITHHMACSHA1"

    #@ca
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@cd
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v1, "Alg.Alias.SecretKeyFactory."

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v0

    #@d9
    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v0

    #@df
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v0

    #@e3
    const-string/jumbo v1, "PBEWITHHMACSHA1"

    #@e6
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@e9
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    #@eb
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ee
    const-string/jumbo v1, "Alg.Alias.Mac."

    #@f1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v0

    #@f5
    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v0

    #@fb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v0

    #@ff
    const-string/jumbo v1, "PBEWITHHMACSHA"

    #@102
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@105
    .line 194
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHHMACSHA1"

    #@108
    new-instance v1, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Mappings;->PREFIX:Ljava/lang/String;

    #@10f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v1

    #@113
    const-string/jumbo v2, "$PBEWithMacKeyFactory"

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
    .line 195
    const-string/jumbo v0, "SecretKeyFactory.PBKDF2WithHmacSHA1"

    #@124
    new-instance v1, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Mappings;->PREFIX:Ljava/lang/String;

    #@12b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v1

    #@12f
    const-string/jumbo v2, "$PBKDF2WithHmacSHA1UTF8"

    #@132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v1

    #@136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object v1

    #@13a
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@13d
    .line 196
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory.PBKDF2WithHmacSHA1AndUTF8"

    #@140
    const-string/jumbo v1, "PBKDF2WithHmacSHA1"

    #@143
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@146
    .line 197
    const-string/jumbo v0, "SecretKeyFactory.PBKDF2WithHmacSHA1And8BIT"

    #@149
    new-instance v1, Ljava/lang/StringBuilder;

    #@14b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14e
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/digest/SHA1$Mappings;->PREFIX:Ljava/lang/String;

    #@150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v1

    #@154
    const-string/jumbo v2, "$PBKDF2WithHmacSHA18BIT"

    #@157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v1

    #@15b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15e
    move-result-object v1

    #@15f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@162
    .line 177
    return-void
.end method
