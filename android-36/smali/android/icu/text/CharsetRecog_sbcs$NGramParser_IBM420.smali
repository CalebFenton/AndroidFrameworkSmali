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
.field protected static blacklist unshapeMap:[B


# instance fields
.field private blacklist alef:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 173
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->unshapeMap:[B

    return-void

    :array_a
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

.method public constructor blacklist <init>([I[B)V
    .registers 4
    .param p1, "theNgramList"    # [I
    .param p2, "theByteMap"    # [B

    .line 196
    invoke-direct {p0, p1, p2}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;-><init>([I[B)V

    .line 171
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->alef:B

    .line 197
    return-void
.end method

.method private blacklist isLamAlef(B)B
    .registers 3
    .param p1, "b"    # B

    .line 200
    const/16 v0, -0x4e

    if-eq p1, v0, :cond_23

    const/16 v0, -0x4d

    if-ne p1, v0, :cond_9

    goto :goto_23

    .line 202
    :cond_9
    const/16 v0, -0x4c

    if-eq p1, v0, :cond_20

    const/16 v0, -0x4b

    if-ne p1, v0, :cond_12

    goto :goto_20

    .line 204
    :cond_12
    const/16 v0, -0x48

    if-eq p1, v0, :cond_1d

    const/16 v0, -0x47

    if-ne p1, v0, :cond_1b

    goto :goto_1d

    .line 207
    :cond_1b
    const/4 v0, 0x0

    return v0

    .line 205
    :cond_1d
    :goto_1d
    const/16 v0, 0x56

    return v0

    .line 203
    :cond_20
    :goto_20
    const/16 v0, 0x49

    return v0

    .line 201
    :cond_23
    :goto_23
    const/16 v0, 0x47

    return v0
.end method

.method private blacklist nextByte(Landroid/icu/text/CharsetDetector;)I
    .registers 5
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 219
    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteIndex:I

    iget v1, p1, Landroid/icu/text/CharsetDetector;->fInputLen:I

    if-ge v0, v1, :cond_37

    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    iget v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteIndex:I

    aget-byte v0, v0, v1

    if-nez v0, :cond_f

    goto :goto_37

    .line 224
    :cond_f
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    iget v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteIndex:I

    aget-byte v0, v0, v1

    invoke-direct {p0, v0}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->isLamAlef(B)B

    move-result v0

    iput-byte v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->alef:B

    .line 225
    iget-byte v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->alef:B

    if-eqz v0, :cond_22

    .line 226
    const/16 v0, 0xb1

    .local v0, "next":I
    goto :goto_30

    .line 228
    .end local v0    # "next":I
    :cond_22
    sget-object v0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->unshapeMap:[B

    iget-object v1, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    iget v2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 230
    .restart local v0    # "next":I
    :goto_30
    iget v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteIndex:I

    .line 232
    return v0

    .line 220
    .end local v0    # "next":I
    :cond_37
    :goto_37
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method protected blacklist parseCharacters(Landroid/icu/text/CharsetDetector;)V
    .registers 9
    .param p1, "det"    # Landroid/icu/text/CharsetDetector;

    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "ignoreSpace":Z
    :goto_1
    invoke-direct {p0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v1

    move v2, v1

    .local v2, "b":I
    if-ltz v1, :cond_40

    .line 242
    iget-object v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteMap:[B

    aget-byte v1, v1, v2

    .line 245
    .local v1, "mb":B
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_21

    .line 246
    iget-byte v5, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->spaceChar:B

    if-ne v1, v5, :cond_16

    if-nez v0, :cond_19

    .line 247
    :cond_16
    invoke-virtual {p0, v1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->addByte(I)V

    .line 250
    :cond_19
    iget-byte v5, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->spaceChar:B

    if-ne v1, v5, :cond_1f

    move v5, v3

    goto :goto_20

    :cond_1f
    move v5, v4

    :goto_20
    move v0, v5

    .line 252
    :cond_21
    iget-byte v5, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->alef:B

    if-eqz v5, :cond_3f

    .line 253
    iget-object v5, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->byteMap:[B

    iget-byte v6, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->alef:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v1, v5, v6

    .line 256
    if-eqz v1, :cond_3f

    .line 257
    iget-byte v5, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->spaceChar:B

    if-ne v1, v5, :cond_35

    if-nez v0, :cond_38

    .line 258
    :cond_35
    invoke-virtual {p0, v1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->addByte(I)V

    .line 261
    :cond_38
    iget-byte v5, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->spaceChar:B

    if-ne v1, v5, :cond_3d

    goto :goto_3e

    :cond_3d
    move v3, v4

    :goto_3e
    move v0, v3

    .line 265
    .end local v1    # "mb":B
    :cond_3f
    goto :goto_1

    .line 266
    :cond_40
    return-void
.end method
