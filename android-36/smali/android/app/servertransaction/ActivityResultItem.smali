.class public Landroid/app/servertransaction/ActivityResultItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "ActivityResultItem.java"


# static fields
.field public static final blacklist CALL_ACTIVITY_RESULT_BEFORE_RESUME:J = 0x4aaaeccL

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ActivityResultItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-r mResultInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Landroid/app/servertransaction/ActivityResultItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ActivityResultItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ActivityResultItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Ljava/util/List;)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p2, "resultInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/IBinder;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    .line 66
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 93
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 95
    sget-object v0, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    .line 96
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ActivityResultItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityResultItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 111
    if-ne p0, p1, :cond_4

    .line 112
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 115
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/app/servertransaction/ActivityResultItem;

    .line 118
    .local v0, "other":Landroid/app/servertransaction/ActivityResultItem;
    iget-object v1, p0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    iget-object v2, v0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 8
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 77
    const-string v0, "activityDeliverResult"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 78
    iget-object v0, p0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    const-string v3, "ACTIVITY_RESULT"

    invoke-virtual {p1, p2, v0, v3}, Landroid/app/ClientTransactionHandler;->handleSendResult(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    .line 79
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 80
    return-void
.end method

.method public blacklist getPostExecutionState()I
    .registers 3

    .line 70
    const-wide/32 v0, 0x4aaaecc

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 71
    const/4 v0, 0x3

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    .line 70
    :goto_c
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 123
    const/16 v0, 0x11

    .line 124
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 125
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 126
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityResultItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",resultInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 87
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    iget-object v0, p0, Landroid/app/servertransaction/ActivityResultItem;->mResultInfoList:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 89
    return-void
.end method
