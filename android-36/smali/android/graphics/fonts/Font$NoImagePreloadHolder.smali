.class Landroid/graphics/fonts/Font$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field private static final blacklist BUFFER_REGISTRY:Llibcore/util/NativeAllocationRegistry;

.field private static final blacklist FONT_REGISTRY:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetBUFFER_REGISTRY()Llibcore/util/NativeAllocationRegistry;
    .registers 1

    sget-object v0, Landroid/graphics/fonts/Font$NoImagePreloadHolder;->BUFFER_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFONT_REGISTRY()Llibcore/util/NativeAllocationRegistry;
    .registers 1

    sget-object v0, Landroid/graphics/fonts/Font$NoImagePreloadHolder;->FONT_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 67
    const-class v0, Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/fonts/Font;->-$$Nest$smnGetReleaseNativeFont()J

    move-result-wide v1

    .line 68
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/Font$NoImagePreloadHolder;->BUFFER_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    .line 71
    const-class v0, Landroid/graphics/fonts/Font;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 73
    invoke-static {}, Landroid/graphics/fonts/Font;->-$$Nest$smnGetReleaseNativeFont()J

    move-result-wide v1

    .line 72
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/Font$NoImagePreloadHolder;->FONT_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    .line 71
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
