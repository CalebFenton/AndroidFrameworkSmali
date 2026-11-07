.class public Landroid/view/InsetsAnimationThreadControlRunner;
.super Ljava/lang/Object;
.source "InsetsAnimationThreadControlRunner.java"

# interfaces
.implements Landroid/view/InsetsAnimationControlRunner;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InsetsAnimThreadRunner"


# instance fields
.field private final blacklist mCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

.field private final blacklist mControl:Landroid/view/InsetsAnimationControlImpl;

.field private final blacklist mMainThreadHandler:Landroid/os/Handler;

.field private final blacklist mOuterCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

.field private final blacklist mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;


# direct methods
.method public static synthetic blacklist $r8$lambda$5hZN4q5O1of4CixAYO-zjfbxZSo(Landroid/view/InsetsAnimationThreadControlRunner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsAnimationThreadControlRunner;->lambda$updateLayoutInsetsDuringAnimation$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DLuG7Ht_vy5T5uYr29Rzhu2CZeY(Landroid/view/InsetsAnimationThreadControlRunner;ILandroid/view/WindowInsetsAnimationControlListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/InsetsAnimationThreadControlRunner;->lambda$new$0(ILandroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControl(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainThreadHandler(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOuterCallbacks(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlCallbacks;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mOuterCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsAnimationSpec;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/os/Handler;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 29
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "state"    # Landroid/view/InsetsState;
    .param p4, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p5, "types"    # I
    .param p6, "controller"    # Landroid/view/InsetsAnimationControlCallbacks;
    .param p7, "insetsAnimationSpec"    # Landroid/view/InsetsAnimationSpec;
    .param p8, "animationType"    # I
    .param p9, "layoutInsetsDuringAnimation"    # I
    .param p10, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;
    .param p11, "mainThreadHandler"    # Landroid/os/Handler;
    .param p12, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/view/InsetsState;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/InsetsAnimationControlCallbacks;",
            "Landroid/view/InsetsAnimationSpec;",
            "II",
            "Landroid/content/res/CompatibilityInfo$Translator;",
            "Landroid/os/Handler;",
            "Landroid/view/inputmethod/ImeTracker$Token;",
            ")V"
        }
    .end annotation

    .line 115
    .local p1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v1, Landroid/view/InsetsAnimationThreadControlRunner$1;

    invoke-direct {v1, v0}, Landroid/view/InsetsAnimationThreadControlRunner$1;-><init>(Landroid/view/InsetsAnimationThreadControlRunner;)V

    iput-object v1, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

    .line 92
    new-instance v1, Landroid/view/InsetsAnimationThreadControlRunner$2;

    invoke-direct {v1, v0}, Landroid/view/InsetsAnimationThreadControlRunner$2;-><init>(Landroid/view/InsetsAnimationThreadControlRunner;)V

    iput-object v1, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    .line 116
    move-object/from16 v1, p11

    iput-object v1, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mMainThreadHandler:Landroid/os/Handler;

    .line 117
    move-object/from16 v2, p6

    iput-object v2, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mOuterCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

    .line 118
    new-instance v3, Landroid/view/InsetsAnimationControlImpl;

    iget-object v9, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

    iget-object v10, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p12

    invoke-direct/range {v3 .. v15}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;Landroid/view/InsetsAnimationSpec;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/view/inputmethod/ImeTracker$Token;)V

    iput-object v3, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    .line 121
    invoke-static {}, Landroid/view/InsetsAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v8, v7}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsAnimationThreadControlRunner;ILandroid/view/WindowInsetsAnimationControlListener;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method private synthetic blacklist lambda$new$0(ILandroid/view/WindowInsetsAnimationControlListener;)V
    .registers 6
    .param p1, "types"    # I
    .param p2, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;

    .line 122
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 123
    return-void

    .line 125
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAsyncAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    invoke-static {p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 127
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-interface {p2, v0, p1}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    .line 128
    return-void
.end method

.method private synthetic blacklist lambda$updateLayoutInsetsDuringAnimation$1(I)V
    .registers 3
    .param p1, "layoutInsetsDuringAnimation"    # I

    .line 208
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0, p1}, Landroid/view/InsetsAnimationControlImpl;->updateLayoutInsetsDuringAnimation(I)V

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 4

    .line 185
    invoke-static {}, Landroid/view/InsetsAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;-><init>(Landroid/view/InsetsAnimationControlImpl;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 134
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/InsetsAnimationControlImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 135
    return-void
.end method

.method public blacklist getAnimation()Landroid/view/WindowInsetsAnimation;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAnimationType()I
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getAnimationType()I

    move-result v0

    return v0
.end method

.method public blacklist getControllingTypes()I
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getControllingTypes()I

    move-result v0

    return v0
.end method

.method public blacklist getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSurfaceParamsApplier()Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;
    .registers 2

    .line 201
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    return-object v0
.end method

.method public blacklist getTypes()I
    .registers 2

    .line 146
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getTypes()I

    move-result v0

    return v0
.end method

.method public blacklist notifyControlRevoked(I)V
    .registers 3
    .param p1, "types"    # I

    .line 158
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0, p1}, Landroid/view/InsetsAnimationControlImpl;->notifyControlRevoked(I)V

    .line 159
    return-void
.end method

.method public blacklist updateLayoutInsetsDuringAnimation(I)V
    .registers 4
    .param p1, "layoutInsetsDuringAnimation"    # I

    .line 207
    invoke-static {}, Landroid/view/InsetsAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda1;-><init>(Landroid/view/InsetsAnimationThreadControlRunner;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method

.method public blacklist updateSurfacePosition(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    monitor-enter v0

    .line 167
    :try_start_3
    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v1, p1}, Landroid/view/InsetsAnimationControlImpl;->updateSurfacePosition(Landroid/util/SparseArray;)V

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist willUpdateSurface()Z
    .registers 3

    .line 174
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    monitor-enter v0

    .line 178
    :try_start_3
    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v1}, Landroid/view/InsetsAnimationControlImpl;->willUpdateSurface()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 179
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
