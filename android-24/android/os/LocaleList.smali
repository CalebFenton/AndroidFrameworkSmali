.class public final Landroid/os/LocaleList;
.super Ljava/lang/Object;
.source "LocaleList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/LocaleList$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/LocaleList;",
            ">;"
        }
    .end annotation
.end field

.field private static final EN_LATN:Ljava/util/Locale;

.field private static final LOCALE_AR_XB:Ljava/util/Locale;

.field private static final LOCALE_EN_XA:Ljava/util/Locale;

.field private static final NUM_PSEUDO_LOCALES:I = 0x2

.field private static final STRING_AR_XB:Ljava/lang/String; = "ar-XB"

.field private static final STRING_EN_XA:Ljava/lang/String; = "en-XA"

.field private static sDefaultAdjustedLocaleList:Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sDefaultLocaleList:Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sEmptyList:[Ljava/util/Locale;

.field private static final sEmptyLocaleList:Landroid/os/LocaleList;

.field private static sLastDefaultLocale:Ljava/util/Locale;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sLastExplicitlySetLocaleList:Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mList:[Ljava/util/Locale;

.field private final mStringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 44
    new-array v0, v1, [Ljava/util/Locale;

    #@4
    sput-object v0, Landroid/os/LocaleList;->sEmptyList:[Ljava/util/Locale;

    #@6
    .line 45
    new-instance v0, Landroid/os/LocaleList;

    #@8
    new-array v1, v1, [Ljava/util/Locale;

    #@a
    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    #@d
    sput-object v0, Landroid/os/LocaleList;->sEmptyLocaleList:Landroid/os/LocaleList;

    #@f
    .line 238
    new-instance v0, Landroid/os/LocaleList$1;

    #@11
    invoke-direct {v0}, Landroid/os/LocaleList$1;-><init>()V

    #@14
    .line 237
    sput-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16
    .line 290
    new-instance v0, Ljava/util/Locale;

    #@18
    const-string/jumbo v1, "en"

    #@1b
    const-string/jumbo v2, "XA"

    #@1e
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    sput-object v0, Landroid/os/LocaleList;->LOCALE_EN_XA:Ljava/util/Locale;

    #@23
    .line 291
    new-instance v0, Ljava/util/Locale;

    #@25
    const-string/jumbo v1, "ar"

    #@28
    const-string/jumbo v2, "XB"

    #@2b
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    sput-object v0, Landroid/os/LocaleList;->LOCALE_AR_XB:Ljava/util/Locale;

    #@30
    .line 341
    const-string/jumbo v0, "en-Latn"

    #@33
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@36
    move-result-object v0

    #@37
    sput-object v0, Landroid/os/LocaleList;->EN_LATN:Ljava/util/Locale;

    #@39
    .line 457
    new-instance v0, Ljava/lang/Object;

    #@3b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@3e
    sput-object v0, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    #@40
    .line 460
    sput-object v3, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    #@42
    .line 462
    sput-object v3, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    #@44
    .line 464
    sput-object v3, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    #@46
    .line 466
    sput-object v3, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    #@48
    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Landroid/os/LocaleList;)V
    .locals 9
    .param p1, "topLocale"    # Ljava/util/Locale;
    .param p2, "otherLocales"    # Landroid/os/LocaleList;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 195
    if-nez p1, :cond_0

    #@7
    .line 196
    new-instance v6, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v7, "topLocale is null"

    #@c
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v6

    #@10
    .line 199
    :cond_0
    if-nez p2, :cond_2

    #@12
    const/4 v1, 0x0

    #@13
    .line 200
    .local v1, "inputLength":I
    :goto_0
    const/4 v5, -0x1

    #@14
    .line 201
    .local v5, "topLocaleIndex":I
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@17
    .line 202
    iget-object v6, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@19
    aget-object v6, v6, v0

    #@1b
    invoke-virtual {p1, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_3

    #@21
    .line 203
    move v5, v0

    #@22
    .line 208
    :cond_1
    if-ne v5, v8, :cond_4

    #@24
    const/4 v6, 0x1

    #@25
    :goto_2
    add-int v3, v1, v6

    #@27
    .line 209
    .local v3, "outputLength":I
    new-array v2, v3, [Ljava/util/Locale;

    #@29
    .line 210
    .local v2, "localeList":[Ljava/util/Locale;
    invoke-virtual {p1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    #@2c
    move-result-object v6

    #@2d
    check-cast v6, Ljava/util/Locale;

    #@2f
    aput-object v6, v2, v7

    #@31
    .line 211
    if-ne v5, v8, :cond_5

    #@33
    .line 213
    const/4 v0, 0x0

    #@34
    :goto_3
    if-ge v0, v1, :cond_7

    #@36
    .line 214
    add-int/lit8 v7, v0, 0x1

    #@38
    iget-object v6, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@3a
    aget-object v6, v6, v0

    #@3c
    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    #@3f
    move-result-object v6

    #@40
    check-cast v6, Ljava/util/Locale;

    #@42
    aput-object v6, v2, v7

    #@44
    .line 213
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_3

    #@47
    .line 199
    .end local v0    # "i":I
    .end local v1    # "inputLength":I
    .end local v2    # "localeList":[Ljava/util/Locale;
    .end local v3    # "outputLength":I
    .end local v5    # "topLocaleIndex":I
    :cond_2
    iget-object v6, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@49
    array-length v1, v6

    #@4a
    .restart local v1    # "inputLength":I
    goto :goto_0

    #@4b
    .line 201
    .restart local v0    # "i":I
    .restart local v5    # "topLocaleIndex":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@4d
    goto :goto_1

    #@4e
    :cond_4
    move v6, v7

    #@4f
    .line 208
    goto :goto_2

    #@50
    .line 217
    .restart local v2    # "localeList":[Ljava/util/Locale;
    .restart local v3    # "outputLength":I
    :cond_5
    const/4 v0, 0x0

    #@51
    :goto_4
    if-ge v0, v5, :cond_6

    #@53
    .line 218
    add-int/lit8 v7, v0, 0x1

    #@55
    iget-object v6, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@57
    aget-object v6, v6, v0

    #@59
    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    #@5c
    move-result-object v6

    #@5d
    check-cast v6, Ljava/util/Locale;

    #@5f
    aput-object v6, v2, v7

    #@61
    .line 217
    add-int/lit8 v0, v0, 0x1

    #@63
    goto :goto_4

    #@64
    .line 220
    :cond_6
    add-int/lit8 v0, v5, 0x1

    #@66
    :goto_5
    if-ge v0, v1, :cond_7

    #@68
    .line 221
    iget-object v6, p2, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@6a
    aget-object v6, v6, v0

    #@6c
    invoke-virtual {v6}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    #@6f
    move-result-object v6

    #@70
    check-cast v6, Ljava/util/Locale;

    #@72
    aput-object v6, v2, v0

    #@74
    .line 220
    add-int/lit8 v0, v0, 0x1

    #@76
    goto :goto_5

    #@77
    .line 225
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    .line 226
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@7d
    :goto_6
    if-ge v0, v3, :cond_9

    #@7f
    .line 227
    aget-object v6, v2, v0

    #@81
    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    .line 228
    add-int/lit8 v6, v3, -0x1

    #@8a
    if-ge v0, v6, :cond_8

    #@8c
    .line 229
    const/16 v6, 0x2c

    #@8e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@91
    .line 226
    :cond_8
    add-int/lit8 v0, v0, 0x1

    #@93
    goto :goto_6

    #@94
    .line 233
    :cond_9
    iput-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@96
    .line 234
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v6

    #@9a
    iput-object v6, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    #@9c
    .line 194
    return-void
.end method

.method public varargs constructor <init>([Ljava/util/Locale;)V
    .locals 9
    .param p1, "list"    # [Ljava/util/Locale;

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 160
    array-length v6, p1

    #@4
    if-nez v6, :cond_0

    #@6
    .line 161
    sget-object v6, Landroid/os/LocaleList;->sEmptyList:[Ljava/util/Locale;

    #@8
    iput-object v6, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@a
    .line 162
    const-string/jumbo v6, ""

    #@d
    iput-object v6, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    #@f
    .line 159
    :goto_0
    return-void

    #@10
    .line 164
    :cond_0
    array-length v6, p1

    #@11
    new-array v3, v6, [Ljava/util/Locale;

    #@13
    .line 165
    .local v3, "localeList":[Ljava/util/Locale;
    new-instance v5, Ljava/util/HashSet;

    #@15
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@18
    .line 166
    .local v5, "seenLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    .line 167
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@1e
    .local v0, "i":I
    :goto_1
    array-length v6, p1

    #@1f
    if-ge v0, v6, :cond_4

    #@21
    .line 168
    aget-object v1, p1, v0

    #@23
    .line 169
    .local v1, "l":Ljava/util/Locale;
    if-nez v1, :cond_1

    #@25
    .line 170
    new-instance v6, Ljava/lang/NullPointerException;

    #@27
    new-instance v7, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v8, "list["

    #@2f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    const-string/jumbo v8, "] is null"

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@45
    throw v6

    #@46
    .line 171
    :cond_1
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@49
    move-result v6

    #@4a
    if-eqz v6, :cond_2

    #@4c
    .line 172
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@4e
    new-instance v7, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v8, "list["

    #@56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    const-string/jumbo v8, "] is a repetition"

    #@61
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v6

    #@6d
    .line 174
    :cond_2
    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    #@70
    move-result-object v2

    #@71
    check-cast v2, Ljava/util/Locale;

    #@73
    .line 175
    .local v2, "localeClone":Ljava/util/Locale;
    aput-object v2, v3, v0

    #@75
    .line 176
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@78
    move-result-object v6

    #@79
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    .line 177
    array-length v6, p1

    #@7d
    add-int/lit8 v6, v6, -0x1

    #@7f
    if-ge v0, v6, :cond_3

    #@81
    .line 178
    const/16 v6, 0x2c

    #@83
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@86
    .line 180
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@89
    .line 167
    add-int/lit8 v0, v0, 0x1

    #@8b
    goto :goto_1

    #@8c
    .line 183
    .end local v1    # "l":Ljava/util/Locale;
    .end local v2    # "localeClone":Ljava/util/Locale;
    :cond_4
    iput-object v3, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@8e
    .line 184
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v6

    #@92
    iput-object v6, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    #@94
    goto/16 :goto_0
.end method

.method private computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;
    .locals 2
    .param p2, "assumeEnglishIsSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Locale;"
        }
    .end annotation

    #@0
    .prologue
    .line 383
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    #@3
    move-result v0

    #@4
    .line 384
    .local v0, "bestIndex":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v1, 0x0

    #@8
    :goto_0
    return-object v1

    #@9
    :cond_0
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@b
    aget-object v1, v1, v0

    #@d
    goto :goto_0
.end method

.method private computeFirstMatchIndex(Ljava/util/Collection;Z)I
    .locals 9
    .param p2, "assumeEnglishIsSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const v8, 0x7fffffff

    #@3
    const/4 v7, 0x0

    #@4
    .line 345
    iget-object v5, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@6
    array-length v5, v5

    #@7
    const/4 v6, 0x1

    #@8
    if-ne v5, v6, :cond_0

    #@a
    .line 346
    return v7

    #@b
    .line 348
    :cond_0
    iget-object v5, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@d
    array-length v5, v5

    #@e
    if-nez v5, :cond_1

    #@10
    .line 349
    const/4 v5, -0x1

    #@11
    return v5

    #@12
    .line 352
    :cond_1
    const v0, 0x7fffffff

    #@15
    .line 354
    .local v0, "bestIndex":I
    if-eqz p2, :cond_3

    #@17
    .line 355
    sget-object v5, Landroid/os/LocaleList;->EN_LATN:Ljava/util/Locale;

    #@19
    invoke-direct {p0, v5}, Landroid/os/LocaleList;->findFirstMatchIndex(Ljava/util/Locale;)I

    #@1c
    move-result v1

    #@1d
    .line 356
    .local v1, "idx":I
    if-nez v1, :cond_2

    #@1f
    .line 357
    return v7

    #@20
    .line 358
    :cond_2
    if-ge v1, v8, :cond_3

    #@22
    .line 359
    move v0, v1

    #@23
    .line 362
    .end local v1    # "idx":I
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v3

    #@27
    .local v3, "languageTag$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_6

    #@2d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Ljava/lang/String;

    #@33
    .line 363
    .local v2, "languageTag":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@36
    move-result-object v4

    #@37
    .line 366
    .local v4, "supportedLocale":Ljava/util/Locale;
    invoke-direct {p0, v4}, Landroid/os/LocaleList;->findFirstMatchIndex(Ljava/util/Locale;)I

    #@3a
    move-result v1

    #@3b
    .line 367
    .restart local v1    # "idx":I
    if-nez v1, :cond_5

    #@3d
    .line 368
    return v7

    #@3e
    .line 369
    :cond_5
    if-ge v1, v0, :cond_4

    #@40
    .line 370
    move v0, v1

    #@41
    goto :goto_0

    #@42
    .line 373
    .end local v1    # "idx":I
    .end local v2    # "languageTag":Ljava/lang/String;
    .end local v4    # "supportedLocale":Ljava/util/Locale;
    :cond_6
    if-ne v0, v8, :cond_7

    #@44
    .line 375
    return v7

    #@45
    .line 377
    :cond_7
    return v0
.end method

.method private findFirstMatchIndex(Ljava/util/Locale;)I
    .locals 3
    .param p1, "supportedLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 332
    const/4 v0, 0x0

    #@1
    .local v0, "idx":I
    :goto_0
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@3
    array-length v2, v2

    #@4
    if-ge v0, v2, :cond_1

    #@6
    .line 333
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@8
    aget-object v2, v2, v0

    #@a
    invoke-static {p1, v2}, Landroid/os/LocaleList;->matchScore(Ljava/util/Locale;Ljava/util/Locale;)I

    #@d
    move-result v1

    #@e
    .line 334
    .local v1, "score":I
    if-lez v1, :cond_0

    #@10
    .line 335
    return v0

    #@11
    .line 332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 338
    .end local v1    # "score":I
    :cond_1
    const v2, 0x7fffffff

    #@17
    return v2
.end method

.method public static forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .locals 4
    .param p0, "list"    # Ljava/lang/String;

    #@0
    .prologue
    .line 266
    if-eqz p0, :cond_0

    #@2
    const-string/jumbo v3, ""

    #@5
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 267
    :cond_0
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    #@e
    move-result-object v3

    #@f
    return-object v3

    #@10
    .line 269
    :cond_1
    const-string/jumbo v3, ","

    #@13
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 270
    .local v2, "tags":[Ljava/lang/String;
    array-length v3, v2

    #@18
    new-array v1, v3, [Ljava/util/Locale;

    #@1a
    .line 271
    .local v1, "localeArray":[Ljava/util/Locale;
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@1c
    if-ge v0, v3, :cond_2

    #@1e
    .line 272
    aget-object v3, v2, v0

    #@20
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@23
    move-result-object v3

    #@24
    aput-object v3, v1, v0

    #@26
    .line 271
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 274
    :cond_2
    new-instance v3, Landroid/os/LocaleList;

    #@2b
    invoke-direct {v3, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    #@2e
    return-object v3
.end method

.method public static getAdjustedDefault()Landroid/os/LocaleList;
    .locals 2

    #@0
    .prologue
    .line 511
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    #@3
    .line 512
    sget-object v0, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    #@5
    monitor-enter v0

    #@6
    .line 513
    :try_start_0
    sget-object v1, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v0

    #@9
    return-object v1

    #@a
    .line 512
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method public static getDefault()Landroid/os/LocaleList;
    .locals 4

    #@0
    .prologue
    .line 481
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    .line 482
    .local v0, "defaultLocale":Ljava/util/Locale;
    sget-object v2, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 483
    :try_start_0
    sget-object v1, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    #@9
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_1

    #@f
    .line 484
    sput-object v0, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    #@11
    .line 488
    sget-object v1, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 489
    sget-object v1, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    #@17
    const/4 v3, 0x0

    #@18
    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    .line 488
    if-eqz v1, :cond_0

    #@22
    .line 492
    sget-object v1, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v2

    #@25
    return-object v1

    #@26
    .line 494
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/LocaleList;

    #@28
    sget-object v3, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    #@2a
    invoke-direct {v1, v0, v3}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    #@2d
    sput-object v1, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    #@2f
    .line 495
    sget-object v1, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    #@31
    sput-object v1, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;

    #@33
    .line 501
    :cond_1
    sget-object v1, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    monitor-exit v2

    #@36
    return-object v1

    #@37
    .line 482
    :catchall_0
    move-exception v1

    #@38
    monitor-exit v2

    #@39
    throw v1
.end method

.method public static getEmptyLocaleList()Landroid/os/LocaleList;
    .locals 1

    #@0
    .prologue
    .line 255
    sget-object v0, Landroid/os/LocaleList;->sEmptyLocaleList:Landroid/os/LocaleList;

    #@2
    return-object v0
.end method

.method private static getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 279
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 280
    .local v0, "script":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 281
    return-object v0

    #@b
    .line 284
    :cond_0
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method private static isPseudoLocale(Ljava/lang/String;)Z
    .locals 1
    .param p0, "locale"    # Ljava/lang/String;

    #@0
    .prologue
    .line 295
    const-string/jumbo v0, "en-XA"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const-string/jumbo v0, "ar-XB"

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method private static isPseudoLocale(Ljava/util/Locale;)Z
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 299
    sget-object v0, Landroid/os/LocaleList;->LOCALE_EN_XA:Ljava/util/Locale;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    sget-object v0, Landroid/os/LocaleList;->LOCALE_AR_XB:Ljava/util/Locale;

    #@a
    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public static isPseudoLocalesOnly([Ljava/lang/String;)Z
    .locals 6
    .param p0, "supportedLocales"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 438
    if-nez p0, :cond_0

    #@4
    .line 439
    return v5

    #@5
    .line 442
    :cond_0
    array-length v1, p0

    #@6
    const/4 v3, 0x3

    #@7
    if-le v1, v3, :cond_1

    #@9
    .line 447
    return v2

    #@a
    .line 449
    :cond_1
    array-length v3, p0

    #@b
    move v1, v2

    #@c
    :goto_0
    if-ge v1, v3, :cond_4

    #@e
    aget-object v0, p0, v1

    #@10
    .line 450
    .local v0, "locale":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_2

    #@16
    invoke-static {v0}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/lang/String;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_3

    #@1c
    .line 449
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 451
    :cond_3
    return v2

    #@20
    .line 454
    .end local v0    # "locale":Ljava/lang/String;
    :cond_4
    return v5
.end method

.method private static matchScore(Ljava/util/Locale;Ljava/util/Locale;)I
    .locals 7
    .param p0, "supported"    # Ljava/util/Locale;
    .param p1, "desired"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 304
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 305
    return v4

    #@9
    .line 307
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@10
    move-result-object v6

    #@11
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v5

    #@15
    if-nez v5, :cond_1

    #@17
    .line 308
    return v3

    #@18
    .line 310
    :cond_1
    invoke-static {p0}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    #@1b
    move-result v5

    #@1c
    if-nez v5, :cond_2

    #@1e
    invoke-static {p1}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_3

    #@24
    .line 313
    :cond_2
    return v3

    #@25
    .line 315
    :cond_3
    invoke-static {p0}, Landroid/os/LocaleList;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 316
    .local v2, "supportedScr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_6

    #@2f
    .line 320
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 321
    .local v1, "supportedRegion":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@36
    move-result v5

    #@37
    if-nez v5, :cond_4

    #@39
    .line 322
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v5

    #@41
    .line 321
    if-eqz v5, :cond_5

    #@43
    :cond_4
    move v3, v4

    #@44
    :cond_5
    return v3

    #@45
    .line 325
    .end local v1    # "supportedRegion":Ljava/lang/String;
    :cond_6
    invoke-static {p1}, Landroid/os/LocaleList;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    .line 328
    .local v0, "desiredScr":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v5

    #@4d
    if-eqz v5, :cond_7

    #@4f
    :goto_0
    return v4

    #@50
    :cond_7
    move v4, v3

    #@51
    goto :goto_0
.end method

.method public static setDefault(Landroid/os/LocaleList;)V
    .locals 1
    .param p0, "locales"    # Landroid/os/LocaleList;

    #@0
    .prologue
    .line 525
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    #@4
    .line 524
    return-void
.end method

.method public static setDefault(Landroid/os/LocaleList;I)V
    .locals 4
    .param p0, "locales"    # Landroid/os/LocaleList;
    .param p1, "localeIndex"    # I

    #@0
    .prologue
    .line 537
    if-nez p0, :cond_0

    #@2
    .line 538
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "locales is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 540
    :cond_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "locales is empty"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 543
    :cond_1
    sget-object v1, Landroid/os/LocaleList;->sLock:Ljava/lang/Object;

    #@1c
    monitor-enter v1

    #@1d
    .line 544
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@20
    move-result-object v0

    #@21
    sput-object v0, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    #@23
    .line 545
    sget-object v0, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    #@25
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    #@28
    .line 546
    sput-object p0, Landroid/os/LocaleList;->sLastExplicitlySetLocaleList:Landroid/os/LocaleList;

    #@2a
    .line 547
    sput-object p0, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    #@2c
    .line 548
    if-nez p1, :cond_2

    #@2e
    .line 549
    sget-object v0, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    #@30
    sput-object v0, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    :goto_0
    monitor-exit v1

    #@33
    .line 536
    return-void

    #@34
    .line 551
    :cond_2
    :try_start_1
    new-instance v0, Landroid/os/LocaleList;

    #@36
    .line 552
    sget-object v2, Landroid/os/LocaleList;->sLastDefaultLocale:Ljava/util/Locale;

    #@38
    sget-object v3, Landroid/os/LocaleList;->sDefaultLocaleList:Landroid/os/LocaleList;

    #@3a
    .line 551
    invoke-direct {v0, v2, v3}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    #@3d
    sput-object v0, Landroid/os/LocaleList;->sDefaultAdjustedLocaleList:Landroid/os/LocaleList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    goto :goto_0

    #@40
    .line 543
    :catchall_0
    move-exception v0

    #@41
    monitor-exit v1

    #@42
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 134
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 95
    if-ne p1, p0, :cond_0

    #@4
    .line 96
    return v5

    #@5
    .line 97
    :cond_0
    instance-of v2, p1, Landroid/os/LocaleList;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 98
    return v4

    #@a
    .line 99
    :cond_1
    check-cast p1, Landroid/os/LocaleList;

    #@c
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@e
    .line 100
    .local v1, "otherList":[Ljava/util/Locale;
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@10
    array-length v2, v2

    #@11
    array-length v3, v1

    #@12
    if-eq v2, v3, :cond_2

    #@14
    .line 101
    return v4

    #@15
    .line 102
    :cond_2
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@18
    array-length v2, v2

    #@19
    if-ge v0, v2, :cond_4

    #@1b
    .line 103
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@1d
    aget-object v2, v2, v0

    #@1f
    aget-object v3, v1, v0

    #@21
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-nez v2, :cond_3

    #@27
    .line 104
    return v4

    #@28
    .line 102
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 106
    :cond_4
    return v5
.end method

.method public get(I)Ljava/util/Locale;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 54
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@9
    aget-object v0, v0, p1

    #@b
    :goto_0
    return-object v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 396
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 397
    const/4 v1, 0x0

    #@5
    .line 396
    invoke-direct {p0, v0, v1}, Landroid/os/LocaleList;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getFirstMatchIndex([Ljava/lang/String;)I
    .locals 2
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 404
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 405
    const/4 v1, 0x0

    #@5
    .line 404
    invoke-direct {p0, v0, v1}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 422
    .local p1, "supportedLocales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/os/LocaleList;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getFirstMatchIndexWithEnglishSupported([Ljava/lang/String;)I
    .locals 1
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 429
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->getFirstMatchIndexWithEnglishSupported(Ljava/util/Collection;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 414
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 415
    const/4 v1, 0x1

    #@5
    .line 414
    invoke-direct {p0, v0, v1}, Landroid/os/LocaleList;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 111
    const/4 v1, 0x1

    #@1
    .line 112
    .local v1, "result":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 113
    mul-int/lit8 v2, v1, 0x1f

    #@9
    iget-object v3, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@b
    aget-object v3, v3, v0

    #@d
    invoke-virtual {v3}, Ljava/util/Locale;->hashCode()I

    #@10
    move-result v3

    #@11
    add-int v1, v2, v3

    #@13
    .line 112
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 115
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 86
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 87
    return v0

    #@11
    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 90
    :cond_1
    const/4 v1, -0x1

    #@15
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 64
    iget-object v1, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@3
    array-length v1, v1

    #@4
    if-nez v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 121
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "["

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 122
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@e
    array-length v2, v2

    #@f
    if-ge v0, v2, :cond_1

    #@11
    .line 123
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@13
    aget-object v2, v2, v0

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    .line 124
    iget-object v2, p0, Landroid/os/LocaleList;->mList:[Ljava/util/Locale;

    #@1a
    array-length v2, v2

    #@1b
    add-int/lit8 v2, v2, -0x1

    #@1d
    if-ge v0, v2, :cond_0

    #@1f
    .line 125
    const/16 v2, 0x2c

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 128
    :cond_1
    const-string/jumbo v2, "]"

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/os/LocaleList;->mStringRepresentation:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 138
    return-void
.end method
