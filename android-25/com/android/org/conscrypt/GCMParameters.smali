.class public Lcom/android/org/conscrypt/GCMParameters;
.super Ljava/lang/Object;
.source "GCMParameters.java"


# instance fields
.field public final iv:[B

.field public final tLen:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "tLen"    # I
    .param p2, "iv"    # [B

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput p1, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    #@5
    .line 33
    iput-object p2, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    #@7
    .line 31
    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    #@2
    return-object v0
.end method

.method public getTLen()I
    .locals 1

    #@0
    .prologue
    .line 40
    iget v0, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    #@2
    return v0
.end method
