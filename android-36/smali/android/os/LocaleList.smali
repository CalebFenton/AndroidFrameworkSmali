.class public final Landroid/os/LocaleList;
.super Ljava/lang/Object;
.source "LocaleList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/LocaleList;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EN_LATN:Ljava/util/Locale;

.field private static final greylist-max-o LOCALE_AR_XB:Ljava/util/Locale;

.field private static final greylist-max-o LOCALE_EN_XA:Ljava/util/Locale;

.field private static final greylist-max-o NUM_PSEUDO_LOCALES:I = 0x2

.field private static final greylist-max-o STRING_AR_XB:Ljava/lang/String; = "ar-XB"

.field private static final greylist-max-o STRING_EN_XA:Ljava/lang/String; = "en-XA"

.field private static greylist-max-o sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

.field private static greylist-max-o sDefaultLocaleList:Landroid/os/LocaleList;

.field private static final greylist-max-o sEmptyList:[Ljava/util/Locale;

.field private static final greylist-max-o sEmptyLocaleList:Landroid/os/LocaleList;

.field private static greylist-max-o sLastDefaultLocale:Ljava/util/Locale;

.field private static greylist-max-o sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

.field private static final greylist-max-o sLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mList:[Ljava/util/Locale;

.field private final greylist-max-o mStringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 49
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/Locale;

    sput-object v1, Landroid/os/LocaleList;->sEmptyList:[Ljava/util/Locale;

    .line 50
    new-instance v1, Landroid/os/LocaleList;

    new-array v0, v0, [Ljava/util/Locale;

    invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    sput-object v1, Landroid/os/LocaleList;->sEmptyLocaleList:Landroid/os/LocaleList;

    .line 261
    new-instance v0, Landroid/os/LocaleList$1;

    invoke-direct {v0}, Landroid/os/LocaleList$1;-><init>()V

    sput-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 314
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "XA"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/os/LocaleList;->LOCALE_EN_XA:Ljava/util/Locale;

    .line 315
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    const-string v2, "XB"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/os/LocaleList;->LOCALE_AR_XB:Ljava/util/Locale;

    .line 385
    const-string v0, "en-Latn"

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroid/os/LocaleList;->EN_LATN:Ljava/util/Locale;

    .line 501
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    .line 504
    const/4 v0, 0x0

    sput-object v0, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    .line 506
    sput-object v0, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    .line 508
    sput-object v0, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    .line 510
    sput-object v0, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Locale;Landroid/os/LocaleList;)V
    .registers 10
    .param p1, "topLocale"    # Ljava/util/Locale;
    .param p2, "otherLocales"    # Landroid/os/LocaleList;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    if-eqz p1, :cond_95

    .line 223
    const/4 v0, 0x0

    if-nez p2, :cond_a

    move v1, v0

    goto :goto_d

    :cond_a
    iget-object v1, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v1

    .line 224
    .local v1, "inputLength":I
    :goto_d
    const/4 v2, -0x1

    .line 225
    .local v2, "topLocaleIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_20

    .line 226
    iget-object v4, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 227
    move v2, v3

    .line 228
    goto :goto_20

    .line 225
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 232
    .end local v3    # "i":I
    :cond_20
    :goto_20
    const/4 v3, -0x1

    if-ne v2, v3, :cond_25

    const/4 v4, 0x1

    goto :goto_26

    :cond_25
    move v4, v0

    :goto_26
    add-int/2addr v4, v1

    .line 233
    .local v4, "outputLength":I
    new-array v5, v4, [Ljava/util/Locale;

    .line 234
    .local v5, "localeList":[Ljava/util/Locale;
    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v0

    .line 235
    if-ne v2, v3, :cond_48

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_34
    if-ge v0, v1, :cond_47

    .line 238
    add-int/lit8 v3, v0, 0x1

    iget-object v6, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v3

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .end local v0    # "i":I
    :cond_47
    goto :goto_6f

    .line 241
    :cond_48
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_49
    if-ge v0, v2, :cond_5c

    .line 242
    add-int/lit8 v3, v0, 0x1

    iget-object v6, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    aput-object v6, v5, v3

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 244
    .end local v0    # "i":I
    :cond_5c
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "i":I
    :goto_5e
    if-ge v0, v1, :cond_6f

    .line 245
    iget-object v3, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    aput-object v3, v5, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 249
    .end local v0    # "i":I
    :cond_6f
    :goto_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_75
    if-ge v3, v4, :cond_8c

    .line 251
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_89

    .line 253
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    :cond_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    .line 257
    .end local v3    # "i":I
    :cond_8c
    iput-object v5, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    .line 259
    return-void

    .line 220
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "inputLength":I
    .end local v2    # "topLocaleIndex":I
    .end local v4    # "outputLength":I
    .end local v5    # "localeList":[Ljava/util/Locale;
    :cond_95
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "topLocale is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor whitelist <init>([Ljava/util/Locale;)V
    .registers 10
    .param p1, "list"    # [Ljava/util/Locale;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    array-length v0, p1

    if-nez v0, :cond_f

    .line 185
    sget-object v0, Landroid/os/LocaleList;->sEmptyList:[Ljava/util/Locale;

    iput-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    .line 186
    const-string v0, ""

    iput-object v0, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    goto :goto_81

    .line 188
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v0, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 190
    .local v1, "seenLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    array-length v4, p1

    if-ge v3, v4, :cond_6d

    .line 192
    aget-object v4, p1, v3

    .line 193
    .local v4, "l":Ljava/util/Locale;
    if-eqz v4, :cond_4d

    .line 195
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    goto :goto_4a

    .line 198
    :cond_2d
    invoke-virtual {v4}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    .line 199
    .local v5, "localeClone":Ljava/util/Locale;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_47

    .line 202
    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    :cond_47
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v4    # "l":Ljava/util/Locale;
    .end local v5    # "localeClone":Ljava/util/Locale;
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 194
    .restart local v4    # "l":Ljava/util/Locale;
    :cond_4d
    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "list["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    .end local v3    # "i":I
    .end local v4    # "l":Ljava/util/Locale;
    :cond_6d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Locale;

    iput-object v3, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    .line 210
    .end local v0    # "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    .end local v1    # "seenLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_81
    return-void
.end method

.method private greylist-max-o computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;
    .registers 5
    .param p2, "assumeEnglishIsSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 427
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    .line 428
    .local v0, "bestIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    goto :goto_d

    :cond_9
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    :goto_d
    return-object v1
.end method

.method private greylist-max-o computeFirstMatchIndex(Ljava/util/Collection;Z)I
    .registers 9
    .param p2, "assumeEnglishIsSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 389
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 390
    return v2

    .line 392
    :cond_8
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-nez v0, :cond_f

    .line 393
    const/4 v0, -0x1

    return v0

    .line 396
    :cond_f
    const v0, 0x7fffffff

    .line 398
    .local v0, "bestIndex":I
    if-eqz p2, :cond_20

    .line 399
    sget-object v1, Landroid/os/LocaleList;->EN_LATN:Ljava/util/Locale;

    invoke-direct {p0, v1}, Landroid/os/LocaleList;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v1

    .line 400
    .local v1, "idx":I
    if-nez v1, :cond_1d

    .line 401
    return v2

    .line 402
    :cond_1d
    if-ge v1, v0, :cond_20

    .line 403
    move v0, v1

    .line 406
    .end local v1    # "idx":I
    :cond_20
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 407
    .local v3, "languageTag":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    .line 410
    .local v4, "supportedLocale":Ljava/util/Locale;
    invoke-direct {p0, v4}, Landroid/os/LocaleList;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v5

    .line 411
    .local v5, "idx":I
    if-nez v5, :cond_3b

    .line 412
    return v2

    .line 413
    :cond_3b
    if-ge v5, v0, :cond_3e

    .line 414
    move v0, v5

    .line 416
    .end local v3    # "languageTag":Ljava/lang/String;
    .end local v4    # "supportedLocale":Ljava/util/Locale;
    .end local v5    # "idx":I
    :cond_3e
    goto :goto_24

    .line 417
    :cond_3f
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_45

    .line 419
    return v2

    .line 421
    :cond_45
    return v0
.end method

.method private greylist-max-o findFirstMatchIndex(Ljava/util/Locale;)I
    .registers 4
    .param p1, "supportedLocale"    # Ljava/util/Locale;

    .line 377
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_1
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 378
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 379
    return v0

    .line 377
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 382
    .end local v0    # "idx":I
    :cond_14
    const v0, 0x7fffffff

    return v0
.end method

.method public static whitelist forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .registers 5
    .param p0, "list"    # Ljava/lang/String;

    .line 290
    if-eqz p0, :cond_29

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_29

    .line 293
    :cond_b
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "tags":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Ljava/util/Locale;

    .line 295
    .local v1, "localeArray":[Ljava/util/Locale;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, v1

    if-ge v2, v3, :cond_23

    .line 296
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 298
    .end local v2    # "i":I
    :cond_23
    new-instance v2, Landroid/os/LocaleList;

    invoke-direct {v2, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    return-object v2

    .line 291
    .end local v0    # "tags":[Ljava/lang/String;
    .end local v1    # "localeArray":[Ljava/util/Locale;
    :cond_29
    :goto_29
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getAdjustedDefault()Landroid/os/LocaleList;
    .registers 2

    .line 555
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 556
    sget-object v0, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_6
    sget-object v1, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    monitor-exit v0

    return-object v1

    .line 558
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static whitelist getDefault()Landroid/os/LocaleList;
    .registers 4

    .line 525
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 526
    .local v0, "defaultLocale":Ljava/util/Locale;
    sget-object v1, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 527
    :try_start_7
    sget-object v2, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 528
    sput-object v0, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    .line 532
    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    if-eqz v2, :cond_26

    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    .line 533
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 536
    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    monitor-exit v1

    return-object v2

    .line 538
    :cond_26
    new-instance v2, Landroid/os/LocaleList;

    sget-object v3, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    invoke-direct {v2, v0, v3}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    sput-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    .line 539
    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    sput-object v2, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    .line 545
    :cond_33
    sget-object v2, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    monitor-exit v1

    return-object v2

    .line 546
    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public static whitelist getEmptyLocaleList()Landroid/os/LocaleList;
    .registers 1

    .line 279
    sget-object v0, Landroid/os/LocaleList;->sEmptyLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method private static greylist-max-o getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 303
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "script":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 305
    return-object v0

    .line 308
    :cond_b
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist isPseudoLocale(Landroid/icu/util/ULocale;)Z
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 334
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isPseudoLocale(Ljava/lang/String;)Z
    .registers 2
    .param p0, "locale"    # Ljava/lang/String;

    .line 319
    const-string v0, "en-XA"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ar-XB"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static greylist-max-o isPseudoLocale(Ljava/util/Locale;)Z
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 327
    sget-object v0, Landroid/os/LocaleList;->LOCALE_EN_XA:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Landroid/os/LocaleList;->LOCALE_AR_XB:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static greylist-max-o isPseudoLocalesOnly([Ljava/lang/String;)Z
    .registers 7
    .param p0, "supportedLocales"    # [Ljava/lang/String;

    .line 482
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 483
    return v0

    .line 486
    :cond_4
    array-length v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le v1, v2, :cond_a

    .line 491
    return v3

    .line 493
    :cond_a
    array-length v1, p0

    move v2, v3

    :goto_c
    if-ge v2, v1, :cond_20

    aget-object v4, p0, v2

    .line 494
    .local v4, "locale":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-static {v4}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 495
    return v3

    .line 493
    .end local v4    # "locale":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 498
    :cond_20
    return v0
.end method

.method public static whitelist matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 7
    .param p0, "supported"    # Ljava/util/Locale;
    .param p1, "desired"    # Ljava/util/Locale;

    .line 351
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 352
    return v1

    .line 354
    :cond_8
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 355
    return v2

    .line 357
    :cond_18
    invoke-static {p0}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {p1}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_4f

    .line 362
    :cond_25
    invoke-static {p0}, Landroid/os/LocaleList;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "supportedScr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 367
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "supportedRegion":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_45

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_45

    :cond_44
    move v1, v2

    :cond_45
    :goto_45
    return v1

    .line 370
    .end local v3    # "supportedRegion":Ljava/lang/String;
    :cond_46
    invoke-static {p1}, Landroid/os/LocaleList;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "desiredScr":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 360
    .end local v0    # "supportedScr":Ljava/lang/String;
    .end local v1    # "desiredScr":Ljava/lang/String;
    :cond_4f
    :goto_4f
    return v2
.end method

.method public static whitelist setDefault(Landroid/os/LocaleList;)V
    .registers 2
    .param p0, "locales"    # Landroid/os/LocaleList;

    .line 569
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 570
    return-void
.end method

.method public static greylist-max-r setDefault(Landroid/os/LocaleList;I)V
    .registers 6
    .param p0, "locales"    # Landroid/os/LocaleList;
    .param p1, "localeIndex"    # I

    .line 582
    if-eqz p0, :cond_3a

    .line 585
    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 588
    sget-object v0, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_b
    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    .line 590
    sget-object v1, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 591
    sput-object p0, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    .line 592
    sput-object p0, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    .line 593
    if-nez p1, :cond_21

    .line 594
    sget-object v1, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    sput-object v1, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    goto :goto_2c

    .line 596
    :cond_21
    new-instance v1, Landroid/os/LocaleList;

    sget-object v2, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    sget-object v3, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    invoke-direct {v1, v2, v3}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    sput-object v1, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    .line 599
    :goto_2c
    monitor-exit v0

    .line 600
    return-void

    .line 599
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_2e

    throw v1

    .line 586
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locales is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "locales is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 101
    return v0

    .line 102
    :cond_4
    instance-of v1, p1, Landroid/os/LocaleList;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 103
    return v2

    .line 104
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/os/LocaleList;

    iget-object v1, v1, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    .line 105
    .local v1, "otherList":[Ljava/util/Locale;
    iget-object v3, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v3, v3

    array-length v4, v1

    if-eq v3, v4, :cond_16

    .line 106
    return v2

    .line 107
    :cond_16
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    iget-object v4, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v4, v4

    if-ge v3, v4, :cond_2c

    .line 108
    iget-object v4, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v4, v4, v3

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 109
    return v2

    .line 107
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 111
    .end local v3    # "i":I
    :cond_2c
    return v0
.end method

.method public whitelist get(I)Ljava/util/Locale;
    .registers 3
    .param p1, "index"    # I

    .line 59
    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v0, v0, p1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public whitelist getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .registers 4
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .line 440
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/LocaleList;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getFirstMatchIndex([Ljava/lang/String;)I
    .registers 4
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .line 448
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 466
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getFirstMatchIndexWithEnglishSupported([Ljava/lang/String;)I
    .registers 3
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .line 473
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;
    .registers 4
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .line 458
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/LocaleList;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIntersection(Landroid/os/LocaleList;)[Ljava/util/Locale;
    .registers 13
    .param p1, "other"    # Landroid/os/LocaleList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "intersection":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_26

    aget-object v5, v1, v4

    .line 164
    .local v5, "l1":Ljava/util/Locale;
    iget-object v6, p1, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v7, v6

    move v8, v3

    :goto_12
    if-ge v8, v7, :cond_23

    aget-object v9, v6, v8

    .line 165
    .local v9, "l2":Ljava/util/Locale;
    invoke-static {v9, v5}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 166
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    goto :goto_23

    .line 164
    .end local v9    # "l2":Ljava/util/Locale;
    :cond_20
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 163
    .end local v5    # "l1":Ljava/util/Locale;
    :cond_23
    :goto_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 171
    :cond_26
    new-array v1, v3, [Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Locale;

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v2, v2

    if-ge v1, v2, :cond_16

    .line 118
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 120
    .end local v1    # "i":I
    :cond_16
    return v0
.end method

.method public whitelist indexOf(Ljava/util/Locale;)I
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 91
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 92
    return v0

    .line 90
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    .end local v0    # "i":I
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist size()I
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method

.method public whitelist toLanguageTags()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v2, v2

    if-ge v1, v2, :cond_26

    .line 128
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_23

    .line 130
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 133
    .end local v1    # "i":I
    :cond_26
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 144
    iget-object v0, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 145
    return-void
.end method
