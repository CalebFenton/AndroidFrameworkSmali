.class final Ljava/util/Hashtable$UnsafeHolder;
.super Ljava/lang/Object;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
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

    .line 1324
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/Hashtable$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    .line 1325
    sget-object v0, Ljava/util/Hashtable$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/util/Hashtable;

    .line 1326
    const-string v2, "loadFactor"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/Hashtable$UnsafeHolder;->LF_OFFSET:J

    .line 1325
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 1322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method static blacklist putLoadFactor(Ljava/util/Hashtable;F)V
    .registers 5
    .param p1, "lf"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "**>;F)V"
        }
    .end annotation

    .line 1328
    .local p0, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<**>;"
    sget-object v0, Ljava/util/Hashtable$UnsafeHolder;->unsafe:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/Hashtable$UnsafeHolder;->LF_OFFSET:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 1329
    return-void
.end method
