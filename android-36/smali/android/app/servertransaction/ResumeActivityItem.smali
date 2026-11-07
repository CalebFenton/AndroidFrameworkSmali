.class public Landroid/app/servertransaction/ResumeActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;
.source "ResumeActivityItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ResumeActivityItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mIsForward:Z

.field private final greylist-max-o mProcState:I

.field private final blacklist mShouldSendCompatFakeFocus:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 110
    new-instance v0, Landroid/app/servertransaction/ResumeActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ResumeActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ResumeActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;IZZ)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "procState"    # I
    .param p3, "isForward"    # Z
    .param p4, "shouldSendCompatFakeFocus"    # Z

    .line 56
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>(Landroid/os/IBinder;)V

    .line 57
    iput p2, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    .line 58
    iput-boolean p3, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    .line 59
    iput-boolean p4, p0, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;ZZ)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "isForward"    # Z
    .param p3, "shouldSendCompatFakeFocus"    # Z

    .line 50
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/IBinder;IZZ)V

    .line 52
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 104
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>(Landroid/os/Parcel;)V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    .line 108
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ResumeActivityItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 123
    return v0

    .line 125
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 126
    return v2

    .line 128
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/ResumeActivityItem;

    .line 129
    .local v1, "other":Landroid/app/servertransaction/ResumeActivityItem;
    iget v3, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    iget v4, v1, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    if-ne v3, v4, :cond_22

    iget-boolean v3, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    if-ne v3, v4, :cond_22

    iget-boolean v3, p0, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 13
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 72
    const-string v0, "activityResume"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 73
    iget-boolean v6, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    iget-boolean v7, p0, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    const-string v8, "RESUME_ACTIVITY"

    const/4 v5, 0x1

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "client":Landroid/app/ClientTransactionHandler;
    .end local p2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v3, "client":Landroid/app/ClientTransactionHandler;
    .local v4, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-virtual/range {v3 .. v8}, Landroid/app/ClientTransactionHandler;->handleResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLjava/lang/String;)V

    .line 75
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 76
    return-void
.end method

.method public greylist-max-o getTargetState()I
    .registers 2

    .line 88
    const/4 v0, 0x3

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 136
    const/16 v0, 0x11

    .line 137
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 138
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    add-int/2addr v0, v2

    .line 139
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    add-int/2addr v1, v2

    .line 140
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    add-int/2addr v0, v2

    .line 141
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 6
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 82
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/servertransaction/ResumeActivityItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 83
    invoke-virtual {p0}, Landroid/app/servertransaction/ResumeActivityItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ClientTransactionHandler;->isHandleSplashScreenExit(Landroid/os/IBinder;)Z

    move-result v2

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->activityResumed(Landroid/os/IBinder;Z)V

    .line 84
    return-void
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;

    .line 64
    iget v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 65
    iget v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/ClientTransactionHandler;->updateProcessState(IZ)V

    .line 67
    :cond_b
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeActivityItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",procState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isForward="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shouldSendCompatFakeFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

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

    .line 96
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityLifecycleItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    iget v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mProcState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-boolean v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mIsForward:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 99
    iget-boolean v0, p0, Landroid/app/servertransaction/ResumeActivityItem;->mShouldSendCompatFakeFocus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 100
    return-void
.end method
