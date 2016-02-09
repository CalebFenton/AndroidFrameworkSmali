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
    .line 40
    const/16 v0, 0x40

    #@3
    new-array v0, v0, [Ljava/lang/String;

    #@5
    .line 41
    const/4 v1, 0x0

    #@6
    aput-object v3, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    aput-object v3, v0, v1

    #@b
    const/4 v1, 0x2

    #@c
    aput-object v3, v0, v1

    #@e
    const/4 v1, 0x3

    #@f
    aput-object v3, v0, v1

    #@11
    const/4 v1, 0x4

    #@12
    aput-object v3, v0, v1

    #@14
    const/4 v1, 0x5

    #@15
    aput-object v3, v0, v1

    #@17
    const/4 v1, 0x6

    #@18
    aput-object v3, v0, v1

    #@1a
    const/4 v1, 0x7

    #@1b
    aput-object v3, v0, v1

    #@1d
    .line 42
    const/16 v1, 0x8

    #@1f
    aput-object v3, v0, v1

    #@21
    const/16 v1, 0x9

    #@23
    aput-object v3, v0, v1

    #@25
    const/16 v1, 0xa

    #@27
    aput-object v3, v0, v1

    #@29
    const/16 v1, 0xb

    #@2b
    aput-object v3, v0, v1

    #@2d
    const/16 v1, 0xc

    #@2f
    aput-object v3, v0, v1

    #@31
    const/16 v1, 0xd

    #@33
    aput-object v3, v0, v1

    #@35
    const/16 v1, 0xe

    #@37
    aput-object v3, v0, v1

    #@39
    const/16 v1, 0xf

    #@3b
    aput-object v3, v0, v1

    #@3d
    .line 43
    const/16 v1, 0x10

    #@3f
    aput-object v3, v0, v1

    #@41
    const/16 v1, 0x11

    #@43
    aput-object v3, v0, v1

    #@45
    const/16 v1, 0x12

    #@47
    aput-object v3, v0, v1

    #@49
    const/16 v1, 0x13

    #@4b
    aput-object v3, v0, v1

    #@4d
    const/16 v1, 0x14

    #@4f
    aput-object v3, v0, v1

    #@51
    const/16 v1, 0x15

    #@53
    aput-object v3, v0, v1

    #@55
    const/16 v1, 0x16

    #@57
    aput-object v3, v0, v1

    #@59
    const/16 v1, 0x17

    #@5b
    aput-object v3, v0, v1

    #@5d
    .line 44
    const/16 v1, 0x18

    #@5f
    aput-object v3, v0, v1

    #@61
    const/16 v1, 0x19

    #@63
    aput-object v3, v0, v1

    #@65
    const/16 v1, 0x1a

    #@67
    aput-object v3, v0, v1

    #@69
    const/16 v1, 0x1b

    #@6b
    aput-object v3, v0, v1

    #@6d
    const/16 v1, 0x1c

    #@6f
    aput-object v3, v0, v1

    #@71
    const/16 v1, 0x1d

    #@73
    aput-object v3, v0, v1

    #@75
    const/16 v1, 0x1e

    #@77
    aput-object v3, v0, v1

    #@79
    const/16 v1, 0x1f

    #@7b
    aput-object v3, v0, v1

    #@7d
    .line 45
    const/16 v1, 0x20

    #@7f
    aput-object v3, v0, v1

    #@81
    const/16 v1, 0x21

    #@83
    aput-object v3, v0, v1

    #@85
    const-string/jumbo v1, "&quot;"

    #@88
    const/16 v2, 0x22

    #@8a
    aput-object v1, v0, v2

    #@8c
    const/16 v1, 0x23

    #@8e
    aput-object v3, v0, v1

    #@90
    const/16 v1, 0x24

    #@92
    aput-object v3, v0, v1

    #@94
    const/16 v1, 0x25

    #@96
    aput-object v3, v0, v1

    #@98
    const-string/jumbo v1, "&amp;"

    #@9b
    const/16 v2, 0x26

    #@9d
    aput-object v1, v0, v2

    #@9f
    const/16 v1, 0x27

    #@a1
    aput-object v3, v0, v1

    #@a3
    .line 46
    const/16 v1, 0x28

    #@a5
    aput-object v3, v0, v1

    #@a7
    const/16 v1, 0x29

    #@a9
    aput-object v3, v0, v1

    #@ab
    const/16 v1, 0x2a

    #@ad
    aput-object v3, v0, v1

    #@af
    const/16 v1, 0x2b

    #@b1
    aput-object v3, v0, v1

    #@b3
    const/16 v1, 0x2c

    #@b5
    aput-object v3, v0, v1

    #@b7
    const/16 v1, 0x2d

    #@b9
    aput-object v3, v0, v1

    #@bb
    const/16 v1, 0x2e

    #@bd
    aput-object v3, v0, v1

    #@bf
    const/16 v1, 0x2f

    #@c1
    aput-object v3, v0, v1

    #@c3
    .line 47
    const/16 v1, 0x30

    #@c5
    aput-object v3, v0, v1

    #@c7
    const/16 v1, 0x31

    #@c9
    aput-object v3, v0, v1

    #@cb
    const/16 v1, 0x32

    #@cd
    aput-object v3, v0, v1

    #@cf
    const/16 v1, 0x33

    #@d1
    aput-object v3, v0, v1

    #@d3
    const/16 v1, 0x34

    #@d5
    aput-object v3, v0, v1

    #@d7
    const/16 v1, 0x35

    #@d9
    aput-object v3, v0, v1

    #@db
    const/16 v1, 0x36

    #@dd
    aput-object v3, v0, v1

    #@df
    const/16 v1, 0x37

    #@e1
    aput-object v3, v0, v1

    #@e3
    .line 48
    const/16 v1, 0x38

    #@e5
    aput-object v3, v0, v1

    #@e7
    const/16 v1, 0x39

    #@e9
    aput-object v3, v0, v1

    #@eb
    const/16 v1, 0x3a

    #@ed
    aput-object v3, v0, v1

    #@ef
    const/16 v1, 0x3b

    #@f1
    aput-object v3, v0, v1

    #@f3
    const-string/jumbo v1, "&lt;"

    #@f6
    const/16 v2, 0x3c

    #@f8
    aput-object v1, v0, v2

    #@fa
    const/16 v1, 0x3d

    #@fc
    aput-object v3, v0, v1

    #@fe
    const-string/jumbo v1, "&gt;"

    #@101
    const/16 v2, 0x3e

    #@103
    aput-object v1, v0, v2

    #@105
    const/16 v1, 0x3f

    #@107
    aput-object v3, v0, v1

    #@109
    .line 40
    sput-object v0, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    #@10b
    .line 53
    const-string/jumbo v0, "                                                              "

    #@10e
    sput-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    #@110
    .line 39
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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 55
    new-array v0, v2, [C

    #@8
    iput-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    #@a
    .line 62
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    #@10
    .line 64
    iput-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    #@12
    .line 67
    iput v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    #@14
    .line 68
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    #@17
    .line 39
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
    .line 71
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@2
    .line 72
    .local v0, "pos":I
    const/16 v1, 0x1fff

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 73
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    #@9
    .line 74
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@b
    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    #@d
    aput-char p1, v1, v0

    #@f
    .line 77
    add-int/lit8 v1, v0, 0x1

    #@11
    iput v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@13
    .line 70
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
    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    #@8
    .line 118
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
    .line 81
    if-le p3, v4, :cond_2

    #@4
    .line 82
    add-int v0, p2, p3

    #@6
    .line 83
    .local v0, "end":I
    :goto_0
    if-ge p2, v0, :cond_1

    #@8
    .line 84
    add-int/lit16 v1, p2, 0x2000

    #@a
    .line 85
    .local v1, "next":I
    if-ge v1, v0, :cond_0

    #@c
    move v3, v4

    #@d
    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    #@10
    .line 86
    move p2, v1

    #@11
    goto :goto_0

    #@12
    .line 85
    :cond_0
    sub-int v3, v0, p2

    #@14
    goto :goto_1

    #@15
    .line 88
    .end local v1    # "next":I
    :cond_1
    return-void

    #@16
    .line 90
    .end local v0    # "end":I
    :cond_2
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@18
    .line 91
    .local v2, "pos":I
    add-int v3, v2, p3

    #@1a
    if-le v3, v4, :cond_3

    #@1c
    .line 92
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    #@1f
    .line 93
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@21
    .line 95
    :cond_3
    add-int v3, p2, p3

    #@23
    iget-object v4, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    #@25
    invoke-virtual {p1, p2, v3, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@28
    .line 96
    add-int v3, v2, p3

    #@2a
    iput v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@2c
    .line 80
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
    .line 100
    if-le p3, v4, :cond_2

    #@4
    .line 101
    add-int v0, p2, p3

    #@6
    .line 102
    .local v0, "end":I
    :goto_0
    if-ge p2, v0, :cond_1

    #@8
    .line 103
    add-int/lit16 v1, p2, 0x2000

    #@a
    .line 104
    .local v1, "next":I
    if-ge v1, v0, :cond_0

    #@c
    move v3, v4

    #@d
    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    #@10
    .line 105
    move p2, v1

    #@11
    goto :goto_0

    #@12
    .line 104
    :cond_0
    sub-int v3, v0, p2

    #@14
    goto :goto_1

    #@15
    .line 107
    .end local v1    # "next":I
    :cond_1
    return-void

    #@16
    .line 109
    .end local v0    # "end":I
    :cond_2
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@18
    .line 110
    .local v2, "pos":I
    add-int v3, v2, p3

    #@1a
    if-le v3, v4, :cond_3

    #@1c
    .line 111
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    #@1f
    .line 112
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@21
    .line 114
    :cond_3
    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    #@23
    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@26
    .line 115
    add-int v3, v2, p3

    #@28
    iput v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@2a
    .line 99
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
    .line 123
    mul-int/lit8 p1, p1, 0x4

    #@2
    .line 124
    sget-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-le p1, v0, :cond_0

    #@a
    .line 125
    sget-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    #@c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@f
    move-result p1

    #@10
    .line 127
    :cond_0
    sget-object v0, Lcom/android/internal/util/FastXmlSerializer;->sSpace:Ljava/lang/String;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    #@16
    .line 122
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
    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 132
    .local v0, "N":I
    sget-object v7, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    #@6
    array-length v7, v7

    #@7
    int-to-char v1, v7

    #@8
    .line 133
    .local v1, "NE":C
    sget-object v4, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    #@a
    .line 134
    .local v4, "escapes":[Ljava/lang/String;
    const/4 v5, 0x0

    #@b
    .line 136
    .local v5, "lastPos":I
    const/4 v6, 0x0

    #@c
    .local v6, "pos":I
    :goto_0
    if-ge v6, v0, :cond_3

    #@e
    .line 137
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v2

    #@12
    .line 138
    .local v2, "c":C
    if-lt v2, v1, :cond_1

    #@14
    .line 136
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@16
    goto :goto_0

    #@17
    .line 139
    :cond_1
    aget-object v3, v4, v2

    #@19
    .line 140
    .local v3, "escape":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@1b
    .line 141
    if-ge v5, v6, :cond_2

    #@1d
    sub-int v7, v6, v5

    #@1f
    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    #@22
    .line 142
    :cond_2
    add-int/lit8 v5, v6, 0x1

    #@24
    .line 143
    invoke-direct {p0, v3}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@27
    goto :goto_1

    #@28
    .line 145
    .end local v2    # "c":C
    .end local v3    # "escape":Ljava/lang/String;
    :cond_3
    if-ge v5, v6, :cond_4

    #@2a
    sub-int v7, v6, v5

    #@2c
    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;II)V

    #@2f
    .line 130
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
    .line 149
    sget-object v7, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    #@2
    array-length v7, v7

    #@3
    int-to-char v0, v7

    #@4
    .line 150
    .local v0, "NE":C
    sget-object v4, Lcom/android/internal/util/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    #@6
    .line 151
    .local v4, "escapes":[Ljava/lang/String;
    add-int v2, p2, p3

    #@8
    .line 152
    .local v2, "end":I
    move v5, p2

    #@9
    .line 154
    .local v5, "lastPos":I
    move v6, p2

    #@a
    .local v6, "pos":I
    :goto_0
    if-ge v6, v2, :cond_3

    #@c
    .line 155
    aget-char v1, p1, v6

    #@e
    .line 156
    .local v1, "c":C
    if-lt v1, v0, :cond_1

    #@10
    .line 154
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@12
    goto :goto_0

    #@13
    .line 157
    :cond_1
    aget-object v3, v4, v1

    #@15
    .line 158
    .local v3, "escape":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@17
    .line 159
    if-ge v5, v6, :cond_2

    #@19
    sub-int v7, v6, v5

    #@1b
    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    #@1e
    .line 160
    :cond_2
    add-int/lit8 v5, v6, 0x1

    #@20
    .line 161
    invoke-direct {p0, v3}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@23
    goto :goto_1

    #@24
    .line 163
    .end local v1    # "c":C
    .end local v3    # "escape":Ljava/lang/String;
    :cond_3
    if-ge v5, v6, :cond_4

    #@26
    sub-int v7, v6, v5

    #@28
    invoke-direct {p0, p1, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->append([CII)V

    #@2b
    .line 148
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
    .line 230
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    #@3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@6
    move-result v0

    #@7
    .local v0, "position":I
    if-lez v0, :cond_0

    #@9
    .line 231
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    #@b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@e
    .line 232
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
    .line 233
    iget-object v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    #@1b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@1e
    .line 228
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
    .line 168
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    #@5
    .line 169
    if-eqz p1, :cond_0

    #@7
    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@a
    .line 171
    const/16 v0, 0x3a

    #@c
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    #@f
    .line 173
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@12
    .line 174
    const-string/jumbo v0, "=\""

    #@15
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@18
    .line 176
    invoke-direct {p0, p3}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    #@1b
    .line 177
    const/16 v0, 0x22

    #@1d
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    #@20
    .line 178
    const/4 v0, 0x0

    #@21
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    #@23
    .line 179
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
    .line 184
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
    .line 189
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
    .line 194
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
    .line 198
    invoke-virtual {p0}, Lcom/android/internal/util/FastXmlSerializer;->flush()V

    #@3
    .line 197
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
    .line 203
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    #@6
    .line 204
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 205
    const-string/jumbo v0, " />\n"

    #@d
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@10
    .line 218
    :goto_0
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    #@13
    .line 219
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@16
    .line 220
    return-object p0

    #@17
    .line 207
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    #@19
    if-eqz v0, :cond_1

    #@1b
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 208
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    #@21
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->appendIndent(I)V

    #@24
    .line 210
    :cond_1
    const-string/jumbo v0, "</"

    #@27
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@2a
    .line 211
    if-eqz p1, :cond_2

    #@2c
    .line 212
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@2f
    .line 213
    const/16 v0, 0x3a

    #@31
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    #@34
    .line 215
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@37
    .line 216
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
    .line 225
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
    .line 239
    iget v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@4
    if-lez v2, :cond_2

    #@6
    .line 240
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    #@8
    if-eqz v2, :cond_3

    #@a
    .line 241
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    #@c
    iget v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@e
    invoke-static {v2, v5, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@11
    move-result-object v0

    #@12
    .line 242
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    #@14
    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    #@16
    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    #@19
    move-result-object v1

    #@1a
    .line 244
    .local v1, "result":Ljava/nio/charset/CoderResult;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 245
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
    .line 246
    :cond_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 247
    invoke-direct {p0}, Lcom/android/internal/util/FastXmlSerializer;->flushBytes()V

    #@33
    .line 248
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
    .line 253
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/util/FastXmlSerializer;->flushBytes()V

    #@3f
    .line 254
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    #@41
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    #@44
    .line 259
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    :goto_1
    iput v5, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@46
    .line 237
    :cond_2
    return-void

    #@47
    .line 256
    :cond_3
    iget-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    #@49
    iget-object v3, p0, Lcom/android/internal/util/FastXmlSerializer;->mText:[C

    #@4b
    iget v4, p0, Lcom/android/internal/util/FastXmlSerializer;->mPos:I

    #@4d
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    #@50
    .line 257
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
    .line 264
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
    .line 268
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
    .line 272
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
    .line 276
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
    .line 281
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
    .line 285
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
    .line 290
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
    .line 295
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
    .line 300
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 301
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    #@c
    .line 302
    return-void

    #@d
    .line 304
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@f
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@12
    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
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
    .line 309
    if-nez p1, :cond_0

    #@2
    .line 310
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v2

    #@8
    .line 313
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
    iput-object v2, p0, Lcom/android/internal/util/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 321
    iput-object p1, p0, Lcom/android/internal/util/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    #@14
    .line 308
    return-void

    #@15
    .line 317
    :catch_0
    move-exception v1

    #@16
    .line 318
    .local v1, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    #@18
    invoke-direct {v2, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v2, v1}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Ljava/io/UnsupportedEncodingException;

    #@21
    throw v2

    #@22
    .line 314
    .end local v1    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_1
    move-exception v0

    #@23
    .line 315
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    #@25
    invoke-direct {v2, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@28
    invoke-virtual {v2, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Ljava/io/UnsupportedEncodingException;

    #@2e
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
    .line 332
    iput-object p1, p0, Lcom/android/internal/util/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    #@2
    .line 331
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
    .line 337
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
    .line 342
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
    .line 347
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
    .line 348
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    const-string/jumbo v0, "yes"

    #@15
    .line 347
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 348
    const-string/jumbo v1, "\' ?>\n"

    #@1c
    .line 347
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
    .line 349
    const/4 v0, 0x1

    #@28
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    #@2a
    .line 346
    return-void

    #@2b
    .line 348
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
    .line 354
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 355
    const-string/jumbo v0, ">\n"

    #@7
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@a
    .line 357
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 358
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    #@10
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->appendIndent(I)V

    #@13
    .line 360
    :cond_1
    iget v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    iput v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mNesting:I

    #@19
    .line 361
    const/16 v0, 0x3c

    #@1b
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    #@1e
    .line 362
    if-eqz p1, :cond_2

    #@20
    .line 363
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@23
    .line 364
    const/16 v0, 0x3a

    #@25
    invoke-direct {p0, v0}, Lcom/android/internal/util/FastXmlSerializer;->append(C)V

    #@28
    .line 366
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@2b
    .line 367
    const/4 v0, 0x1

    #@2c
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@2e
    .line 368
    const/4 v0, 0x0

    #@2f
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mLineStart:Z

    #@31
    .line 369
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
    .line 387
    iget-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 388
    const-string/jumbo v1, ">"

    #@8
    invoke-direct {p0, v1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@b
    .line 389
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@d
    .line 391
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    #@10
    .line 392
    iget-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 393
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
    .line 395
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
    .line 374
    iget-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 375
    const-string/jumbo v1, ">"

    #@8
    invoke-direct {p0, v1}, Lcom/android/internal/util/FastXmlSerializer;->append(Ljava/lang/String;)V

    #@b
    .line 376
    iput-boolean v0, p0, Lcom/android/internal/util/FastXmlSerializer;->mInTag:Z

    #@d
    .line 378
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastXmlSerializer;->escapeAndAppendString([CII)V

    #@10
    .line 379
    iget-boolean v1, p0, Lcom/android/internal/util/FastXmlSerializer;->mIndent:Z

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 380
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
    .line 382
    :cond_2
    return-object p0
.end method
