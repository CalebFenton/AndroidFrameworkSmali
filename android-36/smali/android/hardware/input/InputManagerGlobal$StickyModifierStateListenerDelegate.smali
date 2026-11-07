.class final Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;
.super Ljava/lang/Object;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StickyModifierStateListenerDelegate"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mListener:Landroid/hardware/input/InputManager$StickyModifierStateListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$Bsuh6qf7At16L2nu79Acc8vmI_g(Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;->lambda$notifyStickyModifierStateChange$0(II)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/input/InputManager$StickyModifierStateListener;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$StickyModifierStateListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 947
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;->mListener:Landroid/hardware/input/InputManager$StickyModifierStateListener;

    .line 948
    iput-object p2, p0, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 949
    return-void
.end method

.method private synthetic blacklist lambda$notifyStickyModifierStateChange$0(II)V
    .registers 5
    .param p1, "modifierState"    # I
    .param p2, "lockedModifierState"    # I

    .line 953
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;->mListener:Landroid/hardware/input/InputManager$StickyModifierStateListener;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;

    invoke-direct {v1, p1, p2}, Landroid/hardware/input/InputManagerGlobal$LocalStickyModifierState;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/hardware/input/InputManager$StickyModifierStateListener;->onStickyModifierStateChanged(Landroid/hardware/input/StickyModifierState;)V

    return-void
.end method


# virtual methods
.method blacklist notifyStickyModifierStateChange(II)V
    .registers 5
    .param p1, "modifierState"    # I
    .param p2, "lockedModifierState"    # I

    .line 952
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/input/InputManagerGlobal$StickyModifierStateListenerDelegate;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 955
    return-void
.end method
