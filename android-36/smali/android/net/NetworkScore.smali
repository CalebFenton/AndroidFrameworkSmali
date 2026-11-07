.class public final Landroid/net/NetworkScore;
.super Ljava/lang/Object;
.source "NetworkScore.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkScore$Builder;,
        Landroid/net/NetworkScore$KeepConnectedReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkScore;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist KEEP_CONNECTED_FOR_HANDOVER:I = 0x1

.field public static final blacklist KEEP_CONNECTED_FOR_TEST:I = 0x2

.field public static final blacklist KEEP_CONNECTED_LOCAL_NETWORK:I = 0x3

.field public static final whitelist KEEP_CONNECTED_NONE:I = 0x0

.field public static final blacklist MAX_AGENT_MANAGED_POLICY:I = 0x3

.field public static final blacklist MIN_AGENT_MANAGED_POLICY:I = 0x1

.field public static final blacklist POLICY_EXITING:I = 0x3

.field public static final blacklist POLICY_TRANSPORT_PRIMARY:I = 0x2

.field public static final blacklist POLICY_YIELD_TO_BAD_WIFI:I = 0x1


# instance fields
.field private final blacklist mKeepConnectedReason:I

.field private final blacklist mLegacyInt:I

.field private final blacklist mPolicies:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 213
    new-instance v0, Landroid/net/NetworkScore$1;

    invoke-direct {v0}, Landroid/net/NetworkScore$1;-><init>()V

    sput-object v0, Landroid/net/NetworkScore;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IJI)V
    .registers 5
    .param p1, "legacyInt"    # I
    .param p2, "policies"    # J
    .param p4, "keepConnectedReason"    # I

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Landroid/net/NetworkScore;->mLegacyInt:I

    .line 107
    iput-wide p2, p0, Landroid/net/NetworkScore;->mPolicies:J

    .line 108
    iput p4, p0, Landroid/net/NetworkScore;->mKeepConnectedReason:I

    .line 109
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkScore;->mLegacyInt:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkScore;->mPolicies:J

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkScore;->mKeepConnectedReason:I

    .line 115
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/NetworkScore-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/NetworkScore;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getKeepConnectedReason()I
    .registers 2

    .line 129
    iget v0, p0, Landroid/net/NetworkScore;->mKeepConnectedReason:I

    return v0
.end method

.method public whitelist getLegacyInt()I
    .registers 2

    .line 122
    iget v0, p0, Landroid/net/NetworkScore;->mLegacyInt:I

    return v0
.end method

.method public blacklist getPolicies()J
    .registers 3

    .line 147
    iget-wide v0, p0, Landroid/net/NetworkScore;->mPolicies:J

    return-wide v0
.end method

.method public blacklist hasPolicy(I)Z
    .registers 6
    .param p1, "policy"    # I

    .line 139
    iget-wide v0, p0, Landroid/net/NetworkScore;->mPolicies:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isExiting()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 193
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/net/NetworkScore;->hasPolicy(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isTransportPrimary()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 176
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/net/NetworkScore;->hasPolicy(I)Z

    move-result v0

    return v0
.end method

.method public blacklist shouldYieldToBadWifi()Z
    .registers 2

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/NetworkScore;->hasPolicy(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Score(Policies\u00a0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkScore;->mPolicies:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 203
    iget v0, p0, Landroid/net/NetworkScore;->mLegacyInt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-wide v0, p0, Landroid/net/NetworkScore;->mPolicies:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    iget v0, p0, Landroid/net/NetworkScore;->mKeepConnectedReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    return-void
.end method
