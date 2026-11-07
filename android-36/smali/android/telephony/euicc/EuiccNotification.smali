.class public final Landroid/telephony/euicc/EuiccNotification;
.super Ljava/lang/Object;
.source "EuiccNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/EuiccNotification$Event;
    }
.end annotation


# static fields
.field public static final whitelist ALL_EVENTS:I = 0xf

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EVENT_DELETE:I = 0x8

.field public static final whitelist EVENT_DISABLE:I = 0x4

.field public static final whitelist EVENT_ENABLE:I = 0x2

.field public static final whitelist EVENT_INSTALL:I = 0x1


# instance fields
.field private final greylist-max-o mData:[B

.field private final greylist-max-o mEvent:I

.field private final greylist-max-o mSeq:I

.field private final greylist-max-o mTargetAddr:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 173
    new-instance v0, Landroid/telephony/euicc/EuiccNotification$1;

    invoke-direct {v0}, Landroid/telephony/euicc/EuiccNotification$1;-><init>()V

    sput-object v0, Landroid/telephony/euicc/EuiccNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;I[B)V
    .registers 5
    .param p1, "seq"    # I
    .param p2, "targetAddr"    # Ljava/lang/String;
    .param p3, "event"    # I
    .param p4, "data"    # [B

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    .line 86
    iput-object p2, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    .line 87
    iput p3, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    .line 88
    iput-object p4, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    .line 89
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    .line 171
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/euicc/EuiccNotification-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/euicc/EuiccNotification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 116
    return v0

    .line 118
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_38

    .line 122
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/euicc/EuiccNotification;

    .line 123
    .local v2, "that":Landroid/telephony/euicc/EuiccNotification;
    iget v3, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    iget v4, v2, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    .line 124
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget v3, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    iget v4, v2, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    iget-object v4, v2, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    .line 126
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    .line 123
    :goto_37
    return v0

    .line 119
    .end local v2    # "that":Landroid/telephony/euicc/EuiccNotification;
    :cond_38
    :goto_38
    return v1
.end method

.method public whitelist getData()[B
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    return-object v0
.end method

.method public whitelist getEvent()I
    .registers 2

    .line 104
    iget v0, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    return v0
.end method

.method public whitelist getSeq()I
    .registers 2

    .line 93
    iget v0, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    return v0
.end method

.method public whitelist getTargetAddr()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 131
    const/4 v0, 0x1

    .line 132
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    add-int/2addr v1, v2

    .line 133
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 134
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    add-int/2addr v1, v2

    .line 135
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 136
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EuiccNotification (seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    iget-object v1, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    if-nez v1, :cond_37

    const-string/jumbo v1, "null"

    goto :goto_53

    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byte["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 160
    iget v0, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget v0, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 164
    return-void
.end method
