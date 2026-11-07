.class public final Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/base/MoreObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;,
        Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$UnconditionalValueHolder;
    }
.end annotation


# instance fields
.field private final blacklist className:Ljava/lang/String;

.field private final blacklist holderHead:Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

.field private blacklist holderTail:Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

.field private blacklist omitEmptyValues:Z

.field private blacklist omitNullValues:Z


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    invoke-direct {v0}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;-><init>()V

    iput-object v0, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->holderHead:Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    .line 150
    iput-object v0, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->holderTail:Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 152
    iput-boolean v0, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->omitEmptyValues:Z

    .line 156
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/media/internal/guava_common/base/MoreObjects$1;)V
    .registers 3

    .line 147
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist addHolder()Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;
    .registers 3

    .line 389
    new-instance v0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    invoke-direct {v0}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;-><init>()V

    .line 390
    iget-object v1, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->holderTail:Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->holderTail:Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    return-object v0
.end method

.method private blacklist addHolder(Ljava/lang/Object;)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 396
    invoke-direct {p0}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->addHolder()Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 397
    iput-object p1, v0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private blacklist addHolder(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 403
    invoke-direct {p0}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->addHolder()Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 404
    iput-object p2, v0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 405
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    return-object p0
.end method

.method private blacklist addUnconditionalHolder()Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$UnconditionalValueHolder;
    .registers 3

    .line 410
    new-instance v0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$UnconditionalValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$UnconditionalValueHolder;-><init>(Landroid/media/internal/guava_common/base/MoreObjects$1;)V

    .line 411
    iget-object v1, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->holderTail:Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->holderTail:Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    return-object v0
.end method

.method private blacklist addUnconditionalHolder(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;
    .registers 4

    .line 424
    invoke-direct {p0}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->addUnconditionalHolder()Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$UnconditionalValueHolder;

    move-result-object v0

    .line 425
    iput-object p2, v0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 426
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    return-object p0
.end method

.method private static blacklist isEmpty(Ljava/lang/Object;)Z
    .registers 4

    .line 333
    instance-of v0, p0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 334
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_f

    return v2

    :cond_f
    return v1

    .line 335
    :cond_10
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1b

    .line 336
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0

    .line 337
    :cond_1b
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_26

    .line 338
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0

    .line 339
    :cond_26
    instance-of v0, p0, Landroid/media/internal/guava_common/base/Optional;

    if-eqz v0, :cond_32

    .line 340
    check-cast p0, Landroid/media/internal/guava_common/base/Optional;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/base/Optional;->isPresent()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 341
    :cond_32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 342
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_43

    return v2

    :cond_43
    return v1
.end method


# virtual methods
.method public blacklist add(Ljava/lang/String;I)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;
    .registers 3

    .line 229
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->addUnconditionalHolder(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;

    move-result-object p0

    return-object p0
.end method

.method public blacklist add(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 179
    invoke-direct {p0, p1, p2}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;

    move-result-object p0

    return-object p0
.end method

.method public blacklist addValue(Ljava/lang/Object;)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 250
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 358
    iget-boolean v0, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 359
    iget-boolean v1, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->omitEmptyValues:Z

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    iget-object p0, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->holderHead:Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    iget-object p0, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    const-string v3, ""

    :goto_1b
    if-eqz p0, :cond_65

    .line 365
    iget-object v4, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 366
    instance-of v5, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$UnconditionalValueHolder;

    if-nez v5, :cond_30

    if-nez v4, :cond_28

    if-nez v0, :cond_62

    goto :goto_30

    :cond_28
    if-eqz v1, :cond_30

    .line 369
    invoke-static {v4}, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 370
    :cond_30
    :goto_30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v3, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v3, :cond_3f

    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3f
    if-eqz v4, :cond_5d

    .line 376
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 377
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 378
    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 381
    :cond_5d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    :goto_60
    const-string v3, ", "

    :cond_62
    iget-object p0, p0, Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Landroid/media/internal/guava_common/base/MoreObjects$ToStringHelper$ValueHolder;

    goto :goto_1b

    :cond_65
    const/16 p0, 0x7d

    .line 385
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
