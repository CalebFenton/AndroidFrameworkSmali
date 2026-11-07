.class final Lcom/android/okhttp/internal/framed/Hpack$Reader;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field blacklist dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

.field blacklist dynamicTableByteCount:I

.field blacklist headerCount:I

.field private final blacklist headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist headerTableSizeSetting:I

.field private blacklist maxDynamicTableByteCount:I

.field blacklist nextHeaderIndex:I

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor blacklist <init>(ILcom/android/okhttp/okio/Source;)V
    .registers 4

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    const/16 v0, 0x8

    .line 123
    new-array v0, v0, [Lcom/android/okhttp/internal/framed/Header;

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    .line 125
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    .line 127
    iput v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 130
    iput p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting:I

    .line 131
    iput p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 132
    invoke-static {p2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    return-void
.end method

.method private blacklist adjustDynamicTableByteCount()V
    .registers 3

    .line 153
    iget v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_10

    if-nez v0, :cond_c

    .line 155
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->clearDynamicTable()V

    return-void

    :cond_c
    sub-int/2addr v1, v0

    .line 157
    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->evictToRecoverBytes(I)I

    :cond_10
    return-void
.end method

.method private blacklist clearDynamicTable()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    .line 167
    iput v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    return-void
.end method

.method private blacklist dynamicTableIndex(I)I
    .registers 2

    .line 242
    iget p0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 p0, p0, 0x1

    add-int/2addr p0, p1

    return p0
.end method

.method private blacklist evictToRecoverBytes(I)I
    .registers 6

    const/4 v0, 0x0

    if-lez p1, :cond_36

    .line 175
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    iget v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_25

    if-lez p1, :cond_25

    .line 176
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/android/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 177
    iget v3, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 178
    iget v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 181
    :cond_25
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    :cond_36
    return v0
.end method

.method private blacklist getName(I)Lcom/android/okhttp/okio/ByteString;
    .registers 4

    .line 271
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 272
    # getter for: Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Hpack;->access$000()[Lcom/android/okhttp/internal/framed/Header;

    move-result-object p0

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    return-object p0

    .line 274
    :cond_f
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    # getter for: Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Hpack;->access$000()[Lcom/android/okhttp/internal/framed/Header;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result p0

    aget-object p0, v0, p0

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    return-object p0
.end method

.method private blacklist insertIntoDynamicTable(ILcom/android/okhttp/internal/framed/Header;)V
    .registers 8

    .line 284
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget v0, p2, Lcom/android/okhttp/internal/framed/Header;->hpackSize:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_15

    .line 288
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/android/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr v0, v2

    .line 292
    :cond_15
    iget v2, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    if-le v0, v2, :cond_1d

    .line 293
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->clearDynamicTable()V

    return-void

    .line 298
    :cond_1d
    iget v3, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 299
    invoke-direct {p0, v3}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->evictToRecoverBytes(I)I

    move-result v2

    if-ne p1, v1, :cond_55

    .line 302
    iget p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    array-length v2, v1

    if-le p1, v2, :cond_44

    .line 303
    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lcom/android/okhttp/internal/framed/Header;

    .line 304
    array-length v2, v1

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    .line 306
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    .line 308
    :cond_44
    iget p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->nextHeaderIndex:I

    .line 309
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    aput-object p2, v1, p1

    .line 310
    iget p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerCount:I

    goto :goto_5f

    .line 312
    :cond_55
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 313
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    aput-object p2, v1, p1

    .line 315
    :goto_5f
    iget p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    return-void
.end method

.method private blacklist isStaticHeader(I)Z
    .registers 3

    if-ltz p1, :cond_c

    .line 279
    # getter for: Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Hpack;->access$000()[Lcom/android/okhttp/internal/framed/Header;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-gt p1, p0, :cond_c

    return v0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist readByte()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private blacklist readIndexedHeader(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 229
    # getter for: Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Hpack;->access$000()[Lcom/android/okhttp/internal/framed/Header;

    move-result-object v0

    aget-object p1, v0, p1

    .line 230
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 232
    :cond_12
    # getter for: Lcom/android/okhttp/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lcom/android/okhttp/internal/framed/Header;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Hpack;->access$000()[Lcom/android/okhttp/internal/framed/Header;

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    if-ltz v0, :cond_2e

    .line 233
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lcom/android/okhttp/internal/framed/Header;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_2e

    .line 236
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    aget-object p1, v1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 234
    :cond_2e
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header index too large "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->getName(I)Lcom/android/okhttp/okio/ByteString;

    move-result-object p1

    .line 260
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 261
    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v1, p1, v0}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->insertIntoDynamicTable(ILcom/android/okhttp/internal/framed/Header;)V

    return-void
.end method

.method private blacklist readLiteralHeaderWithIncrementalIndexingNewName()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    # invokes: Lcom/android/okhttp/internal/framed/Hpack;->checkLowercase(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/Hpack;->access$100(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    .line 267
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v2, v0, v1}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->insertIntoDynamicTable(ILcom/android/okhttp/internal/framed/Header;)V

    return-void
.end method

.method private blacklist readLiteralHeaderWithoutIndexingIndexedName(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->getName(I)Lcom/android/okhttp/okio/ByteString;

    move-result-object p1

    .line 247
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 248
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v1, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v1, p1, v0}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist readLiteralHeaderWithoutIndexingNewName()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    # invokes: Lcom/android/okhttp/internal/framed/Hpack;->checkLowercase(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/Hpack;->access$100(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByteString()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    .line 254
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v2, v0, v1}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist getAndResetHeaderList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 223
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method blacklist headerTableSizeSetting(I)V
    .registers 2

    .line 147
    iput p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting:I

    .line 148
    iput p1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 149
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->adjustDynamicTableByteCount()V

    return-void
.end method

.method blacklist maxDynamicTableByteCount()I
    .registers 1

    .line 136
    iget p0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    return p0
.end method

.method blacklist readByteString()Lcom/android/okhttp/okio/ByteString;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const/16 v2, 0x7f

    .line 348
    invoke-virtual {p0, v0, v2}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v0

    if-eqz v1, :cond_29

    .line 351
    invoke-static {}, Lcom/android/okhttp/internal/framed/Huffman;->get()Lcom/android/okhttp/internal/framed/Huffman;

    move-result-object v1

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {p0, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->readByteArray(J)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/okhttp/internal/framed/Huffman;->decode([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0

    .line 353
    :cond_29
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method blacklist readHeaders()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 194
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x80

    if-eq v1, v2, :cond_85

    and-int/lit16 v3, v0, 0x80

    if-ne v3, v2, :cond_24

    const/16 v0, 0x7f

    .line 198
    invoke-virtual {p0, v1, v0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 199
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readIndexedHeader(I)V

    goto :goto_0

    :cond_24
    const/16 v2, 0x40

    if-ne v1, v2, :cond_2c

    .line 201
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_0

    :cond_2c
    and-int/lit8 v3, v0, 0x40

    if-ne v3, v2, :cond_3c

    const/16 v0, 0x3f

    .line 203
    invoke-virtual {p0, v1, v0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 204
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    goto :goto_0

    :cond_3c
    and-int/lit8 v0, v0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_6d

    const/16 v0, 0x1f

    .line 206
    invoke-virtual {p0, v1, v0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    if-ltz v0, :cond_54

    .line 207
    iget v1, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting:I

    if-gt v0, v1, :cond_54

    .line 211
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->adjustDynamicTableByteCount()V

    goto :goto_0

    .line 209
    :cond_54
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dynamic table size update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    const/16 v0, 0x10

    if-eq v1, v0, :cond_80

    if-nez v1, :cond_74

    goto :goto_80

    :cond_74
    const/16 v0, 0xf

    .line 215
    invoke-virtual {p0, v1, v0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 216
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto :goto_0

    .line 213
    :cond_80
    :goto_80
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    goto/16 :goto_0

    .line 196
    :cond_85
    new-instance p0, Ljava/io/IOException;

    const-string v0, "index == 0"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8d
    return-void
.end method

.method blacklist readInt(II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_4

    return p1

    :cond_4
    const/4 p1, 0x0

    .line 332
    :goto_5
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_14

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_5

    :cond_14
    shl-int p0, v0, p1

    add-int/2addr p2, p0

    return p2
.end method
