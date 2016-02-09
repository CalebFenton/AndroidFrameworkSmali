.class Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
.super Ljava/lang/Object;
.source "ReasonsMask.java"


# static fields
.field static final allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;


# instance fields
.field private _reasons:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@2
    const v1, 0x80ff

    #@5
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    #@8
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@a
    .line 9
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 34
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    #@4
    .line 32
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "reasons"    # I

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    iput p1, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    #@5
    .line 23
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;)V
    .locals 1
    .param p1, "reasons"    # Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 20
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    #@9
    .line 18
    return-void
.end method


# virtual methods
.method addReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)V
    .locals 2
    .param p1, "mask"    # Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@0
    .prologue
    .line 53
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    #@2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    #@5
    move-result v1

    #@6
    or-int/2addr v0, v1

    #@7
    iput v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    #@9
    .line 51
    return-void
.end method

.method getReasons()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    #@2
    return v0
.end method

.method hasNewReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Z
    .locals 4
    .param p1, "mask"    # Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 89
    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    #@3
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    #@6
    move-result v2

    #@7
    iget v3, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    #@9
    xor-int/2addr v2, v3

    #@a
    or-int/2addr v1, v2

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method intersect(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    .locals 4
    .param p1, "mask"    # Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@0
    .prologue
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    #@5
    .line 77
    .local v0, "_mask":Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@7
    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    #@9
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    #@c
    move-result v3

    #@d
    and-int/2addr v2, v3

    #@e
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;)V

    #@14
    .line 78
    return-object v0
.end method

.method isAllReasons()Z
    .locals 2

    #@0
    .prologue
    .line 65
    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    #@2
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;

    #@4
    iget v1, v1, Lcom/android/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
