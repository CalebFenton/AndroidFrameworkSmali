.class public Landroid/app/servertransaction/ActivityRelaunchItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "ActivityRelaunchItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ActivityRelaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityRelaunchItem"


# instance fields
.field private greylist-max-o mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

.field private final blacklist mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field private final greylist-max-o mConfig:Landroid/util/MergedConfiguration;

.field private final greylist-max-o mConfigChanges:I

.field private final greylist-max-o mPendingNewIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPendingResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPreserveWindow:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 142
    new-instance v0, Landroid/app/servertransaction/ActivityRelaunchItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ActivityRelaunchItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ActivityRelaunchItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;ZLandroid/window/ActivityWindowInfo;)V
    .registers 10
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "config"    # Landroid/util/MergedConfiguration;
    .param p6, "preserveWindow"    # Z
    .param p7, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;I",
            "Landroid/util/MergedConfiguration;",
            "Z",
            "Landroid/window/ActivityWindowInfo;",
            ")V"
        }
    .end annotation

    .line 78
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/IBinder;)V

    .line 79
    const/4 v0, 0x0

    if-eqz p2, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    iput-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    .line 80
    nop

    .line 81
    if-eqz p3, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_17
    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    .line 82
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0, p5}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    .line 83
    new-instance v0, Landroid/window/ActivityWindowInfo;

    invoke-direct {v0, p7}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 84
    iput p4, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    .line 85
    iput-boolean p6, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    .line 86
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 133
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 134
    sget-object v0, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    .line 135
    sget-object v0, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    .line 136
    sget-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MergedConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MergedConfiguration;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    .line 137
    sget-object v0, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ActivityWindowInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ActivityWindowInfo;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    .line 140
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ActivityRelaunchItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityRelaunchItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 155
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 156
    return v0

    .line 158
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 159
    return v2

    .line 161
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/ActivityRelaunchItem;

    .line 162
    .local v1, "other":Landroid/app/servertransaction/ActivityRelaunchItem;
    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    iget-object v4, v1, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    iget-object v4, v1, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    .line 163
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    iget-object v4, v1, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    .line 164
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    iget-object v4, v1, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 165
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    iget v4, v1, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    if-ne v3, v4, :cond_44

    goto :goto_45

    :cond_44
    move v0, v2

    .line 162
    :goto_45
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 7
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 101
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

    if-nez v0, :cond_5

    .line 103
    return-void

    .line 105
    :cond_5
    const-string v0, "activityRestart"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 106
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {p1, v0, p3}, Landroid/app/ClientTransactionHandler;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 107
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 108
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 172
    const/16 v0, 0x11

    .line 173
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 174
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 175
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 176
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 177
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 178
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    add-int/2addr v0, v2

    .line 179
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    add-int/2addr v1, v2

    .line 180
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 113
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/ActivityRelaunchItem;->getActivityClientRecord(Landroid/app/ClientTransactionHandler;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    .line 114
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->reportRelaunch(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 115
    return-void
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .registers 11
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;

    .line 91
    invoke-virtual {p1}, Landroid/app/ClientTransactionHandler;->isExecutingLocalTransaction()Z

    move-result v0

    if-nez v0, :cond_b

    .line 92
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-static {v0}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/util/MergedConfiguration;)V

    .line 94
    :cond_b
    invoke-virtual {p0}, Landroid/app/servertransaction/ActivityRelaunchItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    iget-object v4, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    iget v5, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    iget-object v6, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    iget-boolean v7, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    iget-object v8, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    move-object v1, p1

    .end local p1    # "client":Landroid/app/ClientTransactionHandler;
    .local v1, "client":Landroid/app/ClientTransactionHandler;
    invoke-virtual/range {v1 .. v8}, Landroid/app/ClientTransactionHandler;->prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;ZLandroid/window/ActivityWindowInfo;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object p1

    iput-object p1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 96
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityRelaunchItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pendingResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pendingNewIntents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",activityWindowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",configChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",preserveWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

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

    .line 122
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 123
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 124
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 125
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 126
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 127
    iget v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-boolean v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 129
    return-void
.end method
