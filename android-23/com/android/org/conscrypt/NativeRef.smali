.class public abstract Lcom/android/org/conscrypt/NativeRef;
.super Ljava/lang/Object;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/NativeRef$EC_GROUP;,
        Lcom/android/org/conscrypt/NativeRef$EC_POINT;,
        Lcom/android/org/conscrypt/NativeRef$EVP_AEAD_CTX;,
        Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;,
        Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;,
        Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;
    }
.end annotation


# instance fields
.field final context:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "ctx"    # J

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    const-wide/16 v0, 0x0

    #@5
    cmp-long v0, p1, v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v1, "ctx == 0"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 31
    :cond_0
    iput-wide p1, p0, Lcom/android/org/conscrypt/NativeRef;->context:J

    #@14
    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 36
    instance-of v1, p1, Lcom/android/org/conscrypt/NativeRef;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 37
    return v0

    #@6
    .line 40
    :cond_0
    check-cast p1, Lcom/android/org/conscrypt/NativeRef;

    #@8
    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p1, Lcom/android/org/conscrypt/NativeRef;->context:J

    #@a
    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeRef;->context:J

    #@c
    cmp-long v1, v2, v4

    #@e
    if-nez v1, :cond_1

    #@10
    const/4 v0, 0x1

    #@11
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeRef;->context:J

    #@2
    long-to-int v0, v0

    #@3
    return v0
.end method
