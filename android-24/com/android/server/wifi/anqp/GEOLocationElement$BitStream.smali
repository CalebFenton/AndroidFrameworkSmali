.class Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;
.super Ljava/lang/Object;
.source "GEOLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/GEOLocationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitStream"
.end annotation


# instance fields
.field private bitOffset:I

.field private final data:[B


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "octets"    # I

    #@0
    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 229
    new-array v0, p1, [B

    #@5
    iput-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->data:[B

    #@7
    .line 228
    return-void
.end method

.method private append(JI)V
    .locals 13
    .param p1, "value"    # J
    .param p3, "width"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 233
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3
    const-string/jumbo v6, "Appending %x:%d\n"

    #@6
    const/4 v7, 0x2

    #@7
    new-array v7, v7, [Ljava/lang/Object;

    #@9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@c
    move-result-object v8

    #@d
    aput-object v8, v7, v9

    #@f
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v8

    #@13
    const/4 v9, 0x1

    #@14
    aput-object v8, v7, v9

    #@16
    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@19
    .line 234
    add-int/lit8 v3, p3, -0x1

    #@1b
    .local v3, "sbit":I
    :goto_0
    if-ltz v3, :cond_1

    #@1d
    .line 235
    iget v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->bitOffset:I

    #@1f
    ushr-int/lit8 v0, v5, 0x3

    #@21
    .line 236
    .local v0, "b0":I
    iget v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->bitOffset:I

    #@23
    and-int/lit8 v1, v5, 0x7

    #@25
    .line 238
    .local v1, "dbit":I
    add-int/lit8 v5, v3, -0x7

    #@27
    add-int v4, v5, v1

    #@29
    .line 239
    .local v4, "shr":I
    const/16 v5, 0xff

    #@2b
    ushr-int v2, v5, v1

    #@2d
    .line 241
    .local v2, "dmask":I
    if-ltz v4, :cond_0

    #@2f
    .line 242
    iget-object v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->data:[B

    #@31
    iget-object v6, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->data:[B

    #@33
    aget-byte v6, v6, v0

    #@35
    not-int v7, v2

    #@36
    and-int/2addr v6, v7

    #@37
    int-to-long v6, v6

    #@38
    ushr-long v8, p1, v4

    #@3a
    int-to-long v10, v2

    #@3b
    and-long/2addr v8, v10

    #@3c
    or-long/2addr v6, v8

    #@3d
    long-to-int v6, v6

    #@3e
    int-to-byte v6, v6

    #@3f
    aput-byte v6, v5, v0

    #@41
    .line 243
    iget v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->bitOffset:I

    #@43
    rsub-int/lit8 v6, v1, 0x8

    #@45
    add-int/2addr v5, v6

    #@46
    iput v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->bitOffset:I

    #@48
    .line 244
    rsub-int/lit8 v5, v1, 0x8

    #@4a
    sub-int/2addr v3, v5

    #@4b
    goto :goto_0

    #@4c
    .line 246
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->data:[B

    #@4e
    iget-object v6, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->data:[B

    #@50
    aget-byte v6, v6, v0

    #@52
    not-int v7, v2

    #@53
    and-int/2addr v6, v7

    #@54
    int-to-long v6, v6

    #@55
    neg-int v8, v4

    #@56
    shl-long v8, p1, v8

    #@58
    int-to-long v10, v2

    #@59
    and-long/2addr v8, v10

    #@5a
    or-long/2addr v6, v8

    #@5b
    long-to-int v6, v6

    #@5c
    int-to-byte v6, v6

    #@5d
    aput-byte v6, v5, v0

    #@5f
    .line 247
    iget v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->bitOffset:I

    #@61
    add-int/lit8 v6, v3, 0x1

    #@63
    add-int/2addr v5, v6

    #@64
    iput v5, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->bitOffset:I

    #@66
    .line 248
    const/4 v3, -0x1

    #@67
    goto :goto_0

    #@68
    .line 232
    .end local v0    # "b0":I
    .end local v1    # "dbit":I
    .end local v2    # "dmask":I
    .end local v4    # "shr":I
    :cond_1
    return-void
.end method

.method private getOctets()[B
    .locals 1

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/wifi/anqp/GEOLocationElement$BitStream;->data:[B

    #@2
    return-object v0
.end method
