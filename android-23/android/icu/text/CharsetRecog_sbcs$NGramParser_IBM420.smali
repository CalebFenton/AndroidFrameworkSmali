.class Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;
.super Landroid/icu/text/CharsetRecog_sbcs$NGramParser;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NGramParser_IBM420"
.end annotation


# static fields
.field protected static unshapeMap:[B


# instance fields
.field private alef:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 169
    const/16 v0, 0x100

    #@2
    new-array v0, v0, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->unshapeMap:[B

    #@9
    .line 165
    return-void

    #@a
    .line 169
    :array_0
    .array-data 1
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x42t
        0x42t
        0x44t
        0x45t
        0x46t
        0x47t
        0x47t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x49t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x56t
        0x58t
        0x58t
        0x5at
        0x5bt
        0x5ct
        0x5dt
        0x5et
        0x5ft
        0x60t
        0x61t
        0x62t
        0x63t
        0x63t
        0x65t
        0x65t
        0x67t
        0x67t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x69t
        0x71t
        0x71t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x77t
        0x79t
        0x7at
        0x7bt
        0x7ct
        0x7dt
        0x7et
        0x7ft
        -0x80t
        -0x7ft
        -0x7et
        -0x7dt
        -0x7ct
        -0x7bt
        -0x7at
        -0x79t
        -0x78t
        -0x77t
        -0x80t
        -0x75t
        -0x75t
        -0x73t
        -0x73t
        -0x71t
        -0x70t
        -0x6ft
        -0x6et
        -0x6dt
        -0x6ct
        -0x6bt
        -0x6at
        -0x69t
        -0x68t
        -0x67t
        -0x66t
        -0x66t
        -0x66t
        -0x66t
        -0x62t
        -0x62t
        -0x62t
        -0x5ft
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
        -0x5at
        -0x59t
        -0x58t
        -0x57t
        -0x62t
        -0x55t
        -0x55t
        -0x53t
        -0x53t
        -0x51t
        -0x51t
        -0x4ft
        -0x4et
        -0x4dt
        -0x4ct
        -0x4bt
        -0x4at
        -0x49t
        -0x48t
        -0x47t
        -0x4ft
        -0x45t
        -0x45t
        -0x43t
        -0x43t
        -0x41t
        -0x40t
        -0x3ft
        -0x3et
        -0x3dt
        -0x3ct
        -0x3bt
        -0x3at
        -0x39t
        -0x38t
        -0x37t
        -0x36t
        -0x41t
        -0x34t
        -0x41t
        -0x32t
        -0x31t
        -0x30t
        -0x2ft
        -0x2et
        -0x2dt
        -0x2ct
        -0x2bt
        -0x2at
        -0x29t
        -0x28t
        -0x27t
        -0x26t
        -0x26t
        -0x24t
        -0x24t
        -0x24t
        -0x21t
        -0x20t
        -0x1ft
        -0x1et
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x16t
        -0x15t
        -0x14t
        -0x13t
        -0x12t
        -0x11t
        -0x10t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        -0x9t
        -0x8t
        -0x7t
        -0x6t
        -0x5t
        -0x4t
        -0x3t
        -0x2t
        -0x1t
    .end array-data
.end method

.method public constructor <init>([I[B)V
    .locals 1
    .param p1, "theNgramList"    # [I
    .param p2, "theByteMap"    # [B

    #@0
    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;-><init>([I[B)V

    #@3
    .line 167
    const/4 v0, 0x0

    #@4
    iput-byte v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->alef:B

    #@6
    .line 190
    return-void
.end method

.method private isLamAlef(B)B
    .locals 1
    .param p1, "b"    # B

    #@0
    .prologue
    .line 196
    const/16 v0, -0x4e

    #@2
    if-eq p1, v0, :cond_0

    #@4
    const/16 v0, -0x4d

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 197
    :cond_0
    const/16 v0, 0x47

    #@a
    return v0

    #@b
    .line 198
    :cond_1
    const/16 v0, -0x4c

    #@d
    if-eq p1, v0, :cond_2

    #@f
    const/16 v0, -0x4b

    #@11
    if-ne p1, v0, :cond_3

    #@13
    .line 199
    :cond_2
    const/16 v0, 0x49

    #@15
    return v0

    #@16
    .line 200
    :cond_3
    const/16 v0, -0x48

    #@18
    if-eq p1, v0, :cond_4

    #@1a
    const/16 v0, -0x47

    #@1c
    if-ne p1, v0, :cond_5

    #@1e
    .line 201
    :cond_4
    const/16 v0, 0x56

    #@20
    return v0

    #@21
    .line 203
    :cond_5
    const/4 v0, 0x0

    #@22
    return v0
.end method

.method private nextByte(Landroid/icu/text/CharsetDetector;)I
    .locals 4
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    .line 215
    iget v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteIndex:I

    #@2
    iget v2, p1, Landroid/icu/text/CharsetDetector;->fInputLen:I

    #@4
    if-ge v1, v2, :cond_0

    #@6
    iget-object v1, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    #@8
    iget v2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteIndex:I

    #@a
    aget-byte v1, v1, v2

    #@c
    if-nez v1, :cond_1

    #@e
    .line 216
    :cond_0
    const/4 v1, -0x1

    #@f
    return v1

    #@10
    .line 220
    :cond_1
    iget-object v1, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    #@12
    iget v2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteIndex:I

    #@14
    aget-byte v1, v1, v2

    #@16
    invoke-direct {p0, v1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->isLamAlef(B)B

    #@19
    move-result v1

    #@1a
    iput-byte v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->alef:B

    #@1c
    .line 221
    iget-byte v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->alef:B

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 222
    const/16 v0, 0xb1

    #@22
    .line 226
    .local v0, "next":I
    :goto_0
    iget v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteIndex:I

    #@24
    add-int/lit8 v1, v1, 0x1

    #@26
    iput v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteIndex:I

    #@28
    .line 228
    return v0

    #@29
    .line 224
    .end local v0    # "next":I
    :cond_2
    sget-object v1, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->unshapeMap:[B

    #@2b
    iget-object v2, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    #@2d
    iget v3, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteIndex:I

    #@2f
    aget-byte v2, v2, v3

    #@31
    and-int/lit16 v2, v2, 0xff

    #@33
    aget-byte v1, v1, v2

    #@35
    and-int/lit16 v0, v1, 0xff

    #@37
    .restart local v0    # "next":I
    goto :goto_0
.end method


# virtual methods
.method protected parseCharacters(Landroid/icu/text/CharsetDetector;)V
    .locals 6
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 234
    const/4 v1, 0x0

    #@2
    .line 236
    .local v1, "ignoreSpace":Z
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->nextByte(Landroid/icu/text/CharsetDetector;)I

    #@5
    move-result v0

    #@6
    .local v0, "b":I
    if-ltz v0, :cond_8

    #@8
    .line 237
    iget-object v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteMap:[B

    #@a
    aget-byte v2, v4, v0

    #@c
    .line 240
    .local v2, "mb":B
    if-eqz v2, :cond_2

    #@e
    .line 241
    iget-byte v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->spaceChar:B

    #@10
    if-ne v2, v4, :cond_4

    #@12
    .end local v1    # "ignoreSpace":Z
    :goto_1
    if-nez v1, :cond_1

    #@14
    .line 242
    invoke-virtual {p0, v2}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->addByte(I)V

    #@17
    .line 245
    :cond_1
    iget-byte v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->spaceChar:B

    #@19
    if-ne v2, v4, :cond_5

    #@1b
    const/4 v1, 0x1

    #@1c
    .line 247
    .restart local v1    # "ignoreSpace":Z
    :cond_2
    :goto_2
    iget-byte v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->alef:B

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 248
    iget-object v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteMap:[B

    #@22
    iget-byte v5, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->alef:B

    #@24
    and-int/lit16 v5, v5, 0xff

    #@26
    aget-byte v2, v4, v5

    #@28
    .line 251
    if-eqz v2, :cond_0

    #@2a
    .line 252
    iget-byte v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->spaceChar:B

    #@2c
    if-ne v2, v4, :cond_6

    #@2e
    .end local v1    # "ignoreSpace":Z
    :goto_3
    if-nez v1, :cond_3

    #@30
    .line 253
    invoke-virtual {p0, v2}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->addByte(I)V

    #@33
    .line 256
    :cond_3
    iget-byte v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->spaceChar:B

    #@35
    if-ne v2, v4, :cond_7

    #@37
    const/4 v1, 0x1

    #@38
    .restart local v1    # "ignoreSpace":Z
    goto :goto_0

    #@39
    :cond_4
    move v1, v3

    #@3a
    .line 241
    goto :goto_1

    #@3b
    .line 245
    .end local v1    # "ignoreSpace":Z
    :cond_5
    const/4 v1, 0x0

    #@3c
    .restart local v1    # "ignoreSpace":Z
    goto :goto_2

    #@3d
    :cond_6
    move v1, v3

    #@3e
    .line 252
    goto :goto_3

    #@3f
    .line 256
    .end local v1    # "ignoreSpace":Z
    :cond_7
    const/4 v1, 0x0

    #@40
    .restart local v1    # "ignoreSpace":Z
    goto :goto_0

    #@41
    .line 231
    .end local v2    # "mb":B
    :cond_8
    return-void
.end method
