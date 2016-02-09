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
.field private static final genericInterfaces:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Llibcore/util/BasicLruCache;
    .locals 1

    #@0
    sget-object v0, Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1574
    new-instance v0, Llibcore/util/BasicLruCache;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    #@7
    .line 1573
    sput-object v0, Ljava/lang/Class$Caches;->genericInterfaces:Llibcore/util/BasicLruCache;

    #@9
    .line 1566
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1566
    .local p0, "this":Ljava/lang/Class$Caches;, "Ljava/lang/Class<TT;>.Caches;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
