.class public Landroid/app/servertransaction/TransferSplashScreenViewStateItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "TransferSplashScreenViewStateItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/TransferSplashScreenViewStateItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

.field private final blacklist mStartingWindowLeash:Landroid/view/SurfaceControl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    .param p3, "startingWindowLeash"    # Landroid/view/SurfaceControl;

    .line 46
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/IBinder;)V

    .line 47
    iput-object p2, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 48
    iput-object p3, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    .line 49
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 71
    sget-object v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    iput-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 72
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/TransferSplashScreenViewStateItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 89
    return v0

    .line 91
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 92
    return v2

    .line 94
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;

    .line 95
    .local v1, "other":Landroid/app/servertransaction/TransferSplashScreenViewStateItem;
    iget-object v3, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    iget-object v4, v1, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    iget-object v4, v1, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    .line 96
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    .line 95
    :goto_25
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 6
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 55
    iget-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    iget-object v1, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/ClientTransactionHandler;->handleAttachSplashScreenView(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V

    .line 56
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 101
    const/16 v0, 0x11

    .line 102
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 103
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 104
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 105
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransferSplashScreenViewStateItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",splashScreenViewParcelable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startingWindowLeash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

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

    .line 63
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    iget-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mSplashScreenViewParcelable:Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 65
    iget-object v0, p0, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->mStartingWindowLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 66
    return-void
.end method
