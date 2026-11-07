.class public Landroid/app/servertransaction/TopResumedActivityChangeItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "TopResumedActivityChangeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/TopResumedActivityChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mOnTop:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Landroid/app/servertransaction/TopResumedActivityChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/TopResumedActivityChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "onTop"    # Z

    .line 40
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/IBinder;)V

    .line 41
    iput-boolean p2, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    .line 42
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    .line 81
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/TopResumedActivityChangeItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/TopResumedActivityChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 96
    return v0

    .line 98
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 99
    return v2

    .line 101
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/TopResumedActivityChangeItem;

    .line 102
    .local v1, "other":Landroid/app/servertransaction/TopResumedActivityChangeItem;
    iget-boolean v3, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    if-ne v3, v4, :cond_16

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 8
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 47
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "topResumedActivityChangeItem"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 48
    iget-boolean v3, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    invoke-virtual {p1, p2, v3, v2}, Landroid/app/ClientTransactionHandler;->handleTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 49
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 50
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 107
    const/16 v0, 0x11

    .line 108
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 109
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    add-int/2addr v0, v2

    .line 110
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 55
    iget-boolean v0, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    if-eqz v0, :cond_5

    .line 56
    return-void

    .line 65
    :cond_5
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityClient;->activityTopResumedStateLost()V

    .line 66
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopResumedActivityChangeItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",onTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

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

    .line 73
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    iget-boolean v0, p0, Landroid/app/servertransaction/TopResumedActivityChangeItem;->mOnTop:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 75
    return-void
.end method
