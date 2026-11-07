.class public final Landroid/service/gatekeeper/GateKeeperResponse;
.super Ljava/lang/Object;
.source "GateKeeperResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/gatekeeper/GateKeeperResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

.field public static final blacklist RESPONSE_ERROR:I = -0x1

.field public static final blacklist RESPONSE_OK:I = 0x0

.field public static final blacklist RESPONSE_RETRY:I = 0x1


# instance fields
.field private blacklist mPayload:[B

.field private final blacklist mResponseCode:I

.field private blacklist mShouldReEnroll:Z

.field private blacklist mTimeout:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateRetryResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;
    .registers 1

    invoke-static {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->createRetryResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->createGenericResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    sput-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    .line 71
    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse$1;

    invoke-direct {v0}, Landroid/service/gatekeeper/GateKeeperResponse$1;-><init>()V

    sput-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 2
    .param p1, "responseCode"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    .line 45
    return-void
.end method

.method public static blacklist createGenericResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;
    .registers 2
    .param p0, "responseCode"    # I

    .line 49
    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse;

    invoke-direct {v0, p0}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    return-object v0
.end method

.method public static blacklist createOkResponse([BZ)Landroid/service/gatekeeper/GateKeeperResponse;
    .registers 4
    .param p0, "payload"    # [B
    .param p1, "shouldReEnroll"    # Z

    .line 60
    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    .line 61
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    iput-object p0, v0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    .line 62
    iput-boolean p1, v0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    .line 63
    return-object v0
.end method

.method private static blacklist createRetryResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;
    .registers 3
    .param p0, "timeout"    # I

    .line 53
    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    .line 54
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    iput p0, v0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    .line 55
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPayload()[B
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    return-object v0
.end method

.method public blacklist getResponseCode()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    return v0
.end method

.method public blacklist getShouldReEnroll()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    return v0
.end method

.method public blacklist getTimeout()I
    .registers 2

    .line 122
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 103
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 105
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 106
    :cond_10
    iget v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    if-nez v0, :cond_32

    .line 107
    iget-boolean v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    array-length v0, v0

    if-lez v0, :cond_2e

    .line 109
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_32

    .line 112
    :cond_2e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    :cond_32
    :goto_32
    return-void
.end method
