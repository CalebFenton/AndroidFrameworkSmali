.class abstract Lcom/android/org/bouncycastle/asn1/LimitedInputStream;
.super Ljava/io/InputStream;
.source "LimitedInputStream.java"


# instance fields
.field protected final blacklist _in:Ljava/io/InputStream;

.field private blacklist _limit:I


# direct methods
.method constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    .line 20
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->_limit:I

    return-void
.end method


# virtual methods
.method blacklist getLimit()I
    .registers 1

    .line 25
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->_limit:I

    return p0
.end method

.method protected blacklist setParentEofDetect(Z)V
    .registers 3

    .line 30
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_b

    .line 32
    check-cast p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    :cond_b
    return-void
.end method
