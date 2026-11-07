.class public Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
.super Ljava/lang/Object;
.source "CloseableLock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/utils/CloseableLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScopedLock"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/utils/CloseableLock;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/utils/CloseableLock;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/camera2/utils/CloseableLock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74
    iput-object p1, p0, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;->this$0:Landroid/hardware/camera2/utils/CloseableLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;->this$0:Landroid/hardware/camera2/utils/CloseableLock;

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CloseableLock;->releaseLock()V

    .line 80
    return-void
.end method
