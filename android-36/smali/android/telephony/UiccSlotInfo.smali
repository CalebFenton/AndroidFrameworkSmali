.class public Landroid/telephony/UiccSlotInfo;
.super Ljava/lang/Object;
.source "UiccSlotInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/UiccSlotInfo$CardStateInfo;
    }
.end annotation


# static fields
.field public static final whitelist CARD_STATE_INFO_ABSENT:I = 0x1

.field public static final whitelist CARD_STATE_INFO_ERROR:I = 0x3

.field public static final whitelist CARD_STATE_INFO_PRESENT:I = 0x2

.field public static final whitelist CARD_STATE_INFO_RESTRICTED:I = 0x4

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UiccSlotInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCardId:Ljava/lang/String;

.field private final greylist-max-o mCardStateInfo:I

.field private final greylist-max-o mIsActive:Z

.field private final greylist-max-o mIsEuicc:Z

.field private final greylist-max-o mIsExtendedApduSupported:Z

.field private final blacklist mIsRemovable:Z

.field private blacklist mLogicalSlotAccessRestricted:Z

.field private final greylist-max-o mLogicalSlotIdx:I

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

    .line 75
    new-instance v0, Landroid/telephony/UiccSlotInfo$1;

    invoke-direct {v0}, Landroid/telephony/UiccSlotInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccSlotInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    .line 96
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    sget-object v1, Landroid/telephony/UiccPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 98
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/UiccSlotInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/UiccSlotInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZLjava/lang/String;IZZLjava/util/List;)V
    .registers 9
    .param p1, "isEuicc"    # Z
    .param p2, "cardId"    # Ljava/lang/String;
    .param p3, "cardStateInfo"    # I
    .param p4, "isExtendedApduSupported"    # Z
    .param p5, "isRemovable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "IZZ",
            "Ljava/util/List<",
            "Landroid/telephony/UiccPortInfo;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p6, "portList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccPortInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 142
    iput-boolean p1, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    .line 143
    iput-object p2, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 144
    iput p3, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    .line 145
    iput-boolean p4, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 146
    iput-boolean p5, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    .line 147
    iput-object p6, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    .line 148
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v1}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    move v1, v0

    :goto_27
    iput-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    .line 149
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 150
    const/4 v0, -0x1

    goto :goto_3b

    .line 151
    :cond_31
    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v0}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v0

    :goto_3b
    iput v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    .line 152
    return-void
.end method

.method public constructor whitelist <init>(ZZLjava/lang/String;IIZ)V
    .registers 8
    .param p1, "isActive"    # Z
    .param p2, "isEuicc"    # Z
    .param p3, "cardId"    # Ljava/lang/String;
    .param p4, "cardStateInfo"    # I
    .param p5, "logicalSlotIdx"    # I
    .param p6, "isExtendedApduSupported"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 125
    iput-boolean p1, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    .line 126
    iput-boolean p2, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    .line 127
    iput-object p3, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 128
    iput p4, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    .line 129
    iput p5, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    .line 130
    iput-boolean p6, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 131
    iput-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    .line 133
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 252
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 253
    return v0

    .line 255
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_50

    .line 259
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/UiccSlotInfo;

    .line 260
    .local v2, "that":Landroid/telephony/UiccSlotInfo;
    iget-boolean v3, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    iget-boolean v4, v2, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    if-ne v3, v4, :cond_4e

    iget-boolean v3, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    iget-boolean v4, v2, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    if-ne v3, v4, :cond_4e

    iget-object v3, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 262
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget v3, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    iget v4, v2, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    if-ne v3, v4, :cond_4e

    iget v3, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    iget v4, v2, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    if-ne v3, v4, :cond_4e

    iget-boolean v3, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    iget-boolean v4, v2, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    if-ne v3, v4, :cond_4e

    iget-boolean v3, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    iget-boolean v4, v2, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    if-ne v3, v4, :cond_4e

    iget-object v3, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    .line 267
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_4f

    :cond_4e
    move v0, v1

    .line 260
    :goto_4f
    return v0

    .line 256
    .end local v2    # "that":Landroid/telephony/UiccSlotInfo;
    :cond_50
    :goto_50
    return v1
.end method

.method public whitelist getCardId()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCardStateInfo()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    return v0
.end method

.method public whitelist getIsActive()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    if-nez v0, :cond_7

    .line 169
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    return v0

    .line 166
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getIsActive() is not supported by UiccSlotInfo. Please Use UiccPortInfo API instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIsEuicc()Z
    .registers 2

    .line 173
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    return v0
.end method

.method public whitelist getIsExtendedApduSupported()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    return v0
.end method

.method public whitelist getLogicalSlotIdx()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    if-nez v0, :cond_7

    .line 206
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    return v0

    .line 203
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getLogicalSlotIdx() is not supported by UiccSlotInfo. Please use UiccPortInfo API instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 236
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 272
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    .line 273
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 272
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isRemovable()Z
    .registers 2

    .line 224
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    return v0
.end method

.method public blacklist setLogicalSlotAccessRestricted(Z)V
    .registers 2
    .param p1, "logicalSlotAccessRestricted"    # Z

    .line 247
    iput-boolean p1, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    .line 248
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccSlotInfo (, mIsEuicc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCardId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    .line 283
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsExtendedApduSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsRemovable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPortList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogicalSlotAccessRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 102
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsActive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 103
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsEuicc:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 104
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mCardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mCardStateInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotIdx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsExtendedApduSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 108
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mIsRemovable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    iget-object v0, p0, Landroid/telephony/UiccSlotInfo;->mPortList:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 110
    iget-boolean v0, p0, Landroid/telephony/UiccSlotInfo;->mLogicalSlotAccessRestricted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    return-void
.end method
