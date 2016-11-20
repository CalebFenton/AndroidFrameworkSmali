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
.field static final localDescs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/io/ObjectStreamClass$WeakClassKey;",
            "Ljava/lang/ref/Reference",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final localDescsQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field static final reflectors:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/io/ObjectStreamClass$FieldReflectorKey;",
            "Ljava/lang/ref/Reference",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final reflectorsQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    #@0
    sget-object v0, Ljava/io/ObjectStreamClass$Caches;->localDescsQueue:Ljava/lang/ref/ReferenceQueue;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    #@0
    sget-object v0, Ljava/io/ObjectStreamClass$Caches;->reflectorsQueue:Ljava/lang/ref/ReferenceQueue;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@5
    .line 86
    sput-object v0, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    #@7
    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@c
    .line 90
    sput-object v0, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    #@e
    .line 95
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@10
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@13
    .line 94
    sput-object v0, Ljava/io/ObjectStreamClass$Caches;->localDescsQueue:Ljava/lang/ref/ReferenceQueue;

    #@15
    .line 98
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@17
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@1a
    .line 97
    sput-object v0, Ljava/io/ObjectStreamClass$Caches;->reflectorsQueue:Ljava/lang/ref/ReferenceQueue;

    #@1c
    .line 84
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
