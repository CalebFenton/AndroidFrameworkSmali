.class public Landroid/app/servertransaction/StopActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;
.source "StopActivityItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/StopActivityItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/app/servertransaction/StopActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/StopActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/StopActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 36
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>(Landroid/os/IBinder;)V

    .line 37
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>(Landroid/os/Parcel;)V

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/StopActivityItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/StopActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 8
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 42
    const-string v0, "activityStop"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    const-string v3, "STOP_ACTIVITY_ITEM"

    invoke-virtual {p1, p2, p3, v0, v3}, Landroid/app/ClientTransactionHandler;->handleStopActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V

    .line 45
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 46
    return-void
.end method

.method public greylist-max-o getTargetState()I
    .registers 2

    .line 56
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 3
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 51
    invoke-virtual {p1, p2}, Landroid/app/ClientTransactionHandler;->reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 52
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StopActivityItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
