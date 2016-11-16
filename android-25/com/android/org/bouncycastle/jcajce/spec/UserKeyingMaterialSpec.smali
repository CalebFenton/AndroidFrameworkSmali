.class public Lcom/android/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;
.super Ljava/lang/Object;
.source "UserKeyingMaterialSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final userKeyingMaterial:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "userKeyingMaterial"    # [B

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 14
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->userKeyingMaterial:[B

    #@9
    .line 12
    return-void
.end method


# virtual methods
.method public getUserKeyingMaterial()[B
    .locals 1

    #@0
    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->userKeyingMaterial:[B

    #@2
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
