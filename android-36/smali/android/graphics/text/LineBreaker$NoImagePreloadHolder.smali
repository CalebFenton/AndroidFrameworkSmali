.class Landroid/graphics/text/LineBreaker$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "LineBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsRegistry()Llibcore/util/NativeAllocationRegistry;
    .registers 1

    sget-object v0, Landroid/graphics/text/LineBreaker$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 487
    const-class v0, Landroid/graphics/text/LineBreaker;

    .line 489
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/text/LineBreaker;->-$$Nest$smnGetReleaseFunc()J

    move-result-wide v1

    .line 488
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/text/LineBreaker$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 487
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
