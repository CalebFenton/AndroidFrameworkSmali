.class final Landroid/view/InputEventConsistencyVerifier$KeyState;
.super Ljava/lang/Object;
.source "InputEventConsistencyVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputEventConsistencyVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyState"
.end annotation


# static fields
.field private static greylist-max-o mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field private static greylist-max-o mRecycledListLock:Ljava/lang/Object;


# instance fields
.field public greylist-max-o deviceId:I

.field public greylist-max-o keyCode:I

.field public greylist-max-o next:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field public greylist-max-o source:I

.field public greylist-max-o unhandled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 773
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    return-void
.end method

.method public static greylist-max-o obtain(III)Landroid/view/InputEventConsistencyVerifier$KeyState;
    .registers 6
    .param p0, "deviceId"    # I
    .param p1, "source"    # I
    .param p2, "keyCode"    # I

    .line 787
    sget-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_3
    sget-object v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 789
    .local v1, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-eqz v1, :cond_c

    .line 790
    iget-object v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    sput-object v2, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    goto :goto_12

    .line 792
    :cond_c
    new-instance v2, Landroid/view/InputEventConsistencyVerifier$KeyState;

    invoke-direct {v2}, Landroid/view/InputEventConsistencyVerifier$KeyState;-><init>()V

    move-object v1, v2

    .line 794
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1d

    .line 795
    iput p0, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->deviceId:I

    .line 796
    iput p1, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->source:I

    .line 797
    iput p2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->keyCode:I

    .line 798
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    .line 799
    return-object v1

    .line 794
    .end local v1    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method public greylist-max-o recycle()V
    .registers 3

    .line 803
    sget-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 804
    :try_start_3
    sget-object v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 805
    iget-object v1, p0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    sput-object v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 806
    monitor-exit v0

    .line 807
    return-void

    .line 806
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method
