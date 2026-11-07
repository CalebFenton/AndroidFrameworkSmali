.class Landroid/graphics/ColorSpace$Rgb$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Rgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field public static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 3169
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-class v1, Landroid/graphics/ColorSpace$Rgb;

    .line 3170
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Landroid/graphics/ColorSpace$Rgb$Native;->nativeGetNativeFinalizer()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Landroid/graphics/ColorSpace$Rgb$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 3169
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 3168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
