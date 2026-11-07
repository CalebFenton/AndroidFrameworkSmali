.class Ljava/io/ObjectInputStream$Caches;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Caches"
.end annotation


# static fields
.field static final greylist-max-o subclassAudits:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/io/ObjectStreamClass$WeakClassKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 237
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    .line 241
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava/io/ObjectInputStream$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
