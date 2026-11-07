.class Ljava/lang/Class$Caches;
.super Ljava/lang/Object;
.source "Class.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Caches"
.end annotation


# static fields
.field private static final greylist-max-o genericInterfaces:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetgenericInterfaces()Llibcore/util/BasicLruCache;
    .registers 1

    sget-object v0, Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 4788
    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    sput-object v0, Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 4781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
