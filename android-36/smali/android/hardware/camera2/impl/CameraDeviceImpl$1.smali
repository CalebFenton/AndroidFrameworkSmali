.class Landroid/hardware/camera2/impl/CameraDeviceImpl$1;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final blacklist mFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 102
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;->mFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 106
    sget-object v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;->mFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 107
    .local v0, "thread":Ljava/lang/Thread;
    const-string v1, "CameraDeviceExecutor"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 108
    return-object v0
.end method
