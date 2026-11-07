.class Landroid/net/TetheringManager$RequestDispatcher;
.super Ljava/lang/Object;
.source "TetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetheringManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestDispatcher"
.end annotation


# instance fields
.field private final blacklist mListener:Landroid/net/IIntResultListener;

.field public volatile blacklist mRemoteResult:I

.field private final blacklist mWaiting:Landroid/os/ConditionVariable;


# direct methods
.method public static synthetic blacklist $r8$lambda$a2oLHSaquGUnQ97vPL6YBWMclxM(Landroid/net/TetheringManager$RequestDispatcher;Landroid/net/TetheringManager$RequestHelper;Landroid/net/ITetheringConnector;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/TetheringManager$RequestDispatcher;->lambda$waitForResult$0(Landroid/net/TetheringManager$RequestHelper;Landroid/net/ITetheringConnector;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaiting(Landroid/net/TetheringManager$RequestDispatcher;)Landroid/os/ConditionVariable;
    .registers 1

    iget-object p0, p0, Landroid/net/TetheringManager$RequestDispatcher;->mWaiting:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    new-instance v0, Landroid/net/TetheringManager$RequestDispatcher$1;

    invoke-direct {v0, p0}, Landroid/net/TetheringManager$RequestDispatcher$1;-><init>(Landroid/net/TetheringManager$RequestDispatcher;)V

    iput-object v0, p0, Landroid/net/TetheringManager$RequestDispatcher;->mListener:Landroid/net/IIntResultListener;

    .line 543
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/net/TetheringManager$RequestDispatcher;->mWaiting:Landroid/os/ConditionVariable;

    .line 544
    return-void
.end method

.method private synthetic blacklist lambda$waitForResult$0(Landroid/net/TetheringManager$RequestHelper;Landroid/net/ITetheringConnector;)V
    .registers 4
    .param p1, "request"    # Landroid/net/TetheringManager$RequestHelper;
    .param p2, "c"    # Landroid/net/ITetheringConnector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    iget-object v0, p0, Landroid/net/TetheringManager$RequestDispatcher;->mListener:Landroid/net/IIntResultListener;

    invoke-interface {p1, p2, v0}, Landroid/net/TetheringManager$RequestHelper;->runRequest(Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V

    return-void
.end method


# virtual methods
.method blacklist waitForResult(Landroid/net/TetheringManager$RequestHelper;Landroid/net/TetheringManager;)I
    .registers 6
    .param p1, "request"    # Landroid/net/TetheringManager$RequestHelper;
    .param p2, "mgr"    # Landroid/net/TetheringManager;

    .line 547
    new-instance v0, Landroid/net/TetheringManager$RequestDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/net/TetheringManager$RequestDispatcher$$ExternalSyntheticLambda0;-><init>(Landroid/net/TetheringManager$RequestDispatcher;Landroid/net/TetheringManager$RequestHelper;)V

    invoke-static {p2, v0}, Landroid/net/TetheringManager;->-$$Nest$mgetConnector(Landroid/net/TetheringManager;Landroid/net/TetheringManager$ConnectorConsumer;)V

    .line 548
    iget-object v0, p0, Landroid/net/TetheringManager$RequestDispatcher;->mWaiting:Landroid/os/ConditionVariable;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 552
    iget v0, p0, Landroid/net/TetheringManager$RequestDispatcher;->mRemoteResult:I

    invoke-static {v0}, Landroid/net/TetheringManager;->-$$Nest$smthrowIfPermissionFailure(I)V

    .line 554
    iget v0, p0, Landroid/net/TetheringManager$RequestDispatcher;->mRemoteResult:I

    return v0

    .line 549
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
