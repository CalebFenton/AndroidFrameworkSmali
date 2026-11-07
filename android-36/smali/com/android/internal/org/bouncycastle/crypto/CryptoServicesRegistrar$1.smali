.class Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$1;
.super Ljava/lang/Object;
.source "CryptoServicesRegistrar.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesConstraints;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist check(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V
    .registers 2
    .param p1, "service"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    .line 46
    return-void
.end method
