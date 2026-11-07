.class public final Lsun/util/locale/BaseLocale$Key;
.super Ljava/lang/Object;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/locale/BaseLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final greylist-max-o hash:I

.field private blacklist holder:Lsun/util/locale/BaseLocale;

.field private final blacklist holderRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lsun/util/locale/BaseLocale;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o normalized:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetBaseLocale(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale;
    .registers 1

    invoke-direct {p0}, Lsun/util/locale/BaseLocale$Key;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msoftenReferenceIfNormalized(Lsun/util/locale/BaseLocale$Key;)V
    .registers 1

    invoke-direct {p0}, Lsun/util/locale/BaseLocale$Key;->softenReferenceIfNormalized()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 296
    const-class v0, Lsun/util/locale/BaseLocale;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;
    .param p5, "normalize"    # Z

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Lsun/util/locale/BaseLocale;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "language":Ljava/lang/String;
    .end local p2    # "script":Ljava/lang/String;
    .end local p3    # "region":Ljava/lang/String;
    .end local p4    # "variant":Ljava/lang/String;
    .end local p5    # "normalize":Z
    .local v1, "language":Ljava/lang/String;
    .local v2, "script":Ljava/lang/String;
    .local v3, "region":Ljava/lang/String;
    .local v4, "variant":Ljava/lang/String;
    .local v5, "normalize":Z
    invoke-direct/range {v0 .. v6}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLsun/util/locale/BaseLocale-IA;)V

    .line 318
    .local v0, "locale":Lsun/util/locale/BaseLocale;
    iput-boolean v5, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    .line 319
    iget-boolean p1, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    if-eqz p1, :cond_1e

    .line 320
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lsun/util/locale/BaseLocale$Key;->holderRef:Ljava/lang/ref/SoftReference;

    .line 323
    iput-object v0, p0, Lsun/util/locale/BaseLocale$Key;->holder:Lsun/util/locale/BaseLocale;

    goto :goto_23

    .line 325
    :cond_1e
    const/4 p1, 0x0

    iput-object p1, p0, Lsun/util/locale/BaseLocale$Key;->holderRef:Ljava/lang/ref/SoftReference;

    .line 326
    iput-object v0, p0, Lsun/util/locale/BaseLocale$Key;->holder:Lsun/util/locale/BaseLocale;

    .line 328
    :goto_23
    invoke-direct {p0, v0}, Lsun/util/locale/BaseLocale$Key;->hashCode(Lsun/util/locale/BaseLocale;)I

    move-result p1

    iput p1, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    .line 329
    return-void
.end method

.method private blacklist getBaseLocale()Lsun/util/locale/BaseLocale;
    .registers 3

    .line 363
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->holder:Lsun/util/locale/BaseLocale;

    .line 364
    .local v0, "baseLocale":Lsun/util/locale/BaseLocale;
    if-eqz v0, :cond_5

    .line 365
    return-object v0

    .line 367
    :cond_5
    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->holderRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/locale/BaseLocale;

    return-object v1
.end method

.method private blacklist hashCode(Lsun/util/locale/BaseLocale;)I
    .registers 11
    .param p1, "locale"    # Lsun/util/locale/BaseLocale;

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "h":I
    invoke-virtual {p1}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "lang":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 339
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_1b

    .line 340
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v5

    add-int v0, v4, v5

    .line 339
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 342
    .end local v3    # "i":I
    :cond_1b
    invoke-virtual {p1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "scrt":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 344
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    if-ge v4, v2, :cond_35

    .line 345
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v6

    add-int v0, v5, v6

    .line 344
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 347
    .end local v4    # "i":I
    :cond_35
    invoke-virtual {p1}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, "regn":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 349
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3e
    if-ge v5, v2, :cond_4f

    .line 350
    mul-int/lit8 v6, v0, 0x1f

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v7

    add-int v0, v6, v7

    .line 349
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 352
    .end local v5    # "i":I
    :cond_4f
    invoke-virtual {p1}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, "vart":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 354
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_58
    if-ge v6, v2, :cond_65

    .line 355
    mul-int/lit8 v7, v0, 0x1f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int v0, v7, v8

    .line 354
    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    .line 357
    .end local v6    # "i":I
    :cond_65
    return v0
.end method

.method public static greylist-max-o normalize(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;
    .registers 8
    .param p0, "key"    # Lsun/util/locale/BaseLocale$Key;

    .line 391
    iget-boolean v0, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    if-eqz v0, :cond_5

    .line 392
    return-object p0

    .line 396
    :cond_5
    nop

    .line 397
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->holder:Lsun/util/locale/BaseLocale;

    .line 398
    .local v0, "locale":Lsun/util/locale/BaseLocale;
    new-instance v1, Lsun/util/locale/BaseLocale$Key;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 398
    return-object v1
.end method

.method private blacklist softenReferenceIfNormalized()V
    .registers 2

    .line 404
    iget-boolean v0, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    if-eqz v0, :cond_7

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/util/locale/BaseLocale$Key;->holder:Lsun/util/locale/BaseLocale;

    .line 407
    :cond_7
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 372
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 373
    return v0

    .line 375
    :cond_4
    instance-of v1, p1, Lsun/util/locale/BaseLocale$Key;

    if-eqz v1, :cond_59

    iget v1, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    move-object v2, p1

    check-cast v2, Lsun/util/locale/BaseLocale$Key;

    iget v2, v2, Lsun/util/locale/BaseLocale$Key;->hash:I

    if-ne v1, v2, :cond_59

    .line 376
    move-object v1, p1

    check-cast v1, Lsun/util/locale/BaseLocale$Key;

    invoke-direct {v1}, Lsun/util/locale/BaseLocale$Key;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v1

    .line 377
    .local v1, "other":Lsun/util/locale/BaseLocale;
    invoke-direct {p0}, Lsun/util/locale/BaseLocale$Key;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v2

    .line 378
    .local v2, "locale":Lsun/util/locale/BaseLocale;
    if-eqz v1, :cond_59

    if-eqz v2, :cond_59

    .line 379
    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 380
    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 381
    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 383
    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 384
    return v0

    .line 387
    .end local v1    # "other":Lsun/util/locale/BaseLocale;
    .end local v2    # "locale":Lsun/util/locale/BaseLocale;
    :cond_59
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 332
    iget v0, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    return v0
.end method
