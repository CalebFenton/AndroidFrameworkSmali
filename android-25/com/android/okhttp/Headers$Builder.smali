.class public final Lcom/android/okhttp/Headers$Builder;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final namesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Headers$Builder;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 215
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/16 v1, 0x14

    #@7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@c
    .line 214
    return-void
.end method

.method private checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v7, 0xa

    #@2
    const/4 v6, 0x3

    #@3
    const/4 v10, 0x1

    #@4
    const/4 v9, 0x2

    #@5
    const/4 v8, 0x0

    #@6
    .line 282
    if-nez p1, :cond_0

    #@8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v5, "name == null"

    #@d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v4

    #@11
    .line 283
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v5, "name is empty"

    #@1c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 284
    :cond_1
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@24
    move-result v2

    #@25
    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_4

    #@27
    .line 285
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v0

    #@2b
    .line 286
    .local v0, "c":C
    const/16 v4, 0x1f

    #@2d
    if-le v0, v4, :cond_2

    #@2f
    const/16 v4, 0x7f

    #@31
    if-lt v0, v4, :cond_3

    #@33
    .line 287
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@35
    .line 288
    const-string/jumbo v5, "Unexpected char %#04x at %d in header name: %s"

    #@38
    .line 287
    new-array v6, v6, [Ljava/lang/Object;

    #@3a
    .line 288
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v7

    #@3e
    aput-object v7, v6, v8

    #@40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v7

    #@44
    aput-object v7, v6, v10

    #@46
    aput-object p1, v6, v9

    #@48
    .line 287
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v4

    #@50
    .line 284
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@52
    goto :goto_0

    #@53
    .line 291
    .end local v0    # "c":C
    :cond_4
    if-nez p2, :cond_5

    #@55
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@57
    const-string/jumbo v5, "value == null"

    #@5a
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v4

    #@5e
    .line 295
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@61
    move-result v3

    #@62
    .line 296
    .local v3, "valueLen":I
    if-lt v3, v9, :cond_8

    #@64
    add-int/lit8 v4, v3, -0x2

    #@66
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    #@69
    move-result v4

    #@6a
    const/16 v5, 0xd

    #@6c
    if-ne v4, v5, :cond_8

    #@6e
    add-int/lit8 v4, v3, -0x1

    #@70
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    #@73
    move-result v4

    #@74
    if-ne v4, v7, :cond_8

    #@76
    .line 297
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@79
    move-result v4

    #@7a
    add-int/lit8 v4, v4, -0x2

    #@7c
    invoke-virtual {p2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7f
    move-result-object p2

    #@80
    .line 305
    :cond_6
    :goto_1
    const/4 v1, 0x0

    #@81
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@84
    move-result v2

    #@85
    :goto_2
    if-ge v1, v2, :cond_b

    #@87
    .line 306
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@8a
    move-result v0

    #@8b
    .line 311
    .restart local v0    # "c":C
    const/16 v4, 0x1f

    #@8d
    if-gt v0, v4, :cond_a

    #@8f
    const/16 v4, 0x9

    #@91
    if-eq v0, v4, :cond_a

    #@93
    .line 313
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@95
    .line 314
    const-string/jumbo v5, "Unexpected char %#04x at %d in header value: %s"

    #@98
    .line 313
    new-array v6, v6, [Ljava/lang/Object;

    #@9a
    .line 314
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9d
    move-result-object v7

    #@9e
    aput-object v7, v6, v8

    #@a0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a3
    move-result-object v7

    #@a4
    aput-object v7, v6, v10

    #@a6
    aput-object p2, v6, v9

    #@a8
    .line 313
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ab
    move-result-object v5

    #@ac
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@af
    throw v4

    #@b0
    .line 298
    .end local v0    # "c":C
    :cond_8
    if-lez v3, :cond_6

    #@b2
    .line 299
    add-int/lit8 v4, v3, -0x1

    #@b4
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    #@b7
    move-result v4

    #@b8
    if-eq v4, v7, :cond_9

    #@ba
    .line 300
    add-int/lit8 v4, v3, -0x1

    #@bc
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    #@bf
    move-result v4

    #@c0
    const/16 v5, 0xd

    #@c2
    if-ne v4, v5, :cond_6

    #@c4
    .line 301
    :cond_9
    add-int/lit8 v4, v3, -0x1

    #@c6
    invoke-virtual {p2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c9
    move-result-object p2

    #@ca
    goto :goto_1

    #@cb
    .line 311
    .restart local v0    # "c":C
    :cond_a
    const/16 v4, 0x7f

    #@cd
    if-eq v0, v4, :cond_7

    #@cf
    .line 305
    add-int/lit8 v1, v1, 0x1

    #@d1
    goto :goto_2

    #@d2
    .line 281
    .end local v0    # "c":C
    :cond_b
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    .line 236
    const-string/jumbo v1, ":"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    .line 237
    .local v0, "index":I
    const/4 v1, -0x1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Unexpected header: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 240
    :cond_0
    const/4 v1, 0x0

    #@25
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    add-int/lit8 v2, v0, 0x1

    #@2f
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {p0, v1, v2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@36
    move-result-object v1

    #@37
    return-object v1
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 222
    const-string/jumbo v1, ":"

    #@4
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    .line 223
    .local v0, "index":I
    const/4 v1, -0x1

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 224
    const/4 v1, 0x0

    #@c
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    add-int/lit8 v2, v0, 0x1

    #@12
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p0, v1, v2}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@19
    move-result-object v1

    #@1a
    return-object v1

    #@1b
    .line 225
    :cond_0
    const-string/jumbo v1, ":"

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 228
    const-string/jumbo v1, ""

    #@27
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {p0, v1, v2}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@2e
    move-result-object v1

    #@2f
    return-object v1

    #@30
    .line 230
    :cond_1
    const-string/jumbo v1, ""

    #@33
    invoke-virtual {p0, v1, p1}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@36
    move-result-object v1

    #@37
    return-object v1
.end method

.method addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 255
    iget-object v0, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    .line 256
    return-object p0
.end method

.method public build()Lcom/android/okhttp/Headers;
    .locals 2

    #@0
    .prologue
    .line 330
    new-instance v0, Lcom/android/okhttp/Headers;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Headers;-><init>(Lcom/android/okhttp/Headers$Builder;Lcom/android/okhttp/Headers;)V

    #@6
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@2
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x2

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 322
    iget-object v1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@c
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/String;

    #@12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 323
    iget-object v1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@1a
    add-int/lit8 v2, v0, 0x1

    #@1c
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/lang/String;

    #@22
    return-object v1

    #@23
    .line 321
    :cond_0
    add-int/lit8 v0, v0, -0x2

    #@25
    goto :goto_0

    #@26
    .line 326
    :cond_1
    const/4 v1, 0x0

    #@27
    return-object v1
.end method

.method public removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 260
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@3
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 261
    iget-object v1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/String;

    #@11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 262
    iget-object v1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@19
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1c
    .line 263
    iget-object v1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@1e
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@21
    .line 264
    add-int/lit8 v0, v0, -0x2

    #@23
    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@25
    goto :goto_0

    #@26
    .line 267
    :cond_1
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 276
    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@6
    .line 277
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@9
    .line 278
    return-object p0
.end method
