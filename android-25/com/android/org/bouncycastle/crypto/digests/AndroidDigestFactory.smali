.class public final Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;
.super Ljava/lang/Object;
.source "AndroidDigestFactory.java"


# static fields
.field private static final BouncyCastleFactoryClassName:Ljava/lang/String;

.field private static final FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

.field private static final OpenSSLFactoryClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-class v7, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;

    #@7
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v7

    #@b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v6

    #@f
    const-string/jumbo v7, "OpenSSL"

    #@12
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v6

    #@16
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    .line 26
    sput-object v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->OpenSSLFactoryClassName:Ljava/lang/String;

    #@1c
    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-class v7, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;

    #@23
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    const-string/jumbo v7, "BouncyCastle"

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    .line 28
    sput-object v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BouncyCastleFactoryClassName:Ljava/lang/String;

    #@38
    .line 35
    :try_start_0
    sget-object v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->OpenSSLFactoryClassName:Ljava/lang/String;

    #@3a
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3d
    move-result-object v5

    #@3e
    .line 37
    .local v5, "factoryImplementationClass":Ljava/lang/Class;
    const-string/jumbo v6, "com.android.org.conscrypt.NativeCrypto"

    #@41
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 51
    :goto_0
    const-class v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    #@46
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@49
    move-result v6

    #@4a
    if-nez v6, :cond_0

    #@4c
    .line 52
    new-instance v6, Ljava/lang/AssertionError;

    #@4e
    new-instance v7, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    .line 53
    const-string/jumbo v8, "does not implement AndroidDigestFactoryInterface"

    #@5a
    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@65
    throw v6

    #@66
    .line 38
    :catch_0
    move-exception v3

    #@67
    .line 40
    .local v3, "e1":Ljava/lang/ClassNotFoundException;
    :try_start_1
    sget-object v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BouncyCastleFactoryClassName:Ljava/lang/String;

    #@69
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@6c
    move-result-object v5

    #@6d
    goto :goto_0

    #@6e
    .line 41
    :catch_1
    move-exception v4

    #@6f
    .line 42
    .local v4, "e2":Ljava/lang/ClassNotFoundException;
    new-instance v0, Ljava/lang/AssertionError;

    #@71
    new-instance v6, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v7, "Failed to load AndroidDigestFactoryInterface implementation. Looked for "

    #@79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v6

    #@7d
    .line 45
    sget-object v7, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->OpenSSLFactoryClassName:Ljava/lang/String;

    #@7f
    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v6

    #@83
    .line 45
    const-string/jumbo v7, " and "

    #@86
    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v6

    #@8a
    .line 46
    sget-object v7, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BouncyCastleFactoryClassName:Ljava/lang/String;

    #@8c
    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v6

    #@94
    invoke-direct {v0, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@97
    .line 47
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@9a
    .line 48
    throw v0

    #@9b
    .line 56
    .end local v0    # "e":Ljava/lang/AssertionError;
    .end local v3    # "e1":Ljava/lang/ClassNotFoundException;
    .end local v4    # "e2":Ljava/lang/ClassNotFoundException;
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@9e
    move-result-object v6

    #@9f
    check-cast v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    #@a1
    sput-object v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    #@a3
    .line 25
    return-void

    #@a4
    .line 59
    :catch_2
    move-exception v1

    #@a5
    .line 60
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/AssertionError;

    #@a7
    invoke-direct {v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@aa
    throw v6

    #@ab
    .line 57
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    #@ac
    .line 58
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/AssertionError;

    #@ae
    invoke-direct {v6, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b1
    throw v6
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getMD5()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    #@0
    .prologue
    .line 65
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    #@0
    .prologue
    .line 69
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    #@0
    .prologue
    .line 73
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    #@0
    .prologue
    .line 77
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    #@0
    .prologue
    .line 81
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;
    .locals 1

    #@0
    .prologue
    .line 85
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
