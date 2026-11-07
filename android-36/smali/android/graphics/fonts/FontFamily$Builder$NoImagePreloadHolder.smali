.class Landroid/graphics/fonts/FontFamily$Builder$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontFamily$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field private static final blacklist sFamilyRegistry:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsFamilyRegistry()Llibcore/util/NativeAllocationRegistry;
    .registers 1

    sget-object v0, Landroid/graphics/fonts/FontFamily$Builder$NoImagePreloadHolder;->sFamilyRegistry:Llibcore/util/NativeAllocationRegistry;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 79
    const-class v0, Landroid/graphics/fonts/FontFamily;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 81
    invoke-static {}, Landroid/graphics/fonts/FontFamily$Builder;->-$$Nest$smnGetReleaseNativeFamily()J

    move-result-wide v1

    .line 80
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/FontFamily$Builder$NoImagePreloadHolder;->sFamilyRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 79
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
