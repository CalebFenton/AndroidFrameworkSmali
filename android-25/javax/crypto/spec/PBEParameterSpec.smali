.class public Ljavax/crypto/spec/PBEParameterSpec;
.super Ljava/lang/Object;
.source "PBEParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private iterationCount:I

.field private salt:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [B

    #@9
    iput-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    #@b
    .line 57
    iput p2, p0, Ljavax/crypto/spec/PBEParameterSpec;->iterationCount:I

    #@d
    .line 55
    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->iterationCount:I

    #@2
    return v0
.end method

.method public getSalt()[B
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method
