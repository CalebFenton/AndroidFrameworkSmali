.class public final Landroid/telephony/ims/feature/ConnectionFailureInfo;
.super Ljava/lang/Object;
.source "ConnectionFailureInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/ConnectionFailureInfo$FailureReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/feature/ConnectionFailureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REASON_ACCESS_DENIED:I = 0x1

.field public static final whitelist REASON_NAS_FAILURE:I = 0x2

.field public static final whitelist REASON_NONE:I = 0x0

.field public static final whitelist REASON_NO_SERVICE:I = 0x7

.field public static final whitelist REASON_PDN_NOT_AVAILABLE:I = 0x8

.field public static final whitelist REASON_RACH_FAILURE:I = 0x3

.field public static final whitelist REASON_RF_BUSY:I = 0x9

.field public static final whitelist REASON_RLC_FAILURE:I = 0x4

.field public static final whitelist REASON_RRC_REJECT:I = 0x5

.field public static final whitelist REASON_RRC_TIMEOUT:I = 0x6

.field public static final whitelist REASON_UNSPECIFIED:I = 0xffff

.field private static final blacklist sReasonMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCauseCode:I

.field private final blacklist mReason:I

.field private final blacklist mWaitTimeMillis:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    .line 86
    sget-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "ACCESS_DENIED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "NAS_FAILURE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "RACH_FAILURE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "RLC_FAILURE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "RRC_REJECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "RRC_TIMEOUT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "NO_SERVICE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "PDN_NOT_AVAILABLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "RF_BUSY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    const v1, 0xffff

    const-string v2, "UNSPECIFIED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 181
    new-instance v0, Landroid/telephony/ims/feature/ConnectionFailureInfo$1;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ConnectionFailureInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "reason"    # I
    .param p2, "causeCode"    # I
    .param p3, "waitTimeMillis"    # I

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mReason:I

    .line 131
    iput p2, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mCauseCode:I

    .line 132
    iput p3, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mWaitTimeMillis:I

    .line 133
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mReason:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mCauseCode:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mWaitTimeMillis:I

    .line 117
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/feature/ConnectionFailureInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ConnectionFailureInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCauseCode()I
    .registers 2

    .line 148
    iget v0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mCauseCode:I

    return v0
.end method

.method public whitelist getReason()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mReason:I

    return v0
.end method

.method public whitelist getWaitTimeMillis()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mWaitTimeMillis:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 164
    sget-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    iget v1, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mReason:I

    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    .local v0, "reason":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionFailureInfo :: {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mCauseCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mWaitTimeMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 176
    iget v0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mCauseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mWaitTimeMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    return-void
.end method
