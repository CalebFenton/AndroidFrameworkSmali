.class public final Lcom/android/server/am/UserState;
.super Ljava/lang/Object;
.source "UserState.java"


# static fields
.field public static final STATE_BOOTING:I = 0x0

.field public static final STATE_RUNNING_LOCKED:I = 0x1

.field public static final STATE_RUNNING_UNLOCKED:I = 0x3

.field public static final STATE_RUNNING_UNLOCKING:I = 0x2

.field public static final STATE_SHUTDOWN:I = 0x5

.field public static final STATE_STOPPING:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public lastState:I

.field public final mHandle:Landroid/os/UserHandle;

.field public final mProviderLastReportedFg:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mStopCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IStopUserCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

.field public state:I

.field public switching:Z

.field public tokenProvided:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/UserState;->TAG:Ljava/lang/String;

    #@5
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "handle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 50
    iput-object v0, p0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    #@b
    .line 54
    iput v1, p0, Lcom/android/server/am/UserState;->state:I

    #@d
    .line 55
    iput v1, p0, Lcom/android/server/am/UserState;->lastState:I

    #@f
    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    #@11
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    #@16
    .line 66
    iput-object p1, p0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    #@18
    .line 67
    new-instance v0, Lcom/android/internal/util/ProgressReporter;

    #@1a
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@1d
    move-result v1

    #@1e
    invoke-direct {v0, v1}, Lcom/android/internal/util/ProgressReporter;-><init>(I)V

    #@21
    iput-object v0, p0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    #@23
    .line 65
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 91
    packed-switch p0, :pswitch_data_0

    #@3
    .line 98
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 92
    :pswitch_0
    const-string/jumbo v0, "BOOTING"

    #@b
    return-object v0

    #@c
    .line 93
    :pswitch_1
    const-string/jumbo v0, "RUNNING_LOCKED"

    #@f
    return-object v0

    #@10
    .line 94
    :pswitch_2
    const-string/jumbo v0, "RUNNING_UNLOCKING"

    #@13
    return-object v0

    #@14
    .line 95
    :pswitch_3
    const-string/jumbo v0, "RUNNING_UNLOCKED"

    #@17
    return-object v0

    #@18
    .line 96
    :pswitch_4
    const-string/jumbo v0, "STOPPING"

    #@1b
    return-object v0

    #@1c
    .line 97
    :pswitch_5
    const-string/jumbo v0, "SHUTDOWN"

    #@1f
    return-object v0

    #@20
    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 103
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 104
    const-string/jumbo v0, "state="

    #@6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget v0, p0, Lcom/android/server/am/UserState;->state:I

    #@b
    invoke-static {v0}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12
    .line 105
    iget-boolean v0, p0, Lcom/android/server/am/UserState;->switching:Z

    #@14
    if-eqz v0, :cond_0

    #@16
    const-string/jumbo v0, " SWITCHING"

    #@19
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    .line 106
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@1f
    .line 102
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "newState"    # I

    #@0
    .prologue
    .line 86
    iget v0, p0, Lcom/android/server/am/UserState;->state:I

    #@2
    iput v0, p0, Lcom/android/server/am/UserState;->lastState:I

    #@4
    .line 87
    iput p1, p0, Lcom/android/server/am/UserState;->state:I

    #@6
    .line 81
    return-void
.end method

.method public setState(II)Z
    .locals 3
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    #@0
    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/am/UserState;->state:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 72
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserState;->setState(I)V

    #@7
    .line 73
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 75
    :cond_0
    sget-object v0, Lcom/android/server/am/UserState;->TAG:Ljava/lang/String;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Expected user "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    #@19
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, " in state "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 76
    invoke-static {p1}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 76
    const-string/jumbo v2, " but was in state "

    #@33
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 76
    iget v2, p0, Lcom/android/server/am/UserState;->state:I

    #@39
    invoke-static {v2}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 77
    const/4 v0, 0x0

    #@49
    return v0
.end method
