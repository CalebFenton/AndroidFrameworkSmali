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
.field final synthetic this$0:Landroid/hardware/camera2/utils/CloseableLock;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/utils/CloseableLock;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/utils/CloseableLock;

    #@0
    .prologue
    .line 74
    iput-object p1, p0, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;->this$0:Landroid/hardware/camera2/utils/CloseableLock;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/utils/CloseableLock;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    #@3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;->this$0:Landroid/hardware/camera2/utils/CloseableLock;

    #@2
    invoke-virtual {v0}, Landroid/hardware/camera2/utils/CloseableLock;->releaseLock()V

    #@5
    .line 78
    return-void
.end method
