.class Ljava/nio/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# static fields
.field private static blacklist PAGE_SIZE:I

.field private static final blacklist UNSAFE:Ljdk/internal/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/nio/Bits;->UNSAFE:Ljdk/internal/misc/Unsafe;

    .line 71
    const/4 v0, -0x1

    sput v0, Ljava/nio/Bits;->PAGE_SIZE:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist pageCount(J)J
    .registers 6
    .param p0, "size"    # J

    .line 80
    invoke-static {}, Ljava/nio/Bits;->pageSize()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {}, Ljava/nio/Bits;->pageSize()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method static blacklist pageSize()I
    .registers 2

    .line 74
    sget v0, Ljava/nio/Bits;->PAGE_SIZE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 75
    sget-object v0, Ljava/nio/Bits;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->pageSize()I

    move-result v0

    sput v0, Ljava/nio/Bits;->PAGE_SIZE:I

    .line 76
    :cond_d
    sget v0, Ljava/nio/Bits;->PAGE_SIZE:I

    return v0
.end method

.method static blacklist swap(C)C
    .registers 2
    .param p0, "x"    # C

    .line 53
    invoke-static {p0}, Ljava/lang/Character;->reverseBytes(C)C

    move-result v0

    return v0
.end method

.method static blacklist swap(I)I
    .registers 2
    .param p0, "x"    # I

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method static blacklist swap(J)J
    .registers 4
    .param p0, "x"    # J

    .line 61
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist swap(S)S
    .registers 2
    .param p0, "x"    # S

    .line 49
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    return v0
.end method
