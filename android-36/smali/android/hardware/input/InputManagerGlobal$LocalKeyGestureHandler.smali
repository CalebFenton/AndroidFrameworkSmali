.class Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;
.super Landroid/hardware/input/IKeyGestureHandler$Stub;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalKeyGestureHandler"
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

    .line 1179
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/input/IKeyGestureHandler$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public blacklist handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "ev"    # Landroid/hardware/input/AidlKeyGestureEvent;
    .param p2, "focusedToken"    # Landroid/os/IBinder;

    .line 1182
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyGesturesToHandlerMap(Landroid/hardware/input/InputManagerGlobal;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1183
    :try_start_7
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyGestureHandler;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmKeyGesturesToHandlerMap(Landroid/hardware/input/InputManagerGlobal;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager$KeyGestureEventHandler;

    .line 1184
    .local v1, "handler":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    if-nez v1, :cond_39

    .line 1185
    const-string v2, "InputManagerGlobal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key gesture event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " occurred without a registered handler!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    monitor-exit v0

    return-void

    .line 1189
    :cond_39
    new-instance v2, Landroid/hardware/input/KeyGestureEvent;

    invoke-direct {v2, p1}, Landroid/hardware/input/KeyGestureEvent;-><init>(Landroid/hardware/input/AidlKeyGestureEvent;)V

    invoke-interface {v1, v2, p2}, Landroid/hardware/input/InputManager$KeyGestureEventHandler;->handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V

    .line 1190
    .end local v1    # "handler":Landroid/hardware/input/InputManager$KeyGestureEventHandler;
    monitor-exit v0

    .line 1191
    return-void

    .line 1190
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_43

    throw v1
.end method
