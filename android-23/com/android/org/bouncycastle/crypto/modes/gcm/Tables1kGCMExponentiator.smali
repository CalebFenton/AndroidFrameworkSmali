.class public Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;
.super Ljava/lang/Object;
.source "Tables1kGCMExponentiator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field private lookupPowX2:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private ensureAvailable(I)V
    .locals 4
    .param p1, "bit"    # I

    #@0
    .prologue
    .line 45
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    #@2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    .line 46
    .local v0, "count":I
    if-gt v0, p1, :cond_1

    #@8
    .line 48
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    #@a
    add-int/lit8 v3, v0, -0x1

    #@c
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, [I

    #@12
    .line 51
    .local v1, "tmp":[I
    :cond_0
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    #@15
    move-result-object v1

    #@16
    .line 52
    invoke-static {v1, v1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([I[I)V

    #@19
    .line 53
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    #@1b
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1e
    .line 55
    add-int/lit8 v0, v0, 0x1

    #@20
    if-le v0, p1, :cond_0

    #@22
    .line 43
    .end local v1    # "tmp":[I
    :cond_1
    return-void
.end method


# virtual methods
.method public exponentiateX(J[B)V
    .locals 7
    .param p1, "pow"    # J
    .param p3, "output"    # [B

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 27
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->oneAsInts()[I

    #@5
    move-result-object v1

    #@6
    .line 28
    .local v1, "y":[I
    const/4 v0, 0x0

    #@7
    .line 29
    .local v0, "bit":I
    :goto_0
    cmp-long v2, p1, v4

    #@9
    if-lez v2, :cond_1

    #@b
    .line 31
    const-wide/16 v2, 0x1

    #@d
    and-long/2addr v2, p1

    #@e
    cmp-long v2, v2, v4

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 33
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->ensureAvailable(I)V

    #@15
    .line 34
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    #@17
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, [I

    #@1d
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([I[I)V

    #@20
    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    .line 37
    const/4 v2, 0x1

    #@23
    ushr-long/2addr p1, v2

    #@24
    goto :goto_0

    #@25
    .line 40
    :cond_1
    invoke-static {v1, p3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([I[B)V

    #@28
    .line 25
    return-void
.end method

.method public init([B)V
    .locals 3
    .param p1, "x"    # [B

    #@0
    .prologue
    .line 15
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    #@3
    move-result-object v0

    #@4
    .line 16
    .local v0, "y":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, [I

    #@11
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 18
    return-void

    #@18
    .line 21
    :cond_0
    new-instance v1, Ljava/util/Vector;

    #@1a
    const/16 v2, 0x8

    #@1c
    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    #@1f
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    #@21
    .line 22
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    #@23
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@26
    .line 13
    return-void
.end method
