.class public Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.super Ljava/lang/Object;
.source "AsymmetricKeyParameter.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field privateKey:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "privateKey"    # Z

    #@0
    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 13
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->privateKey:Z

    #@5
    .line 11
    return-void
.end method


# virtual methods
.method public isPrivate()Z
    .locals 1

    #@0
    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->privateKey:Z

    #@2
    return v0
.end method
