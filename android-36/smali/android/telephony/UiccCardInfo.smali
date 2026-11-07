.class public final Landroid/telephony/UiccCardInfo;
.super Ljava/lang/Object;
.source "UiccCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UiccCardInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCardId:I

.field private final blacklist mEid:Ljava/lang/String;

.field private final blacklist mIccId:Ljava/lang/String;

.field private blacklist mIccIdAccessRestricted:Z

.field private final blacklist mIsEuicc:Z

.field private final blacklist mIsMultipleEnabledProfilesSupported:Z

.field private final blacklist mIsRemovable:Z

.field private final blacklist mPhysicalSlotIndex:I

.field private final blacklist mPortList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccPortInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/telephony/UiccCardInfo$1;

    invoke-direct {v0}, Landroid/telephony/UiccCardInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIccIdAccessRestricted:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    .line 68
    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    sget-object v1, Landroid/telephony/UiccPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIccIdAccessRestricted:Z

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/UiccCardInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/UiccCardInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZILjava/lang/String;IZZLjava/util/List;)V
    .registers 9
    .param p1, "isEuicc"    # Z
    .param p2, "cardId"    # I
    .param p3, "eid"    # Ljava/lang/String;
    .param p4, "physicalSlotIndex"    # I
    .param p5, "isRemovable"    # Z
    .param p6, "isMultipleEnabledProfilesSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "IZZ",
            "Ljava/util/List<",
            "Landroid/telephony/UiccPortInfo;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p7, "portList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccPortInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIccIdAccessRestricted:Z

    .line 106
    iput-boolean p1, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    .line 107
    iput p2, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    .line 108
    iput-object p3, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    .line 110
    iput p4, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    .line 111
    iput-boolean p5, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    .line 112
    iput-boolean p6, p0, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    .line 113
    iput-object p7, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    .line 114
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 236
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 237
    return v0

    .line 239
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_54

    .line 243
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/UiccCardInfo;

    .line 244
    .local v2, "that":Landroid/telephony/UiccCardInfo;
    iget-boolean v3, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    iget-boolean v4, v2, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    if-ne v3, v4, :cond_52

    iget v3, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    iget v4, v2, Landroid/telephony/UiccCardInfo;->mCardId:I

    if-ne v3, v4, :cond_52

    iget-object v3, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    .line 246
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    .line 247
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget v3, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    iget v4, v2, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    if-ne v3, v4, :cond_52

    iget-boolean v3, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    iget-boolean v4, v2, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    if-ne v3, v4, :cond_52

    iget-boolean v3, p0, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    iget-boolean v4, v2, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    if-ne v3, v4, :cond_52

    iget-object v3, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    .line 251
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    goto :goto_53

    :cond_52
    move v0, v1

    .line 244
    :goto_53
    return v0

    .line 240
    .end local v2    # "that":Landroid/telephony/UiccCardInfo;
    :cond_54
    :goto_54
    return v1
.end method

.method public whitelist getCardId()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    return v0
.end method

.method public whitelist getEid()Ljava/lang/String;
    .registers 2

    .line 142
    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    if-nez v0, :cond_6

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_6
    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIccId()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIccIdAccessRestricted:Z

    if-nez v0, :cond_1c

    .line 169
    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_1b

    :cond_e
    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v0}, Landroid/telephony/UiccPortInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    .line 165
    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getIccId() is not supported by UiccCardInfo. Please Use UiccPortInfo API instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPhysicalSlotIndex()I
    .registers 2

    .line 186
    iget v0, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    return v0
.end method

.method public whitelist getPorts()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccPortInfo;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSlotIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    iget v0, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 256
    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v0, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    iget v0, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    .line 257
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 256
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEuicc()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    return v0
.end method

.method public whitelist isMultipleEnabledProfilesSupported()Z
    .registers 2

    .line 208
    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    return v0
.end method

.method public whitelist isRemovable()Z
    .registers 2

    .line 197
    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    return v0
.end method

.method public blacklist setIccIdAccessRestricted(Z)V
    .registers 2
    .param p1, "iccIdAccessRestricted"    # Z

    .line 231
    iput-boolean p1, p0, Landroid/telephony/UiccCardInfo;->mIccIdAccessRestricted:Z

    .line 232
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccCardInfo (mIsEuicc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCardId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v2, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    .line 267
    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPhysicalSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsRemovable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsMultipleEnabledProfilesSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPortList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIccIdAccessRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccCardInfo;->mIccIdAccessRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 75
    iget v0, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 80
    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 81
    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 82
    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIccIdAccessRestricted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 83
    return-void
.end method
