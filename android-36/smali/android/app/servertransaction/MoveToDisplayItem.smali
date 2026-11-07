.class public Landroid/app/servertransaction/MoveToDisplayItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "MoveToDisplayItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/MoveToDisplayItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field private final greylist-max-o mConfiguration:Landroid/content/res/Configuration;

.field private final greylist-max-o mTargetDisplayId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Landroid/app/servertransaction/MoveToDisplayItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/MoveToDisplayItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/MoveToDisplayItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;ILandroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V
    .registers 6
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "targetDisplayId"    # I
    .param p3, "configuration"    # Landroid/content/res/Configuration;
    .param p4, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;

    .line 53
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/IBinder;)V

    .line 54
    iput p2, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    .line 55
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 56
    new-instance v0, Landroid/window/ActivityWindowInfo;

    invoke-direct {v0, p4}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    iput-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 57
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 89
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    .line 91
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 92
    sget-object v0, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ActivityWindowInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ActivityWindowInfo;

    iput-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 93
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/MoveToDisplayItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/MoveToDisplayItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 108
    return v0

    .line 110
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 111
    return v2

    .line 113
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/MoveToDisplayItem;

    .line 114
    .local v1, "other":Landroid/app/servertransaction/MoveToDisplayItem;
    iget v3, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    iget v4, v1, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, v1, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 115
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    iget-object v4, v1, Landroid/app/servertransaction/MoveToDisplayItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 116
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 114
    :goto_2b
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 9
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 70
    const-string v0, "activityMovedToDisplay"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 71
    iget-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    iget-object v4, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, p2, v0, v3, v4}, Landroid/app/ClientTransactionHandler;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;)V

    .line 73
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 74
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 121
    const/16 v0, 0x11

    .line 122
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 123
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    add-int/2addr v0, v2

    .line 124
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 125
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 126
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;

    .line 61
    iget-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/servertransaction/MoveToDisplayItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, v1}, Landroid/app/ClientTransactionHandler;->updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 65
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoveToDisplayItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",targetDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",activityWindowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

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

    .line 81
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    iget v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 84
    iget-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 85
    return-void
.end method
