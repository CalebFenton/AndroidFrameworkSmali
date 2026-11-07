.class Ljava/lang/Byte$ByteCache;
.super Ljava/lang/Object;
.source "Byte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Byte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteCache"
.end annotation


# static fields
.field static blacklist archivedCache:[Ljava/lang/Byte;

.field static final greylist-max-o cache:[Ljava/lang/Byte;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 121
    const/16 v0, 0x100

    .line 126
    .local v0, "size":I
    sget-object v1, Ljava/lang/Byte$ByteCache;->archivedCache:[Ljava/lang/Byte;

    const/16 v2, 0x100

    if-eqz v1, :cond_d

    sget-object v1, Ljava/lang/Byte$ByteCache;->archivedCache:[Ljava/lang/Byte;

    array-length v1, v1

    if-eq v1, v2, :cond_24

    .line 127
    :cond_d
    new-array v1, v2, [Ljava/lang/Byte;

    .line 128
    .local v1, "c":[Ljava/lang/Byte;
    const/16 v3, -0x80

    .line 129
    .local v3, "value":B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    if-ge v4, v2, :cond_22

    .line 130
    new-instance v5, Ljava/lang/Byte;

    add-int/lit8 v6, v3, 0x1

    int-to-byte v6, v6

    .end local v3    # "value":B
    .local v6, "value":B
    invoke-direct {v5, v3}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v1, v4

    .line 129
    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_12

    .line 132
    .end local v4    # "i":I
    .end local v6    # "value":B
    .restart local v3    # "value":B
    :cond_22
    sput-object v1, Ljava/lang/Byte$ByteCache;->archivedCache:[Ljava/lang/Byte;

    .line 134
    .end local v1    # "c":[Ljava/lang/Byte;
    .end local v3    # "value":B
    :cond_24
    sget-object v1, Ljava/lang/Byte$ByteCache;->archivedCache:[Ljava/lang/Byte;

    sput-object v1, Ljava/lang/Byte$ByteCache;->cache:[Ljava/lang/Byte;

    .line 135
    .end local v0    # "size":I
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
