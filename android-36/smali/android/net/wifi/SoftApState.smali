.class public final Landroid/net/wifi/SoftApState;
.super Ljava/lang/Object;
.source "SoftApState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/SoftApState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mFailureReason:I

.field final blacklist mIface:Ljava/lang/String;

.field final blacklist mState:I

.field final blacklist mTetheringRequest:Landroid/net/TetheringManager$TetheringRequest;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 102
    new-instance v0, Landroid/net/wifi/SoftApState$1;

    invoke-direct {v0}, Landroid/net/wifi/SoftApState$1;-><init>()V

    sput-object v0, Landroid/net/wifi/SoftApState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "failureReason"    # I
    .param p3, "tetheringRequest"    # Landroid/net/TetheringManager$TetheringRequest;
    .param p4, "iface"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroid/net/wifi/SoftApState;->mState:I

    .line 67
    iput p2, p0, Landroid/net/wifi/SoftApState;->mFailureReason:I

    .line 68
    iput-object p3, p0, Landroid/net/wifi/SoftApState;->mTetheringRequest:Landroid/net/TetheringManager$TetheringRequest;

    .line 69
    iput-object p4, p0, Landroid/net/wifi/SoftApState;->mIface:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/SoftApState;->mState:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/SoftApState;->mFailureReason:I

    .line 75
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 77
    const-class v0, Landroid/net/TetheringManager$TetheringRequest;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager$TetheringRequest;

    iput-object v0, p0, Landroid/net/wifi/SoftApState;->mTetheringRequest:Landroid/net/TetheringManager$TetheringRequest;

    goto :goto_27

    .line 80
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/SoftApState;->mTetheringRequest:Landroid/net/TetheringManager$TetheringRequest;

    .line 82
    :goto_27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/SoftApState;->mIface:Ljava/lang/String;

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/SoftApState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/SoftApState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 189
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 190
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/SoftApState;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    move-object v1, p1

    check-cast v1, Landroid/net/wifi/SoftApState;

    .line 191
    .local v1, "stateInfo":Landroid/net/wifi/SoftApState;
    iget v3, p0, Landroid/net/wifi/SoftApState;->mState:I

    iget v4, v1, Landroid/net/wifi/SoftApState;->mState:I

    if-ne v3, v4, :cond_2d

    iget v3, p0, Landroid/net/wifi/SoftApState;->mFailureReason:I

    iget v4, v1, Landroid/net/wifi/SoftApState;->mFailureReason:I

    if-ne v3, v4, :cond_2d

    iget-object v3, p0, Landroid/net/wifi/SoftApState;->mTetheringRequest:Landroid/net/TetheringManager$TetheringRequest;

    iget-object v4, v1, Landroid/net/wifi/SoftApState;->mTetheringRequest:Landroid/net/TetheringManager$TetheringRequest;

    .line 192
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Landroid/net/wifi/SoftApState;->mIface:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/SoftApState;->mIface:Ljava/lang/String;

    .line 193
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v2

    .line 191
    :goto_2e
    return v0

    .line 190
    .end local v1    # "stateInfo":Landroid/net/wifi/SoftApState;
    :cond_2f
    return v2
.end method

.method public whitelist getFailureReason()I
    .registers 4

    .line 141
    iget v0, p0, Landroid/net/wifi/SoftApState;->mState:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_b

    .line 145
    invoke-virtual {p0}, Landroid/net/wifi/SoftApState;->getFailureReasonInternal()I

    move-result v0

    return v0

    .line 142
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called getFailureReason() when state is not WIFI_AP_STATE_FAILED. Actual state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/SoftApState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getFailureReasonInternal()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/net/wifi/SoftApState;->mFailureReason:I

    return v0
.end method

.method public whitelist getIface()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/net/wifi/SoftApState;->mIface:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/net/wifi/SoftApState;->mState:I

    return v0
.end method

.method public whitelist getTetheringRequest()Landroid/net/TetheringManager$TetheringRequest;
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/net/wifi/SoftApState;->mTetheringRequest:Landroid/net/TetheringManager$TetheringRequest;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 198
    iget v0, p0, Landroid/net/wifi/SoftApState;->mState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/SoftApState;->mFailureReason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApState;->mTetheringRequest:Landroid/net/TetheringManager$TetheringRequest;

    iget-object v3, p0, Landroid/net/wifi/SoftApState;->mIface:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftApState{mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/SoftApState;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFailureReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/SoftApState;->mFailureReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTetheringRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/SoftApState;->mTetheringRequest:Landroid/net/TetheringManager$TetheringRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIface=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/SoftApState;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    iget v0, p0, Landroid/net/wifi/SoftApState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Landroid/net/wifi/SoftApState;->mFailureReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 91
    iget-object v0, p0, Landroid/net/wifi/SoftApState;->mTetheringRequest:Landroid/net/TetheringManager$TetheringRequest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 93
    :cond_15
    iget-object v0, p0, Landroid/net/wifi/SoftApState;->mIface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return-void
.end method
