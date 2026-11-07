.class public final Landroid/app/servertransaction/PipStateTransactionItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "PipStateTransactionItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/PipStateTransactionItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPipState:Landroid/app/PictureInPictureUiState;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/app/servertransaction/PipStateTransactionItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/PipStateTransactionItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/PipStateTransactionItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/app/PictureInPictureUiState;)V
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "pipState"    # Landroid/app/PictureInPictureUiState;

    .line 41
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/IBinder;)V

    .line 42
    iput-object p2, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    .line 43
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 63
    sget-object v0, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureUiState;

    iput-object v0, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/PipStateTransactionItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/PipStateTransactionItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 78
    if-ne p0, p1, :cond_4

    .line 79
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 82
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/app/servertransaction/PipStateTransactionItem;

    .line 85
    .local v0, "other":Landroid/app/servertransaction/PipStateTransactionItem;
    iget-object v1, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    iget-object v2, v0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 5
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 48
    iget-object v0, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    invoke-virtual {p1, p2, v0}, Landroid/app/ClientTransactionHandler;->handlePictureInPictureStateChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/PictureInPictureUiState;)V

    .line 49
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 90
    const/16 v0, 0x11

    .line 91
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 92
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 93
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PipStateTransactionItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 56
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 57
    iget-object v0, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    invoke-virtual {v0, p1, p2}, Landroid/app/PictureInPictureUiState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    return-void
.end method
