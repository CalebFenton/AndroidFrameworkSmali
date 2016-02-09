.class public Lcom/android/org/bouncycastle/jcajce/provider/digest/MD5$Digest;
.super Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.source "MD5.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/digest/MD5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    #@5
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@8
    .line 44
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/digest/MD5$Digest;

    #@6
    .line 53
    .local v0, "d":Lcom/android/org/bouncycastle/jcajce/provider/digest/MD5$Digest;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;

    #@8
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/digest/MD5$Digest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@a
    check-cast v1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;

    #@c
    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;)V

    #@f
    iput-object v2, v0, Lcom/android/org/bouncycastle/jcajce/provider/digest/MD5$Digest;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@11
    .line 55
    return-object v0
.end method
