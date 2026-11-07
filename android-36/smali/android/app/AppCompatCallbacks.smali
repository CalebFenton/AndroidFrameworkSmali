.class public final Landroid/app/AppCompatCallbacks;
.super Ljava/lang/Object;
.source "AppCompatCallbacks.java"

# interfaces
.implements Landroid/compat/Compatibility$BehaviorChangeDelegate;


# instance fields
.field private final blacklist mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

.field private final blacklist mDisabledChanges:[J

.field private final blacklist mLoggableChanges:[J


# direct methods
.method private constructor blacklist <init>([J[J)V
    .registers 5
    .param p1, "disabledChanges"    # [J
    .param p2, "loggableChanges"    # [J

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppCompatCallbacks;->mDisabledChanges:[J

    .line 50
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppCompatCallbacks;->mLoggableChanges:[J

    .line 51
    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mDisabledChanges:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 52
    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mLoggableChanges:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 53
    new-instance v0, Lcom/android/internal/compat/ChangeReporter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object v0, p0, Landroid/app/AppCompatCallbacks;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 54
    return-void
.end method

.method private blacklist changeIdInChangeList([JJ)Z
    .registers 5
    .param p1, "list"    # [J
    .param p2, "changeId"    # J

    .line 64
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist install([J[J)V
    .registers 3
    .param p0, "disabledChanges"    # [J
    .param p1, "loggableChanges"    # [J

    .line 44
    new-instance v0, Landroid/app/AppCompatCallbacks;

    invoke-direct {v0, p0, p1}, Landroid/app/AppCompatCallbacks;-><init>([J[J)V

    invoke-static {v0}, Landroid/compat/Compatibility;->setBehaviorChangeDelegate(Landroid/compat/Compatibility$BehaviorChangeDelegate;)V

    .line 46
    return-void
.end method

.method private blacklist reportChange(JIZ)V
    .registers 12
    .param p1, "changeId"    # J
    .param p3, "state"    # I
    .param p4, "isLoggable"    # Z

    .line 85
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 86
    .local v1, "uid":I
    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    const/4 v5, 0x0

    move-wide v2, p1

    move v4, p3

    move v6, p4

    .end local p1    # "changeId":J
    .end local p3    # "state":I
    .end local p4    # "isLoggable":Z
    .local v2, "changeId":J
    .local v4, "state":I
    .local v6, "isLoggable":Z
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJIZZ)V

    .line 87
    return-void
.end method


# virtual methods
.method public blacklist test-api isChangeEnabled(J)Z
    .registers 6
    .param p1, "changeId"    # J

    .line 73
    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mDisabledChanges:[J

    invoke-direct {p0, v0, p1, p2}, Landroid/app/AppCompatCallbacks;->changeIdInChangeList([JJ)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 74
    .local v0, "isEnabled":Z
    iget-object v2, p0, Landroid/app/AppCompatCallbacks;->mLoggableChanges:[J

    invoke-direct {p0, v2, p1, p2}, Landroid/app/AppCompatCallbacks;->changeIdInChangeList([JJ)Z

    move-result v2

    .line 75
    .local v2, "isLoggable":Z
    if-eqz v0, :cond_14

    .line 77
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/app/AppCompatCallbacks;->reportChange(JIZ)V

    .line 78
    return v1

    .line 80
    :cond_14
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/app/AppCompatCallbacks;->reportChange(JIZ)V

    .line 81
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist test-api onChangeReported(J)V
    .registers 5
    .param p1, "changeId"    # J

    .line 68
    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mLoggableChanges:[J

    invoke-direct {p0, v0, p1, p2}, Landroid/app/AppCompatCallbacks;->changeIdInChangeList([JJ)Z

    move-result v0

    .line 69
    .local v0, "isLoggable":Z
    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/app/AppCompatCallbacks;->reportChange(JIZ)V

    .line 70
    return-void
.end method
