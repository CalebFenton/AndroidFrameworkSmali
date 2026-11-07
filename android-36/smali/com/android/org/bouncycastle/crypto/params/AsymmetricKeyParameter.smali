.class public abstract Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.super Ljava/lang/Object;
.source "AsymmetricKeyParameter.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field blacklist privateKey:Z


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->privateKey:Z

    return-void
.end method


# virtual methods
.method public blacklist isPrivate()Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->privateKey:Z

    return p0
.end method
