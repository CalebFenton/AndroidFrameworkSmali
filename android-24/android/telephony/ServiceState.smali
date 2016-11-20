.class public Landroid/telephony/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ServiceState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final REGISTRATION_STATE_HOME_NETWORK:I = 0x1

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING:I = 0x0

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING:I = 0x2

.field public static final REGISTRATION_STATE_REGISTRATION_DENIED:I = 0x3

.field public static final REGISTRATION_STATE_ROAMING:I = 0x5

.field public static final REGISTRATION_STATE_UNKNOWN:I = 0x4

.field public static final RIL_RADIO_CDMA_TECHNOLOGY_BITMASK:I = 0x18f8

.field public static final RIL_RADIO_TECHNOLOGY_1xRTT:I = 0x6

.field public static final RIL_RADIO_TECHNOLOGY_EDGE:I = 0x2

.field public static final RIL_RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_0:I = 0x7

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_A:I = 0x8

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_B:I = 0xc

.field public static final RIL_RADIO_TECHNOLOGY_GPRS:I = 0x1

.field public static final RIL_RADIO_TECHNOLOGY_GSM:I = 0x10

.field public static final RIL_RADIO_TECHNOLOGY_HSDPA:I = 0x9

.field public static final RIL_RADIO_TECHNOLOGY_HSPA:I = 0xb

.field public static final RIL_RADIO_TECHNOLOGY_HSPAP:I = 0xf

.field public static final RIL_RADIO_TECHNOLOGY_HSUPA:I = 0xa

.field public static final RIL_RADIO_TECHNOLOGY_IS95A:I = 0x4

.field public static final RIL_RADIO_TECHNOLOGY_IS95B:I = 0x5

.field public static final RIL_RADIO_TECHNOLOGY_IWLAN:I = 0x12

.field public static final RIL_RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final RIL_RADIO_TECHNOLOGY_TD_SCDMA:I = 0x11

.field public static final RIL_RADIO_TECHNOLOGY_UMTS:I = 0x3

.field public static final RIL_RADIO_TECHNOLOGY_UNKNOWN:I = 0x0

.field public static final RIL_REG_STATE_DENIED:I = 0x3

.field public static final RIL_REG_STATE_DENIED_EMERGENCY_CALL_ENABLED:I = 0xd

.field public static final RIL_REG_STATE_HOME:I = 0x1

.field public static final RIL_REG_STATE_NOT_REG:I = 0x0

.field public static final RIL_REG_STATE_NOT_REG_EMERGENCY_CALL_ENABLED:I = 0xa

.field public static final RIL_REG_STATE_ROAMING:I = 0x5

.field public static final RIL_REG_STATE_SEARCHING:I = 0x2

.field public static final RIL_REG_STATE_SEARCHING_EMERGENCY_CALL_ENABLED:I = 0xc

.field public static final RIL_REG_STATE_UNKNOWN:I = 0x4

.field public static final RIL_REG_STATE_UNKNOWN_EMERGENCY_CALL_ENABLED:I = 0xe

.field public static final ROAMING_TYPE_DOMESTIC:I = 0x2

.field public static final ROAMING_TYPE_INTERNATIONAL:I = 0x3

.field public static final ROAMING_TYPE_NOT_ROAMING:I = 0x0

.field public static final ROAMING_TYPE_UNKNOWN:I = 0x1

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3

.field static final VDBG:Z


# instance fields
.field private mCdmaDefaultRoamingIndicator:I

.field private mCdmaEriIconIndex:I

.field private mCdmaEriIconMode:I

.field private mCdmaRoamingIndicator:I

.field private mCssIndicator:Z

.field private mDataOperatorAlphaLong:Ljava/lang/String;

.field private mDataOperatorAlphaShort:Ljava/lang/String;

.field private mDataOperatorNumeric:Ljava/lang/String;

.field private mDataRegState:I

.field private mDataRoamingType:I

.field private mIsDataRoamingFromRegistration:Z

.field private mIsEmergencyOnly:Z

.field private mIsManualNetworkSelection:Z

.field private mNetworkId:I

.field private mRilDataRadioTechnology:I

.field private mRilVoiceRadioTechnology:I

.field private mSystemId:I

.field private mVoiceOperatorAlphaLong:Ljava/lang/String;

.field private mVoiceOperatorAlphaShort:Ljava/lang/String;

.field private mVoiceOperatorNumeric:Ljava/lang/String;

.field private mVoiceRegState:I

.field private mVoiceRoamingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 375
    new-instance v0, Landroid/telephony/ServiceState$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    #@5
    .line 374
    sput-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 184
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@6
    .line 185
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@8
    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 184
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@7
    .line 185
    iput v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@9
    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@f
    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@15
    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@1b
    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@21
    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@27
    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@2d
    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@33
    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@39
    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@3f
    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@45
    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_0

    #@4b
    move v0, v1

    #@4c
    :goto_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@4e
    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v0

    #@52
    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@54
    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v0

    #@58
    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@5a
    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v0

    #@5e
    if-eqz v0, :cond_1

    #@60
    move v0, v1

    #@61
    :goto_1
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@63
    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v0

    #@67
    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@69
    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6c
    move-result v0

    #@6d
    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@6f
    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@72
    move-result v0

    #@73
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@75
    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@78
    move-result v0

    #@79
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@7b
    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7e
    move-result v0

    #@7f
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    #@81
    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@84
    move-result v0

    #@85
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    #@87
    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8a
    move-result v0

    #@8b
    if-eqz v0, :cond_2

    #@8d
    move v0, v1

    #@8e
    :goto_2
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@90
    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v0

    #@94
    if-eqz v0, :cond_3

    #@96
    :goto_3
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@98
    .line 320
    return-void

    #@99
    :cond_0
    move v0, v2

    #@9a
    .line 331
    goto :goto_0

    #@9b
    :cond_1
    move v0, v2

    #@9c
    .line 334
    goto :goto_1

    #@9d
    :cond_2
    move v0, v2

    #@9e
    .line 341
    goto :goto_2

    #@9f
    :cond_3
    move v1, v2

    #@a0
    .line 342
    goto :goto_3
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 184
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@6
    .line 185
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@8
    .line 289
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    #@b
    .line 288
    return-void
.end method

.method public static bearerBitmapHasCdma(I)Z
    .locals 2
    .param p0, "radioTechnologyBitmap"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1158
    and-int/lit16 v1, p0, 0x18f8

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static bitmaskHasTech(II)Z
    .locals 3
    .param p0, "bearerBitmask"    # I
    .param p1, "radioTech"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1163
    if-nez p0, :cond_0

    #@4
    .line 1164
    return v0

    #@5
    .line 1165
    :cond_0
    if-lt p1, v0, :cond_2

    #@7
    .line 1166
    add-int/lit8 v2, p1, -0x1

    #@9
    shl-int v2, v0, v2

    #@b
    and-int/2addr v2, p0

    #@c
    if-eqz v2, :cond_1

    #@e
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    goto :goto_0

    #@11
    .line 1168
    :cond_2
    return v1
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 952
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public static getBitmaskForTech(I)I
    .locals 2
    .param p0, "radioTech"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1173
    if-lt p0, v1, :cond_0

    #@3
    .line 1174
    add-int/lit8 v0, p0, -0x1

    #@5
    shl-int v0, v1, v0

    #@7
    return v0

    #@8
    .line 1176
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0
.end method

.method public static getBitmaskFromString(Ljava/lang/String;)I
    .locals 9
    .param p0, "bearerList"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1181
    const-string/jumbo v5, "\\|"

    #@4
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 1182
    .local v3, "bearers":[Ljava/lang/String;
    const/4 v1, 0x0

    #@9
    .line 1183
    .local v1, "bearerBitmask":I
    array-length v7, v3

    #@a
    move v5, v6

    #@b
    :goto_0
    if-ge v5, v7, :cond_1

    #@d
    aget-object v0, v3, v5

    #@f
    .line 1184
    .local v0, "bearer":Ljava/lang/String;
    const/4 v2, 0x0

    #@10
    .line 1186
    .local v2, "bearerInt":I
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@13
    move-result-object v8

    #@14
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v2

    #@18
    .line 1191
    if-nez v2, :cond_0

    #@1a
    .line 1192
    return v6

    #@1b
    .line 1187
    :catch_0
    move-exception v4

    #@1c
    .line 1188
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    return v6

    #@1d
    .line 1195
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    #@20
    move-result v8

    #@21
    or-int/2addr v1, v8

    #@22
    .line 1183
    add-int/lit8 v5, v5, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1197
    .end local v0    # "bearer":Ljava/lang/String;
    .end local v2    # "bearerInt":I
    :cond_1
    return v1
.end method

.method public static final getRoamingLogString(I)Ljava/lang/String;
    .locals 1
    .param p0, "roamingType"    # I

    #@0
    .prologue
    .line 242
    packed-switch p0, :pswitch_data_0

    #@3
    .line 256
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 244
    :pswitch_0
    const-string/jumbo v0, "home"

    #@a
    return-object v0

    #@b
    .line 247
    :pswitch_1
    const-string/jumbo v0, "roaming"

    #@e
    return-object v0

    #@f
    .line 250
    :pswitch_2
    const-string/jumbo v0, "Domestic Roaming"

    #@12
    return-object v0

    #@13
    .line 253
    :pswitch_3
    const-string/jumbo v0, "International Roaming"

    #@16
    return-object v0

    #@17
    .line 242
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isCdma(I)Z
    .locals 2
    .param p0, "radioTechnology"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1147
    const/4 v1, 0x4

    #@2
    if-eq p0, v1, :cond_0

    #@4
    .line 1148
    const/4 v1, 0x5

    #@5
    if-ne p0, v1, :cond_1

    #@7
    .line 1147
    :cond_0
    :goto_0
    return v0

    #@8
    .line 1149
    :cond_1
    const/4 v1, 0x6

    #@9
    if-eq p0, v1, :cond_0

    #@b
    .line 1150
    const/4 v1, 0x7

    #@c
    if-eq p0, v1, :cond_0

    #@e
    .line 1151
    const/16 v1, 0x8

    #@10
    if-eq p0, v1, :cond_0

    #@12
    .line 1152
    const/16 v1, 0xc

    #@14
    if-eq p0, v1, :cond_0

    #@16
    .line 1153
    const/16 v1, 0xd

    #@18
    if-eq p0, v1, :cond_0

    #@1a
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public static isGsm(I)Z
    .locals 2
    .param p0, "radioTechnology"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1132
    if-eq p0, v0, :cond_0

    #@3
    .line 1133
    const/4 v1, 0x2

    #@4
    if-ne p0, v1, :cond_1

    #@6
    .line 1132
    :cond_0
    :goto_0
    return v0

    #@7
    .line 1134
    :cond_1
    const/4 v1, 0x3

    #@8
    if-eq p0, v1, :cond_0

    #@a
    .line 1135
    const/16 v1, 0x9

    #@c
    if-eq p0, v1, :cond_0

    #@e
    .line 1136
    const/16 v1, 0xa

    #@10
    if-eq p0, v1, :cond_0

    #@12
    .line 1137
    const/16 v1, 0xb

    #@14
    if-eq p0, v1, :cond_0

    #@16
    .line 1138
    const/16 v1, 0xe

    #@18
    if-eq p0, v1, :cond_0

    #@1a
    .line 1139
    const/16 v1, 0xf

    #@1c
    if-eq p0, v1, :cond_0

    #@1e
    .line 1140
    const/16 v1, 0x10

    #@20
    if-eq p0, v1, :cond_0

    #@22
    .line 1141
    const/16 v1, 0x11

    #@24
    if-eq p0, v1, :cond_0

    #@26
    .line 1142
    const/16 v1, 0x12

    #@28
    if-eq p0, v1, :cond_0

    #@2a
    const/4 v0, 0x0

    #@2b
    goto :goto_0
.end method

.method public static mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 3
    .param p0, "baseSs"    # Landroid/telephony/ServiceState;
    .param p1, "voiceSs"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1206
    iget v1, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1207
    return-object p0

    #@6
    .line 1210
    :cond_0
    new-instance v0, Landroid/telephony/ServiceState;

    #@8
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    #@b
    .line 1213
    .local v0, "newSs":Landroid/telephony/ServiceState;
    iget v1, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@d
    iput v1, v0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@f
    .line 1214
    iput-boolean v2, v0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@11
    .line 1216
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 272
    new-instance v0, Landroid/telephony/ServiceState;

    #@2
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@5
    .line 273
    .local v0, "ret":Landroid/telephony/ServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    #@8
    .line 274
    return-object v0
.end method

.method private rilRadioTechnologyToNetworkType(I)I
    .locals 1
    .param p1, "rt"    # I

    #@0
    .prologue
    .line 1055
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1092
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1057
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1059
    :pswitch_1
    const/4 v0, 0x2

    #@8
    return v0

    #@9
    .line 1061
    :pswitch_2
    const/4 v0, 0x3

    #@a
    return v0

    #@b
    .line 1063
    :pswitch_3
    const/16 v0, 0x8

    #@d
    return v0

    #@e
    .line 1065
    :pswitch_4
    const/16 v0, 0x9

    #@10
    return v0

    #@11
    .line 1067
    :pswitch_5
    const/16 v0, 0xa

    #@13
    return v0

    #@14
    .line 1070
    :pswitch_6
    const/4 v0, 0x4

    #@15
    return v0

    #@16
    .line 1072
    :pswitch_7
    const/4 v0, 0x7

    #@17
    return v0

    #@18
    .line 1074
    :pswitch_8
    const/4 v0, 0x5

    #@19
    return v0

    #@1a
    .line 1076
    :pswitch_9
    const/4 v0, 0x6

    #@1b
    return v0

    #@1c
    .line 1078
    :pswitch_a
    const/16 v0, 0xc

    #@1e
    return v0

    #@1f
    .line 1080
    :pswitch_b
    const/16 v0, 0xe

    #@21
    return v0

    #@22
    .line 1082
    :pswitch_c
    const/16 v0, 0xd

    #@24
    return v0

    #@25
    .line 1084
    :pswitch_d
    const/16 v0, 0xf

    #@27
    return v0

    #@28
    .line 1086
    :pswitch_e
    const/16 v0, 0x10

    #@2a
    return v0

    #@2b
    .line 1088
    :pswitch_f
    const/16 v0, 0x11

    #@2d
    return v0

    #@2e
    .line 1090
    :pswitch_10
    const/16 v0, 0x12

    #@30
    return v0

    #@31
    .line 1055
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public static rilRadioTechnologyToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "rt"    # I

    #@0
    .prologue
    .line 691
    packed-switch p0, :pswitch_data_0

    #@3
    .line 750
    const-string/jumbo v0, "Unexpected"

    #@6
    .line 751
    .local v0, "rtString":Ljava/lang/String;
    const-string/jumbo v1, "PHONE"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Unexpected radioTechnology="

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 754
    :goto_0
    return-object v0

    #@21
    .line 693
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    #@24
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@25
    .line 696
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "GPRS"

    #@28
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@29
    .line 699
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "EDGE"

    #@2c
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 702
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "UMTS"

    #@30
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@31
    .line 705
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "CDMA-IS95A"

    #@34
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@35
    .line 708
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "CDMA-IS95B"

    #@38
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@39
    .line 711
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "1xRTT"

    #@3c
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@3d
    .line 714
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "EvDo-rev.0"

    #@40
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@41
    .line 717
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "EvDo-rev.A"

    #@44
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@45
    .line 720
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "HSDPA"

    #@48
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@49
    .line 723
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "HSUPA"

    #@4c
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@4d
    .line 726
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v0, "HSPA"

    #@50
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@51
    .line 729
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v0, "EvDo-rev.B"

    #@54
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@55
    .line 732
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v0, "eHRPD"

    #@58
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@59
    .line 735
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v0, "LTE"

    #@5c
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@5d
    .line 738
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_f
    const-string/jumbo v0, "HSPAP"

    #@60
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@61
    .line 741
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_10
    const-string/jumbo v0, "GSM"

    #@64
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@65
    .line 744
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_11
    const-string/jumbo v0, "IWLAN"

    #@68
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@69
    .line 747
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_12
    const-string/jumbo v0, "TD-SCDMA"

    #@6c
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@6d
    .line 691
    nop

    #@6e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 962
    const-string/jumbo v0, "voiceRegState"

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@9
    .line 963
    const-string/jumbo v0, "dataRegState"

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@12
    .line 964
    const-string/jumbo v0, "voiceRoamingType"

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@1b
    .line 965
    const-string/jumbo v0, "dataRoamingType"

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@24
    .line 966
    const-string/jumbo v0, "operator-alpha-long"

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2d
    .line 967
    const-string/jumbo v0, "operator-alpha-short"

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@36
    .line 968
    const-string/jumbo v0, "operator-numeric"

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@3f
    .line 969
    const-string/jumbo v0, "data-operator-alpha-long"

    #@42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@48
    .line 970
    const-string/jumbo v0, "data-operator-alpha-short"

    #@4b
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@51
    .line 971
    const-string/jumbo v0, "data-operator-numeric"

    #@54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@5a
    .line 972
    const-string/jumbo v0, "manual"

    #@5d
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@60
    move-result v0

    #@61
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@63
    .line 973
    const-string/jumbo v0, "radioTechnology"

    #@66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@69
    move-result v0

    #@6a
    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@6c
    .line 974
    const-string/jumbo v0, "dataRadioTechnology"

    #@6f
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@72
    move-result v0

    #@73
    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@75
    .line 975
    const-string/jumbo v0, "cssIndicator"

    #@78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@7b
    move-result v0

    #@7c
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@7e
    .line 976
    const-string/jumbo v0, "networkId"

    #@81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@84
    move-result v0

    #@85
    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@87
    .line 977
    const-string/jumbo v0, "systemId"

    #@8a
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@8d
    move-result v0

    #@8e
    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@90
    .line 978
    const-string/jumbo v0, "cdmaRoamingIndicator"

    #@93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@96
    move-result v0

    #@97
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@99
    .line 979
    const-string/jumbo v0, "cdmaDefaultRoamingIndicator"

    #@9c
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9f
    move-result v0

    #@a0
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@a2
    .line 980
    const-string/jumbo v0, "emergencyOnly"

    #@a5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@a8
    move-result v0

    #@a9
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@ab
    .line 981
    const-string/jumbo v0, "isDataRoamingFromRegistration"

    #@ae
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@b1
    move-result v0

    #@b2
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@b4
    .line 961
    return-void
.end method

.method private setNullState(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 787
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@5
    .line 788
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@7
    .line 789
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@9
    .line 790
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@b
    .line 791
    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@d
    .line 792
    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@f
    .line 793
    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@11
    .line 794
    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@13
    .line 795
    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@15
    .line 796
    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@17
    .line 797
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@19
    .line 798
    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@1b
    .line 799
    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@1d
    .line 800
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@1f
    .line 801
    iput v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@21
    .line 802
    iput v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@23
    .line 803
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@25
    .line 804
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@27
    .line 805
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    #@29
    .line 806
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    #@2b
    .line 807
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@2d
    .line 808
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@2f
    .line 785
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 293
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@2
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@4
    .line 294
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRegState:I

    #@6
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@8
    .line 295
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@a
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@c
    .line 296
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@e
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@10
    .line 297
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@12
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@14
    .line 298
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@16
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@18
    .line 299
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@1a
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@1c
    .line 300
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@1e
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@20
    .line 301
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@22
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@24
    .line 302
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@26
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@28
    .line 303
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@2a
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@2c
    .line 304
    iget v0, p1, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@2e
    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@30
    .line 305
    iget v0, p1, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@32
    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@34
    .line 306
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@36
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@38
    .line 307
    iget v0, p1, Landroid/telephony/ServiceState;->mNetworkId:I

    #@3a
    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@3c
    .line 308
    iget v0, p1, Landroid/telephony/ServiceState;->mSystemId:I

    #@3e
    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@40
    .line 309
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@42
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@44
    .line 310
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@46
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@48
    .line 311
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    #@4a
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    #@4c
    .line 312
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    #@4e
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    #@50
    .line 313
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@52
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@54
    .line 314
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@56
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@58
    .line 292
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 371
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 648
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Landroid/telephony/ServiceState;

    #@4
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 653
    .local v2, "s":Landroid/telephony/ServiceState;
    if-nez p1, :cond_0

    #@7
    .line 654
    return v3

    #@8
    .line 649
    .end local v2    # "s":Landroid/telephony/ServiceState;
    :catch_0
    move-exception v1

    #@9
    .line 650
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    #@a
    .line 657
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/ServiceState;
    :cond_0
    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@c
    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@e
    if-ne v4, v5, :cond_1

    #@10
    .line 658
    iget v4, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@12
    iget v5, v2, Landroid/telephony/ServiceState;->mDataRegState:I

    #@14
    if-ne v4, v5, :cond_1

    #@16
    .line 659
    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@18
    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@1a
    if-ne v4, v5, :cond_1

    #@1c
    .line 660
    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@1e
    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@20
    if-ne v4, v5, :cond_1

    #@22
    .line 661
    iget v4, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@24
    iget v5, v2, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@26
    if-ne v4, v5, :cond_1

    #@28
    .line 662
    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2a
    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2c
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2f
    move-result v4

    #@30
    .line 657
    if-eqz v4, :cond_1

    #@32
    .line 663
    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@34
    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@36
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@39
    move-result v4

    #@3a
    .line 657
    if-eqz v4, :cond_1

    #@3c
    .line 664
    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@3e
    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@40
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@43
    move-result v4

    #@44
    .line 657
    if-eqz v4, :cond_1

    #@46
    .line 665
    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@48
    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@4a
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4d
    move-result v4

    #@4e
    .line 657
    if-eqz v4, :cond_1

    #@50
    .line 666
    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@52
    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@54
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@57
    move-result v4

    #@58
    .line 657
    if-eqz v4, :cond_1

    #@5a
    .line 667
    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@5c
    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@5e
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@61
    move-result v4

    #@62
    .line 657
    if-eqz v4, :cond_1

    #@64
    .line 668
    iget v4, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@69
    move-result-object v4

    #@6a
    iget v5, v2, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@6c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f
    move-result-object v5

    #@70
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@73
    move-result v4

    #@74
    .line 657
    if-eqz v4, :cond_1

    #@76
    .line 669
    iget v4, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7b
    move-result-object v4

    #@7c
    iget v5, v2, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@7e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@81
    move-result-object v5

    #@82
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@85
    move-result v4

    #@86
    .line 657
    if-eqz v4, :cond_1

    #@88
    .line 670
    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@8a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8d
    move-result-object v4

    #@8e
    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@90
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@93
    move-result-object v5

    #@94
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@97
    move-result v4

    #@98
    .line 657
    if-eqz v4, :cond_1

    #@9a
    .line 671
    iget v4, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@9c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9f
    move-result-object v4

    #@a0
    iget v5, v2, Landroid/telephony/ServiceState;->mNetworkId:I

    #@a2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a5
    move-result-object v5

    #@a6
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a9
    move-result v4

    #@aa
    .line 657
    if-eqz v4, :cond_1

    #@ac
    .line 672
    iget v4, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@ae
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b1
    move-result-object v4

    #@b2
    iget v5, v2, Landroid/telephony/ServiceState;->mSystemId:I

    #@b4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b7
    move-result-object v5

    #@b8
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@bb
    move-result v4

    #@bc
    .line 657
    if-eqz v4, :cond_1

    #@be
    .line 673
    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@c0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c3
    move-result-object v4

    #@c4
    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@c6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c9
    move-result-object v5

    #@ca
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@cd
    move-result v4

    #@ce
    .line 657
    if-eqz v4, :cond_1

    #@d0
    .line 674
    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@d2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d5
    move-result-object v4

    #@d6
    .line 675
    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@d8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@db
    move-result-object v5

    #@dc
    .line 674
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@df
    move-result v4

    #@e0
    .line 657
    if-eqz v4, :cond_1

    #@e2
    .line 676
    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@e4
    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@e6
    if-ne v4, v5, :cond_1

    #@e8
    .line 677
    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@ea
    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@ec
    if-ne v4, v5, :cond_1

    #@ee
    const/4 v3, 0x1

    #@ef
    .line 657
    :cond_1
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 991
    const-string/jumbo v0, "voiceRegState"

    #@3
    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8
    .line 992
    const-string/jumbo v0, "dataRegState"

    #@b
    iget v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    .line 993
    const-string/jumbo v0, "voiceRoamingType"

    #@13
    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@18
    .line 994
    const-string/jumbo v0, "dataRoamingType"

    #@1b
    iget v1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@1d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@20
    .line 995
    const-string/jumbo v0, "operator-alpha-long"

    #@23
    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 996
    const-string/jumbo v0, "operator-alpha-short"

    #@2b
    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@2d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 997
    const-string/jumbo v0, "operator-numeric"

    #@33
    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@35
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .line 998
    const-string/jumbo v0, "data-operator-alpha-long"

    #@3b
    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@3d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@40
    .line 999
    const-string/jumbo v0, "data-operator-alpha-short"

    #@43
    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@45
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 1000
    const-string/jumbo v0, "data-operator-numeric"

    #@4b
    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@4d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@50
    .line 1001
    const-string/jumbo v0, "manual"

    #@53
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@5c
    move-result v1

    #@5d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@60
    .line 1002
    const-string/jumbo v0, "radioTechnology"

    #@63
    iget v1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@65
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@68
    .line 1003
    const-string/jumbo v0, "dataRadioTechnology"

    #@6b
    iget v1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@6d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@70
    .line 1004
    const-string/jumbo v0, "cssIndicator"

    #@73
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@75
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@78
    .line 1005
    const-string/jumbo v0, "networkId"

    #@7b
    iget v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@7d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@80
    .line 1006
    const-string/jumbo v0, "systemId"

    #@83
    iget v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@85
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@88
    .line 1007
    const-string/jumbo v0, "cdmaRoamingIndicator"

    #@8b
    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@8d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@90
    .line 1008
    const-string/jumbo v0, "cdmaDefaultRoamingIndicator"

    #@93
    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@95
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@98
    .line 1009
    const-string/jumbo v0, "emergencyOnly"

    #@9b
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@9d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a0
    move-result-object v1

    #@a1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@a4
    move-result v1

    #@a5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@a8
    .line 1010
    const-string/jumbo v0, "isDataRoamingFromRegistration"

    #@ab
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@ad
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b0
    move-result-object v1

    #@b1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@b4
    move-result v1

    #@b5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@b8
    .line 990
    return-void
.end method

.method public getCdmaDefaultRoamingIndicator()I
    .locals 1

    #@0
    .prologue
    .line 505
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@2
    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    #@0
    .prologue
    .line 512
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    #@2
    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    #@0
    .prologue
    .line 519
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    #@2
    return v0
.end method

.method public getCdmaRoamingIndicator()I
    .locals 1

    #@0
    .prologue
    .line 498
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@2
    return v0
.end method

.method public getCssIndicator()I
    .locals 1

    #@0
    .prologue
    .line 1117
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 1

    #@0
    .prologue
    .line 1107
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@2
    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDataOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 549
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 578
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataOperatorNumeric()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 612
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataRegState()I
    .locals 1

    #@0
    .prologue
    .line 417
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@2
    return v0
.end method

.method public getDataRoaming()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 455
    iget v1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public getDataRoamingFromRegistration()Z
    .locals 1

    #@0
    .prologue
    .line 475
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@2
    return v0
.end method

.method public getDataRoamingType()I
    .locals 1

    #@0
    .prologue
    .line 484
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@2
    return v0
.end method

.method public getIsManualSelection()Z
    .locals 1

    #@0
    .prologue
    .line 621
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@2
    return v0
.end method

.method public getNetworkId()I
    .locals 1

    #@0
    .prologue
    .line 1122
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@2
    return v0
.end method

.method public getNetworkType()I
    .locals 2

    #@0
    .prologue
    .line 1101
    const-string/jumbo v0, "PHONE"

    #@3
    const-string/jumbo v1, "ServiceState.getNetworkType() DEPRECATED will be removed *******"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1102
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@b
    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 531
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 560
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 594
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRadioTechnology()I
    .locals 2

    #@0
    .prologue
    .line 1050
    const-string/jumbo v0, "PHONE"

    #@3
    const-string/jumbo v1, "ServiceState.getRadioTechnology() DEPRECATED will be removed *******"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1051
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getRilDataRadioTechnology()I
    .locals 1

    #@0
    .prologue
    .line 1042
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@2
    return v0
.end method

.method public getRilVoiceRadioTechnology()I
    .locals 1

    #@0
    .prologue
    .line 1038
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@2
    return v0
.end method

.method public getRoaming()Z
    .locals 1

    #@0
    .prologue
    .line 428
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 389
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSystemId()I
    .locals 1

    #@0
    .prologue
    .line 1127
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@2
    return v0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    #@0
    .prologue
    .line 1112
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@2
    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVoiceOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 540
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVoiceOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 569
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVoiceOperatorNumeric()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 603
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVoiceRegState()I
    .locals 1

    #@0
    .prologue
    .line 403
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@2
    return v0
.end method

.method public getVoiceRoaming()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 437
    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public getVoiceRoamingType()I
    .locals 1

    #@0
    .prologue
    .line 446
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 626
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@4
    mul-int/lit8 v0, v0, 0x1f

    #@6
    .line 627
    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@8
    mul-int/lit8 v3, v3, 0x25

    #@a
    .line 626
    add-int/2addr v0, v3

    #@b
    .line 628
    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@d
    .line 626
    add-int/2addr v0, v3

    #@e
    .line 629
    iget v3, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@10
    .line 626
    add-int/2addr v3, v0

    #@11
    .line 630
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    move v0, v1

    #@16
    .line 626
    :goto_0
    add-int/2addr v3, v0

    #@17
    .line 631
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@19
    if-nez v0, :cond_1

    #@1b
    move v0, v2

    #@1c
    .line 626
    :goto_1
    add-int/2addr v3, v0

    #@1d
    .line 632
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@1f
    if-nez v0, :cond_2

    #@21
    move v0, v2

    #@22
    .line 626
    :goto_2
    add-int/2addr v3, v0

    #@23
    .line 633
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@25
    if-nez v0, :cond_3

    #@27
    move v0, v2

    #@28
    .line 626
    :goto_3
    add-int/2addr v3, v0

    #@29
    .line 634
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@2b
    if-nez v0, :cond_4

    #@2d
    move v0, v2

    #@2e
    .line 626
    :goto_4
    add-int/2addr v3, v0

    #@2f
    .line 635
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@31
    if-nez v0, :cond_5

    #@33
    move v0, v2

    #@34
    .line 626
    :goto_5
    add-int/2addr v3, v0

    #@35
    .line 636
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@37
    if-nez v0, :cond_6

    #@39
    move v0, v2

    #@3a
    .line 626
    :goto_6
    add-int/2addr v0, v3

    #@3b
    .line 637
    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@3d
    .line 626
    add-int/2addr v0, v3

    #@3e
    .line 638
    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@40
    .line 626
    add-int/2addr v3, v0

    #@41
    .line 639
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@43
    if-eqz v0, :cond_7

    #@45
    move v0, v1

    #@46
    .line 626
    :goto_7
    add-int/2addr v0, v3

    #@47
    .line 640
    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@49
    if-eqz v3, :cond_8

    #@4b
    .line 626
    :goto_8
    add-int/2addr v0, v1

    #@4c
    return v0

    #@4d
    :cond_0
    move v0, v2

    #@4e
    .line 630
    goto :goto_0

    #@4f
    .line 631
    :cond_1
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@51
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@54
    move-result v0

    #@55
    goto :goto_1

    #@56
    .line 632
    :cond_2
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@58
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5b
    move-result v0

    #@5c
    goto :goto_2

    #@5d
    .line 633
    :cond_3
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@5f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@62
    move-result v0

    #@63
    goto :goto_3

    #@64
    .line 634
    :cond_4
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@66
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@69
    move-result v0

    #@6a
    goto :goto_4

    #@6b
    .line 635
    :cond_5
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@6d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@70
    move-result v0

    #@71
    goto :goto_5

    #@72
    .line 636
    :cond_6
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@74
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@77
    move-result v0

    #@78
    goto :goto_6

    #@79
    :cond_7
    move v0, v2

    #@7a
    .line 639
    goto :goto_7

    #@7b
    :cond_8
    move v1, v2

    #@7c
    .line 640
    goto :goto_8
.end method

.method public isEmergencyOnly()Z
    .locals 1

    #@0
    .prologue
    .line 491
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@2
    return v0
.end method

.method public setCdmaDefaultRoamingIndicator(I)V
    .locals 0
    .param p1, "roaming"    # I

    #@0
    .prologue
    .line 879
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@2
    .line 878
    return-void
.end method

.method public setCdmaEriIconIndex(I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 886
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    #@2
    .line 885
    return-void
.end method

.method public setCdmaEriIconMode(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 893
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    #@2
    .line 892
    return-void
.end method

.method public setCdmaRoamingIndicator(I)V
    .locals 0
    .param p1, "roaming"    # I

    #@0
    .prologue
    .line 872
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@2
    .line 871
    return-void
.end method

.method public setCssIndicator(I)V
    .locals 1
    .param p1, "css"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1027
    if-eqz p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :cond_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@6
    .line 1026
    return-void
.end method

.method public setDataOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 937
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@2
    .line 936
    return-void
.end method

.method public setDataOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 914
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@2
    .line 915
    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@4
    .line 916
    iput-object p3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@6
    .line 913
    return-void
.end method

.method public setDataRegState(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 832
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@2
    .line 831
    return-void
.end method

.method public setDataRoaming(Z)V
    .locals 1
    .param p1, "dataRoaming"    # Z

    #@0
    .prologue
    .line 853
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@5
    .line 852
    return-void

    #@6
    .line 853
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setDataRoamingFromRegistration(Z)V
    .locals 0
    .param p1, "dataRoaming"    # Z

    #@0
    .prologue
    .line 466
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@2
    .line 465
    return-void
.end method

.method public setDataRoamingType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 858
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@2
    .line 857
    return-void
.end method

.method public setEmergencyOnly(Z)V
    .locals 0
    .param p1, "emergencyOnly"    # Z

    #@0
    .prologue
    .line 865
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@2
    .line 864
    return-void
.end method

.method public setIsManualSelection(Z)V
    .locals 0
    .param p1, "isManual"    # Z

    #@0
    .prologue
    .line 941
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@2
    .line 940
    return-void
.end method

.method public setOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 926
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2
    .line 927
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@4
    .line 925
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 897
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2
    .line 898
    iput-object p2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@4
    .line 899
    iput-object p3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@6
    .line 900
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@8
    .line 901
    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@a
    .line 902
    iput-object p3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@c
    .line 896
    return-void
.end method

.method public setRilDataRadioTechnology(I)V
    .locals 0
    .param p1, "rt"    # I

    #@0
    .prologue
    .line 1020
    iput p1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@2
    .line 1019
    return-void
.end method

.method public setRilVoiceRadioTechnology(I)V
    .locals 0
    .param p1, "rt"    # I

    #@0
    .prologue
    .line 1015
    iput p1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@2
    .line 1014
    return-void
.end method

.method public setRoaming(Z)V
    .locals 1
    .param p1, "roaming"    # Z

    #@0
    .prologue
    .line 837
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@5
    .line 838
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@7
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@9
    .line 836
    return-void

    #@a
    .line 837
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 820
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    #@3
    .line 819
    return-void
.end method

.method public setStateOff()V
    .locals 1

    #@0
    .prologue
    .line 816
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    #@4
    .line 815
    return-void
.end method

.method public setStateOutOfService()V
    .locals 1

    #@0
    .prologue
    .line 812
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    #@4
    .line 811
    return-void
.end method

.method public setSystemAndNetworkId(II)V
    .locals 0
    .param p1, "systemId"    # I
    .param p2, "networkId"    # I

    #@0
    .prologue
    .line 1032
    iput p1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@2
    .line 1033
    iput p2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@4
    .line 1031
    return-void
.end method

.method public setVoiceOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 932
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2
    .line 931
    return-void
.end method

.method public setVoiceOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 907
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2
    .line 908
    iput-object p2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@4
    .line 909
    iput-object p3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@6
    .line 906
    return-void
.end method

.method public setVoiceRegState(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 826
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@2
    .line 825
    return-void
.end method

.method public setVoiceRoaming(Z)V
    .locals 1
    .param p1, "roaming"    # Z

    #@0
    .prologue
    .line 843
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@5
    .line 842
    return-void

    #@6
    .line 843
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setVoiceRoamingType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 848
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@2
    .line 847
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 759
    iget v2, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@2
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 760
    .local v1, "radioTechnology":Ljava/lang/String;
    iget v2, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@8
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 762
    .local v0, "dataRadioTechnology":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, " "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    .line 763
    const-string/jumbo v3, " "

    #@27
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 764
    const-string/jumbo v3, "voice "

    #@2e
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 764
    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@34
    invoke-static {v3}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 765
    const-string/jumbo v3, " "

    #@3f
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    .line 766
    const-string/jumbo v3, "data "

    #@46
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 766
    iget v3, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@4c
    invoke-static {v3}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    .line 767
    const-string/jumbo v3, " "

    #@57
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    .line 767
    iget-object v3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@5d
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    .line 768
    const-string/jumbo v3, " "

    #@64
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    .line 768
    iget-object v3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@6a
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    .line 769
    const-string/jumbo v3, " "

    #@71
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    .line 769
    iget-object v3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@77
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v2

    #@7b
    .line 770
    const-string/jumbo v3, " "

    #@7e
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    .line 770
    iget-object v3, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@84
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    .line 771
    const-string/jumbo v3, " "

    #@8b
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    .line 771
    iget-object v3, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@91
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v2

    #@95
    .line 772
    const-string/jumbo v3, " "

    #@98
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    .line 772
    iget-object v3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@9e
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    .line 773
    const-string/jumbo v3, " "

    #@a5
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v3

    #@a9
    .line 773
    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@ab
    if-eqz v2, :cond_0

    #@ad
    const-string/jumbo v2, "(manual)"

    #@b0
    .line 762
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v2

    #@b4
    .line 774
    const-string/jumbo v3, " "

    #@b7
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v2

    #@bb
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v2

    #@bf
    .line 775
    const-string/jumbo v3, " "

    #@c2
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v2

    #@c6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v2

    #@ca
    .line 776
    const-string/jumbo v3, " "

    #@cd
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v3

    #@d1
    .line 776
    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@d3
    if-eqz v2, :cond_1

    #@d5
    const-string/jumbo v2, "CSS supported"

    #@d8
    .line 762
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v2

    #@dc
    .line 777
    const-string/jumbo v3, " "

    #@df
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v2

    #@e3
    .line 777
    iget v3, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@e5
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v2

    #@e9
    .line 778
    const-string/jumbo v3, " "

    #@ec
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v2

    #@f0
    .line 778
    iget v3, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@f2
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v2

    #@f6
    .line 779
    const-string/jumbo v3, " RoamInd="

    #@f9
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v2

    #@fd
    .line 779
    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@ff
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@102
    move-result-object v2

    #@103
    .line 780
    const-string/jumbo v3, " DefRoamInd="

    #@106
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v2

    #@10a
    .line 780
    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@10c
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v2

    #@110
    .line 781
    const-string/jumbo v3, " EmergOnly="

    #@113
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v2

    #@117
    .line 781
    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@119
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v2

    #@11d
    .line 782
    const-string/jumbo v3, " IsDataRoamingFromRegistration="

    #@120
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v2

    #@124
    .line 782
    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@126
    .line 762
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@129
    move-result-object v2

    #@12a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v2

    #@12e
    return-object v2

    #@12f
    .line 773
    :cond_0
    const-string/jumbo v2, ""

    #@132
    goto/16 :goto_0

    #@134
    .line 776
    :cond_1
    const-string/jumbo v2, "CSS not supported"

    #@137
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 346
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 347
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 348
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 349
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 350
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 351
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 352
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 353
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2a
    .line 354
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@2c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f
    .line 355
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 356
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@36
    if-eqz v0, :cond_0

    #@38
    move v0, v1

    #@39
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 357
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 358
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 359
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@48
    if-eqz v0, :cond_1

    #@4a
    move v0, v1

    #@4b
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    .line 360
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 361
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@55
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 362
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@5a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    .line 363
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@5f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@62
    .line 364
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    #@64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@67
    .line 365
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    #@69
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6c
    .line 366
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@6e
    if-eqz v0, :cond_2

    #@70
    move v0, v1

    #@71
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@74
    .line 367
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@76
    if-eqz v0, :cond_3

    #@78
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7b
    .line 345
    return-void

    #@7c
    :cond_0
    move v0, v2

    #@7d
    .line 356
    goto :goto_0

    #@7e
    :cond_1
    move v0, v2

    #@7f
    .line 359
    goto :goto_1

    #@80
    :cond_2
    move v0, v2

    #@81
    .line 366
    goto :goto_2

    #@82
    :cond_3
    move v1, v2

    #@83
    .line 367
    goto :goto_3
.end method
