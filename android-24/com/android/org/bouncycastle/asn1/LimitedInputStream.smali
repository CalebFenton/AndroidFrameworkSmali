.class abstract Lcom/android/org/bouncycastle/asn1/LimitedInputStream;
.super Ljava/io/InputStream;
.source "LimitedInputStream.java"


# instance fields
.field protected final _in:Ljava/io/InputStream;

.field private _limit:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 15
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    #@5
    .line 16
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->_limit:I

    #@7
    .line 13
    return-void
.end method


# virtual methods
.method getRemaining()I
    .locals 1

    #@0
    .prologue
    .line 22
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->_limit:I

    #@2
    return v0
.end method

.method protected setParentEofDetect(Z)V
    .locals 1
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    #@2
    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 29
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    #@8
    check-cast v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    #@d
    .line 25
    :cond_0
    return-void
.end method
