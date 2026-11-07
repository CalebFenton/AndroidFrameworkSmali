.class Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;
.super Landroid/hardware/input/IStickyModifierStateListener$Stub;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalStickyModifierStateListener"
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

    .line 958
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/input/IStickyModifierStateListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public blacklist onStickyModifierStateChanged(II)V
    .registers 7
    .param p1, "modifierState"    # I
    .param p2, "lockedModifierState"    # I

    .line 962
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmStickyModifierStateListenerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 963
    :try_start_7
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmStickyModifierStateListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 964
    :cond_11
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmStickyModifierStateListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 965
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-ge v2, v1, :cond_30

    .line 966
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierStateListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v3}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmStickyModifierStateListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;

    .line 967
    invoke-virtual {v3, p1, p2}, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;->notifyStickyModifierStateChange(II)V

    .line 965
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 969
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_30
    monitor-exit v0

    .line 970
    return-void

    .line 969
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v1
.end method
