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
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 200
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/16 v1, 0x14

    #@7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@c
    .line 199
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    .line 221
    const-string/jumbo v1, ":"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    .line 222
    .local v0, "index":I
    const/4 v1, -0x1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 223
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
    .line 225
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
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 230
    if-nez p1, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "name == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 231
    :cond_0
    if-nez p2, :cond_1

    #@f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "value == null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 232
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@21
    move-result v0

    #@22
    if-eq v0, v2, :cond_3

    #@24
    .line 233
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v2, "Unexpected header: "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    const-string/jumbo v2, ": "

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw v0

    #@49
    .line 232
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    #@4c
    move-result v0

    #@4d
    if-ne v0, v2, :cond_2

    #@4f
    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@52
    move-result-object v0

    #@53
    return-object v0
.end method

.method addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 207
    const-string/jumbo v1, ":"

    #@4
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    .line 208
    .local v0, "index":I
    const/4 v1, -0x1

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 209
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
    .line 210
    :cond_0
    const-string/jumbo v1, ":"

    #@1e
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 213
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
    .line 215
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
    .line 243
    iget-object v0, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 244
    iget-object v0, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    .line 245
    return-object p0
.end method

.method public build()Lcom/android/okhttp/Headers;
    .locals 2

    #@0
    .prologue
    .line 280
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
    .line 271
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
    .line 272
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
    .line 273
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
    .line 271
    :cond_0
    add-int/lit8 v0, v0, -0x2

    #@25
    goto :goto_0

    #@26
    .line 276
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
    .line 249
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
    .line 250
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
    .line 251
    iget-object v1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@19
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1c
    .line 252
    iget-object v1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    #@1e
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@21
    .line 253
    add-int/lit8 v0, v0, -0x2

    #@23
    .line 249
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@25
    goto :goto_0

    #@26
    .line 256
    :cond_1
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@3
    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@6
    .line 266
    return-object p0
.end method
