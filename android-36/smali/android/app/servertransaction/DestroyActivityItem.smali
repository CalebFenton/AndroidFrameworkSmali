.class public Landroid/app/servertransaction/DestroyActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;
.source "DestroyActivityItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/DestroyActivityItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mFinished:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Landroid/app/servertransaction/DestroyActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/DestroyActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/DestroyActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z

    .line 39
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>(Landroid/os/IBinder;)V

    .line 40
    iput-boolean p2, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    .line 41
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>(Landroid/os/Parcel;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/DestroyActivityItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/DestroyActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 97
    return v0

    .line 99
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 100
    return v2

    .line 102
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/DestroyActivityItem;

    .line 103
    .local v1, "other":Landroid/app/servertransaction/DestroyActivityItem;
    iget-boolean v3, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    if-ne v3, v4, :cond_16

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 9
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 51
    const-string v0, "activityDestroy"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 52
    iget-boolean v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    const/4 v3, 0x0

    const-string v4, "DestroyActivityItem"

    invoke-virtual {p1, p2, v0, v3, v4}, Landroid/app/ClientTransactionHandler;->handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V

    .line 54
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 55
    return-void
.end method

.method public greylist-max-o getTargetState()I
    .registers 2

    .line 66
    const/4 v0, 0x6

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 108
    const/16 v0, 0x11

    .line 109
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 110
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    add-int/2addr v0, v2

    .line 111
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 5
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 61
    invoke-virtual {p1}, Landroid/app/ClientTransactionHandler;->getActivitiesToBeDestroyed()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/servertransaction/DestroyActivityItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;

    .line 45
    invoke-virtual {p1}, Landroid/app/ClientTransactionHandler;->getActivitiesToBeDestroyed()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/servertransaction/DestroyActivityItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DestroyActivityItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityLifecycleItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget-boolean v0, p0, Landroid/app/servertransaction/DestroyActivityItem;->mFinished:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 76
    return-void
.end method
