.class public Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;
.super Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;
.source "ECPrivateKeySpec.java"


# instance fields
.field private d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 0
    .param p1, "d"    # Ljava/math/BigInteger;
    .param p2, "spec"    # Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    #@0
    .prologue
    .line 23
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jce/spec/ECKeySpec;-><init>(Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;)V

    #@3
    .line 25
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    #@5
    .line 21
    return-void
.end method


# virtual methods
.method public getD()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
