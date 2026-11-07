.class final Ljava/lang/Integer$IntegerCache;
.super Ljava/lang/Object;
.source "Integer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntegerCache"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static blacklist archivedCache:[Ljava/lang/Integer; = null

.field static final greylist-max-o cache:[Ljava/lang/Integer;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field static final greylist-max-o high:I

.field static final greylist-max-o low:I = -0x80


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 1128
    const-class v0, Ljava/lang/Integer;

    .line 1138
    const/16 v0, 0x7f

    .line 1154
    .local v0, "h":I
    sput v0, Ljava/lang/Integer$IntegerCache;->high:I

    .line 1159
    sget v1, Ljava/lang/Integer$IntegerCache;->high:I

    add-int/lit16 v1, v1, 0x80

    add-int/lit8 v1, v1, 0x1

    .line 1162
    .local v1, "size":I
    sget-object v2, Ljava/lang/Integer$IntegerCache;->archivedCache:[Ljava/lang/Integer;

    if-eqz v2, :cond_15

    sget-object v2, Ljava/lang/Integer$IntegerCache;->archivedCache:[Ljava/lang/Integer;

    array-length v2, v2

    if-le v1, v2, :cond_2c

    .line 1163
    :cond_15
    new-array v2, v1, [Ljava/lang/Integer;

    .line 1164
    .local v2, "c":[Ljava/lang/Integer;
    const/16 v3, -0x80

    .line 1165
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    array-length v5, v2

    if-ge v4, v5, :cond_2a

    .line 1166
    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "j":I
    .local v6, "j":I
    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v2, v4

    .line 1165
    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_1a

    .line 1168
    .end local v4    # "i":I
    .end local v6    # "j":I
    .restart local v3    # "j":I
    :cond_2a
    sput-object v2, Ljava/lang/Integer$IntegerCache;->archivedCache:[Ljava/lang/Integer;

    .line 1170
    .end local v2    # "c":[Ljava/lang/Integer;
    .end local v3    # "j":I
    :cond_2c
    sget-object v2, Ljava/lang/Integer$IntegerCache;->archivedCache:[Ljava/lang/Integer;

    sput-object v2, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    .line 1172
    nop

    .line 1173
    .end local v0    # "h":I
    .end local v1    # "size":I
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
