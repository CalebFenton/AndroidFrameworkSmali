.class public Landroid/app/servertransaction/RefreshCallbackItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "RefreshCallbackItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/RefreshCallbackItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPostExecutionState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 124
    new-instance v0, Landroid/app/servertransaction/RefreshCallbackItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/RefreshCallbackItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/RefreshCallbackItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;I)V
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "postExecutionState"    # I

    .line 58
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/IBinder;)V

    .line 59
    iput p2, p0, Landroid/app/servertransaction/RefreshCallbackItem;->mPostExecutionState:I

    .line 60
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/RefreshCallbackItem;->mPostExecutionState:I

    .line 96
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/RefreshCallbackItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/RefreshCallbackItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 101
    return v0

    .line 103
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 104
    return v2

    .line 106
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/RefreshCallbackItem;

    .line 107
    .local v1, "other":Landroid/app/servertransaction/RefreshCallbackItem;
    iget v3, p0, Landroid/app/servertransaction/RefreshCallbackItem;->mPostExecutionState:I

    iget v4, v1, Landroid/app/servertransaction/RefreshCallbackItem;->mPostExecutionState:I

    if-ne v3, v4, :cond_16

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 64
    return-void
.end method

.method public blacklist getPostExecutionState()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/app/servertransaction/RefreshCallbackItem;->mPostExecutionState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 112
    const/16 v0, 0x11

    .line 113
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 114
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/servertransaction/RefreshCallbackItem;->mPostExecutionState:I

    add-int/2addr v0, v2

    .line 115
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/RefreshCallbackItem;->getActivityClientRecord(Landroid/app/ClientTransactionHandler;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    .line 70
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->reportRefresh(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 71
    return-void
.end method

.method blacklist shouldHaveDefinedPreExecutionState()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefreshCallbackItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPostExecutionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/RefreshCallbackItem;->mPostExecutionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 88
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    iget v0, p0, Landroid/app/servertransaction/RefreshCallbackItem;->mPostExecutionState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void
.end method
