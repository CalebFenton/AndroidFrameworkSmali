.class public final Landroid/telephony/UiccPortInfo;
.super Ljava/lang/Object;
.source "UiccPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UiccPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ICCID_REDACTED:Ljava/lang/String; = "FFFFFFFFFFFFFFFFFFFF"


# instance fields
.field private final blacklist mIccId:Ljava/lang/String;

.field private final blacklist mIsActive:Z

.field private final blacklist mLogicalSlotIndex:I

.field private final blacklist mPortIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/telephony/UiccPortInfo$1;

    invoke-direct {v0}, Landroid/telephony/UiccPortInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/UiccPortInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/UiccPortInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IIZ)V
    .registers 5
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "portIndex"    # I
    .param p3, "logicalSlotIndex"    # I
    .param p4, "isActive"    # Z

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    .line 91
    iput p2, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    .line 92
    iput p3, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    .line 93
    iput-boolean p4, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    .line 94
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 143
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 144
    return v0

    .line 146
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 150
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/UiccPortInfo;

    .line 151
    .local v2, "that":Landroid/telephony/UiccPortInfo;
    iget-object v3, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget v3, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    iget v4, v2, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    iget v4, v2, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    if-ne v3, v4, :cond_32

    iget-boolean v3, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    iget-boolean v4, v2, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    if-ne v3, v4, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    return v0

    .line 147
    .end local v2    # "that":Landroid/telephony/UiccPortInfo;
    :cond_34
    :goto_34
    return v1
.end method

.method public whitelist getIccId()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLogicalSlotIndex()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    return v0
.end method

.method public whitelist getPortIndex()I
    .registers 2

    .line 114
    iget v0, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 159
    iget-object v0, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    iget v1, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isActive()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccPortInfo (isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iccId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    .line 168
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", portIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogicalSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    iget-object v0, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-boolean v0, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 72
    return-void
.end method
