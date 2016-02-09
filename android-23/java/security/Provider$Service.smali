.class public Ljava/security/Provider$Service;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field private static final ATTR_SUPPORTED_KEY_CLASSES:Ljava/lang/String; = "SupportedKeyClasses"

.field private static final ATTR_SUPPORTED_KEY_FORMATS:Ljava/lang/String; = "SupportedKeyFormats"

.field private static final constructorParameterClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final supportsParameterTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private algorithm:Ljava/lang/String;

.field private aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private className:Ljava/lang/String;

.field private implementation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private keyClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private keyFormats:[Ljava/lang/String;

.field private lastClassName:Ljava/lang/String;

.field private provider:Ljava/security/Provider;

.field private volatile supportedKeysInitialized:Z

.field private type:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/security/Provider$Service;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/security/Provider$Service;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ljava/security/Provider$Service;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Ljava/security/Provider$Service;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Ljava/security/Provider$Service;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 815
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 814
    sput-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@a
    .line 818
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@c
    const-string/jumbo v1, "AlgorithmParameterGenerator"

    #@f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 819
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@18
    const-string/jumbo v1, "AlgorithmParameters"

    #@1b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 820
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@24
    const-string/jumbo v1, "CertificateFactory"

    #@27
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 821
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@30
    const-string/jumbo v1, "CertPathBuilder"

    #@33
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 822
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@3c
    const-string/jumbo v1, "CertPathValidator"

    #@3f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    .line 823
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@48
    const-string/jumbo v1, "CertStore"

    #@4b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 824
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@54
    const-string/jumbo v1, "KeyFactory"

    #@57
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    .line 825
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@60
    const-string/jumbo v1, "KeyGenerator"

    #@63
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    .line 826
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@6c
    const-string/jumbo v1, "KeyManagerFactory"

    #@6f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    .line 827
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@78
    const-string/jumbo v1, "KeyPairGenerator"

    #@7b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    .line 828
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@84
    const-string/jumbo v1, "KeyStore"

    #@87
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    .line 829
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@90
    const-string/jumbo v1, "MessageDigest"

    #@93
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    .line 830
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@9c
    const-string/jumbo v1, "SecretKeyFactory"

    #@9f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a2
    move-result-object v2

    #@a3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a6
    .line 831
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@a8
    const-string/jumbo v1, "SecureRandom"

    #@ab
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b2
    .line 832
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@b4
    const-string/jumbo v1, "SSLContext"

    #@b7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@ba
    move-result-object v2

    #@bb
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@be
    .line 833
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@c0
    const-string/jumbo v1, "TrustManagerFactory"

    #@c3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c6
    move-result-object v2

    #@c7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ca
    .line 836
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@cc
    const-string/jumbo v1, "Cipher"

    #@cf
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d2
    move-result-object v2

    #@d3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d6
    .line 837
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@d8
    const-string/jumbo v1, "KeyAgreement"

    #@db
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@de
    move-result-object v2

    #@df
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e2
    .line 838
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@e4
    const-string/jumbo v1, "Mac"

    #@e7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@ea
    move-result-object v2

    #@eb
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ee
    .line 839
    sget-object v0, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@f0
    const-string/jumbo v1, "Signature"

    #@f3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f6
    move-result-object v2

    #@f7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fa
    .line 843
    new-instance v0, Ljava/util/HashMap;

    #@fc
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@ff
    sput-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@101
    .line 846
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@103
    const-string/jumbo v1, "CertStore"

    #@106
    .line 847
    const-string/jumbo v2, "java.security.cert.CertStoreParameters"

    #@109
    invoke-static {v2}, Ljava/security/Provider$Service;->loadClassOrThrow(Ljava/lang/String;)Ljava/lang/Class;

    #@10c
    move-result-object v2

    #@10d
    .line 846
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@110
    .line 850
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@112
    const-string/jumbo v1, "AlgorithmParameterGenerator"

    #@115
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@118
    .line 851
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@11a
    const-string/jumbo v1, "AlgorithmParameters"

    #@11d
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@120
    .line 852
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@122
    const-string/jumbo v1, "CertificateFactory"

    #@125
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@128
    .line 853
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@12a
    const-string/jumbo v1, "CertPathBuilder"

    #@12d
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@130
    .line 854
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@132
    const-string/jumbo v1, "CertPathValidator"

    #@135
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@138
    .line 855
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@13a
    const-string/jumbo v1, "KeyFactory"

    #@13d
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@140
    .line 856
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@142
    const-string/jumbo v1, "KeyGenerator"

    #@145
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@148
    .line 857
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@14a
    const-string/jumbo v1, "KeyManagerFactory"

    #@14d
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@150
    .line 858
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@152
    const-string/jumbo v1, "KeyPairGenerator"

    #@155
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@158
    .line 859
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@15a
    const-string/jumbo v1, "KeyStore"

    #@15d
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@160
    .line 860
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@162
    const-string/jumbo v1, "MessageDigest"

    #@165
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@168
    .line 861
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@16a
    const-string/jumbo v1, "SecretKeyFactory"

    #@16d
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@170
    .line 862
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@172
    const-string/jumbo v1, "SecureRandom"

    #@175
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@178
    .line 863
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@17a
    const-string/jumbo v1, "SSLContext"

    #@17d
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@180
    .line 864
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@182
    const-string/jumbo v1, "TrustManagerFactory"

    #@185
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@188
    .line 865
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@18a
    const-string/jumbo v1, "Cipher"

    #@18d
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@190
    .line 866
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@192
    const-string/jumbo v1, "KeyAgreement"

    #@195
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@198
    .line 867
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@19a
    const-string/jumbo v1, "Mac"

    #@19d
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a0
    .line 868
    sget-object v0, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@1a2
    const-string/jumbo v1, "Signature"

    #@1a5
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a8
    .line 806
    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 936
    .local p5, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 938
    if-nez p1, :cond_0

    #@5
    .line 939
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "provider == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 940
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 941
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "type == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 942
    :cond_1
    if-nez p3, :cond_2

    #@1b
    .line 943
    new-instance v0, Ljava/lang/NullPointerException;

    #@1d
    const-string/jumbo v1, "algorithm == null"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 944
    :cond_2
    if-nez p4, :cond_3

    #@26
    .line 945
    new-instance v0, Ljava/lang/NullPointerException;

    #@28
    const-string/jumbo v1, "className == null"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 947
    :cond_3
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@31
    .line 948
    iput-object p2, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@33
    .line 949
    iput-object p3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@35
    .line 950
    iput-object p4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@37
    .line 951
    if-eqz p5, :cond_4

    #@39
    invoke-interface {p5}, Ljava/util/List;->size()I

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_4

    #@3f
    .line 952
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@42
    move-result-object p5

    #@43
    .line 951
    .end local p5    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iput-object p5, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@45
    .line 954
    if-eqz p6, :cond_5

    #@47
    invoke-interface {p6}, Ljava/util/Map;->size()I

    #@4a
    move-result v0

    #@4b
    if-nez v0, :cond_5

    #@4d
    .line 955
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@50
    move-result-object p6

    #@51
    .line 953
    .end local p6    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    iput-object p6, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@53
    .line 937
    return-void
.end method

.method private ensureSupportedKeysInitialized()V
    .locals 11

    #@0
    .prologue
    .line 1183
    iget-boolean v8, p0, Ljava/security/Provider$Service;->supportedKeysInitialized:Z

    #@2
    if-eqz v8, :cond_0

    #@4
    .line 1184
    return-void

    #@5
    .line 1187
    :cond_0
    const-string/jumbo v8, "SupportedKeyClasses"

    #@8
    invoke-virtual {p0, v8}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v6

    #@c
    .line 1188
    .local v6, "supportedClassesString":Ljava/lang/String;
    if-eqz v6, :cond_3

    #@e
    .line 1189
    const-string/jumbo v8, "\\|"

    #@11
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    .line 1190
    .local v4, "keyClassNames":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    #@17
    .line 1191
    array-length v8, v4

    #@18
    .line 1190
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    #@1b
    .line 1192
    .local v5, "supportedClassList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    #@1e
    move-result-object v8

    #@1f
    invoke-virtual {v8}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@26
    move-result-object v0

    #@27
    .line 1193
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const/4 v8, 0x0

    #@28
    array-length v9, v4

    #@29
    :goto_0
    if-ge v8, v9, :cond_2

    #@2b
    aget-object v3, v4, v8

    #@2d
    .line 1195
    .local v3, "keyClassName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@30
    move-result-object v2

    #@31
    .line 1196
    .local v2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Ljava/security/Key;

    #@33
    invoke-virtual {v10, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@36
    move-result v10

    #@37
    if-eqz v10, :cond_1

    #@39
    .line 1197
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 1193
    .end local v2    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 1202
    .end local v3    # "keyClassName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@42
    move-result v8

    #@43
    new-array v8, v8, [Ljava/lang/Class;

    #@45
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@48
    move-result-object v8

    #@49
    check-cast v8, [Ljava/lang/Class;

    #@4b
    iput-object v8, p0, Ljava/security/Provider$Service;->keyClasses:[Ljava/lang/Class;

    #@4d
    .line 1205
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "keyClassNames":[Ljava/lang/String;
    .end local v5    # "supportedClassList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    :cond_3
    const-string/jumbo v8, "SupportedKeyFormats"

    #@50
    invoke-virtual {p0, v8}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v7

    #@54
    .line 1206
    .local v7, "supportedFormatString":Ljava/lang/String;
    if-eqz v7, :cond_4

    #@56
    .line 1207
    const-string/jumbo v8, "\\|"

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@5c
    move-result-object v8

    #@5d
    iput-object v8, p0, Ljava/security/Provider$Service;->keyFormats:[Ljava/lang/String;

    #@5f
    .line 1210
    :cond_4
    const/4 v8, 0x1

    #@60
    iput-boolean v8, p0, Ljava/security/Provider$Service;->supportedKeysInitialized:Z

    #@62
    .line 1182
    return-void

    #@63
    .line 1199
    .end local v7    # "supportedFormatString":Ljava/lang/String;
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v3    # "keyClassName":Ljava/lang/String;
    .restart local v4    # "keyClassNames":[Ljava/lang/String;
    .restart local v5    # "supportedClassList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    :catch_0
    move-exception v1

    #@64
    .local v1, "ignored":Ljava/lang/ClassNotFoundException;
    goto :goto_1
.end method

.method private static isInArray([Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "itemList":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    #@1
    .line 1236
    if-nez p1, :cond_0

    #@3
    .line 1237
    return v2

    #@4
    .line 1239
    :cond_0
    array-length v3, p0

    #@5
    move v1, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_2

    #@8
    aget-object v0, p0, v1

    #@a
    .line 1240
    .local v0, "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 1241
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 1239
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1244
    .end local v0    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return v2
.end method

.method private static isInArray([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "itemList":[Ljava/lang/Object;, "[TT;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    #@1
    .line 1219
    if-nez p1, :cond_0

    #@3
    .line 1220
    return v2

    #@4
    .line 1222
    :cond_0
    array-length v3, p0

    #@5
    move v1, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_2

    #@8
    aget-object v0, p0, v1

    #@a
    .line 1223
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 1224
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 1222
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1227
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    return v2
.end method

.method private static loadClassOrThrow(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 874
    :try_start_0
    const-class v1, Ljava/security/Provider;

    #@2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 875
    :catch_0
    move-exception v0

    #@c
    .line 876
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@11
    throw v1
.end method

.method private newInstanceNoParameter()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 1123
    :try_start_0
    iget-object v1, p0, Ljava/security/Provider$Service;->implementation:Ljava/lang/Class;

    #@2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1124
    :catch_0
    move-exception v0

    #@8
    .line 1125
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, " "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    iget-object v3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 1126
    const-string/jumbo v3, " implementation not found"

    #@25
    .line 1125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@30
    throw v1
.end method

.method private newInstanceWithParameter(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 1112
    .local p2, "parameterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    #@1
    :try_start_0
    new-array v2, v3, [Ljava/lang/Class;

    #@3
    const/4 v3, 0x0

    #@4
    aput-object p2, v2, v3

    #@6
    .line 1113
    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    #@7
    new-array v1, v3, [Ljava/lang/Object;

    #@9
    const/4 v3, 0x0

    #@a
    aput-object p1, v1, v3

    #@c
    .line 1114
    .local v1, "initargs":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/security/Provider$Service;->implementation:Ljava/lang/Class;

    #@e
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v3

    #@16
    return-object v3

    #@17
    .line 1115
    .end local v1    # "initargs":[Ljava/lang/Object;
    .end local v2    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    #@18
    .line 1116
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    iget-object v5, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    const-string/jumbo v5, " "

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    iget-object v5, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    .line 1117
    const-string/jumbo v5, " implementation not found"

    #@35
    .line 1116
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-direct {v3, v4, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@40
    throw v3
.end method


# virtual methods
.method addAlias(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 964
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@6
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 965
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@13
    .line 967
    :cond_1
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@18
    .line 963
    return-void
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1001
    iget-object v0, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getAliases()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1043
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@c
    .line 1046
    :cond_0
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@e
    return-object v0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1033
    if-nez p1, :cond_0

    #@3
    .line 1034
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "name == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1036
    :cond_0
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@e
    if-nez v0, :cond_1

    #@10
    .line 1037
    return-object v1

    #@11
    .line 1039
    :cond_1
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/String;

    #@19
    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1019
    iget-object v0, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 1010
    iget-object v0, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 990
    iget-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 1066
    iget-object v3, p0, Ljava/security/Provider$Service;->implementation:Ljava/lang/Class;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@6
    iget-object v4, p0, Ljava/security/Provider$Service;->lastClassName:Ljava/lang/String;

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 1080
    :goto_0
    sget-object v3, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@10
    iget-object v4, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@12
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_3

    #@18
    .line 1081
    if-nez p1, :cond_2

    #@1a
    .line 1082
    invoke-direct {p0}, Ljava/security/Provider$Service;->newInstanceNoParameter()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    return-object v3

    #@1f
    .line 1067
    :cond_0
    iget-object v3, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@21
    invoke-virtual {v3}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@28
    move-result-object v0

    #@29
    .line 1068
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    #@2b
    .line 1069
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@2e
    move-result-object v0

    #@2f
    .line 1072
    :cond_1
    :try_start_0
    iget-object v3, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@31
    const/4 v4, 0x1

    #@32
    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@35
    move-result-object v3

    #@36
    iput-object v3, p0, Ljava/security/Provider$Service;->implementation:Ljava/lang/Class;

    #@38
    .line 1073
    iget-object v3, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@3a
    iput-object v3, p0, Ljava/security/Provider$Service;->lastClassName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    goto :goto_0

    #@3d
    .line 1074
    :catch_0
    move-exception v1

    #@3e
    .line 1075
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    #@40
    new-instance v4, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    iget-object v5, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    const-string/jumbo v5, " "

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    iget-object v5, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    const-string/jumbo v5, " implementation not found: "

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v3

    #@6b
    .line 1085
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6e
    move-result-object v3

    #@6f
    .line 1084
    invoke-direct {p0, p1, v3}, Ljava/security/Provider$Service;->newInstanceWithParameter(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@72
    move-result-object v3

    #@73
    return-object v3

    #@74
    .line 1091
    :cond_3
    if-nez p1, :cond_4

    #@76
    .line 1092
    invoke-direct {p0}, Ljava/security/Provider$Service;->newInstanceNoParameter()Ljava/lang/Object;

    #@79
    move-result-object v3

    #@7a
    return-object v3

    #@7b
    .line 1096
    :cond_4
    sget-object v3, Ljava/security/Provider$Service;->constructorParameterClasses:Ljava/util/HashMap;

    #@7d
    iget-object v4, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@7f
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    move-result-object v2

    #@83
    check-cast v2, Ljava/lang/Class;

    #@85
    .line 1097
    .local v2, "expectedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_5

    #@87
    .line 1098
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@89
    new-instance v4, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v5, "Constructor parameter not supported for "

    #@91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    .line 1099
    iget-object v5, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@97
    .line 1098
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v4

    #@9f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v3

    #@a3
    .line 1101
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a6
    move-result-object v3

    #@a7
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@aa
    move-result v3

    #@ab
    if-nez v3, :cond_6

    #@ad
    .line 1102
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@af
    new-instance v4, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v5, "Expecting constructor parameter of type "

    #@b7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v4

    #@bb
    .line 1103
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@be
    move-result-object v5

    #@bf
    .line 1102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v4

    #@c3
    .line 1103
    const-string/jumbo v5, " but was "

    #@c6
    .line 1102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v4

    #@ca
    .line 1104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@cd
    move-result-object v5

    #@ce
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d1
    move-result-object v5

    #@d2
    .line 1102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v4

    #@d6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v4

    #@da
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@dd
    throw v3

    #@de
    .line 1106
    :cond_6
    invoke-direct {p0, p1, v2}, Ljava/security/Provider$Service;->newInstanceWithParameter(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@e1
    move-result-object v3

    #@e2
    return-object v3
.end method

.method putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 977
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@6
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 978
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    #@e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@11
    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@13
    .line 980
    :cond_1
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@15
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 976
    return-void
.end method

.method public supportsParameter(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "parameter"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 1140
    sget-object v2, Ljava/security/Provider$Service;->supportsParameterTypes:Ljava/util/HashMap;

    #@4
    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@6
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/lang/Boolean;

    #@c
    .line 1141
    .local v1, "supportsParameter":Ljava/lang/Boolean;
    if-nez v1, :cond_0

    #@e
    .line 1142
    return v4

    #@f
    .line 1144
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 1145
    new-instance v2, Ljava/security/InvalidParameterException;

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "Cannot use a parameter with "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    iget-object v4, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2

    #@31
    .line 1152
    :cond_1
    if-eqz p1, :cond_2

    #@33
    instance-of v2, p1, Ljava/security/Key;

    #@35
    if-eqz v2, :cond_3

    #@37
    .line 1156
    :cond_2
    invoke-direct {p0}, Ljava/security/Provider$Service;->ensureSupportedKeysInitialized()V

    #@3a
    .line 1159
    iget-object v2, p0, Ljava/security/Provider$Service;->keyClasses:[Ljava/lang/Class;

    #@3c
    if-nez v2, :cond_4

    #@3e
    iget-object v2, p0, Ljava/security/Provider$Service;->keyFormats:[Ljava/lang/String;

    #@40
    if-nez v2, :cond_4

    #@42
    .line 1160
    return v4

    #@43
    .line 1153
    :cond_3
    new-instance v2, Ljava/security/InvalidParameterException;

    #@45
    const-string/jumbo v3, "Parameter should be of type Key"

    #@48
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2

    #@4c
    .line 1164
    :cond_4
    if-nez p1, :cond_5

    #@4e
    .line 1165
    return v5

    #@4f
    :cond_5
    move-object v0, p1

    #@50
    .line 1168
    check-cast v0, Ljava/security/Key;

    #@52
    .line 1169
    .local v0, "keyParam":Ljava/security/Key;
    iget-object v2, p0, Ljava/security/Provider$Service;->keyClasses:[Ljava/lang/Class;

    #@54
    if-eqz v2, :cond_6

    #@56
    iget-object v2, p0, Ljava/security/Provider$Service;->keyClasses:[Ljava/lang/Class;

    #@58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5b
    move-result-object v3

    #@5c
    invoke-static {v2, v3}, Ljava/security/Provider$Service;->isInArray([Ljava/lang/Class;Ljava/lang/Class;)Z

    #@5f
    move-result v2

    #@60
    if-eqz v2, :cond_6

    #@62
    .line 1170
    return v4

    #@63
    .line 1172
    :cond_6
    iget-object v2, p0, Ljava/security/Provider$Service;->keyFormats:[Ljava/lang/String;

    #@65
    if-eqz v2, :cond_7

    #@67
    iget-object v2, p0, Ljava/security/Provider$Service;->keyFormats:[Ljava/lang/String;

    #@69
    invoke-interface {v0}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-static {v2, v3}, Ljava/security/Provider$Service;->isInArray([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@70
    move-result v2

    #@71
    if-eqz v2, :cond_7

    #@73
    .line 1173
    return v4

    #@74
    .line 1176
    :cond_7
    return v5
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "Provider "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    #@e
    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " Service "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 1256
    iget-object v2, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    #@1f
    .line 1255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 1256
    const-string/jumbo v2, "."

    #@26
    .line 1255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 1256
    iget-object v2, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    #@2c
    .line 1255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 1256
    const-string/jumbo v2, " "

    #@33
    .line 1255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 1256
    iget-object v2, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    #@39
    .line 1255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 1257
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@43
    if-eqz v1, :cond_0

    #@45
    .line 1258
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    const-string/jumbo v2, "\nAliases "

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    iget-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    #@57
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    .line 1260
    :cond_0
    iget-object v1, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@65
    if-eqz v1, :cond_1

    #@67
    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    const-string/jumbo v2, "\nAttributes "

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    iget-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    #@79
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    .line 1263
    :cond_1
    return-object v0
.end method
