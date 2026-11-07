.class Ljava/lang/Short$ShortCache;
.super Ljava/lang/Object;
.source "Short.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Short;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortCache"
.end annotation


# static fields
.field static blacklist archivedCache:[Ljava/lang/Short;

.field static final greylist-max-o cache:[Ljava/lang/Short;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 245
    const/16 v0, 0x100

    .line 250
    .local v0, "size":I
    sget-object v1, Ljava/lang/Short$ShortCache;->archivedCache:[Ljava/lang/Short;

    if-eqz v1, :cond_b

    sget-object v1, Ljava/lang/Short$ShortCache;->archivedCache:[Ljava/lang/Short;

    array-length v1, v1

    if-eq v1, v0, :cond_22

    .line 251
    :cond_b
    new-array v1, v0, [Ljava/lang/Short;

    .line 252
    .local v1, "c":[Ljava/lang/Short;
    const/16 v2, -0x80

    .line 253
    .local v2, "value":S
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v0, :cond_20

    .line 254
    new-instance v4, Ljava/lang/Short;

    add-int/lit8 v5, v2, 0x1

    int-to-short v5, v5

    .end local v2    # "value":S
    .local v5, "value":S
    invoke-direct {v4, v2}, Ljava/lang/Short;-><init>(S)V

    aput-object v4, v1, v3

    .line 253
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_10

    .line 256
    .end local v3    # "i":I
    .end local v5    # "value":S
    .restart local v2    # "value":S
    :cond_20
    sput-object v1, Ljava/lang/Short$ShortCache;->archivedCache:[Ljava/lang/Short;

    .line 258
    .end local v1    # "c":[Ljava/lang/Short;
    .end local v2    # "value":S
    :cond_22
    sget-object v1, Ljava/lang/Short$ShortCache;->archivedCache:[Ljava/lang/Short;

    sput-object v1, Ljava/lang/Short$ShortCache;->cache:[Ljava/lang/Short;

    .line 259
    .end local v0    # "size":I
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
