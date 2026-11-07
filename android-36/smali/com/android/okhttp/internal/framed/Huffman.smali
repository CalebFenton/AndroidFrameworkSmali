.class Lcom/android/okhttp/internal/framed/Huffman;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/framed/Huffman$Node;
    }
.end annotation


# static fields
.field private static final blacklist CODES:[I

.field private static final blacklist CODE_LENGTHS:[B

.field private static final blacklist INSTANCE:Lcom/android/okhttp/internal/framed/Huffman;


# instance fields
.field private final blacklist root:Lcom/android/okhttp/internal/framed/Huffman$Node;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const/16 v0, 0x100

    .line 36
    new-array v1, v0, [I

    fill-array-data v1, :array_18

    sput-object v1, Lcom/android/okhttp/internal/framed/Huffman;->CODES:[I

    .line 64
    new-array v0, v0, [B

    fill-array-data v0, :array_21c

    sput-object v0, Lcom/android/okhttp/internal/framed/Huffman;->CODE_LENGTHS:[B

    .line 78
    new-instance v0, Lcom/android/okhttp/internal/framed/Huffman;

    invoke-direct {v0}, Lcom/android/okhttp/internal/framed/Huffman;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/framed/Huffman;->INSTANCE:Lcom/android/okhttp/internal/framed/Huffman;

    return-void

    :array_18
    .array-data 4
        0x1ff8
        0x7fffd8
        0xfffffe2
        0xfffffe3
        0xfffffe4
        0xfffffe5
        0xfffffe6
        0xfffffe7
        0xfffffe8
        0xffffea
        0x3ffffffc    # 1.9999995f
        0xfffffe9
        0xfffffea
        0x3ffffffd    # 1.9999996f
        0xfffffeb
        0xfffffec
        0xfffffed
        0xfffffee
        0xfffffef
        0xffffff0
        0xffffff1
        0xffffff2
        0x3ffffffe    # 1.9999998f
        0xffffff3
        0xffffff4
        0xffffff5
        0xffffff6
        0xffffff7
        0xffffff8
        0xffffff9
        0xffffffa
        0xffffffb
        0x14
        0x3f8
        0x3f9
        0xffa
        0x1ff9
        0x15
        0xf8
        0x7fa
        0x3fa
        0x3fb
        0xf9
        0x7fb
        0xfa
        0x16
        0x17
        0x18
        0x0
        0x1
        0x2
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x5c
        0xfb
        0x7ffc
        0x20
        0xffb
        0x3fc
        0x1ffa
        0x21
        0x5d
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0xfc
        0x73
        0xfd
        0x1ffb
        0x7fff0
        0x1ffc
        0x3ffc
        0x22
        0x7ffd
        0x3
        0x23
        0x4
        0x24
        0x5
        0x25
        0x26
        0x27
        0x6
        0x74
        0x75
        0x28
        0x29
        0x2a
        0x7
        0x2b
        0x76
        0x2c
        0x8
        0x9
        0x2d
        0x77
        0x78
        0x79
        0x7a
        0x7b
        0x7ffe
        0x7fc
        0x3ffd
        0x1ffd
        0xffffffc
        0xfffe6
        0x3fffd2
        0xfffe7
        0xfffe8
        0x3fffd3
        0x3fffd4
        0x3fffd5
        0x7fffd9
        0x3fffd6
        0x7fffda
        0x7fffdb
        0x7fffdc
        0x7fffdd
        0x7fffde
        0xffffeb
        0x7fffdf
        0xffffec
        0xffffed
        0x3fffd7
        0x7fffe0
        0xffffee
        0x7fffe1
        0x7fffe2
        0x7fffe3
        0x7fffe4
        0x1fffdc
        0x3fffd8
        0x7fffe5
        0x3fffd9
        0x7fffe6
        0x7fffe7
        0xffffef
        0x3fffda
        0x1fffdd
        0xfffe9
        0x3fffdb
        0x3fffdc
        0x7fffe8
        0x7fffe9
        0x1fffde
        0x7fffea
        0x3fffdd
        0x3fffde
        0xfffff0
        0x1fffdf
        0x3fffdf
        0x7fffeb
        0x7fffec
        0x1fffe0
        0x1fffe1
        0x3fffe0
        0x1fffe2
        0x7fffed
        0x3fffe1
        0x7fffee
        0x7fffef
        0xfffea
        0x3fffe2
        0x3fffe3
        0x3fffe4
        0x7ffff0
        0x3fffe5
        0x3fffe6
        0x7ffff1
        0x3ffffe0
        0x3ffffe1
        0xfffeb
        0x7fff1
        0x3fffe7
        0x7ffff2
        0x3fffe8
        0x1ffffec
        0x3ffffe2
        0x3ffffe3
        0x3ffffe4
        0x7ffffde
        0x7ffffdf
        0x3ffffe5
        0xfffff1
        0x1ffffed
        0x7fff2
        0x1fffe3
        0x3ffffe6
        0x7ffffe0
        0x7ffffe1
        0x3ffffe7
        0x7ffffe2
        0xfffff2
        0x1fffe4
        0x1fffe5
        0x3ffffe8
        0x3ffffe9
        0xffffffd
        0x7ffffe3
        0x7ffffe4
        0x7ffffe5
        0xfffec
        0xfffff3
        0xfffed
        0x1fffe6
        0x3fffe9
        0x1fffe7
        0x1fffe8
        0x7ffff3
        0x3fffea
        0x3fffeb
        0x1ffffee
        0x1ffffef
        0xfffff4
        0xfffff5
        0x3ffffea
        0x7ffff4
        0x3ffffeb
        0x7ffffe6
        0x3ffffec
        0x3ffffed
        0x7ffffe7
        0x7ffffe8
        0x7ffffe9
        0x7ffffea
        0x7ffffeb
        0xffffffe
        0x7ffffec
        0x7ffffed
        0x7ffffee
        0x7ffffef
        0x7fffff0
        0x3ffffee
    .end array-data

    :array_21c
    .array-data 1
        0xdt
        0x17t
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x18t
        0x1et
        0x1ct
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x6t
        0xat
        0xat
        0xct
        0xdt
        0x6t
        0x8t
        0xbt
        0xat
        0xat
        0x8t
        0xbt
        0x8t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x8t
        0xft
        0x6t
        0xct
        0xat
        0xdt
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x7t
        0x8t
        0xdt
        0x13t
        0xdt
        0xet
        0x6t
        0xft
        0x5t
        0x6t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x7t
        0x6t
        0x5t
        0x5t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0xft
        0xbt
        0xet
        0xdt
        0x1ct
        0x14t
        0x16t
        0x14t
        0x14t
        0x16t
        0x16t
        0x16t
        0x17t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x17t
        0x18t
        0x18t
        0x16t
        0x17t
        0x18t
        0x17t
        0x17t
        0x17t
        0x17t
        0x15t
        0x16t
        0x17t
        0x16t
        0x17t
        0x17t
        0x18t
        0x16t
        0x15t
        0x14t
        0x16t
        0x16t
        0x17t
        0x17t
        0x15t
        0x17t
        0x16t
        0x16t
        0x18t
        0x15t
        0x16t
        0x17t
        0x17t
        0x15t
        0x15t
        0x16t
        0x15t
        0x17t
        0x16t
        0x17t
        0x17t
        0x14t
        0x16t
        0x16t
        0x16t
        0x17t
        0x16t
        0x16t
        0x17t
        0x1at
        0x1at
        0x14t
        0x13t
        0x16t
        0x17t
        0x16t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1at
        0x18t
        0x19t
        0x13t
        0x15t
        0x1at
        0x1bt
        0x1bt
        0x1at
        0x1bt
        0x18t
        0x15t
        0x15t
        0x1at
        0x1at
        0x1ct
        0x1bt
        0x1bt
        0x1bt
        0x14t
        0x18t
        0x14t
        0x15t
        0x16t
        0x15t
        0x15t
        0x17t
        0x16t
        0x16t
        0x19t
        0x19t
        0x18t
        0x18t
        0x1at
        0x17t
        0x1at
        0x1bt
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1at
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/okhttp/internal/framed/Huffman$Node;

    invoke-direct {v0}, Lcom/android/okhttp/internal/framed/Huffman$Node;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Huffman;->root:Lcom/android/okhttp/internal/framed/Huffman$Node;

    .line 87
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Huffman;->buildTree()V

    return-void
.end method

.method private blacklist addCode(IIB)V
    .registers 7

    .line 172
    new-instance v0, Lcom/android/okhttp/internal/framed/Huffman$Node;

    invoke-direct {v0, p1, p3}, Lcom/android/okhttp/internal/framed/Huffman$Node;-><init>(II)V

    .line 174
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Huffman;->root:Lcom/android/okhttp/internal/framed/Huffman$Node;

    :goto_7
    const/16 p1, 0x8

    if-le p3, p1, :cond_3a

    add-int/lit8 p3, p3, -0x8

    int-to-byte p3, p3

    ushr-int p1, p2, p3

    and-int/lit16 p1, p1, 0xff

    .line 178
    # getter for: Lcom/android/okhttp/internal/framed/Huffman$Node;->children:[Lcom/android/okhttp/internal/framed/Huffman$Node;
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/Huffman$Node;->access$000(Lcom/android/okhttp/internal/framed/Huffman$Node;)[Lcom/android/okhttp/internal/framed/Huffman$Node;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 181
    # getter for: Lcom/android/okhttp/internal/framed/Huffman$Node;->children:[Lcom/android/okhttp/internal/framed/Huffman$Node;
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/Huffman$Node;->access$000(Lcom/android/okhttp/internal/framed/Huffman$Node;)[Lcom/android/okhttp/internal/framed/Huffman$Node;

    move-result-object v1

    aget-object v1, v1, p1

    if-nez v1, :cond_2b

    .line 182
    # getter for: Lcom/android/okhttp/internal/framed/Huffman$Node;->children:[Lcom/android/okhttp/internal/framed/Huffman$Node;
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/Huffman$Node;->access$000(Lcom/android/okhttp/internal/framed/Huffman$Node;)[Lcom/android/okhttp/internal/framed/Huffman$Node;

    move-result-object v1

    new-instance v2, Lcom/android/okhttp/internal/framed/Huffman$Node;

    invoke-direct {v2}, Lcom/android/okhttp/internal/framed/Huffman$Node;-><init>()V

    aput-object v2, v1, p1

    .line 184
    :cond_2b
    # getter for: Lcom/android/okhttp/internal/framed/Huffman$Node;->children:[Lcom/android/okhttp/internal/framed/Huffman$Node;
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/Huffman$Node;->access$000(Lcom/android/okhttp/internal/framed/Huffman$Node;)[Lcom/android/okhttp/internal/framed/Huffman$Node;

    move-result-object p0

    aget-object p0, p0, p1

    goto :goto_7

    .line 179
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid dictionary: prefix not unique"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    sub-int/2addr p1, p3

    shl-int/2addr p2, p1

    and-int/lit16 p2, p2, 0xff

    const/4 p3, 0x1

    shl-int p1, p3, p1

    move p3, p2

    :goto_42
    add-int v1, p2, p1

    if-ge p3, v1, :cond_4f

    .line 191
    # getter for: Lcom/android/okhttp/internal/framed/Huffman$Node;->children:[Lcom/android/okhttp/internal/framed/Huffman$Node;
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/Huffman$Node;->access$000(Lcom/android/okhttp/internal/framed/Huffman$Node;)[Lcom/android/okhttp/internal/framed/Huffman$Node;

    move-result-object v1

    aput-object v0, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_42

    :cond_4f
    return-void
.end method

.method private blacklist buildTree()V
    .registers 4

    const/4 v0, 0x0

    .line 166
    :goto_1
    sget-object v1, Lcom/android/okhttp/internal/framed/Huffman;->CODE_LENGTHS:[B

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 167
    sget-object v2, Lcom/android/okhttp/internal/framed/Huffman;->CODES:[I

    aget v2, v2, v0

    aget-byte v1, v1, v0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/okhttp/internal/framed/Huffman;->addCode(IIB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public static blacklist get()Lcom/android/okhttp/internal/framed/Huffman;
    .registers 1

    .line 81
    sget-object v0, Lcom/android/okhttp/internal/framed/Huffman;->INSTANCE:Lcom/android/okhttp/internal/framed/Huffman;

    return-object v0
.end method


# virtual methods
.method blacklist decode([B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Huffman;->root:Lcom/android/okhttp/internal/framed/Huffman$Node;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 132
    :goto_a
    array-length v5, p1

    if-ge v2, v5, :cond_41

    .line 133
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x8

    :goto_16
    const/16 v5, 0x8

    if-lt v4, v5, :cond_3e

    add-int/lit8 v5, v4, -0x8

    ushr-int v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    .line 138
    # getter for: Lcom/android/okhttp/internal/framed/Huffman$Node;->children:[Lcom/android/okhttp/internal/framed/Huffman$Node;
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/Huffman$Node;->access$000(Lcom/android/okhttp/internal/framed/Huffman$Node;)[Lcom/android/okhttp/internal/framed/Huffman$Node;

    move-result-object v1

    aget-object v1, v1, v5

    .line 139
    # getter for: Lcom/android/okhttp/internal/framed/Huffman$Node;->children:[Lcom/android/okhttp/internal/framed/Huffman$Node;
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/Huffman$Node;->access$000(Lcom/android/okhttp/internal/framed/Huffman$Node;)[Lcom/android/okhttp/internal/framed/Huffman$Node;

    move-result-object v5

    if-nez v5, :cond_3b

    .line 141
    # getter for: Lcom/android/okhttp/internal/framed/Huffman$Node;->symbol:I
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/Huffman$Node;->access$100(Lcom/android/okhttp/internal/framed/Huffman$Node;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 142
    # getter for: Lcom/android/okhttp/internal/framed/Huffman$Node;->terminalBits:I
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/Huffman$Node;->access$200(Lcom/android/okhttp/internal/framed/Huffman$Node;)I

    move-result v1

    sub-int/2addr v4, v1

    .line 143
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Huffman;->root:Lcom/android/okhttp/internal/framed/Huffman$Node;

    goto :goto_16

    :cond_3b
    add-int/lit8 v4, v4, -0x8

    goto :goto_16

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_41
    :goto_41
    if-lez v4, :cond_6b

    rsub-int/lit8 p1, v4, 0x8

    shl-int p1, v3, p1

    and-int/lit16 p1, p1, 0xff

    .line 153
    # getter for: Lcom/android/okhttp/internal/framed/Huffman$Node;->children:[Lcom/android/okhttp/internal/framed/Huffman$Node;
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/Huffman$Node;->access$000(Lcom/android/okhttp/internal/framed/Huffman$Node;)[Lcom/android/okhttp/internal/framed/Huffman$Node;

    move-result-object v1

    aget-object p1, v1, p1

    .line 154
    # getter for: Lcom/android/okhttp/internal/framed/Huffman$Node;->children:[Lcom/android/okhttp/internal/framed/Huffman$Node;
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/Huffman$Node;->access$000(Lcom/android/okhttp/internal/framed/Huffman$Node;)[Lcom/android/okhttp/internal/framed/Huffman$Node;

    move-result-object v1

    if-nez v1, :cond_6b

    # getter for: Lcom/android/okhttp/internal/framed/Huffman$Node;->terminalBits:I
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/Huffman$Node;->access$200(Lcom/android/okhttp/internal/framed/Huffman$Node;)I

    move-result v1

    if-le v1, v4, :cond_5c

    goto :goto_6b

    .line 157
    :cond_5c
    # getter for: Lcom/android/okhttp/internal/framed/Huffman$Node;->symbol:I
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/Huffman$Node;->access$100(Lcom/android/okhttp/internal/framed/Huffman$Node;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 158
    # getter for: Lcom/android/okhttp/internal/framed/Huffman$Node;->terminalBits:I
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/Huffman$Node;->access$200(Lcom/android/okhttp/internal/framed/Huffman$Node;)I

    move-result p1

    sub-int/2addr v4, p1

    .line 159
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Huffman;->root:Lcom/android/okhttp/internal/framed/Huffman$Node;

    goto :goto_41

    .line 162
    :cond_6b
    :goto_6b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method blacklist encode([BLjava/io/OutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    move-wide v1, v0

    move v0, p0

    .line 94
    :goto_5
    array-length v3, p1

    const/16 v4, 0xff

    if-ge p0, v3, :cond_29

    .line 95
    aget-byte v3, p1, p0

    and-int/2addr v3, v4

    .line 96
    sget-object v4, Lcom/android/okhttp/internal/framed/Huffman;->CODES:[I

    aget v4, v4, v3

    .line 97
    sget-object v5, Lcom/android/okhttp/internal/framed/Huffman;->CODE_LENGTHS:[B

    aget-byte v3, v5, v3

    shl-long/2addr v1, v3

    int-to-long v4, v4

    or-long/2addr v1, v4

    add-int/2addr v0, v3

    :goto_19
    const/16 v3, 0x8

    if-lt v0, v3, :cond_26

    add-int/lit8 v0, v0, -0x8

    shr-long v3, v1, v0

    long-to-int v3, v3

    .line 105
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_19

    :cond_26
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_29
    if-lez v0, :cond_37

    rsub-int/lit8 p0, v0, 0x8

    shl-long p0, v1, p0

    ushr-int v0, v4, v0

    int-to-long v0, v0

    or-long/2addr p0, v0

    long-to-int p0, p0

    .line 112
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    :cond_37
    return-void
.end method

.method blacklist encodedLength([B)I
    .registers 6

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    .line 119
    :goto_3
    array-length v2, p1

    if-ge p0, v2, :cond_13

    .line 120
    aget-byte v2, p1, p0

    and-int/lit16 v2, v2, 0xff

    .line 121
    sget-object v3, Lcom/android/okhttp/internal/framed/Huffman;->CODE_LENGTHS:[B

    aget-byte v2, v3, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_13
    const-wide/16 p0, 0x7

    add-long/2addr v0, p0

    const/4 p0, 0x3

    shr-long p0, v0, p0

    long-to-int p0, p0

    return p0
.end method
