.class Ljava/io/ObjectStreamClass$Caches;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Caches"
.end annotation


# static fields
.field static final greylist-max-o localDescs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/io/ObjectStreamClass$WeakClassKey;",
            "Ljava/lang/ref/Reference<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o localDescsQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final greylist-max-o reflectors:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/io/ObjectStreamClass$FieldReflectorKey;",
            "Ljava/lang/ref/Reference<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o reflectorsQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetlocalDescsQueue()Ljava/lang/ref/ReferenceQueue;
    .registers 1

    sget-object v0, Ljava/io/ObjectStreamClass$Caches;->localDescsQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetreflectorsQueue()Ljava/lang/ref/ReferenceQueue;
    .registers 1

    sget-object v0, Ljava/io/ObjectStreamClass$Caches;->reflectorsQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    .line 108
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava/io/ObjectStreamClass$Caches;->localDescsQueue:Ljava/lang/ref/ReferenceQueue;

    .line 111
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava/io/ObjectStreamClass$Caches;->reflectorsQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
