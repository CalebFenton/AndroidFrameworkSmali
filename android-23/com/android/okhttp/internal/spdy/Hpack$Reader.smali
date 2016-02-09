.class final Lcom/android/okhttp/internal/spdy/Hpack$Reader;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

.field dynamicTableByteCount:I

.field headerCount:I

.field private final headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field private headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor <init>(ILcom/android/okhttp/okio/Source;)V
    .locals 2
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "source"    # Lcom/android/okhttp/okio/Source;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    #@b
    .line 122
    const/16 v0, 0x8

    #@d
    new-array v0, v0, [Lcom/android/okhttp/internal/spdy/Header;

    #@f
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@11
    .line 124
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@13
    array-length v0, v0

    #@14
    add-int/lit8 v0, v0, -0x1

    #@16
    iput v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    #@18
    .line 125
    iput v1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    #@1a
    .line 126
    iput v1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    #@1c
    .line 129
    iput p1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerTableSizeSetting:I

    #@1e
    .line 130
    iput p1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    #@20
    .line 131
    invoke-static {p2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@26
    .line 128
    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    #@0
    .prologue
    .line 152
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    #@2
    iget v1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 153
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    #@8
    if-nez v0, :cond_1

    #@a
    .line 154
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->clearDynamicTable()V

    #@d
    .line 151
    :cond_0
    :goto_0
    return-void

    #@e
    .line 156
    :cond_1
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    #@10
    iget v1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    #@12
    sub-int/2addr v0, v1

    #@13
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->evictToRecoverBytes(I)I

    #@16
    goto :goto_0
.end method

.method private clearDynamicTable()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 162
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    #@3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@6
    .line 163
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@c
    .line 164
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@e
    array-length v0, v0

    #@f
    add-int/lit8 v0, v0, -0x1

    #@11
    iput v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    #@13
    .line 165
    iput v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    #@15
    .line 166
    iput v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    #@17
    .line 161
    return-void
.end method

.method private dynamicTableIndex(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 241
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    add-int/2addr v0, p1

    #@5
    return v0
.end method

.method private evictToRecoverBytes(I)I
    .locals 7
    .param p1, "bytesToRecover"    # I

    #@0
    .prologue
    .line 171
    const/4 v0, 0x0

    #@1
    .line 172
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    #@3
    .line 174
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@5
    array-length v2, v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "j":I
    :goto_0
    iget v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    #@a
    if-lt v1, v2, :cond_0

    #@c
    if-lez p1, :cond_0

    #@e
    .line 175
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@10
    aget-object v2, v2, v1

    #@12
    iget v2, v2, Lcom/android/okhttp/internal/spdy/Header;->hpackSize:I

    #@14
    sub-int/2addr p1, v2

    #@15
    .line 176
    iget v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    #@17
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@19
    aget-object v3, v3, v1

    #@1b
    iget v3, v3, Lcom/android/okhttp/internal/spdy/Header;->hpackSize:I

    #@1d
    sub-int/2addr v2, v3

    #@1e
    iput v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    #@20
    .line 177
    iget v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    #@22
    add-int/lit8 v2, v2, -0x1

    #@24
    iput v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    #@26
    .line 178
    add-int/lit8 v0, v0, 0x1

    #@28
    .line 174
    add-int/lit8 v1, v1, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 180
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@2d
    iget v3, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    #@2f
    add-int/lit8 v3, v3, 0x1

    #@31
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@33
    .line 181
    iget v5, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    #@35
    add-int/lit8 v5, v5, 0x1

    #@37
    add-int/2addr v5, v0

    #@38
    iget v6, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    #@3a
    .line 180
    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3d
    .line 182
    iget v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    #@3f
    add-int/2addr v2, v0

    #@40
    iput v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    #@42
    .line 184
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method private getName(I)Lcom/android/okhttp/okio/ByteString;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->isStaticHeader(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 271
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Hpack;->-get1()[Lcom/android/okhttp/internal/spdy/Header;

    #@9
    move-result-object v0

    #@a
    aget-object v0, v0, p1

    #@c
    iget-object v0, v0, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okhttp/okio/ByteString;

    #@e
    return-object v0

    #@f
    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@11
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Hpack;->-get1()[Lcom/android/okhttp/internal/spdy/Header;

    #@14
    move-result-object v1

    #@15
    array-length v1, v1

    #@16
    sub-int v1, p1, v1

    #@18
    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTableIndex(I)I

    #@1b
    move-result v1

    #@1c
    aget-object v0, v0, v1

    #@1e
    iget-object v0, v0, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okhttp/okio/ByteString;

    #@20
    return-object v0
.end method

.method private insertIntoDynamicTable(ILcom/android/okhttp/internal/spdy/Header;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "entry"    # Lcom/android/okhttp/internal/spdy/Header;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 283
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    #@3
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6
    .line 285
    iget v1, p2, Lcom/android/okhttp/internal/spdy/Header;->hpackSize:I

    #@8
    .line 286
    .local v1, "delta":I
    if-eq p1, v6, :cond_0

    #@a
    .line 287
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@c
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTableIndex(I)I

    #@f
    move-result v5

    #@10
    aget-object v4, v4, v5

    #@12
    iget v4, v4, Lcom/android/okhttp/internal/spdy/Header;->hpackSize:I

    #@14
    sub-int/2addr v1, v4

    #@15
    .line 291
    :cond_0
    iget v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    #@17
    if-le v1, v4, :cond_1

    #@19
    .line 292
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->clearDynamicTable()V

    #@1c
    .line 293
    return-void

    #@1d
    .line 297
    :cond_1
    iget v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    #@1f
    add-int/2addr v4, v1

    #@20
    iget v5, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    #@22
    sub-int v0, v4, v5

    #@24
    .line 298
    .local v0, "bytesToRecover":I
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->evictToRecoverBytes(I)I

    #@27
    move-result v3

    #@28
    .line 300
    .local v3, "entriesEvicted":I
    if-ne p1, v6, :cond_3

    #@2a
    .line 301
    iget v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    #@2c
    add-int/lit8 v4, v4, 0x1

    #@2e
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@30
    array-length v5, v5

    #@31
    if-le v4, v5, :cond_2

    #@33
    .line 302
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@35
    array-length v4, v4

    #@36
    mul-int/lit8 v4, v4, 0x2

    #@38
    new-array v2, v4, [Lcom/android/okhttp/internal/spdy/Header;

    #@3a
    .line 303
    .local v2, "doubled":[Lcom/android/okhttp/internal/spdy/Header;
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@3c
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@3e
    array-length v5, v5

    #@3f
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@41
    array-length v6, v6

    #@42
    const/4 v7, 0x0

    #@43
    invoke-static {v4, v7, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@46
    .line 304
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@48
    array-length v4, v4

    #@49
    add-int/lit8 v4, v4, -0x1

    #@4b
    iput v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    #@4d
    .line 305
    iput-object v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@4f
    .line 307
    .end local v2    # "doubled":[Lcom/android/okhttp/internal/spdy/Header;
    :cond_2
    iget p1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    #@51
    .end local p1    # "index":I
    add-int/lit8 v4, p1, -0x1

    #@53
    iput v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    #@55
    .line 308
    .restart local p1    # "index":I
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@57
    aput-object p2, v4, p1

    #@59
    .line 309
    iget v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    #@5b
    add-int/lit8 v4, v4, 0x1

    #@5d
    iput v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    #@5f
    .line 314
    :goto_0
    iget v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    #@61
    add-int/2addr v4, v1

    #@62
    iput v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    #@64
    .line 282
    return-void

    #@65
    .line 311
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTableIndex(I)I

    #@68
    move-result v4

    #@69
    add-int/2addr v4, v3

    #@6a
    add-int/2addr p1, v4

    #@6b
    .line 312
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@6d
    aput-object p2, v4, p1

    #@6f
    goto :goto_0
.end method

.method private isStaticHeader(I)Z
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 278
    if-ltz p1, :cond_0

    #@3
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Hpack;->-get1()[Lcom/android/okhttp/internal/spdy/Header;

    #@6
    move-result-object v1

    #@7
    array-length v1, v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    if-gt p1, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method private readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    #@5
    move-result v0

    #@6
    and-int/lit16 v0, v0, 0xff

    #@8
    return v0
.end method

.method private readIndexedHeader(I)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->isStaticHeader(I)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 228
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Hpack;->-get1()[Lcom/android/okhttp/internal/spdy/Header;

    #@9
    move-result-object v2

    #@a
    aget-object v1, v2, p1

    #@c
    .line 229
    .local v1, "staticEntry":Lcom/android/okhttp/internal/spdy/Header;
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    #@e
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 226
    .end local v1    # "staticEntry":Lcom/android/okhttp/internal/spdy/Header;
    :goto_0
    return-void

    #@12
    .line 231
    :cond_0
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Hpack;->-get1()[Lcom/android/okhttp/internal/spdy/Header;

    #@15
    move-result-object v2

    #@16
    array-length v2, v2

    #@17
    sub-int v2, p1, v2

    #@19
    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTableIndex(I)I

    #@1c
    move-result v0

    #@1d
    .line 232
    .local v0, "dynamicTableIndex":I
    if-ltz v0, :cond_1

    #@1f
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@21
    array-length v2, v2

    #@22
    add-int/lit8 v2, v2, -0x1

    #@24
    if-le v0, v2, :cond_2

    #@26
    .line 233
    :cond_1
    new-instance v2, Ljava/io/IOException;

    #@28
    new-instance v3, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v4, "Header index too large "

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    add-int/lit8 v4, p1, 0x1

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@41
    throw v2

    #@42
    .line 235
    :cond_2
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    #@44
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/spdy/Header;

    #@46
    aget-object v3, v3, v0

    #@48
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4b
    goto :goto_0
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .locals 4
    .param p1, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->getName(I)Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    .line 259
    .local v0, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    #@7
    move-result-object v1

    #@8
    .line 260
    .local v1, "value":Lcom/android/okhttp/okio/ByteString;
    new-instance v2, Lcom/android/okhttp/internal/spdy/Header;

    #@a
    invoke-direct {v2, v0, v1}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    #@d
    const/4 v3, -0x1

    #@e
    invoke-direct {p0, v3, v2}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->insertIntoDynamicTable(ILcom/android/okhttp/internal/spdy/Header;)V

    #@11
    .line 257
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/Hpack;->-wrap0(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;

    #@7
    move-result-object v0

    #@8
    .line 265
    .local v0, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    #@b
    move-result-object v1

    #@c
    .line 266
    .local v1, "value":Lcom/android/okhttp/okio/ByteString;
    new-instance v2, Lcom/android/okhttp/internal/spdy/Header;

    #@e
    invoke-direct {v2, v0, v1}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    #@11
    const/4 v3, -0x1

    #@12
    invoke-direct {p0, v3, v2}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->insertIntoDynamicTable(ILcom/android/okhttp/internal/spdy/Header;)V

    #@15
    .line 263
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->getName(I)Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    .line 246
    .local v0, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    #@7
    move-result-object v1

    #@8
    .line 247
    .local v1, "value":Lcom/android/okhttp/okio/ByteString;
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    #@a
    new-instance v3, Lcom/android/okhttp/internal/spdy/Header;

    #@c
    invoke-direct {v3, v0, v1}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    #@f
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@12
    .line 244
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/Hpack;->-wrap0(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;

    #@7
    move-result-object v0

    #@8
    .line 252
    .local v0, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    #@b
    move-result-object v1

    #@c
    .line 253
    .local v1, "value":Lcom/android/okhttp/okio/ByteString;
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    #@e
    new-instance v3, Lcom/android/okhttp/internal/spdy/Header;

    #@10
    invoke-direct {v3, v0, v1}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    #@13
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16
    .line 250
    return-void
.end method


# virtual methods
.method public getAndResetHeaderList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 221
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    .line 222
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    #@9
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@c
    .line 223
    return-object v0
.end method

.method headerTableSizeSetting(I)V
    .locals 0
    .param p1, "headerTableSizeSetting"    # I

    #@0
    .prologue
    .line 146
    iput p1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerTableSizeSetting:I

    #@2
    .line 147
    iput p1, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    #@4
    .line 148
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->adjustDynamicTableByteCount()V

    #@7
    .line 145
    return-void
.end method

.method maxDynamicTableByteCount()I
    .locals 1

    #@0
    .prologue
    .line 135
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    #@2
    return v0
.end method

.method readByteString()Lcom/android/okhttp/okio/ByteString;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 345
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readByte()I

    #@3
    move-result v0

    #@4
    .line 346
    .local v0, "firstByte":I
    and-int/lit16 v3, v0, 0x80

    #@6
    const/16 v4, 0x80

    #@8
    if-ne v3, v4, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    .line 347
    .local v1, "huffmanDecode":Z
    :goto_0
    const/16 v3, 0x7f

    #@d
    invoke-virtual {p0, v0, v3}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readInt(II)I

    #@10
    move-result v2

    #@11
    .line 349
    .local v2, "length":I
    if-eqz v1, :cond_1

    #@13
    .line 350
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Huffman;->get()Lcom/android/okhttp/internal/spdy/Huffman;

    #@16
    move-result-object v3

    #@17
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@19
    int-to-long v6, v2

    #@1a
    invoke-interface {v4, v6, v7}, Lcom/android/okhttp/okio/BufferedSource;->readByteArray(J)[B

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/spdy/Huffman;->decode([B)[B

    #@21
    move-result-object v3

    #@22
    invoke-static {v3}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    #@25
    move-result-object v3

    #@26
    return-object v3

    #@27
    .line 346
    .end local v1    # "huffmanDecode":Z
    .end local v2    # "length":I
    :cond_0
    const/4 v1, 0x0

    #@28
    .restart local v1    # "huffmanDecode":Z
    goto :goto_0

    #@29
    .line 352
    .restart local v2    # "length":I
    :cond_1
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2b
    int-to-long v4, v2

    #@2c
    invoke-interface {v3, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    #@2f
    move-result-object v3

    #@30
    return-object v3
.end method

.method readHeaders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x80

    #@2
    const/16 v4, 0x40

    #@4
    .line 192
    :goto_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@6
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_9

    #@c
    .line 193
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@e
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    #@11
    move-result v2

    #@12
    and-int/lit16 v0, v2, 0xff

    #@14
    .line 194
    .local v0, "b":I
    if-ne v0, v5, :cond_0

    #@16
    .line 195
    new-instance v2, Ljava/io/IOException;

    #@18
    const-string/jumbo v3, "index == 0"

    #@1b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2

    #@1f
    .line 196
    :cond_0
    and-int/lit16 v2, v0, 0x80

    #@21
    if-ne v2, v5, :cond_1

    #@23
    .line 197
    const/16 v2, 0x7f

    #@25
    invoke-virtual {p0, v0, v2}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readInt(II)I

    #@28
    move-result v1

    #@29
    .line 198
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    #@2b
    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readIndexedHeader(I)V

    #@2e
    goto :goto_0

    #@2f
    .line 199
    .end local v1    # "index":I
    :cond_1
    if-ne v0, v4, :cond_2

    #@31
    .line 200
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    #@34
    goto :goto_0

    #@35
    .line 201
    :cond_2
    and-int/lit8 v2, v0, 0x40

    #@37
    if-ne v2, v4, :cond_3

    #@39
    .line 202
    const/16 v2, 0x3f

    #@3b
    invoke-virtual {p0, v0, v2}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readInt(II)I

    #@3e
    move-result v1

    #@3f
    .line 203
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    #@41
    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    #@44
    goto :goto_0

    #@45
    .line 204
    .end local v1    # "index":I
    :cond_3
    and-int/lit8 v2, v0, 0x20

    #@47
    const/16 v3, 0x20

    #@49
    if-ne v2, v3, :cond_6

    #@4b
    .line 205
    const/16 v2, 0x1f

    #@4d
    invoke-virtual {p0, v0, v2}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readInt(II)I

    #@50
    move-result v2

    #@51
    iput v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    #@53
    .line 206
    iget v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    #@55
    if-ltz v2, :cond_4

    #@57
    .line 207
    iget v2, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    #@59
    iget v3, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->headerTableSizeSetting:I

    #@5b
    if-le v2, v3, :cond_5

    #@5d
    .line 208
    :cond_4
    new-instance v2, Ljava/io/IOException;

    #@5f
    new-instance v3, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v4, "Invalid dynamic table size update "

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    iget v4, p0, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v3

    #@75
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@78
    throw v2

    #@79
    .line 210
    :cond_5
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->adjustDynamicTableByteCount()V

    #@7c
    goto :goto_0

    #@7d
    .line 211
    :cond_6
    const/16 v2, 0x10

    #@7f
    if-eq v0, v2, :cond_7

    #@81
    if-nez v0, :cond_8

    #@83
    .line 212
    :cond_7
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    #@86
    goto/16 :goto_0

    #@88
    .line 214
    :cond_8
    const/16 v2, 0xf

    #@8a
    invoke-virtual {p0, v0, v2}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readInt(II)I

    #@8d
    move-result v1

    #@8e
    .line 215
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    #@90
    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    #@93
    goto/16 :goto_0

    #@95
    .line 191
    .end local v0    # "b":I
    .end local v1    # "index":I
    :cond_9
    return-void
.end method

.method readInt(II)I
    .locals 5
    .param p1, "firstByte"    # I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 322
    and-int v1, p1, p2

    #@2
    .line 323
    .local v1, "prefix":I
    if-ge v1, p2, :cond_0

    #@4
    .line 324
    return v1

    #@5
    .line 328
    :cond_0
    move v2, p2

    #@6
    .line 329
    .local v2, "result":I
    const/4 v3, 0x0

    #@7
    .line 331
    .local v3, "shift":I
    :goto_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/Hpack$Reader;->readByte()I

    #@a
    move-result v0

    #@b
    .line 332
    .local v0, "b":I
    and-int/lit16 v4, v0, 0x80

    #@d
    if-eqz v4, :cond_1

    #@f
    .line 333
    and-int/lit8 v4, v0, 0x7f

    #@11
    shl-int/2addr v4, v3

    #@12
    add-int/2addr v2, v4

    #@13
    .line 334
    add-int/lit8 v3, v3, 0x7

    #@15
    goto :goto_0

    #@16
    .line 336
    :cond_1
    shl-int v4, v0, v3

    #@18
    add-int/2addr v2, v4

    #@19
    .line 340
    return v2
.end method
