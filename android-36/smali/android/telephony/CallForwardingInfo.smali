.class public final Landroid/telephony/CallForwardingInfo;
.super Ljava/lang/Object;
.source "CallForwardingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CallForwardingInfo$CallForwardingReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CallForwardingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REASON_ALL:I = 0x4

.field public static final whitelist REASON_ALL_CONDITIONAL:I = 0x5

.field public static final whitelist REASON_BUSY:I = 0x1

.field public static final whitelist REASON_NOT_REACHABLE:I = 0x3

.field public static final whitelist REASON_NO_REPLY:I = 0x2

.field public static final whitelist REASON_UNCONDITIONAL:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "CallForwardingInfo"


# instance fields
.field private blacklist mEnabled:Z

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mReason:I

.field private blacklist mTimeSeconds:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 237
    new-instance v0, Landroid/telephony/CallForwardingInfo$1;

    invoke-direct {v0}, Landroid/telephony/CallForwardingInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CallForwardingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    .line 209
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CallForwardingInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CallForwardingInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(ZILjava/lang/String;I)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean p1, p0, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    .line 137
    iput p2, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    .line 138
    iput-object p3, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    .line 139
    iput p4, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 216
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 218
    :cond_4
    instance-of v1, p1, Landroid/telephony/CallForwardingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 219
    return v2

    .line 222
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/CallForwardingInfo;

    .line 223
    .local v1, "other":Landroid/telephony/CallForwardingInfo;
    iget-boolean v3, p0, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    iget-boolean v4, v1, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    if-ne v3, v4, :cond_26

    iget v3, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    iget v4, v1, Landroid/telephony/CallForwardingInfo;->mReason:I

    if-ne v3, v4, :cond_26

    iget v3, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    iget v4, v1, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0
.end method

.method public whitelist getNumber()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getReason()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    return v0
.end method

.method public whitelist getTimeoutSeconds()I
    .registers 2

    .line 185
    iget v0, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 234
    iget-boolean v0, p0, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    iget v2, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CallForwardingInfo: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeSec= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds, number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    .line 258
    const-string v2, "CallForwardingInfo"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 198
    iget-object v0, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-boolean v0, p0, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 200
    iget v0, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return-void
.end method
