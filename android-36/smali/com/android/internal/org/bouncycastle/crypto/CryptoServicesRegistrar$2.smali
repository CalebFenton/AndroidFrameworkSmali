.class Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$2;
.super Ljava/lang/Object;
.source "CryptoServicesRegistrar.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/SecureRandomProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->setSecureRandom(Ljava/security/SecureRandom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$secureRandom:Ljava/security/SecureRandom;


# direct methods
.method constructor blacklist <init>(Ljava/security/SecureRandom;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$2;->val$secureRandom:Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get()Ljava/security/SecureRandom;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$2;->val$secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method
