.class Landroid/view/Choreographer$BufferStuffingState;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferStuffingState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$BufferStuffingState$RecoveryAction;
    }
.end annotation


# instance fields
.field public blacklist isRecovering:Z

.field public blacklist isStuffed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public blacklist numberWaitsForNextVsync:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/view/Choreographer$BufferStuffingState;->isStuffed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 230
    iput-boolean v1, p0, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    .line 235
    iput v1, p0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Choreographer-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/Choreographer$BufferStuffingState;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist reset()V
    .registers 3

    .line 243
    iget-object v0, p0, Landroid/view/Choreographer$BufferStuffingState;->isStuffed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 244
    iput-boolean v1, p0, Landroid/view/Choreographer$BufferStuffingState;->isRecovering:Z

    .line 245
    iput v1, p0, Landroid/view/Choreographer$BufferStuffingState;->numberWaitsForNextVsync:I

    .line 246
    return-void
.end method
