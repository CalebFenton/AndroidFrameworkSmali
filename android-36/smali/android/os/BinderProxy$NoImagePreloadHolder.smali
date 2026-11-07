.class Landroid/os/BinderProxy$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "BinderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BinderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field public static final blacklist sNativeFinalizer:J

.field public static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 486
    invoke-static {}, Landroid/os/BinderProxy;->-$$Nest$smgetNativeFinalizer()J

    move-result-wide v0

    sput-wide v0, Landroid/os/BinderProxy$NoImagePreloadHolder;->sNativeFinalizer:J

    .line 487
    new-instance v2, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/os/BinderProxy;

    .line 488
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    sget-wide v4, Landroid/os/BinderProxy$NoImagePreloadHolder;->sNativeFinalizer:J

    const-wide/16 v6, 0x3e8

    invoke-direct/range {v2 .. v7}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v2, Landroid/os/BinderProxy$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 487
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
