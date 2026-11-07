.class public final Llibcore/content/type/MimeMap;
.super Ljava/lang/Object;
.source "MimeMap.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/content/type/MimeMap$Builder;,
        Llibcore/content/type/MimeMap$MemoizingSupplier;
    }
.end annotation


# static fields
.field private static volatile blacklist instanceSupplier:Llibcore/content/type/MimeMap$MemoizingSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/content/type/MimeMap$MemoizingSupplier<",
            "Llibcore/content/type/MimeMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist extToMime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist hashCode:I

.field private final blacklist mimeToExt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smtoLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Llibcore/content/type/MimeMap;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 82
    new-instance v0, Llibcore/content/type/MimeMap$MemoizingSupplier;

    new-instance v1, Llibcore/content/type/MimeMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Llibcore/content/type/MimeMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Llibcore/content/type/MimeMap$MemoizingSupplier;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Llibcore/content/type/MimeMap;->instanceSupplier:Llibcore/content/type/MimeMap$MemoizingSupplier;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "mimeToExt":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "extToMime":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Llibcore/content/type/MimeMap;->hashCode:I

    .line 94
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Llibcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    .line 95
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Llibcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    .line 96
    iget-object v0, p0, Llibcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 97
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Llibcore/content/type/MimeMap;->checkValidMimeType(Ljava/lang/String;)V

    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Llibcore/content/type/MimeMap;->checkValidExtension(Ljava/lang/String;)V

    .line 99
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_20

    .line 100
    :cond_3f
    iget-object v0, p0, Llibcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Llibcore/content/type/MimeMap;->checkValidExtension(Ljava/lang/String;)V

    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Llibcore/content/type/MimeMap;->checkValidMimeType(Ljava/lang/String;)V

    .line 103
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_49

    .line 104
    :cond_68
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Map;Ljava/util/Map;Llibcore/content/type/MimeMap-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Llibcore/content/type/MimeMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static blacklist test-api builder()Llibcore/content/type/MimeMap$Builder;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 54
    new-instance v0, Llibcore/content/type/MimeMap$Builder;

    invoke-direct {v0}, Llibcore/content/type/MimeMap$Builder;-><init>()V

    return-object v0
.end method

.method static blacklist checkValidExtension(Ljava/lang/String;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 452
    invoke-static {p0}, Llibcore/content/type/MimeMap;->isValidMimeTypeOrExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_f

    .line 455
    return-void

    .line 453
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist checkValidMimeType(Ljava/lang/String;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 446
    invoke-static {p0}, Llibcore/content/type/MimeMap;->isValidMimeTypeOrExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_f

    .line 449
    return-void

    .line 447
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MIME type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist test-api getDefault()Llibcore/content/type/MimeMap;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 115
    sget-object v0, Llibcore/content/type/MimeMap;->instanceSupplier:Llibcore/content/type/MimeMap$MemoizingSupplier;

    invoke-virtual {v0}, Llibcore/content/type/MimeMap$MemoizingSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/content/type/MimeMap;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/content/type/MimeMap;

    return-object v0
.end method

.method private static blacklist isValidMimeTypeOrExtension(Ljava/lang/String;)Z
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 437
    if-eqz p0, :cond_2c

    .line 438
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 439
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2c

    .line 440
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2c

    .line 441
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2c

    .line 442
    invoke-static {p0}, Llibcore/content/type/MimeMap;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 437
    :goto_2d
    return v0
.end method

.method static synthetic blacklist lambda$static$0()Llibcore/content/type/MimeMap;
    .registers 3

    .line 84
    invoke-static {}, Llibcore/content/type/MimeMap;->builder()Llibcore/content/type/MimeMap$Builder;

    move-result-object v0

    .line 85
    const-string v1, "application/pdf"

    const-string v2, "pdf"

    invoke-virtual {v0, v1, v2}, Llibcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Llibcore/content/type/MimeMap$Builder;

    move-result-object v0

    .line 86
    const-string v1, "image/jpeg"

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Llibcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Llibcore/content/type/MimeMap$Builder;

    move-result-object v0

    .line 87
    const-string v1, "image/x-ms-bmp"

    const-string v2, "bmp"

    invoke-virtual {v0, v1, v2}, Llibcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Llibcore/content/type/MimeMap$Builder;

    move-result-object v0

    const-string v1, "htm"

    const-string v2, "html"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v0, v2, v1}, Llibcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/util/List;)Llibcore/content/type/MimeMap$Builder;

    move-result-object v0

    const-string v1, "text"

    const-string v2, "txt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v0, v2, v1}, Llibcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/util/List;)Llibcore/content/type/MimeMap$Builder;

    move-result-object v0

    .line 90
    const-string v1, "text/x-java"

    const-string v2, "java"

    invoke-virtual {v0, v1, v2}, Llibcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Llibcore/content/type/MimeMap$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Llibcore/content/type/MimeMap$Builder;->build()Llibcore/content/type/MimeMap;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method public static blacklist test-api setDefaultSupplier(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Llibcore/content/type/MimeMap;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p0, "mimeMapSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Llibcore/content/type/MimeMap;>;"
    new-instance v0, Llibcore/content/type/MimeMap$MemoizingSupplier;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Supplier;

    invoke-direct {v0, v1}, Llibcore/content/type/MimeMap$MemoizingSupplier;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Llibcore/content/type/MimeMap;->instanceSupplier:Llibcore/content/type/MimeMap$MemoizingSupplier;

    .line 134
    return-void
.end method

.method private static blacklist toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 235
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist test-api buildUpon()Llibcore/content/type/MimeMap$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 69
    new-instance v0, Llibcore/content/type/MimeMap$Builder;

    iget-object v1, p0, Llibcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    iget-object v2, p0, Llibcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Llibcore/content/type/MimeMap$Builder;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 258
    instance-of v0, p1, Llibcore/content/type/MimeMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 259
    return v1

    .line 261
    :cond_6
    move-object v0, p1

    check-cast v0, Llibcore/content/type/MimeMap;

    .line 262
    .local v0, "that":Llibcore/content/type/MimeMap;
    invoke-virtual {p0}, Llibcore/content/type/MimeMap;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Llibcore/content/type/MimeMap;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_14

    .line 263
    return v1

    .line 265
    :cond_14
    iget-object v2, p0, Llibcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    iget-object v3, v0, Llibcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Llibcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    iget-object v3, v0, Llibcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method public blacklist test-api extensions()Ljava/util/Set;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Llibcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist test-api guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 195
    if-nez p1, :cond_4

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_4
    invoke-static {p1}, Llibcore/content/type/MimeMap;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-object v0, p0, Llibcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist test-api guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "extension"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 162
    if-nez p1, :cond_4

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_4
    invoke-static {p1}, Llibcore/content/type/MimeMap;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object v0, p0, Llibcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist test-api hasExtension(Ljava/lang/String;)Z
    .registers 3
    .param p1, "extension"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 147
    invoke-virtual {p0, p1}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final blacklist test-api hasMimeType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 180
    invoke-virtual {p0, p1}, Llibcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 246
    iget v0, p0, Llibcore/content/type/MimeMap;->hashCode:I

    if-nez v0, :cond_15

    .line 247
    iget-object v0, p0, Llibcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    iget-object v1, p0, Llibcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iput v0, p0, Llibcore/content/type/MimeMap;->hashCode:I

    .line 249
    :cond_15
    iget v0, p0, Llibcore/content/type/MimeMap;->hashCode:I

    return v0
.end method

.method public blacklist test-api mimeTypes()Ljava/util/Set;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Llibcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MimeMap["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
