.class public final Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256Engine;
.super Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;
.source "Zuc256Engine.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>()V

    .line 20
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "pLength"    # I

    .line 29
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>(I)V

    .line 30
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256Engine;)V
    .registers 2
    .param p1, "pSource"    # Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256Engine;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;)V

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist copy()Lcom/android/internal/org/bouncycastle/util/Memoable;
    .registers 2

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256Engine;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256Engine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256Engine;)V

    return-object v0
.end method
