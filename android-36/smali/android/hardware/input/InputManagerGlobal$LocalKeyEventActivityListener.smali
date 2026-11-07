.class Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;
.super Landroid/hardware/input/IKeyEventActivityListener$Stub;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalKeyEventActivityListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/input/InputManagerGlobal;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1274
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/input/IKeyEventActivityListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public blacklist onKeyEventActivity()V
    .registers 5

    .line 1277
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyEventActivityLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1278
    :try_start_7
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyEventActivityListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1279
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_26

    .line 1280
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyEventActivityListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v3}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyEventActivityListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager$KeyEventActivityListener;

    .line 1281
    .local v3, "listener":Landroid/hardware/input/InputManager$KeyEventActivityListener;
    invoke-interface {v3}, Landroid/hardware/input/InputManager$KeyEventActivityListener;->onKeyEventActivity()V

    .line 1279
    .end local v3    # "listener":Landroid/hardware/input/InputManager$KeyEventActivityListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1283
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_26
    monitor-exit v0

    .line 1284
    return-void

    .line 1283
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v1
.end method
