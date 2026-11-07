.class final Ljava/lang/Character$CharacterCache;
.super Ljava/lang/Object;
.source "Character.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Character;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharacterCache"
.end annotation


# static fields
.field static blacklist archivedCache:[Ljava/lang/Character;

.field static final greylist-max-o cache:[Ljava/lang/Character;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 9026
    const/16 v0, 0x80

    .line 9031
    .local v0, "size":I
    sget-object v1, Ljava/lang/Character$CharacterCache;->archivedCache:[Ljava/lang/Character;

    if-eqz v1, :cond_b

    sget-object v1, Ljava/lang/Character$CharacterCache;->archivedCache:[Ljava/lang/Character;

    array-length v1, v1

    if-eq v1, v0, :cond_1d

    .line 9032
    :cond_b
    new-array v1, v0, [Ljava/lang/Character;

    .line 9033
    .local v1, "c":[Ljava/lang/Character;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_1b

    .line 9034
    new-instance v3, Ljava/lang/Character;

    int-to-char v4, v2

    invoke-direct {v3, v4}, Ljava/lang/Character;-><init>(C)V

    aput-object v3, v1, v2

    .line 9033
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 9036
    .end local v2    # "i":I
    :cond_1b
    sput-object v1, Ljava/lang/Character$CharacterCache;->archivedCache:[Ljava/lang/Character;

    .line 9038
    .end local v1    # "c":[Ljava/lang/Character;
    :cond_1d
    sget-object v1, Ljava/lang/Character$CharacterCache;->archivedCache:[Ljava/lang/Character;

    sput-object v1, Ljava/lang/Character$CharacterCache;->cache:[Ljava/lang/Character;

    .line 9039
    .end local v0    # "size":I
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 9019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
