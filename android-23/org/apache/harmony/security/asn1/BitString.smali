.class public final Lorg/apache/harmony/security/asn1/BitString;
.super Ljava/lang/Object;
.source "BitString.java"


# static fields
.field private static final RESET_MASK:[B

.field private static final SET_MASK:[B


# instance fields
.field public final bytes:[B

.field public final unusedBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x8

    #@2
    .line 32
    new-array v0, v1, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lorg/apache/harmony/security/asn1/BitString;->SET_MASK:[B

    #@9
    .line 34
    new-array v0, v1, [B

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Lorg/apache/harmony/security/asn1/BitString;->RESET_MASK:[B

    #@10
    .line 30
    return-void

    #@11
    .line 32
    nop

    #@12
    :array_0
    .array-data 1
        -0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data

    #@1a
    .line 34
    :array_1
    .array-data 1
        0x7ft
        -0x41t
        -0x21t
        -0x11t
        -0x9t
        -0x5t
        -0x3t
        -0x2t
    .end array-data
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "unusedBits"    # I

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    if-ltz p2, :cond_0

    #@5
    const/4 v0, 0x7

    #@6
    if-le p2, v0, :cond_1

    #@8
    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Number of unused bits MUST be in range 0-7"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 55
    :cond_1
    array-length v0, p1

    #@12
    if-nez v0, :cond_2

    #@14
    if-eqz p2, :cond_2

    #@16
    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "For empty bit string unused bits MUST be 0"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 59
    :cond_2
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    #@21
    .line 60
    iput p2, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    #@23
    .line 49
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 3
    .param p1, "values"    # [Z

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    array-length v2, p1

    #@4
    rem-int/lit8 v2, v2, 0x8

    #@6
    iput v2, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    #@8
    .line 65
    array-length v2, p1

    #@9
    div-int/lit8 v1, v2, 0x8

    #@b
    .line 66
    .local v1, "size":I
    iget v2, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 67
    add-int/lit8 v1, v1, 0x1

    #@11
    .line 69
    :cond_0
    new-array v2, v1, [B

    #@13
    iput-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    #@15
    .line 70
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@17
    if-ge v0, v2, :cond_1

    #@19
    .line 71
    aget-boolean v2, p1, v0

    #@1b
    invoke-virtual {p0, v0, v2}, Lorg/apache/harmony/security/asn1/BitString;->setBit(IZ)V

    #@1e
    .line 70
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 63
    :cond_1
    return-void
.end method


# virtual methods
.method public getBit(I)Z
    .locals 5
    .param p1, "bit"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 76
    rem-int/lit8 v1, p1, 0x8

    #@3
    .line 77
    .local v1, "offset":I
    div-int/lit8 v0, p1, 0x8

    #@5
    .line 78
    .local v0, "index":I
    iget-object v3, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    #@7
    aget-byte v3, v3, v0

    #@9
    sget-object v4, Lorg/apache/harmony/security/asn1/BitString;->SET_MASK:[B

    #@b
    aget-byte v4, v4, v1

    #@d
    and-int/2addr v3, v4

    #@e
    if-eqz v3, :cond_0

    #@10
    const/4 v2, 0x1

    #@11
    :cond_0
    return v2
.end method

.method public setBit(IZ)V
    .locals 5
    .param p1, "bit"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 82
    rem-int/lit8 v1, p1, 0x8

    #@2
    .line 83
    .local v1, "offset":I
    div-int/lit8 v0, p1, 0x8

    #@4
    .line 84
    .local v0, "index":I
    if-eqz p2, :cond_0

    #@6
    .line 85
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    #@8
    aget-byte v3, v2, v0

    #@a
    sget-object v4, Lorg/apache/harmony/security/asn1/BitString;->SET_MASK:[B

    #@c
    aget-byte v4, v4, v1

    #@e
    or-int/2addr v3, v4

    #@f
    int-to-byte v3, v3

    #@10
    aput-byte v3, v2, v0

    #@12
    .line 81
    :goto_0
    return-void

    #@13
    .line 87
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    #@15
    aget-byte v3, v2, v0

    #@17
    sget-object v4, Lorg/apache/harmony/security/asn1/BitString;->RESET_MASK:[B

    #@19
    aget-byte v4, v4, v1

    #@1b
    and-int/2addr v3, v4

    #@1c
    int-to-byte v3, v3

    #@1d
    aput-byte v3, v2, v0

    #@1f
    goto :goto_0
.end method

.method public toBooleanArray()[Z
    .locals 4

    #@0
    .prologue
    .line 92
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    #@2
    array-length v2, v2

    #@3
    mul-int/lit8 v2, v2, 0x8

    #@5
    iget v3, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    #@7
    sub-int/2addr v2, v3

    #@8
    new-array v1, v2, [Z

    #@a
    .line 93
    .local v1, "result":[Z
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@c
    if-ge v0, v2, :cond_0

    #@e
    .line 94
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/BitString;->getBit(I)Z

    #@11
    move-result v2

    #@12
    aput-boolean v2, v1, v0

    #@14
    .line 93
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 96
    :cond_0
    return-object v1
.end method
