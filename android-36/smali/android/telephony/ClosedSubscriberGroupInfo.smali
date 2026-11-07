.class public final Landroid/telephony/ClosedSubscriberGroupInfo;
.super Ljava/lang/Object;
.source "ClosedSubscriberGroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ClosedSubscriberGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ClosedSubscriberGroupInfo"


# instance fields
.field private final blacklist mCsgIdentity:I

.field private final blacklist mCsgIndicator:Z

.field private final blacklist mHomeNodebName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 133
    new-instance v0, Landroid/telephony/ClosedSubscriberGroupInfo$1;

    invoke-direct {v0}, Landroid/telephony/ClosedSubscriberGroupInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ClosedSubscriberGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/telephony/ClosedSubscriberGroupInfo;-><init>(ZLjava/lang/String;I)V

    .line 122
    return-void
.end method

.method public constructor blacklist <init>(ZLjava/lang/String;I)V
    .registers 5
    .param p1, "csgIndicator"    # Z
    .param p2, "homeNodebName"    # Ljava/lang/String;
    .param p3, "csgIdentity"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIndicator:Z

    .line 43
    if-nez p2, :cond_a

    const-string v0, ""

    goto :goto_b

    :cond_a
    move-object v0, p2

    :goto_b
    iput-object v0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mHomeNodebName:Ljava/lang/String;

    .line 44
    iput p3, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIdentity:I

    .line 45
    return-void
.end method

.method protected static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/ClosedSubscriberGroupInfo;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 148
    new-instance v0, Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-direct {v0, p0}, Landroid/telephony/ClosedSubscriberGroupInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 94
    instance-of v0, p1, Landroid/telephony/ClosedSubscriberGroupInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 95
    return v1

    .line 98
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 99
    .local v0, "o":Landroid/telephony/ClosedSubscriberGroupInfo;
    iget-boolean v2, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIndicator:Z

    iget-boolean v3, v0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIndicator:Z

    if-ne v2, v3, :cond_20

    iget-object v2, v0, Landroid/telephony/ClosedSubscriberGroupInfo;->mHomeNodebName:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mHomeNodebName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget v2, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIdentity:I

    iget v3, v0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIdentity:I

    if-ne v2, v3, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public whitelist getCsgIdentity()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIdentity:I

    return v0
.end method

.method public whitelist getCsgIndicator()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIndicator:Z

    return v0
.end method

.method public whitelist getHomeNodebName()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mHomeNodebName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 89
    iget-boolean v0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIndicator:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mHomeNodebName:Ljava/lang/String;

    iget v2, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIdentity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClosedSubscriberGroupInfo:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    const-string v1, " mCsgIndicator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIndicator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    const-string v1, " mHomeNodebName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mHomeNodebName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    const-string v1, " mCsgIdentity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIdentity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "type"    # I

    .line 114
    iget-boolean v0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIndicator:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 115
    iget-object v0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mHomeNodebName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIdentity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return-void
.end method
