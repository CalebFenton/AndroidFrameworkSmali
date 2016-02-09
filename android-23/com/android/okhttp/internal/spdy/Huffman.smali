.class Lcom/android/okhttp/internal/spdy/Huffman;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/spdy/Huffman$Node;
    }
.end annotation


# static fields
.field private static final CODES:[I

.field private static final CODE_LENGTHS:[B

.field private static final INSTANCE:Lcom/android/okhttp/internal/spdy/Huffman;


# instance fields
.field private final root:Lcom/android/okhttp/internal/spdy/Huffman$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x100

    #@2
    .line 35
    new-array v0, v1, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/okhttp/internal/spdy/Huffman;->CODES:[I

    #@9
    .line 63
    new-array v0, v1, [B

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Lcom/android/okhttp/internal/spdy/Huffman;->CODE_LENGTHS:[B

    #@10
    .line 77
    new-instance v0, Lcom/android/okhttp/internal/spdy/Huffman;

    #@12
    invoke-direct {v0}, Lcom/android/okhttp/internal/spdy/Huffman;-><init>()V

    #@15
    sput-object v0, Lcom/android/okhttp/internal/spdy/Huffman;->INSTANCE:Lcom/android/okhttp/internal/spdy/Huffman;

    #@17
    .line 31
    return-void

    #@18
    .line 35
    :array_0
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

    #@21c
    .line 63
    :array_1
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

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    new-instance v0, Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@5
    invoke-direct {v0}, Lcom/android/okhttp/internal/spdy/Huffman$Node;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Huffman;->root:Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@a
    .line 86
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/Huffman;->buildTree()V

    #@d
    .line 85
    return-void
.end method

.method private addCode(IIB)V
    .locals 8
    .param p1, "sym"    # I
    .param p2, "code"    # I
    .param p3, "len"    # B

    #@0
    .prologue
    .line 171
    new-instance v5, Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@2
    invoke-direct {v5, p1, p3}, Lcom/android/okhttp/internal/spdy/Huffman$Node;-><init>(II)V

    #@5
    .line 173
    .local v5, "terminal":Lcom/android/okhttp/internal/spdy/Huffman$Node;
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Huffman;->root:Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@7
    .line 174
    .local v0, "current":Lcom/android/okhttp/internal/spdy/Huffman$Node;
    :goto_0
    const/16 v6, 0x8

    #@9
    if-le p3, v6, :cond_2

    #@b
    .line 175
    add-int/lit8 v6, p3, -0x8

    #@d
    int-to-byte p3, v6

    #@e
    .line 176
    ushr-int v6, p2, p3

    #@10
    and-int/lit16 v2, v6, 0xff

    #@12
    .line 177
    .local v2, "i":I
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->-get0(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@15
    move-result-object v6

    #@16
    if-nez v6, :cond_0

    #@18
    .line 178
    new-instance v6, Ljava/lang/IllegalStateException;

    #@1a
    const-string/jumbo v7, "invalid dictionary: prefix not unique"

    #@1d
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@20
    throw v6

    #@21
    .line 180
    :cond_0
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->-get0(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@24
    move-result-object v6

    #@25
    aget-object v6, v6, v2

    #@27
    if-nez v6, :cond_1

    #@29
    .line 181
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->-get0(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@2c
    move-result-object v6

    #@2d
    new-instance v7, Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@2f
    invoke-direct {v7}, Lcom/android/okhttp/internal/spdy/Huffman$Node;-><init>()V

    #@32
    aput-object v7, v6, v2

    #@34
    .line 183
    :cond_1
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->-get0(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@37
    move-result-object v6

    #@38
    aget-object v0, v6, v2

    #@3a
    goto :goto_0

    #@3b
    .line 186
    .end local v2    # "i":I
    :cond_2
    rsub-int/lit8 v3, p3, 0x8

    #@3d
    .line 187
    .local v3, "shift":I
    shl-int v6, p2, v3

    #@3f
    and-int/lit16 v4, v6, 0xff

    #@41
    .line 188
    .local v4, "start":I
    const/4 v6, 0x1

    #@42
    shl-int v1, v6, v3

    #@44
    .line 189
    .local v1, "end":I
    move v2, v4

    #@45
    .restart local v2    # "i":I
    :goto_1
    add-int v6, v4, v1

    #@47
    if-ge v2, v6, :cond_3

    #@49
    .line 190
    invoke-static {v0}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->-get0(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@4c
    move-result-object v6

    #@4d
    aput-object v5, v6, v2

    #@4f
    .line 189
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_1

    #@52
    .line 170
    :cond_3
    return-void
.end method

.method private buildTree()V
    .locals 3

    #@0
    .prologue
    .line 165
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/okhttp/internal/spdy/Huffman;->CODE_LENGTHS:[B

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 166
    sget-object v1, Lcom/android/okhttp/internal/spdy/Huffman;->CODES:[I

    #@8
    aget v1, v1, v0

    #@a
    sget-object v2, Lcom/android/okhttp/internal/spdy/Huffman;->CODE_LENGTHS:[B

    #@c
    aget-byte v2, v2, v0

    #@e
    invoke-direct {p0, v0, v1, v2}, Lcom/android/okhttp/internal/spdy/Huffman;->addCode(IIB)V

    #@11
    .line 165
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 164
    :cond_0
    return-void
.end method

.method public static get()Lcom/android/okhttp/internal/spdy/Huffman;
    .locals 1

    #@0
    .prologue
    .line 80
    sget-object v0, Lcom/android/okhttp/internal/spdy/Huffman;->INSTANCE:Lcom/android/okhttp/internal/spdy/Huffman;

    #@2
    return-object v0
.end method


# virtual methods
.method decode([B)[B
    .locals 8
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 128
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Huffman;->root:Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@7
    .line 129
    .local v6, "node":Lcom/android/okhttp/internal/spdy/Huffman$Node;
    const/4 v3, 0x0

    #@8
    .line 130
    .local v3, "current":I
    const/4 v5, 0x0

    #@9
    .line 131
    .local v5, "nbits":I
    const/4 v4, 0x0

    #@a
    .local v4, "i":I
    :goto_0
    array-length v7, p1

    #@b
    if-ge v4, v7, :cond_3

    #@d
    .line 132
    aget-byte v7, p1, v4

    #@f
    and-int/lit16 v0, v7, 0xff

    #@11
    .line 133
    .local v0, "b":I
    shl-int/lit8 v7, v3, 0x8

    #@13
    or-int v3, v7, v0

    #@15
    .line 134
    add-int/lit8 v5, v5, 0x8

    #@17
    .line 135
    :goto_1
    const/16 v7, 0x8

    #@19
    if-lt v5, v7, :cond_1

    #@1b
    .line 136
    add-int/lit8 v7, v5, -0x8

    #@1d
    ushr-int v7, v3, v7

    #@1f
    and-int/lit16 v2, v7, 0xff

    #@21
    .line 137
    .local v2, "c":I
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->-get0(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@24
    move-result-object v7

    #@25
    aget-object v6, v7, v2

    #@27
    .line 138
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->-get0(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@2a
    move-result-object v7

    #@2b
    if-nez v7, :cond_0

    #@2d
    .line 140
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->-get1(Lcom/android/okhttp/internal/spdy/Huffman$Node;)I

    #@30
    move-result v7

    #@31
    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@34
    .line 141
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->-get2(Lcom/android/okhttp/internal/spdy/Huffman$Node;)I

    #@37
    move-result v7

    #@38
    sub-int/2addr v5, v7

    #@39
    .line 142
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Huffman;->root:Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@3b
    goto :goto_1

    #@3c
    .line 145
    :cond_0
    add-int/lit8 v5, v5, -0x8

    #@3e
    goto :goto_1

    #@3f
    .line 131
    .end local v2    # "c":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@41
    goto :goto_0

    #@42
    .line 156
    .end local v0    # "b":I
    .restart local v2    # "c":I
    :cond_2
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->-get1(Lcom/android/okhttp/internal/spdy/Huffman$Node;)I

    #@45
    move-result v7

    #@46
    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@49
    .line 157
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->-get2(Lcom/android/okhttp/internal/spdy/Huffman$Node;)I

    #@4c
    move-result v7

    #@4d
    sub-int/2addr v5, v7

    #@4e
    .line 158
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Huffman;->root:Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@50
    .line 150
    .end local v2    # "c":I
    :cond_3
    if-lez v5, :cond_4

    #@52
    .line 151
    rsub-int/lit8 v7, v5, 0x8

    #@54
    shl-int v7, v3, v7

    #@56
    and-int/lit16 v2, v7, 0xff

    #@58
    .line 152
    .restart local v2    # "c":I
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->-get0(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@5b
    move-result-object v7

    #@5c
    aget-object v6, v7, v2

    #@5e
    .line 153
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->-get0(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@61
    move-result-object v7

    #@62
    if-nez v7, :cond_4

    #@64
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/Huffman$Node;->-get2(Lcom/android/okhttp/internal/spdy/Huffman$Node;)I

    #@67
    move-result v7

    #@68
    if-le v7, v5, :cond_2

    #@6a
    .line 161
    .end local v2    # "c":I
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@6d
    move-result-object v7

    #@6e
    return-object v7
.end method

.method encode([BLjava/io/OutputStream;)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    const-wide/16 v2, 0x0

    #@2
    .line 91
    .local v2, "current":J
    const/4 v5, 0x0

    #@3
    .line 93
    .local v5, "n":I
    const/4 v4, 0x0

    #@4
    .local v4, "i":I
    :goto_0
    array-length v7, p1

    #@5
    if-ge v4, v7, :cond_1

    #@7
    .line 94
    aget-byte v7, p1, v4

    #@9
    and-int/lit16 v0, v7, 0xff

    #@b
    .line 95
    .local v0, "b":I
    sget-object v7, Lcom/android/okhttp/internal/spdy/Huffman;->CODES:[I

    #@d
    aget v1, v7, v0

    #@f
    .line 96
    .local v1, "code":I
    sget-object v7, Lcom/android/okhttp/internal/spdy/Huffman;->CODE_LENGTHS:[B

    #@11
    aget-byte v6, v7, v0

    #@13
    .line 98
    .local v6, "nbits":I
    shl-long/2addr v2, v6

    #@14
    .line 99
    int-to-long v8, v1

    #@15
    or-long/2addr v2, v8

    #@16
    .line 100
    add-int/2addr v5, v6

    #@17
    .line 102
    :goto_1
    const/16 v7, 0x8

    #@19
    if-lt v5, v7, :cond_0

    #@1b
    .line 103
    add-int/lit8 v5, v5, -0x8

    #@1d
    .line 104
    shr-long v8, v2, v5

    #@1f
    long-to-int v7, v8

    #@20
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    #@23
    goto :goto_1

    #@24
    .line 93
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@26
    goto :goto_0

    #@27
    .line 108
    .end local v0    # "b":I
    .end local v1    # "code":I
    .end local v6    # "nbits":I
    :cond_1
    if-lez v5, :cond_2

    #@29
    .line 109
    rsub-int/lit8 v7, v5, 0x8

    #@2b
    shl-long/2addr v2, v7

    #@2c
    .line 110
    const/16 v7, 0xff

    #@2e
    ushr-int/2addr v7, v5

    #@2f
    int-to-long v8, v7

    #@30
    or-long/2addr v2, v8

    #@31
    .line 111
    long-to-int v7, v2

    #@32
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    #@35
    .line 89
    :cond_2
    return-void
.end method

.method encodedLength([B)I
    .locals 7
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 116
    const-wide/16 v2, 0x0

    #@2
    .line 118
    .local v2, "len":J
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    array-length v4, p1

    #@4
    if-ge v1, v4, :cond_0

    #@6
    .line 119
    aget-byte v4, p1, v1

    #@8
    and-int/lit16 v0, v4, 0xff

    #@a
    .line 120
    .local v0, "b":I
    sget-object v4, Lcom/android/okhttp/internal/spdy/Huffman;->CODE_LENGTHS:[B

    #@c
    aget-byte v4, v4, v0

    #@e
    int-to-long v4, v4

    #@f
    add-long/2addr v2, v4

    #@10
    .line 118
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 123
    .end local v0    # "b":I
    :cond_0
    const-wide/16 v4, 0x7

    #@15
    add-long/2addr v4, v2

    #@16
    const/4 v6, 0x3

    #@17
    shr-long/2addr v4, v6

    #@18
    long-to-int v4, v4

    #@19
    return v4
.end method
