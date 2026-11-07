.class public abstract Landroid/view/SurfaceControl$TrustedPresentationCallback;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TrustedPresentationCallback"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mFreeNativeResources:Ljava/lang/Runnable;

.field private final blacklist mNativeObject:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFreeNativeResources(Landroid/view/SurfaceControl$TrustedPresentationCallback;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl$TrustedPresentationCallback;->mFreeNativeResources:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeObject(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/SurfaceControl$TrustedPresentationCallback;->mNativeObject:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2994
    nop

    .line 2996
    const-class v0, Landroid/view/SurfaceControl$TrustedPresentationCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2997
    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$smgetNativeTrustedPresentationCallbackFinalizer()J

    move-result-wide v1

    .line 2995
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControl$TrustedPresentationCallback;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 2994
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 4

    .line 3001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3002
    invoke-static {p0}, Landroid/view/SurfaceControl;->-$$Nest$smnativeCreateTpc(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$TrustedPresentationCallback;->mNativeObject:J

    .line 3003
    sget-object v0, Landroid/view/SurfaceControl$TrustedPresentationCallback;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/view/SurfaceControl$TrustedPresentationCallback;->mNativeObject:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$TrustedPresentationCallback;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 3004
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/SurfaceControl$TrustedPresentationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onTrustedPresentationChanged(Z)V
.end method
