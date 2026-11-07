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
.field private final greylist-max-o namesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/Headers$Builder;)Ljava/util/List;
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    return-object p0
.end method

.method private greylist-max-o checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    if-eqz p1, :cond_b0

    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a8

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    const/16 v2, 0x7f

    const/16 v3, 0x1f

    if-ge v1, p0, :cond_37

    .line 290
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v4, v3, :cond_1f

    if-ge v4, v2, :cond_1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 292
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 293
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 292
    const-string p2, "Unexpected char %#04x at %d in header name: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    if-eqz p2, :cond_a0

    .line 300
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0xa

    const/16 v1, 0xd

    const/4 v4, 0x2

    if-lt p0, v4, :cond_5e

    add-int/lit8 v5, p0, -0x2

    .line 301
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_5e

    add-int/lit8 v5, p0, -0x1

    .line 302
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_5e

    .line 303
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_72

    :cond_5e
    if-lez p0, :cond_72

    add-int/lit8 p0, p0, -0x1

    .line 305
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, p1, :cond_6e

    .line 306
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_72

    .line 307
    :cond_6e
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 311
    :cond_72
    :goto_72
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    :goto_76
    if-ge v0, p0, :cond_9f

    .line 312
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-gt p1, v3, :cond_82

    const/16 v1, 0x9

    if-ne p1, v1, :cond_87

    :cond_82
    if-eq p1, v2, :cond_87

    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 319
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 319
    const-string p2, "Unexpected char %#04x at %d in header value: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9f
    return-void

    .line 296
    :cond_a0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "value == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 288
    :cond_a8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 287
    :cond_b0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public greylist-max-o add(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .registers 4

    .line 241
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x0

    .line 245
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object p0

    return-object p0

    .line 243
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .registers 3

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object p0

    return-object p0
.end method

.method greylist-max-o addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .registers 6

    .line 227
    const-string v0, ":"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object p0

    return-object p0

    .line 230
    :cond_19
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_2a

    .line 233
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object p0

    return-object p0

    .line 235
    :cond_2a
    invoke-virtual {p0, v2, p1}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object p0

    return-object p0
.end method

.method greylist-max-o addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object p1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public greylist-max-o build()Lcom/android/okhttp/Headers;
    .registers 3

    .line 336
    new-instance v0, Lcom/android/okhttp/Headers;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Headers;-><init>(Lcom/android/okhttp/Headers$Builder;Lcom/android/okhttp/Headers$1;)V

    return-object v0
.end method

.method public greylist-max-o get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 327
    iget-object v0, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_8
    if-ltz v0, :cond_26

    .line 328
    iget-object v1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 329
    iget-object p0, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_23
    add-int/lit8 v0, v0, -0x2

    goto :goto_8

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-o removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .registers 4

    const/4 v0, 0x0

    .line 265
    :goto_1
    iget-object v1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 266
    iget-object v1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 267
    iget-object v1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 268
    iget-object v1, p0, Lcom/android/okhttp/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x2

    :cond_23
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_26
    return-object p0
.end method

.method public greylist-max-o set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;
    .registers 3

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    return-object p0
.end method
