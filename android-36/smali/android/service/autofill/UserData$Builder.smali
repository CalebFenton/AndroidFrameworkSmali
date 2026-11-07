.class public final Landroid/service/autofill/UserData$Builder;
.super Ljava/lang/Object;
.source "UserData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCategoryAlgorithms:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCategoryArgs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCategoryIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDefaultAlgorithm:Ljava/lang/String;

.field private blacklist mDefaultArgs:Landroid/os/Bundle;

.field private greylist-max-o mDestroyed:Z

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mUniqueCategoryIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUniqueValueCategoryPairs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCategoryAlgorithms(Landroid/service/autofill/UserData$Builder;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCategoryArgs(Landroid/service/autofill/UserData$Builder;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryArgs:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCategoryIds(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultAlgorithm(Landroid/service/autofill/UserData$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/UserData$Builder;->mDefaultAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultArgs(Landroid/service/autofill/UserData$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/UserData$Builder;->mDefaultArgs:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/service/autofill/UserData$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/UserData$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValues(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "categoryId"    # Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const-string/jumbo v0, "id"

    invoke-direct {p0, v0, p1}, Landroid/service/autofill/UserData$Builder;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData$Builder;->mId:Ljava/lang/String;

    .line 242
    const-string v0, "categoryId"

    invoke-direct {p0, v0, p3}, Landroid/service/autofill/UserData$Builder;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    invoke-direct {p0, p2}, Landroid/service/autofill/UserData$Builder;->checkValidValue(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxUserDataSize()I

    move-result v0

    .line 245
    .local v0, "maxUserDataSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/service/autofill/UserData$Builder;->mCategoryIds:Ljava/util/ArrayList;

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    .line 247
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/service/autofill/UserData$Builder;->mUniqueValueCategoryPairs:Landroid/util/ArraySet;

    .line 249
    new-instance v1, Landroid/util/ArraySet;

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxCategoryCount()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    .line 251
    invoke-direct {p0, p2, p3}, Landroid/service/autofill/UserData$Builder;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private greylist-max-o addMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "categoryId"    # Ljava/lang/String;

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "pair":Ljava/lang/String;
    iget-object v1, p0, Landroid/service/autofill/UserData$Builder;->mUniqueValueCategoryPairs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 362
    const-string v1, "UserData"

    const-string v2, "Ignoring entry with same value / category"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 365
    :cond_27
    iget-object v1, p0, Landroid/service/autofill/UserData$Builder;->mCategoryIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v1, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v1, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v1, p0, Landroid/service/autofill/UserData$Builder;->mUniqueValueCategoryPairs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method private greylist-max-o checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 372
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "%s cannot be empty"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 374
    return-object p2
.end method

.method private greylist-max-o checkValidValue(Ljava/lang/String;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/String;

    .line 378
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 380
    .local v0, "length":I
    invoke-static {}, Landroid/service/autofill/UserData;->getMinValueLength()I

    move-result v1

    .line 381
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxValueLength()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "value length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 382
    return-void
.end method

.method private greylist-max-o throwIfDestroyed()V
    .registers 3

    .line 401
    iget-boolean v0, p0, Landroid/service/autofill/UserData$Builder;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 404
    return-void

    .line 402
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist add(Ljava/lang/String;Ljava/lang/String;)Landroid/service/autofill/UserData$Builder;
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "categoryId"    # Ljava/lang/String;

    .line 341
    invoke-direct {p0}, Landroid/service/autofill/UserData$Builder;->throwIfDestroyed()V

    .line 342
    const-string v0, "categoryId"

    invoke-direct {p0, v0, p2}, Landroid/service/autofill/UserData$Builder;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    invoke-direct {p0, p1}, Landroid/service/autofill/UserData$Builder;->checkValidValue(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_37

    .line 347
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxCategoryCount()I

    move-result v3

    if-ge v0, v3, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    move v0, v2

    :goto_24
    iget-object v3, p0, Landroid/service/autofill/UserData$Builder;->mUniqueCategoryIds:Landroid/util/ArraySet;

    .line 348
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 347
    const-string v4, "already added %d unique category ids"

    invoke-static {v0, v4, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 351
    :cond_37
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxUserDataSize()I

    move-result v3

    if-ge v0, v3, :cond_44

    goto :goto_45

    :cond_44
    move v1, v2

    :goto_45
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mValues:Ljava/util/ArrayList;

    .line 352
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 351
    const-string v2, "already added %d elements"

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 353
    invoke-direct {p0, p1, p2}, Landroid/service/autofill/UserData$Builder;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-object p0
.end method

.method public whitelist build()Landroid/service/autofill/UserData;
    .registers 3

    .line 395
    invoke-direct {p0}, Landroid/service/autofill/UserData$Builder;->throwIfDestroyed()V

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/UserData$Builder;->mDestroyed:Z

    .line 397
    new-instance v0, Landroid/service/autofill/UserData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/UserData;-><init>(Landroid/service/autofill/UserData$Builder;Landroid/service/autofill/UserData-IA;)V

    return-object v0
.end method

.method public whitelist setFieldClassificationAlgorithm(Ljava/lang/String;Landroid/os/Bundle;)Landroid/service/autofill/UserData$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 273
    invoke-direct {p0}, Landroid/service/autofill/UserData$Builder;->throwIfDestroyed()V

    .line 274
    iput-object p1, p0, Landroid/service/autofill/UserData$Builder;->mDefaultAlgorithm:Ljava/lang/String;

    .line 275
    iput-object p2, p0, Landroid/service/autofill/UserData$Builder;->mDefaultArgs:Landroid/os/Bundle;

    .line 276
    return-object p0
.end method

.method public whitelist setFieldClassificationAlgorithmForCategory(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/service/autofill/UserData$Builder;
    .registers 6
    .param p1, "categoryId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 299
    invoke-direct {p0}, Landroid/service/autofill/UserData$Builder;->throwIfDestroyed()V

    .line 300
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    if-nez v0, :cond_15

    .line 302
    new-instance v0, Landroid/util/ArrayMap;

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxCategoryCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    .line 304
    :cond_15
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryArgs:Landroid/util/ArrayMap;

    if-nez v0, :cond_24

    .line 305
    new-instance v0, Landroid/util/ArrayMap;

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxCategoryCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryArgs:Landroid/util/ArrayMap;

    .line 307
    :cond_24
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryAlgorithms:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Landroid/service/autofill/UserData$Builder;->mCategoryArgs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-object p0
.end method
