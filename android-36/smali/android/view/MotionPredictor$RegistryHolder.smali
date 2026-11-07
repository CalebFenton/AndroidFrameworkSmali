.class Landroid/view/MotionPredictor$RegistryHolder;
.super Ljava/lang/Object;
.source "MotionPredictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionPredictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistryHolder"
.end annotation


# static fields
.field public static final blacklist REGISTRY:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 46
    const-class v0, Landroid/view/MotionPredictor;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 49
    invoke-static {}, Landroid/view/MotionPredictor;->-$$Nest$smnativeGetNativeMotionPredictorFinalizer()J

    move-result-wide v1

    .line 47
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/MotionPredictor$RegistryHolder;->REGISTRY:Llibcore/util/NativeAllocationRegistry;

    .line 46
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
