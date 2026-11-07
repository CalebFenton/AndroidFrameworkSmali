.class public Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.super Ljava/lang/Object;
.source "AsymmetricKeyParameter.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field blacklist privateKey:Z


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "privateKey"    # Z

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->privateKey:Z

    .line 18
    return-void
.end method


# virtual methods
.method public blacklist isPrivate()Z
    .registers 2

    .line 22
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->privateKey:Z

    return v0
.end method
