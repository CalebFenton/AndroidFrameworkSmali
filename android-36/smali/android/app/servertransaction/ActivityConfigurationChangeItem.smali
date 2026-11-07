.class public Landroid/app/servertransaction/ActivityConfigurationChangeItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "ActivityConfigurationChangeItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ActivityConfigurationChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field private final greylist-max-o mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 92
    new-instance v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ActivityConfigurationChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;

    .line 52
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/IBinder;)V

    .line 53
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 54
    new-instance v0, Landroid/window/ActivityWindowInfo;

    invoke-direct {v0, p3}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    iput-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 55
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 88
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 89
    sget-object v0, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ActivityWindowInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ActivityWindowInfo;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ActivityConfigurationChangeItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 106
    return v0

    .line 108
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 109
    return v2

    .line 111
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    .line 112
    .local v1, "other":Landroid/app/servertransaction/ActivityConfigurationChangeItem;
    iget-object v3, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, v1, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    iget-object v4, v1, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 113
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    .line 112
    :goto_25
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 9
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 69
    const-string v0, "activityConfigChanged"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 70
    iget-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v3, -0x1

    iget-object v4, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, p2, v0, v3, v4}, Landroid/app/ClientTransactionHandler;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;)V

    .line 72
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 73
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 118
    const/16 v0, 0x11

    .line 119
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 120
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 121
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 122
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;

    .line 59
    iget-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, v1}, Landroid/app/ClientTransactionHandler;->updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 63
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityConfigurationChange{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",activityWindowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

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

    .line 80
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 81
    iget-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 82
    iget-object v0, p0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 83
    return-void
.end method
