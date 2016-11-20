.class public Lcom/android/internal/util/FastXmlSerializer;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final BUFFER_LEN:I = 0x2000

.field private static final ESCAPE_TABLE:[Ljava/lang/String;

.field private static sSpace:Ljava/lang/String;


# instance fields
.field private mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mInTag:Z

.field private mIndent:Z

.field private mLineStart:Z

.field private mNesting:I

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mText:[C

.field private mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 41
    const/16 v0, 0x40

    #@3
    new-array v0, v0, [Ljava/lang/String;

    #@5
    .line 42
    const-string/jumbo v1, "&#0;"

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, v0, v2

    #@b
    const-string/jumbo v1, "&#1;"

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    const-string/jumbo v1, "&#2;"

    #@14
    const/4 v2, 0x2

    #@15
    aput-object v1, v0, v2

    #@17
    const-string/jumbo v1, "&#3;"

    #@1a
    const/4 v2, 0x3

    #@1b
    aput-object v1, v0, v2

    #@1d
    const-string/jumbo v1, "&#4;"

    #@20
    const/4 v2, 0x4

    #@21
    aput-object v1, v0, v2

    #@23
    const-string/jumbo v1, "&#5;"

    #@26
    const/4 v2, 0x5

    #@27
    aput-object v1, v0, v2

    #@29
    const-string/jumbo v1, "&#6;"

    #@2c
    const/4 v2, 0x6

    #@2d
    aput-object v1, v0, v2

    #@2f
    const-string/jumbo v1, "&#7;"

    #@32
    const/4 v2, 0x7

    #@33
    aput-object v1, v0, v2

    #@35
    .line 43
    const-string/jumbo v1, "&#8;"

    #@38
    const/16 v2, 0x8

    #@3a
    aput-object v1, v0, v2

    #@3c
    const-string/jumbo v1, "&#9;"

    #@3f
    const/16 v2, 0x9

    #@41
    aput-object v1, v0, v2

    #@43
    const-string/jumbo v1, "&#10;"

    #@46
    const/16 v2, 0xa

    #@48
    aput-object v1, v0, v2

    #@4a
    const-string/jumbo v1, "&#11;"

    #@4d
    const/16 v2, 0xb

    #@4f
    aput-object v1, v0, v2

    #@51
    const-string/jumbo v1, "&#12;"

    #@54
    const/16 v2, 0xc

    #@56
    aput-object v1, v0, v2

    #@58
    const-string/jumbo v1, "&#13;"

    #@5b
    const/16 v2, 0xd

    #@5d
    aput-object v1, v0, v2

    #@5f
    const-string/jumbo v1, "&#14;"

    #@62
    const/16 v2, 0xe

    #@64
    aput-object v1, v0, v2

    #@66
    const-string/jumbo v1, "&#15;"

    #@69
    const/16 v2, 0xf

    #@6b
    aput-object v1, v0, v2

    #@6d
    .line 44
    const-string/jumbo v1, "&#16;"

    #@70
    const/16 v2, 0x10

    #@72
    aput-object v1, v0, v2

    #@74
    const-string/jumbo v1, "&#17;"

    #@77
    const/16 v2, 0x11

    #@79
    aput-object v1, v0, v2

    #@7b
    const-string/jumbo v1, "&#18;"

    #@7e
    const/16 v2, 0x12

    #@80
    aput-object v1, v0, v2

    #@82
    const-string/jumbo v1, "&#19;"

    #@85
    const/16 v2, 0x13

    #@87
    aput-object v1, v0, v2

    #@89
    const-string/jumbo v1, "&#20;"

    #@8c
    const/16 v2, 0x14

    #@8e
    aput-object v1, v0, v2

    #@90
    const-string/jumbo v1, "&#21;"

    #@93
    const/16 v2, 0x15

    #@95
    aput-object v1, v0, v2

    #@97
    const-string/jumbo v1, "&#22;"

    #@9a
    const/16 v2, 0x16

    #@9c
    aput-object v1, v0, v2

    #@9e
    const-string/jumbo v1, "&#23;"

    #@a1
    const/16 v2, 0x17

    #@a3
    aput-object v1, v0, v2

    #@a5
    .line 45
    const-string/jumbo v1, "&#24;"

    #@a8
    const/16 v2, 0x18

    #@aa
    aput-object v1, v0, v2

    #@ac
    const-string/jumbo v1, "&#25;"

    #@af
    const/16 v2, 0x19

    #@b1
    aput-object v1, v0, v2

    #@b3
    const-string/jumbo v1, "&#26;"

    #@b6
    const/16 v2, 0x1a

    #@b8
    aput-object v1, v0, v2

    #@ba
    const-string/jumbo v1, "&#27;"

    #@bd
    const/16 v2, 0x1b

    #@bf
    aput-object v1, v0, v2

    #@c1
    const-string/jumbo v1, "&#28;"

    #@c4
    const/16 v2, 0x1c

    #@c6
    aput-object v1, v0, v2

    #@c8
    const-string/jumbo v1, "&#29;"

    #@cb
    const/16 v2, 0x1d

    #@cd
    aput-object v1, v0, v2

    #@cf
    const-string/jumbo v1, "&#30;"

    #@d2
    const/16 v2, 0x1e

    #@d4
    aput-object v1, v0, v2

    #@d6
    const-string/jumbo v1, "&#31;"

    #@d9
    const/16 v2, 0x1f

    #@db
    aput-object v1, v0, v2

    #@dd
    .line 46
    const/16 v1, 0x20

    #@df
    aput-object v3, v0, v1

    #@e1
    const/16 v1, 0x21

    #@e3
    aput-object v3, v0, v1

    #@e5
    const-string/jumbo v1, "&quot;"

    #@e8
    const/16 v2, 0x22

    #@ea
    aput-object v1, v0, v2

    #@ec
    const/16 v1, 0x23

    #@ee
    aput-object v3, v0, v1

    #@f0
    const/16 v1, 0x24

    #@f2
    aput-object v3, v0, v1

    #@f4
    const/16 v1, 0x25

    #@f6
    aput-object v3, v0, v1

    #@f8
    const-string/jumbo v1, "&amp;"

    #@fb
    const/16 v2, 0x26

    #@fd
    aput-object v1, v0, v2

    #@ff
    const/16 v1, 0x27

    #@101
    aput-object v3, v0, v1

    #@103
    .line 47
    const/16 v1, 0x28

    #@105
    aput-object v3, v0, v1

    #@107
    const/16 v1, 0x29

    #@109
    aput-object v3, v0, v1

    #@10b
    const/16 v1, 0x2a

    #@10d
    aput-object v3, v0, v1

    #@10f
    const/16 v1, 0x2b

    #@111
    aput-object v3, v0, v1

    #@113
    const/16 v1, 0x2c

    #@115
    aput-object v3, v0, v1

    #@117
    const/16 v1, 0x2d

    #@119
    aput-object v3, v0, v1

    #@11b
    const/16 v1, 0x2e

    #@11d
    aput-object v3, v0, v1

    #@11f
    const/16 v1, 0x2f

    #@121
    aput-object v3, v0, v1

    #@123
    .line 48
    const/16 v1, 0x30

    #@125
    aput-object v3, v0, v1

    #@127
    const/16 v1, 0x31

    #@129
    aput-object v3, v0, v1

    #@12b
    const/16 v1, 0x32

    #@12d
    aput-object v3, v0, v1

    #@12f
    const/16 v1, 0x33

    #@131
    aput-object v3, v0, v1

    #@133
    const/16 v1, 0x34

    #@135
    aput-object v3, v0, v1

    #@137
    const/16 v1, 0x35

    #@139
    aput-object v3, v0, v1

    #@13b
    const/16 v1, 0x36

    #@13d
    aput-object v3, v0, v1

    #@13f
    const/16 v1, 0x37

    #@141
    aput-object v3, v0, v1

    #@143
    .line 49
    const/16 v1, 0x38

    #@145
    aput-object v3, v0, v1

    #@147
    const/16 v1, 0x39

    #@149
    aput-object v3, v0, v1

    #@14b
    const/16 v1, 0x3a

    #@14d
    aput-object v3, v0, v1

    #@14f
    const/16 v1, 0x3b

    #@151
    aput-object v3, v0, v1

    #@153
    const-string/jumbo v1, "&lt;"

    #@156
    const/16 v2, 0x3c

    #@158
    aput-object v1, v0, v2

    #@15a
    const/16 v1, 0x3d

    #@15c
    aput-object v3, v0, v1

    #@15e
    const-string/jumbo v1, "&gt;"

    #@161
    const/16 v2, 0x3e

    #@163
    aput-object v1, v0, v2

    #@165
    const/16 v1, 0x3f

    #@167
    aput-object v3, v0, v1

    #@169
    .line 41
    sput-object v0, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    #@16b
    .line 54
    const-string/jumbo v0, "                                                              "

    #@16e
    sput-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    #@170
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x2000

    #@2
    const/4 v1, 0x0

    #@3
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 56
    new-array v0, v2, [C

    #@8
    iput-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    #@a
    .line 63
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    #@10
    .line 65
    iput-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    #@12
    .line 68
    iput v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    #@14
    .line 69
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    #@17
    .line 40
    return-void
.end method

.method private append(C)V
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@2
    .line 73
    .local v0, "pos":I
    const/16 v1, 0x1fff

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 74
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    #@9
    .line 75
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@b
    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    #@d
    aput-char p1, v1, v0

    #@f
    .line 78
    add-int/lit8 v1, v0, 0x1

    #@11
    iput v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@13
    .line 71
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    #@8
    .line 119
    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x2000

    #@2
    .line 82
    if-le p3, v4, :cond_2

    #@4
    .line 83
    add-int v0, p2, p3

    #@6
    .line 84
    .local v0, "end":I
    :goto_0
    if-ge p2, v0, :cond_1

    #@8
    .line 85
    add-int/lit16 v1, p2, 0x2000

    #@a
    .line 86
    .local v1, "next":I
    if-ge v1, v0, :cond_0

    #@c
    move v3, v4

    #@d
    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    #@10
    .line 87
    move p2, v1

    #@11
    goto :goto_0

    #@12
    .line 86
    :cond_0
    sub-int v3, v0, p2

    #@14
    goto :goto_1

    #@15
    .line 89
    .end local v1    # "next":I
    :cond_1
    return-void

    #@16
    .line 91
    .end local v0    # "end":I
    :cond_2
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@18
    .line 92
    .local v2, "pos":I
    add-int v3, v2, p3

    #@1a
    if-le v3, v4, :cond_3

    #@1c
    .line 93
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    #@1f
    .line 94
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@21
    .line 96
    :cond_3
    add-int v3, p2, p3

    #@23
    iget-object v4, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    #@25
    invoke-virtual {p1, p2, v3, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@28
    .line 97
    add-int v3, v2, p3

    #@2a
    iput v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@2c
    .line 81
    return-void
.end method

.method private append([CII)V
    .locals 5
    .param p1, "buf"    # [C
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x2000

    #@2
    .line 101
    if-le p3, v4, :cond_2

    #@4
    .line 102
    add-int v0, p2, p3

    #@6
    .line 103
    .local v0, "end":I
    :goto_0
    if-ge p2, v0, :cond_1

    #@8
    .line 104
    add-int/lit16 v1, p2, 0x2000

    #@a
    .line 105
    .local v1, "next":I
    if-ge v1, v0, :cond_0

    #@c
    move v3, v4

    #@d
    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    #@10
    .line 106
    move p2, v1

    #@11
    goto :goto_0

    #@12
    .line 105
    :cond_0
    sub-int v3, v0, p2

    #@14
    goto :goto_1

    #@15
    .line 108
    .end local v1    # "next":I
    :cond_1
    return-void

    #@16
    .line 110
    .end local v0    # "end":I
    :cond_2
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@18
    .line 111
    .local v2, "pos":I
    add-int v3, v2, p3

    #@1a
    if-le v3, v4, :cond_3

    #@1c
    .line 112
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    #@1f
    .line 113
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@21
    .line 115
    :cond_3
    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    #@23
    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@26
    .line 116
    add-int v3, v2, p3

    #@28
    iput v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@2a
    .line 100
    return-void
.end method

.method private appendIndent(I)V
    .locals 2
    .param p1, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    mul-int/lit8 p1, p1, 0x4

    #@2
    .line 125
    sget-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-le p1, v0, :cond_0

    #@a
    .line 126
    sget-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    #@c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@f
    move-result p1

    #@10
    .line 128
    :cond_0
    sget-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    #@16
    .line 123
    return-void
.end method

.method private escapeAndAppendString(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 133
    .local v0, "N":I
    sget-object v7, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    #@6
    array-length v7, v7

    #@7
    int-to-char v1, v7

    #@8
    .line 134
    .local v1, "NE":C
    sget-object v4, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    #@a
    .line 135
    .local v4, "escapes":[Ljava/lang/String;
    const/4 v5, 0x0

    #@b
    .line 137
    .local v5, "lastPos":I
    const/4 v6, 0x0

    #@c
    .local v6, "pos":I
    :goto_0
    if-ge v6, v0, :cond_3

    #@e
    .line 138
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v2

    #@12
    .line 139
    .local v2, "c":C
    if-lt v2, v1, :cond_1

    #@14
    .line 137
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@16
    goto :goto_0

    #@17
    .line 140
    :cond_1
    aget-object v3, v4, v2

    #@19
    .line 141
    .local v3, "escape":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@1b
    .line 142
    if-ge v5, v6, :cond_2

    #@1d
    sub-int v7, v6, v5

    #@1f
    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    #@22
    .line 143
    :cond_2
    add-int/lit8 v5, v6, 0x1

    #@24
    .line 144
    invoke-direct {p0, v3}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@27
    goto :goto_1

    #@28
    .line 146
    .end local v2    # "c":C
    .end local v3    # "escape":Ljava/lang/String;
    :cond_3
    if-ge v5, v6, :cond_4

    #@2a
    sub-int v7, v6, v5

    #@2c
    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    #@2f
    .line 131
    :cond_4
    return-void
.end method

.method private escapeAndAppendString([CII)V
    .locals 8
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    sget-object v7, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    #@2
    array-length v7, v7

    #@3
    int-to-char v0, v7

    #@4
    .line 151
    .local v0, "NE":C
    sget-object v4, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    #@6
    .line 152
    .local v4, "escapes":[Ljava/lang/String;
    add-int v2, p2, p3

    #@8
    .line 153
    .local v2, "end":I
    move v5, p2

    #@9
    .line 155
    .local v5, "lastPos":I
    move v6, p2

    #@a
    .local v6, "pos":I
    :goto_0
    if-ge v6, v2, :cond_3

    #@c
    .line 156
    aget-char v1, p1, v6

    #@e
    .line 157
    .local v1, "c":C
    if-lt v1, v0, :cond_1

    #@10
    .line 155
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@12
    goto :goto_0

    #@13
    .line 158
    :cond_1
    aget-object v3, v4, v1

    #@15
    .line 159
    .local v3, "escape":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@17
    .line 160
    if-ge v5, v6, :cond_2

    #@19
    sub-int v7, v6, v5

    #@1b
    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    #@1e
    .line 161
    :cond_2
    add-int/lit8 v5, v6, 0x1

    #@20
    .line 162
    invoke-direct {p0, v3}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@23
    goto :goto_1

    #@24
    .line 164
    .end local v1    # "c":C
    .end local v3    # "escape":Ljava/lang/String;
    :cond_3
    if-ge v5, v6, :cond_4

    #@26
    sub-int v7, v6, v5

    #@28
    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    #@2b
    .line 149
    :cond_4
    return-void
.end method

.method private flushBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 231
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    #@3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@6
    move-result v0

    #@7
    .local v0, "position":I
    if-lez v0, :cond_0

    #@9
    .line 232
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    #@b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@e
    .line 233
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    #@10
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    #@12
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    #@19
    .line 234
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    #@1b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@1e
    .line 229
    :cond_0
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    #@5
    .line 170
    if-eqz p1, :cond_0

    #@7
    .line 171
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@a
    .line 172
    const/16 v0, 0x3a

    #@c
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    #@f
    .line 174
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@12
    .line 175
    const-string/jumbo v0, "=\""

    #@15
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@18
    .line 177
    invoke-direct {p0, p3}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    #@1b
    .line 178
    const/16 v0, 0x22

    #@1d
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    #@20
    .line 179
    const/4 v0, 0x0

    #@21
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    #@23
    .line 180
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    #@3
    .line 198
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    #@6
    .line 205
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 206
    const-string/jumbo v0, " />\n"

    #@d
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@10
    .line 219
    :goto_0
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    #@13
    .line 220
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@16
    .line 221
    return-object p0

    #@17
    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    #@19
    if-eqz v0, :cond_1

    #@1b
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 209
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    #@21
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->appendIndent(I)V

    #@24
    .line 211
    :cond_1
    const-string/jumbo v0, "</"

    #@27
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@2a
    .line 212
    if-eqz p1, :cond_2

    #@2c
    .line 213
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@2f
    .line 214
    const/16 v0, 0x3a

    #@31
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    #@34
    .line 216
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@37
    .line 217
    const-string/jumbo v0, ">\n"

    #@3a
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@3d
    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 240
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@4
    if-lez v2, :cond_2

    #@6
    .line 241
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    #@8
    if-eqz v2, :cond_3

    #@a
    .line 242
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    #@c
    iget v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@e
    invoke-static {v2, v5, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@11
    move-result-object v0

    #@12
    .line 243
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@14
    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    #@16
    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@19
    move-result-object v1

    #@1a
    .line 245
    .local v1, "result":Ljava/nio/charset/CoderResult;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 246
    new-instance v2, Ljava/io/IOException;

    #@22
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 247
    :cond_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 248
    invoke-direct {p0}, Lcom/android/internal/util/FastXmlSerializer;->flushBytes()V

    #@33
    .line 249
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@35
    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    #@37
    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@3a
    move-result-object v1

    #@3b
    goto :goto_0

    #@3c
    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/util/FastXmlSerializer;->flushBytes()V

    #@3f
    .line 255
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    #@41
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    #@44
    .line 260
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    :goto_1
    iput v5, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@46
    .line 238
    :cond_2
    return-void

    #@47
    .line 257
    :cond_3
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    #@49
    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    #@4b
    iget v4, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@4d
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    #@50
    .line 258
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    #@52
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    #@55
    goto :goto_1
.end method

.method public getDepth()I
    .locals 1

    #@0
    .prologue
    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "generatePrefix"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 301
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 302
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    #@c
    .line 303
    return-void

    #@d
    .line 305
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@f
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@12
    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    if-nez p1, :cond_0

    #@2
    .line 311
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v2

    #@8
    .line 314
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    #@f
    move-result-object v2

    #@10
    .line 315
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@12
    .line 314
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@15
    move-result-object v2

    #@16
    .line 316
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    #@18
    .line 314
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    #@1b
    move-result-object v2

    #@1c
    iput-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 324
    iput-object p1, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    #@20
    .line 309
    return-void

    #@21
    .line 320
    :catch_0
    move-exception v1

    #@22
    .line 321
    .local v1, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    #@24
    invoke-direct {v2, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {v2, v1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Ljava/io/UnsupportedEncodingException;

    #@2d
    throw v2

    #@2e
    .line 317
    .end local v1    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_1
    move-exception v0

    #@2f
    .line 318
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    #@31
    invoke-direct {v2, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@34
    invoke-virtual {v2, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Ljava/io/UnsupportedEncodingException;

    #@3a
    throw v2
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/internal/util/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    #@2
    .line 334
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 340
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    .line 351
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    const-string/jumbo v0, "yes"

    #@15
    .line 350
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 351
    const-string/jumbo v1, "\' ?>\n"

    #@1c
    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@27
    .line 352
    const/4 v0, 0x1

    #@28
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    #@2a
    .line 349
    return-void

    #@2b
    .line 351
    :cond_0
    const-string/jumbo v0, "no"

    #@2e
    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 358
    const-string/jumbo v0, ">\n"

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@a
    .line 360
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 361
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    #@10
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->appendIndent(I)V

    #@13
    .line 363
    :cond_1
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    iput v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    #@19
    .line 364
    const/16 v0, 0x3c

    #@1b
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    #@1e
    .line 365
    if-eqz p1, :cond_2

    #@20
    .line 366
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@23
    .line 367
    const/16 v0, 0x3a

    #@25
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    #@28
    .line 369
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@2b
    .line 370
    const/4 v0, 0x1

    #@2c
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@2e
    .line 371
    const/4 v0, 0x0

    #@2f
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    #@31
    .line 372
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 390
    iget-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 391
    const-string/jumbo v1, ">"

    #@8
    invoke-direct {p0, v1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@b
    .line 392
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@d
    .line 394
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    #@10
    .line 395
    iget-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@17
    move-result v1

    #@18
    if-lez v1, :cond_1

    #@1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1d
    move-result v1

    #@1e
    add-int/lit8 v1, v1, -0x1

    #@20
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v1

    #@24
    const/16 v2, 0xa

    #@26
    if-ne v1, v2, :cond_1

    #@28
    const/4 v0, 0x1

    #@29
    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    #@2b
    .line 398
    :cond_2
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 377
    iget-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 378
    const-string/jumbo v1, ">"

    #@8
    invoke-direct {p0, v1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@b
    .line 379
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@d
    .line 381
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString([CII)V

    #@10
    .line 382
    iget-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 383
    add-int v1, p2, p3

    #@16
    add-int/lit8 v1, v1, -0x1

    #@18
    aget-char v1, p1, v1

    #@1a
    const/16 v2, 0xa

    #@1c
    if-ne v1, v2, :cond_1

    #@1e
    const/4 v0, 0x1

    #@1f
    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    #@21
    .line 385
    :cond_2
    return-object p0
.end method
