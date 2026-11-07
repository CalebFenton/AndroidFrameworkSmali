.class Landroid/icu/impl/locale/LSR$CachedDecoder;
.super Ljava/lang/Object;
.source "LSR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/LSR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedDecoder"
.end annotation


# static fields
.field private static final blacklist DECODED_ONE:[Ljava/lang/String;

.field private static final blacklist DECODED_ZERO:[Ljava/lang/String;


# instance fields
.field private final blacklist langsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist m49:[Ljava/lang/String;

.field private final blacklist regionsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist scriptsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$2Vo5iUPXBd-yMfh29hR8_HJ2Bj4(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/locale/LSR$CachedDecoder;->toLanguage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$spUvTUnVjIRj2gSCb9D_-f6IBz4(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/locale/LSR$CachedDecoder;->toRegion(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 161
    const-string v0, ""

    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/icu/impl/locale/LSR$CachedDecoder;->DECODED_ZERO:[Ljava/lang/String;

    .line 163
    const-string v1, "skip"

    const-string v2, "script"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/LSR$CachedDecoder;->DECODED_ONE:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>([Ljava/lang/String;)V
    .registers 5
    .param p1, "m49"    # [Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/16 v0, 0x22c

    .line 174
    .local v0, "estLangCacheCapacity":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/icu/impl/locale/LSR$CachedDecoder;->langsCache:Ljava/util/HashMap;

    .line 175
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x100a

    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getIntPropertyMaxValue(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/icu/impl/locale/LSR$CachedDecoder;->scriptsCache:Ljava/util/HashMap;

    .line 176
    const/16 v1, 0xfd

    .line 177
    .local v1, "estRegionCacheCapacity":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Landroid/icu/impl/locale/LSR$CachedDecoder;->regionsCache:Ljava/util/HashMap;

    .line 178
    iput-object p1, p0, Landroid/icu/impl/locale/LSR$CachedDecoder;->m49:[Ljava/lang/String;

    .line 179
    return-void
.end method

.method private static blacklist toLanguage(I)Ljava/lang/String;
    .registers 3
    .param p0, "encoded"    # I

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 216
    .local v0, "res":Ljava/lang/StringBuilder;
    rem-int/lit8 v1, p0, 0x1b

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, 0x61

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    div-int/lit8 v1, p0, 0x1b

    rem-int/lit8 v1, v1, 0x1b

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, 0x61

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    div-int/lit16 v1, p0, 0x2d9

    if-eqz v1, :cond_2a

    .line 219
    div-int/lit16 v1, p0, 0x2d9

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, 0x61

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist toRegion(I)Ljava/lang/String;
    .registers 3
    .param p0, "encoded"    # I

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    .local v0, "res":Ljava/lang/StringBuilder;
    rem-int/lit8 v1, p0, 0x1b

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, 0x41

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    div-int/lit8 v1, p0, 0x1b

    rem-int/lit8 v1, v1, 0x1b

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, 0x41

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method blacklist decode(I)[Ljava/lang/String;
    .registers 10
    .param p1, "encoded"    # I

    .line 186
    if-nez p1, :cond_5

    .line 187
    sget-object v0, Landroid/icu/impl/locale/LSR$CachedDecoder;->DECODED_ZERO:[Ljava/lang/String;

    return-object v0

    .line 189
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 190
    sget-object v0, Landroid/icu/impl/locale/LSR$CachedDecoder;->DECODED_ONE:[Ljava/lang/String;

    return-object v0

    .line 193
    :cond_b
    const v0, 0xffffff

    and-int v1, p1, v0

    .line 194
    .local v1, "encodedLang":I
    rem-int/lit16 v1, v1, 0x4ce3

    .line 195
    iget-object v2, p0, Landroid/icu/impl/locale/LSR$CachedDecoder;->langsCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/icu/impl/locale/LSR$CachedDecoder$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/icu/impl/locale/LSR$CachedDecoder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 197
    .local v2, "lang":Ljava/lang/String;
    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 198
    .local v3, "encodedScript":I
    iget-object v4, p0, Landroid/icu/impl/locale/LSR$CachedDecoder;->scriptsCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/icu/impl/locale/LSR$CachedDecoder$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Landroid/icu/impl/locale/LSR$CachedDecoder$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 200
    .local v4, "script":Ljava/lang/String;
    and-int/2addr v0, p1

    .line 201
    .local v0, "encodedRegion":I
    div-int/lit16 v0, v0, 0x4ce3

    .line 202
    rem-int/lit16 v0, v0, 0x2d9

    .line 205
    const/16 v5, 0x1b

    if-ge v0, v5, :cond_46

    .line 206
    iget-object v5, p0, Landroid/icu/impl/locale/LSR$CachedDecoder;->m49:[Ljava/lang/String;

    aget-object v5, v5, v0

    .local v5, "region":Ljava/lang/String;
    goto :goto_57

    .line 208
    .end local v5    # "region":Ljava/lang/String;
    :cond_46
    iget-object v5, p0, Landroid/icu/impl/locale/LSR$CachedDecoder;->regionsCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/icu/impl/locale/LSR$CachedDecoder$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Landroid/icu/impl/locale/LSR$CachedDecoder$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 211
    .restart local v5    # "region":Ljava/lang/String;
    :goto_57
    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
