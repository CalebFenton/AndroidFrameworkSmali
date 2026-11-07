.class public Landroid/app/servertransaction/NewIntentItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "NewIntentItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/NewIntentItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-r mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mResume:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Landroid/app/servertransaction/NewIntentItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/NewIntentItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/NewIntentItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Ljava/util/List;Z)V
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p3, "resume"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;Z)V"
        }
    .end annotation

    .line 55
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/IBinder;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/servertransaction/NewIntentItem;->mIntents:Ljava/util/List;

    .line 57
    iput-boolean p3, p0, Landroid/app/servertransaction/NewIntentItem;->mResume:Z

    .line 58
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/NewIntentItem;->mResume:Z

    .line 88
    sget-object v0, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/NewIntentItem;->mIntents:Ljava/util/List;

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/NewIntentItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/NewIntentItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 104
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 105
    return v0

    .line 107
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 108
    return v2

    .line 110
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/NewIntentItem;

    .line 111
    .local v1, "other":Landroid/app/servertransaction/NewIntentItem;
    iget-boolean v3, p0, Landroid/app/servertransaction/NewIntentItem;->mResume:Z

    iget-boolean v4, v1, Landroid/app/servertransaction/NewIntentItem;->mResume:Z

    if-ne v3, v4, :cond_20

    iget-object v3, p0, Landroid/app/servertransaction/NewIntentItem;->mIntents:Ljava/util/List;

    iget-object v4, v1, Landroid/app/servertransaction/NewIntentItem;->mIntents:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 7
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 68
    const-string v0, "activityNewIntent"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 69
    iget-object v0, p0, Landroid/app/servertransaction/NewIntentItem;->mIntents:Ljava/util/List;

    invoke-virtual {p1, p2, v0}, Landroid/app/ClientTransactionHandler;->handleNewIntent(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 70
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 71
    return-void
.end method

.method public blacklist getPostExecutionState()I
    .registers 2

    .line 62
    iget-boolean v0, p0, Landroid/app/servertransaction/NewIntentItem;->mResume:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    goto :goto_7

    :cond_6
    const/4 v0, -0x1

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 116
    const/16 v0, 0x11

    .line 117
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 118
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/app/servertransaction/NewIntentItem;->mResume:Z

    add-int/2addr v0, v2

    .line 119
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/NewIntentItem;->mIntents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 120
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewIntentItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",intents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/NewIntentItem;->mIntents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",resume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/servertransaction/NewIntentItem;->mResume:Z

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

    .line 78
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    iget-boolean v0, p0, Landroid/app/servertransaction/NewIntentItem;->mResume:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 80
    iget-object v0, p0, Landroid/app/servertransaction/NewIntentItem;->mIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 81
    return-void
.end method
