.class public Landroid/app/servertransaction/PauseActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;
.source "PauseActivityItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/PauseActivityItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAutoEnteringPip:Z

.field private final greylist-max-o mDontReport:Z

.field private final greylist-max-o mFinished:Z

.field private final greylist-max-o mUserLeaving:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Landroid/app/servertransaction/PauseActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/PauseActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/PauseActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 43
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "activityToken":Landroid/os/IBinder;
    .local v1, "activityToken":Landroid/os/IBinder;
    invoke-direct/range {v0 .. v5}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/IBinder;ZZZZ)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;ZZZZ)V
    .registers 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "dontReport"    # Z
    .param p5, "autoEnteringPip"    # Z

    .line 49
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>(Landroid/os/IBinder;)V

    .line 50
    iput-boolean p2, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    .line 51
    iput-boolean p3, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    .line 52
    iput-boolean p4, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    .line 53
    iput-boolean p5, p0, Landroid/app/servertransaction/PauseActivityItem;->mAutoEnteringPip:Z

    .line 54
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>(Landroid/os/Parcel;)V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mAutoEnteringPip:Z

    .line 99
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/PauseActivityItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 113
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 114
    return v0

    .line 116
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 117
    return v2

    .line 119
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/PauseActivityItem;

    .line 120
    .local v1, "other":Landroid/app/servertransaction/PauseActivityItem;
    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    if-ne v3, v4, :cond_28

    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    if-ne v3, v4, :cond_28

    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    if-ne v3, v4, :cond_28

    iget-boolean v3, p0, Landroid/app/servertransaction/PauseActivityItem;->mAutoEnteringPip:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/PauseActivityItem;->mAutoEnteringPip:Z

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 14
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 59
    const-string v0, "activityPause"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 60
    iget-boolean v5, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    iget-boolean v6, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    iget-boolean v7, p0, Landroid/app/servertransaction/PauseActivityItem;->mAutoEnteringPip:Z

    const-string v9, "PAUSE_ACTIVITY_ITEM"

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    .end local p1    # "client":Landroid/app/ClientTransactionHandler;
    .end local p2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p3    # "pendingActions":Landroid/app/servertransaction/PendingTransactionActions;
    .local v3, "client":Landroid/app/ClientTransactionHandler;
    .local v4, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v8, "pendingActions":Landroid/app/servertransaction/PendingTransactionActions;
    invoke-virtual/range {v3 .. v9}, Landroid/app/ClientTransactionHandler;->handlePauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V

    .line 62
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 63
    return-void
.end method

.method public greylist-max-o getTargetState()I
    .registers 2

    .line 67
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 127
    const/16 v0, 0x11

    .line 128
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 129
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    add-int/2addr v0, v2

    .line 130
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    add-int/2addr v1, v2

    .line 131
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    add-int/2addr v0, v2

    .line 132
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/PauseActivityItem;->mAutoEnteringPip:Z

    add-int/2addr v1, v2

    .line 133
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 5
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 73
    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    if-eqz v0, :cond_5

    .line 74
    return-void

    .line 77
    :cond_5
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/servertransaction/PauseActivityItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->activityPaused(Landroid/os/IBinder;)V

    .line 78
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PauseActivityItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",userLeaving="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",dontReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",autoEnteringPip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/PauseActivityItem;->mAutoEnteringPip:Z

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

    .line 85
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityLifecycleItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mFinished:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 87
    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mUserLeaving:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 88
    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mDontReport:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 89
    iget-boolean v0, p0, Landroid/app/servertransaction/PauseActivityItem;->mAutoEnteringPip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 90
    return-void
.end method
