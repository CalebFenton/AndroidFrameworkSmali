.class public final Lcom/android/internal/widget/VerifyCredentialResponse;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/VerifyCredentialResponse$Builder;,
        Lcom/android/internal/widget/VerifyCredentialResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/VerifyCredentialResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final greylist-max-o OK:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final greylist-max-o RESPONSE_ERROR:I = -0x1

.field public static final greylist-max-o RESPONSE_OK:I = 0x0

.field public static final greylist-max-o RESPONSE_RETRY:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "VerifyCredentialResponse"


# instance fields
.field private final blacklist mGatekeeperHAT:[B

.field private final blacklist mGatekeeperPasswordHandle:J

.field private final greylist-max-o mResponseCode:I

.field private final greylist-max-o mTimeout:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    .line 45
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 46
    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 54
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$1;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(II[BJ)V
    .registers 6
    .param p1, "responseCode"    # I
    .param p2, "timeout"    # I
    .param p3, "gatekeeperHAT"    # [B
    .param p4, "gatekeeperPasswordHandle"    # J

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 130
    iput p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    .line 131
    iput-object p3, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    .line 132
    iput-wide p4, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    .line 133
    return-void
.end method

.method synthetic constructor blacklist <init>(II[BJLcom/android/internal/widget/VerifyCredentialResponse-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-void
.end method

.method public static blacklist fromError()Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 6

    .line 121
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-object v0
.end method

.method public static greylist-max-o fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5
    .param p0, "gateKeeperResponse"    # Landroid/service/gatekeeper/GateKeeperResponse;

    .line 187
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v0

    .line 188
    .local v0, "responseCode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 189
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    return-object v1

    .line 190
    :cond_10
    if-nez v0, :cond_33

    .line 191
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 192
    .local v1, "token":[B
    if-nez v1, :cond_25

    .line 194
    const-string v2, "VerifyCredentialResponse"

    const-string/jumbo v3, "verifyChallenge response had no associated payload"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    return-object v2

    .line 197
    :cond_25
    new-instance v2, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperHAT([B)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    return-object v2

    .line 200
    .end local v1    # "token":[B
    :cond_33
    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7
    .param p0, "timeout"    # I

    .line 110
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    move v2, p0

    .end local p0    # "timeout":I
    .local v2, "timeout":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-object v0
.end method


# virtual methods
.method public blacklist containsGatekeeperPasswordHandle()Z
    .registers 5

    .line 163
    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGatekeeperHAT()[B
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    return-object v0
.end method

.method public blacklist getGatekeeperPasswordHandle()J
    .registers 3

    .line 159
    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    return-wide v0
.end method

.method public greylist-max-o getResponseCode()I
    .registers 2

    .line 171
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    return v0
.end method

.method public greylist-max-o getTimeout()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    return v0
.end method

.method public blacklist isMatched()Z
    .registers 2

    .line 175
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7

    .line 136
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iget v2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GK HAT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    move v1, v2

    goto :goto_20

    :cond_1f
    move v1, v3

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GK PW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_33

    goto :goto_34

    :cond_33
    move v2, v3

    :goto_34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 142
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 145
    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    return-void
.end method
