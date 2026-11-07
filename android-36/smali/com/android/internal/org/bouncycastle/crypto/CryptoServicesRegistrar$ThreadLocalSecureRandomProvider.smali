.class Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;
.super Ljava/lang/Object;
.source "CryptoServicesRegistrar.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/SecureRandomProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadLocalSecureRandomProvider"
.end annotation


# instance fields
.field final blacklist defaultRandoms:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;->defaultRandoms:Ljava/lang/ThreadLocal;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get()Ljava/security/SecureRandom;
    .registers 3

    .line 536
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;->defaultRandoms:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 538
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;->defaultRandoms:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 541
    :cond_12
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$ThreadLocalSecureRandomProvider;->defaultRandoms:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    return-object v0
.end method
