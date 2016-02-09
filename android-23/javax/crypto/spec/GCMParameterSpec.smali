.class public Ljavax/crypto/spec/GCMParameterSpec;
.super Ljava/lang/Object;
.source "GCMParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final iv:[B

.field private final tagLen:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "tagLen"    # I
    .param p2, "iv"    # [B

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    if-gez p1, :cond_0

    #@5
    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "tag should be a non-negative integer"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 50
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "iv == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 53
    :cond_1
    iput p1, p0, Ljavax/crypto/spec/GCMParameterSpec;->tagLen:I

    #@1b
    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, [B

    #@21
    iput-object v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    #@23
    .line 46
    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 3
    .param p1, "tagLen"    # I
    .param p2, "iv"    # [B
    .param p3, "offset"    # I
    .param p4, "byteCount"    # I

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    if-gez p1, :cond_0

    #@5
    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v2, "tag should be a non-negative integer"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 72
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v2, "iv == null"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 76
    :cond_1
    :try_start_0
    array-length v1, p2

    #@1a
    invoke-static {v1, p3, p4}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 80
    iput p1, p0, Ljavax/crypto/spec/GCMParameterSpec;->tagLen:I

    #@1f
    .line 81
    add-int v1, p3, p4

    #@21
    invoke-static {p2, p3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@24
    move-result-object v1

    #@25
    iput-object v1, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    #@27
    .line 68
    return-void

    #@28
    .line 77
    :catch_0
    move-exception v0

    #@29
    .line 78
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2b
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@2e
    throw v1
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public getTLen()I
    .locals 1

    #@0
    .prologue
    .line 88
    iget v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->tagLen:I

    #@2
    return v0
.end method
