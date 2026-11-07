.class final Ljava/lang/Long$LongCache;
.super Ljava/lang/Object;
.source "Long.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongCache"
.end annotation


# static fields
.field static blacklist archivedCache:[Ljava/lang/Long;

.field static final greylist-max-o cache:[Ljava/lang/Long;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 1199
    const/16 v0, 0x100

    .line 1204
    .local v0, "size":I
    sget-object v1, Ljava/lang/Long$LongCache;->archivedCache:[Ljava/lang/Long;

    if-eqz v1, :cond_b

    sget-object v1, Ljava/lang/Long$LongCache;->archivedCache:[Ljava/lang/Long;

    array-length v1, v1

    if-eq v1, v0, :cond_22

    .line 1205
    :cond_b
    new-array v1, v0, [Ljava/lang/Long;

    .line 1206
    .local v1, "c":[Ljava/lang/Long;
    const-wide/16 v2, -0x80

    .line 1207
    .local v2, "value":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    if-ge v4, v0, :cond_20

    .line 1208
    new-instance v5, Ljava/lang/Long;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    .end local v2    # "value":J
    .local v6, "value":J
    invoke-direct {v5, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v1, v4

    .line 1207
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v6

    goto :goto_10

    .line 1210
    .end local v4    # "i":I
    .end local v6    # "value":J
    .restart local v2    # "value":J
    :cond_20
    sput-object v1, Ljava/lang/Long$LongCache;->archivedCache:[Ljava/lang/Long;

    .line 1212
    .end local v1    # "c":[Ljava/lang/Long;
    .end local v2    # "value":J
    :cond_22
    sget-object v1, Ljava/lang/Long$LongCache;->archivedCache:[Ljava/lang/Long;

    sput-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    .line 1213
    .end local v0    # "size":I
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
