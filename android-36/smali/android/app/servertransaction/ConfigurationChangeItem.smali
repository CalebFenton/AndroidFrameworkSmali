.class public Landroid/app/servertransaction/ConfigurationChangeItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "ConfigurationChangeItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ConfigurationChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mDeviceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/app/servertransaction/ConfigurationChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ConfigurationChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ConfigurationChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/Configuration;I)V
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "deviceId"    # I

    .line 42
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 43
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 44
    iput p2, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    .line 45
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 70
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ConfigurationChangeItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ConfigurationChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 87
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 88
    return v0

    .line 90
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 93
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/ConfigurationChangeItem;

    .line 94
    .local v2, "other":Landroid/app/servertransaction/ConfigurationChangeItem;
    iget-object v3, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, v2, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget v3, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    iget v4, v2, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    .line 91
    .end local v2    # "other":Landroid/app/servertransaction/ConfigurationChangeItem;
    :cond_28
    :goto_28
    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 5
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 56
    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    invoke-virtual {p1, v0, v1}, Landroid/app/ClientTransactionHandler;->handleConfigurationChanged(Landroid/content/res/Configuration;I)V

    .line 57
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 100
    const/16 v0, 0x11

    .line 101
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    add-int/2addr v1, v2

    .line 102
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 103
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .registers 3
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;

    .line 49
    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;)V

    .line 50
    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 51
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationChangeItem{deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

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

    .line 64
    iget-object v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 65
    iget v0, p0, Landroid/app/servertransaction/ConfigurationChangeItem;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void
.end method
