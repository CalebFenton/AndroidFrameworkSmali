.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/HybridValueParameterSpec;
.super Ljava/lang/Object;
.source "HybridValueParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field private volatile blacklist baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final blacklist hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile blacklist t:[B


# direct methods
.method public constructor blacklist <init>([BLjava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "t"    # [B
    .param p2, "baseSpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/HybridValueParameterSpec;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    .line 37
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/HybridValueParameterSpec;->baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 38
    return-void
.end method

.method private blacklist checkDestroyed()V
    .registers 3

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/HybridValueParameterSpec;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 98
    return-void

    .line 96
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "spec has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api destroy()V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/HybridValueParameterSpec;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clear([B)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    .line 88
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/HybridValueParameterSpec;->baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 90
    :cond_13
    return-void
.end method

.method public blacklist getBaseParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/HybridValueParameterSpec;->baseSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 63
    .local v0, "rv":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/HybridValueParameterSpec;->checkDestroyed()V

    .line 65
    return-object v0
.end method

.method public blacklist getT()[B
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/HybridValueParameterSpec;->t:[B

    .line 49
    .local v0, "tVal":[B
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/HybridValueParameterSpec;->checkDestroyed()V

    .line 51
    return-object v0
.end method

.method public whitelist test-api isDestroyed()Z
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/HybridValueParameterSpec;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
