.class public Landroid/view/InputEventCompatProcessor;
.super Ljava/lang/Object;
.source "InputEventCompatProcessor.java"


# instance fields
.field protected blacklist mContext:Landroid/content/Context;

.field private final blacklist mLetterboxScrollProcessor:Landroid/view/LetterboxScrollProcessor;

.field private final blacklist mProcessedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mTargetSdkVersion:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/InputEventCompatProcessor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/view/InputEventCompatProcessor;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/view/InputEventCompatProcessor;->mTargetSdkVersion:I

    .line 50
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->scrollingFromLetterbox()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 51
    new-instance v0, Landroid/view/LetterboxScrollProcessor;

    iget-object v1, p0, Landroid/view/InputEventCompatProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/view/LetterboxScrollProcessor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/InputEventCompatProcessor;->mLetterboxScrollProcessor:Landroid/view/LetterboxScrollProcessor;

    goto :goto_20

    .line 53
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InputEventCompatProcessor;->mLetterboxScrollProcessor:Landroid/view/LetterboxScrollProcessor;

    .line 56
    :goto_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    .line 57
    return-void
.end method

.method private blacklist processLetterboxScrollCompatibility(Landroid/view/InputEvent;)Ljava/util/List;
    .registers 5
    .param p1, "inputEvent"    # Landroid/view/InputEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InputEvent;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroid/view/InputEventCompatProcessor;->mLetterboxScrollProcessor:Landroid/view/LetterboxScrollProcessor;

    if-eqz v0, :cond_19

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_19

    .line 114
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 115
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_19

    .line 116
    iget-object v1, p0, Landroid/view/InputEventCompatProcessor;->mLetterboxScrollProcessor:Landroid/view/LetterboxScrollProcessor;

    invoke-virtual {v1, v0}, Landroid/view/LetterboxScrollProcessor;->processMotionEvent(Landroid/view/MotionEvent;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 118
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist processStylusButtonCompatibility(Landroid/view/InputEvent;)Landroid/view/InputEvent;
    .registers 7
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    .line 123
    iget v0, p0, Landroid/view/InputEventCompatProcessor;->mTargetSdkVersion:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1f

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_1f

    .line 124
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 125
    .local v0, "motion":Landroid/view/MotionEvent;
    const/16 v1, 0x60

    .line 127
    .local v1, "mask":I
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    .line 128
    .local v2, "buttonState":I
    and-int/lit8 v3, v2, 0x60

    shr-int/lit8 v3, v3, 0x4

    .line 129
    .local v3, "compatButtonState":I
    if-eqz v3, :cond_1e

    .line 130
    or-int v4, v2, v3

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 132
    :cond_1e
    return-object v0

    .line 134
    .end local v0    # "motion":Landroid/view/MotionEvent;
    .end local v1    # "mask":I
    .end local v2    # "buttonState":I
    .end local v3    # "compatButtonState":I
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist processInputEventBeforeFinish(Landroid/view/InputEvent;)Landroid/view/InputEvent;
    .registers 4
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    .line 102
    iget-object v0, p0, Landroid/view/InputEventCompatProcessor;->mLetterboxScrollProcessor:Landroid/view/LetterboxScrollProcessor;

    if-eqz v0, :cond_12

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 104
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/InputEventCompatProcessor;->mLetterboxScrollProcessor:Landroid/view/LetterboxScrollProcessor;

    invoke-virtual {v1, v0}, Landroid/view/LetterboxScrollProcessor;->processMotionEventBeforeFinish(Landroid/view/MotionEvent;)Landroid/view/InputEvent;

    move-result-object v1

    return-object v1

    .line 108
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    :cond_12
    return-object p1
.end method

.method public blacklist processInputEventForCompatibility(Landroid/view/InputEvent;)Ljava/util/List;
    .registers 5
    .param p1, "inputEvent"    # Landroid/view/InputEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InputEvent;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    invoke-direct {p0, p1}, Landroid/view/InputEventCompatProcessor;->processStylusButtonCompatibility(Landroid/view/InputEvent;)Landroid/view/InputEvent;

    move-result-object v0

    .line 75
    .local v0, "stylusCompatEvent":Landroid/view/InputEvent;
    nop

    .line 76
    if-eqz v0, :cond_e

    move-object v1, v0

    goto :goto_f

    :cond_e
    move-object v1, p1

    .line 75
    :goto_f
    invoke-direct {p0, v1}, Landroid/view/InputEventCompatProcessor;->processLetterboxScrollCompatibility(Landroid/view/InputEvent;)Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "letterboxScrollCompatEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    if-nez v1, :cond_21

    .line 81
    if-eqz v0, :cond_1f

    .line 82
    iget-object v2, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v2, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    return-object v2

    .line 86
    :cond_1f
    const/4 v2, 0x0

    return-object v2

    .line 90
    :cond_21
    iget-object v2, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object v2, p0, Landroid/view/InputEventCompatProcessor;->mProcessedEvents:Ljava/util/List;

    return-object v2
.end method
