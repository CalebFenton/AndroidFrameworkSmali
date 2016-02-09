.class Ljava/lang/ThreadLocal$Values;
.super Ljava/lang/Object;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Values"
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0x10

.field private static final TOMBSTONE:Ljava/lang/Object;


# instance fields
.field private clean:I

.field private mask:I

.field private maximumLoad:I

.field private size:I

.field private table:[Ljava/lang/Object;

.field private tombstones:I


# direct methods
.method static synthetic -get0(Ljava/lang/ThreadLocal$Values;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    #@2
    return v0
.end method

.method static synthetic -get1(Ljava/lang/ThreadLocal$Values;)[Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 154
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    #@7
    .line 144
    return-void
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$Values;, "Ljava/lang/ThreadLocal<TT;>.Values;"
    const/4 v1, 0x0

    #@1
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 181
    const/16 v0, 0x10

    #@6
    invoke-direct {p0, v0}, Ljava/lang/ThreadLocal$Values;->initializeTable(I)V

    #@9
    .line 182
    iput v1, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@b
    .line 183
    iput v1, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@d
    .line 180
    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadLocal$Values;)V
    .locals 1
    .param p1, "fromParent"    # Ljava/lang/ThreadLocal$Values;

    #@0
    .prologue
    .line 189
    .local p0, "this":Ljava/lang/ThreadLocal$Values;, "Ljava/lang/ThreadLocal<TT;>.Values;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 190
    iget-object v0, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/lang/Object;

    #@b
    iput-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@d
    .line 191
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->mask:I

    #@f
    iput v0, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    #@11
    .line 192
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->size:I

    #@13
    iput v0, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@15
    .line 193
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@17
    iput v0, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@19
    .line 194
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    #@1b
    iput v0, p0, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    #@1d
    .line 195
    iget v0, p1, Ljava/lang/ThreadLocal$Values;->clean:I

    #@1f
    iput v0, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    #@21
    .line 196
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$Values;->inheritValues(Ljava/lang/ThreadLocal$Values;)V

    #@24
    .line 189
    return-void
.end method

.method private cleanUp()V
    .locals 7

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$Values;, "Ljava/lang/ThreadLocal<TT;>.Values;"
    const/4 v6, 0x0

    #@1
    .line 254
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->rehash()Z

    #@4
    move-result v5

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 257
    return-void

    #@8
    .line 260
    :cond_0
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@a
    if-nez v5, :cond_1

    #@c
    .line 262
    return-void

    #@d
    .line 267
    :cond_1
    iget v1, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    #@f
    .line 268
    .local v1, "index":I
    iget-object v4, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@11
    .line 269
    .local v4, "table":[Ljava/lang/Object;
    array-length v0, v4

    #@12
    .local v0, "counter":I
    :goto_0
    if-lez v0, :cond_4

    #@14
    .line 271
    aget-object v2, v4, v1

    #@16
    .line 273
    .local v2, "k":Ljava/lang/Object;
    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    #@18
    if-eq v2, v5, :cond_2

    #@1a
    if-nez v2, :cond_3

    #@1c
    .line 269
    :cond_2
    :goto_1
    shr-int/lit8 v0, v0, 0x1

    #@1e
    .line 270
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    #@21
    move-result v1

    #@22
    goto :goto_0

    #@23
    :cond_3
    move-object v3, v2

    #@24
    .line 280
    check-cast v3, Ljava/lang/ref/Reference;

    #@26
    .line 281
    .local v3, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/ThreadLocal<*>;>;"
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@29
    move-result-object v5

    #@2a
    if-nez v5, :cond_2

    #@2c
    .line 283
    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    #@2e
    aput-object v5, v4, v1

    #@30
    .line 284
    add-int/lit8 v5, v1, 0x1

    #@32
    aput-object v6, v4, v5

    #@34
    .line 285
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@36
    add-int/lit8 v5, v5, 0x1

    #@38
    iput v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@3a
    .line 286
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@3c
    add-int/lit8 v5, v5, -0x1

    #@3e
    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@40
    goto :goto_1

    #@41
    .line 291
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/ThreadLocal<*>;>;"
    :cond_4
    iput v1, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    #@43
    .line 253
    return-void
.end method

.method private inheritValues(Ljava/lang/ThreadLocal$Values;)V
    .locals 9
    .param p1, "fromParent"    # Ljava/lang/ThreadLocal$Values;

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$Values;, "Ljava/lang/ThreadLocal<TT;>.Values;"
    const/4 v8, 0x0

    #@1
    .line 205
    iget-object v4, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@3
    .line 206
    .local v4, "table":[Ljava/lang/Object;
    array-length v5, v4

    #@4
    add-int/lit8 v0, v5, -0x2

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    #@8
    .line 207
    aget-object v1, v4, v0

    #@a
    .line 209
    .local v1, "k":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@c
    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    #@e
    if-ne v1, v5, :cond_1

    #@10
    .line 206
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x2

    #@12
    goto :goto_0

    #@13
    :cond_1
    move-object v3, v1

    #@14
    .line 216
    check-cast v3, Ljava/lang/ref/Reference;

    #@16
    .line 218
    .local v3, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/InheritableThreadLocal<*>;>;"
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Ljava/lang/InheritableThreadLocal;

    #@1c
    .line 219
    .local v2, "key":Ljava/lang/InheritableThreadLocal;
    if-eqz v2, :cond_2

    #@1e
    .line 223
    add-int/lit8 v5, v0, 0x1

    #@20
    iget-object v6, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@22
    add-int/lit8 v7, v0, 0x1

    #@24
    aget-object v6, v6, v7

    #@26
    invoke-virtual {v2, v6}, Ljava/lang/InheritableThreadLocal;->childValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v6

    #@2a
    aput-object v6, v4, v5

    #@2c
    goto :goto_1

    #@2d
    .line 226
    :cond_2
    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    #@2f
    aput-object v5, v4, v0

    #@31
    .line 227
    add-int/lit8 v5, v0, 0x1

    #@33
    aput-object v8, v4, v5

    #@35
    .line 228
    iget-object v5, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@37
    sget-object v6, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    #@39
    aput-object v6, v5, v0

    #@3b
    .line 229
    iget-object v5, p1, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@3d
    add-int/lit8 v6, v0, 0x1

    #@3f
    aput-object v8, v5, v6

    #@41
    .line 231
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@43
    add-int/lit8 v5, v5, 0x1

    #@45
    iput v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@47
    .line 232
    iget v5, p1, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@49
    add-int/lit8 v5, v5, 0x1

    #@4b
    iput v5, p1, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@4d
    .line 234
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@4f
    add-int/lit8 v5, v5, -0x1

    #@51
    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@53
    .line 235
    iget v5, p1, Ljava/lang/ThreadLocal$Values;->size:I

    #@55
    add-int/lit8 v5, v5, -0x1

    #@57
    iput v5, p1, Ljava/lang/ThreadLocal$Values;->size:I

    #@59
    goto :goto_1

    #@5a
    .line 203
    .end local v1    # "k":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/InheritableThreadLocal;
    .end local v3    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/InheritableThreadLocal<*>;>;"
    :cond_3
    return-void
.end method

.method private initializeTable(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 244
    .local p0, "this":Ljava/lang/ThreadLocal$Values;, "Ljava/lang/ThreadLocal<TT;>.Values;"
    mul-int/lit8 v0, p1, 0x2

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    iput-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@6
    .line 245
    iget-object v0, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@8
    array-length v0, v0

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    iput v0, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    #@d
    .line 246
    const/4 v0, 0x0

    #@e
    iput v0, p0, Ljava/lang/ThreadLocal$Values;->clean:I

    #@10
    .line 247
    mul-int/lit8 v0, p1, 0x2

    #@12
    div-int/lit8 v0, v0, 0x3

    #@14
    iput v0, p0, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    #@16
    .line 243
    return-void
.end method

.method private next(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 531
    .local p0, "this":Ljava/lang/ThreadLocal$Values;, "Ljava/lang/ThreadLocal<TT;>.Values;"
    add-int/lit8 v0, p1, 0x2

    #@2
    iget v1, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    #@4
    and-int/2addr v0, v1

    #@5
    return v0
.end method

.method private rehash()Z
    .locals 11

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$Values;, "Ljava/lang/ThreadLocal<TT;>.Values;"
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 302
    iget v7, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@4
    iget v8, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@6
    add-int/2addr v7, v8

    #@7
    iget v8, p0, Ljava/lang/ThreadLocal$Values;->maximumLoad:I

    #@9
    if-ge v7, v8, :cond_0

    #@b
    .line 303
    return v9

    #@c
    .line 306
    :cond_0
    iget-object v7, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@e
    array-length v7, v7

    #@f
    shr-int/lit8 v0, v7, 0x1

    #@11
    .line 314
    .local v0, "capacity":I
    move v4, v0

    #@12
    .line 316
    .local v4, "newCapacity":I
    iget v7, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@14
    shr-int/lit8 v8, v0, 0x1

    #@16
    if-le v7, v8, :cond_1

    #@18
    .line 319
    mul-int/lit8 v4, v0, 0x2

    #@1a
    .line 322
    :cond_1
    iget-object v5, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@1c
    .line 325
    .local v5, "oldTable":[Ljava/lang/Object;
    invoke-direct {p0, v4}, Ljava/lang/ThreadLocal$Values;->initializeTable(I)V

    #@1f
    .line 328
    iput v9, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@21
    .line 331
    iget v7, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@23
    if-nez v7, :cond_2

    #@25
    .line 332
    return v10

    #@26
    .line 336
    :cond_2
    array-length v7, v5

    #@27
    add-int/lit8 v1, v7, -0x2

    #@29
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    #@2b
    .line 337
    aget-object v2, v5, v1

    #@2d
    .line 338
    .local v2, "k":Ljava/lang/Object;
    if-eqz v2, :cond_3

    #@2f
    sget-object v7, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    #@31
    if-ne v2, v7, :cond_4

    #@33
    .line 336
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x2

    #@35
    goto :goto_0

    #@36
    :cond_4
    move-object v6, v2

    #@37
    .line 346
    check-cast v6, Ljava/lang/ref/Reference;

    #@39
    .line 347
    .local v6, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/ThreadLocal<*>;>;"
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    check-cast v3, Ljava/lang/ThreadLocal;

    #@3f
    .line 348
    .local v3, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    if-eqz v3, :cond_5

    #@41
    .line 350
    add-int/lit8 v7, v1, 0x1

    #@43
    aget-object v7, v5, v7

    #@45
    invoke-virtual {p0, v3, v7}, Ljava/lang/ThreadLocal$Values;->add(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    #@48
    goto :goto_1

    #@49
    .line 353
    :cond_5
    iget v7, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@4b
    add-int/lit8 v7, v7, -0x1

    #@4d
    iput v7, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@4f
    goto :goto_1

    #@50
    .line 357
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    .end local v6    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/ThreadLocal<*>;>;"
    :cond_6
    return v10
.end method


# virtual methods
.method add(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 4
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 366
    .local p0, "this":Ljava/lang/ThreadLocal$Values;, "Ljava/lang/ThreadLocal<TT;>.Values;"
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    #@3
    move-result v2

    #@4
    iget v3, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    #@6
    and-int v0, v2, v3

    #@8
    .line 367
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@a
    aget-object v1, v2, v0

    #@c
    .line 368
    .local v1, "k":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@e
    .line 369
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@10
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get1(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    #@13
    move-result-object v3

    #@14
    aput-object v3, v2, v0

    #@16
    .line 370
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@18
    add-int/lit8 v3, v0, 0x1

    #@1a
    aput-object p2, v2, v3

    #@1c
    .line 371
    return-void

    #@1d
    .line 366
    :cond_0
    invoke-direct {p0, v0}, Ljava/lang/ThreadLocal$Values;->next(I)I

    #@20
    move-result v0

    #@21
    goto :goto_0
.end method

.method getAfterMiss(Ljava/lang/ThreadLocal;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$Values;, "Ljava/lang/ThreadLocal<TT;>.Values;"
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    const/4 v7, -0x1

    #@1
    .line 425
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@3
    .line 426
    .local v3, "table":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    #@6
    move-result v5

    #@7
    iget v6, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    #@9
    and-int v1, v5, v6

    #@b
    .line 429
    .local v1, "index":I
    aget-object v5, v3, v1

    #@d
    if-nez v5, :cond_1

    #@f
    .line 430
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->initialValue()Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    .line 433
    .local v4, "value":Ljava/lang/Object;
    iget-object v5, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@15
    if-ne v5, v3, :cond_0

    #@17
    aget-object v5, v3, v1

    #@19
    if-nez v5, :cond_0

    #@1b
    .line 434
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get1(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    #@1e
    move-result-object v5

    #@1f
    aput-object v5, v3, v1

    #@21
    .line 435
    add-int/lit8 v5, v1, 0x1

    #@23
    aput-object v4, v3, v5

    #@25
    .line 436
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@27
    add-int/lit8 v5, v5, 0x1

    #@29
    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@2b
    .line 438
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    #@2e
    .line 439
    return-object v4

    #@2f
    .line 443
    :cond_0
    invoke-virtual {p0, p1, v4}, Ljava/lang/ThreadLocal$Values;->put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    #@32
    .line 444
    return-object v4

    #@33
    .line 449
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v0, -0x1

    #@34
    .line 452
    .local v0, "firstTombstone":I
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    #@37
    move-result v1

    #@38
    .line 453
    :goto_0
    aget-object v2, v3, v1

    #@3a
    .line 454
    .local v2, "reference":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get1(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    #@3d
    move-result-object v5

    #@3e
    if-ne v2, v5, :cond_2

    #@40
    .line 455
    add-int/lit8 v5, v1, 0x1

    #@42
    aget-object v5, v3, v5

    #@44
    return-object v5

    #@45
    .line 459
    :cond_2
    if-nez v2, :cond_5

    #@47
    .line 460
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->initialValue()Ljava/lang/Object;

    #@4a
    move-result-object v4

    #@4b
    .line 463
    .restart local v4    # "value":Ljava/lang/Object;
    iget-object v5, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@4d
    if-ne v5, v3, :cond_4

    #@4f
    .line 466
    if-le v0, v7, :cond_3

    #@51
    .line 467
    aget-object v5, v3, v0

    #@53
    sget-object v6, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    #@55
    if-ne v5, v6, :cond_3

    #@57
    .line 468
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get1(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    #@5a
    move-result-object v5

    #@5b
    aput-object v5, v3, v0

    #@5d
    .line 469
    add-int/lit8 v5, v0, 0x1

    #@5f
    aput-object v4, v3, v5

    #@61
    .line 470
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@63
    add-int/lit8 v5, v5, -0x1

    #@65
    iput v5, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@67
    .line 471
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@69
    add-int/lit8 v5, v5, 0x1

    #@6b
    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@6d
    .line 475
    return-object v4

    #@6e
    .line 479
    :cond_3
    aget-object v5, v3, v1

    #@70
    if-nez v5, :cond_4

    #@72
    .line 480
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get1(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    #@75
    move-result-object v5

    #@76
    aput-object v5, v3, v1

    #@78
    .line 481
    add-int/lit8 v5, v1, 0x1

    #@7a
    aput-object v4, v3, v5

    #@7c
    .line 482
    iget v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@7e
    add-int/lit8 v5, v5, 0x1

    #@80
    iput v5, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@82
    .line 484
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    #@85
    .line 485
    return-object v4

    #@86
    .line 490
    :cond_4
    invoke-virtual {p0, p1, v4}, Ljava/lang/ThreadLocal$Values;->put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    #@89
    .line 491
    return-object v4

    #@8a
    .line 494
    .end local v4    # "value":Ljava/lang/Object;
    :cond_5
    if-ne v0, v7, :cond_6

    #@8c
    sget-object v5, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    #@8e
    if-ne v2, v5, :cond_6

    #@90
    .line 496
    move v0, v1

    #@91
    .line 452
    :cond_6
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    #@94
    move-result v1

    #@95
    goto :goto_0
.end method

.method put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 6
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$Values;, "Ljava/lang/ThreadLocal<TT;>.Values;"
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    const/4 v5, -0x1

    #@1
    .line 381
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    #@4
    .line 385
    const/4 v0, -0x1

    #@5
    .line 387
    .local v0, "firstTombstone":I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    #@8
    move-result v3

    #@9
    iget v4, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    #@b
    and-int v1, v3, v4

    #@d
    .line 388
    .local v1, "index":I
    :goto_0
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@f
    aget-object v2, v3, v1

    #@11
    .line 390
    .local v2, "k":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get1(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    #@14
    move-result-object v3

    #@15
    if-ne v2, v3, :cond_0

    #@17
    .line 392
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@19
    add-int/lit8 v4, v1, 0x1

    #@1b
    aput-object p2, v3, v4

    #@1d
    .line 393
    return-void

    #@1e
    .line 396
    :cond_0
    if-nez v2, :cond_2

    #@20
    .line 397
    if-ne v0, v5, :cond_1

    #@22
    .line 399
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@24
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get1(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    #@27
    move-result-object v4

    #@28
    aput-object v4, v3, v1

    #@2a
    .line 400
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@2c
    add-int/lit8 v4, v1, 0x1

    #@2e
    aput-object p2, v3, v4

    #@30
    .line 401
    iget v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@32
    add-int/lit8 v3, v3, 0x1

    #@34
    iput v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@36
    .line 402
    return-void

    #@37
    .line 406
    :cond_1
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@39
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get1(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    #@3c
    move-result-object v4

    #@3d
    aput-object v4, v3, v0

    #@3f
    .line 407
    iget-object v3, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@41
    add-int/lit8 v4, v0, 0x1

    #@43
    aput-object p2, v3, v4

    #@45
    .line 408
    iget v3, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@47
    add-int/lit8 v3, v3, -0x1

    #@49
    iput v3, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@4b
    .line 409
    iget v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@4d
    add-int/lit8 v3, v3, 0x1

    #@4f
    iput v3, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@51
    .line 410
    return-void

    #@52
    .line 414
    :cond_2
    if-ne v0, v5, :cond_3

    #@54
    sget-object v3, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    #@56
    if-ne v2, v3, :cond_3

    #@58
    .line 415
    move v0, v1

    #@59
    .line 387
    :cond_3
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$Values;->next(I)I

    #@5c
    move-result v1

    #@5d
    goto :goto_0
.end method

.method remove(Ljava/lang/ThreadLocal;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$Values;, "Ljava/lang/ThreadLocal<TT;>.Values;"
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    const/4 v4, 0x0

    #@1
    .line 505
    invoke-direct {p0}, Ljava/lang/ThreadLocal$Values;->cleanUp()V

    #@4
    .line 507
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    #@7
    move-result v2

    #@8
    iget v3, p0, Ljava/lang/ThreadLocal$Values;->mask:I

    #@a
    and-int v0, v2, v3

    #@c
    .line 508
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@e
    aget-object v1, v2, v0

    #@10
    .line 510
    .local v1, "reference":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get1(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;

    #@13
    move-result-object v2

    #@14
    if-ne v1, v2, :cond_0

    #@16
    .line 512
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@18
    sget-object v3, Ljava/lang/ThreadLocal$Values;->TOMBSTONE:Ljava/lang/Object;

    #@1a
    aput-object v3, v2, v0

    #@1c
    .line 513
    iget-object v2, p0, Ljava/lang/ThreadLocal$Values;->table:[Ljava/lang/Object;

    #@1e
    add-int/lit8 v3, v0, 0x1

    #@20
    aput-object v4, v2, v3

    #@22
    .line 514
    iget v2, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@24
    add-int/lit8 v2, v2, 0x1

    #@26
    iput v2, p0, Ljava/lang/ThreadLocal$Values;->tombstones:I

    #@28
    .line 515
    iget v2, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@2a
    add-int/lit8 v2, v2, -0x1

    #@2c
    iput v2, p0, Ljava/lang/ThreadLocal$Values;->size:I

    #@2e
    .line 516
    return-void

    #@2f
    .line 519
    :cond_0
    if-nez v1, :cond_1

    #@31
    .line 521
    return-void

    #@32
    .line 507
    :cond_1
    invoke-direct {p0, v0}, Ljava/lang/ThreadLocal$Values;->next(I)I

    #@35
    move-result v0

    #@36
    goto :goto_0
.end method
