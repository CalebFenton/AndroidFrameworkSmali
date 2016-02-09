.class public Ljavax/crypto/spec/DHGenParameterSpec;
.super Ljava/lang/Object;
.source "DHGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final exponentSize:I

.field private final primeSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "primeSize"    # I
    .param p2, "exponentSize"    # I

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput p1, p0, Ljavax/crypto/spec/DHGenParameterSpec;->primeSize:I

    #@5
    .line 42
    iput p2, p0, Ljavax/crypto/spec/DHGenParameterSpec;->exponentSize:I

    #@7
    .line 40
    return-void
.end method


# virtual methods
.method public getExponentSize()I
    .locals 1

    #@0
    .prologue
    .line 60
    iget v0, p0, Ljavax/crypto/spec/DHGenParameterSpec;->exponentSize:I

    #@2
    return v0
.end method

.method public getPrimeSize()I
    .locals 1

    #@0
    .prologue
    .line 51
    iget v0, p0, Ljavax/crypto/spec/DHGenParameterSpec;->primeSize:I

    #@2
    return v0
.end method
