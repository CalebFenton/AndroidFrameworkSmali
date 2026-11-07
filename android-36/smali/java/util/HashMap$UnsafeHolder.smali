.class final Ljava/util/HashMap$UnsafeHolder;
.super Ljava/lang/Object;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeHolder"
.end annotation


# static fields
.field private static final blacklist LF_OFFSET:J

.field private static final blacklist unsafe:Ljdk/internal/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1568
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/HashMap$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    .line 1569
    sget-object v0, Ljava/util/HashMap$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/util/HashMap;

    .line 1570
    const-string v2, "loadFactor"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/HashMap$UnsafeHolder;->LF_OFFSET:J

    .line 1569
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 1566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method static blacklist putLoadFactor(Ljava/util/HashMap;F)V
    .registers 5
    .param p1, "lf"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "**>;F)V"
        }
    .end annotation

    .line 1572
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    sget-object v0, Ljava/util/HashMap$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/HashMap$UnsafeHolder;->LF_OFFSET:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 1573
    return-void
.end method
