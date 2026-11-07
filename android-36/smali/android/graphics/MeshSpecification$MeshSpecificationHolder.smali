.class Landroid/graphics/MeshSpecification$MeshSpecificationHolder;
.super Ljava/lang/Object;
.source "MeshSpecification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/MeshSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MeshSpecificationHolder"
.end annotation


# static fields
.field public static final blacklist MESH_SPECIFICATION_REGISTRY:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 262
    const-class v0, Landroid/graphics/MeshSpecification;

    .line 264
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/MeshSpecification;->-$$Nest$smnativeGetFinalizer()J

    move-result-wide v1

    .line 263
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/MeshSpecification$MeshSpecificationHolder;->MESH_SPECIFICATION_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    .line 262
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
