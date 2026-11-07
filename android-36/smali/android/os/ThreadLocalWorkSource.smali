.class public final Landroid/os/ThreadLocalWorkSource;
.super Ljava/lang/Object;
.source "ThreadLocalWorkSource.java"


# static fields
.field public static final blacklist UID_NONE:I = -0x1

.field private static final blacklist sWorkSourceUid:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroid/os/ThreadLocalWorkSource$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/ThreadLocalWorkSource$$ExternalSyntheticLambda0;-><init>()V

    .line 44
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/os/ThreadLocalWorkSource;->sWorkSourceUid:Ljava/lang/ThreadLocal;

    .line 43
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static blacklist clear()J
    .registers 2

    .line 94
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist getToken()J
    .registers 2

    .line 102
    sget-object v0, Landroid/os/ThreadLocalWorkSource;->sWorkSourceUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public static blacklist getUid()I
    .registers 2

    .line 54
    sget-object v0, Landroid/os/ThreadLocalWorkSource;->sWorkSourceUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method static synthetic blacklist lambda$static$0()[I
    .registers 1

    .line 44
    const/4 v0, -0x1

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseUidFromToken(J)I
    .registers 3
    .param p0, "token"    # J

    .line 98
    long-to-int v0, p0

    return v0
.end method

.method public static blacklist restore(J)V
    .registers 5
    .param p0, "token"    # J

    .line 77
    sget-object v0, Landroid/os/ThreadLocalWorkSource;->sWorkSourceUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    invoke-static {p0, p1}, Landroid/os/ThreadLocalWorkSource;->parseUidFromToken(J)I

    move-result v2

    aput v2, v0, v1

    .line 78
    return-void
.end method

.method public static blacklist setUid(I)J
    .registers 5
    .param p0, "uid"    # I

    .line 68
    invoke-static {}, Landroid/os/ThreadLocalWorkSource;->getToken()J

    move-result-wide v0

    .line 69
    .local v0, "token":J
    sget-object v2, Landroid/os/ThreadLocalWorkSource;->sWorkSourceUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 70
    return-wide v0
.end method
