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

.field static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final REGISTRATION_STATE_HOME_NETWORK:I = 0x1

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING:I = 0x0

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING:I = 0x2

.field public static final REGISTRATION_STATE_REGISTRATION_DENIED:I = 0x3

.field public static final REGISTRATION_STATE_ROAMING:I = 0x5

.field public static final REGISTRATION_STATE_UNKNOWN:I = 0x4

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
    .line 363
    new-instance v0, Landroid/telephony/ServiceState$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    #@5
    .line 362
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
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 172
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@6
    .line 173
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@8
    .line 268
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
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 172
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@7
    .line 173
    iput v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@9
    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@f
    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@15
    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@1b
    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@21
    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@27
    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@2d
    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@33
    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@39
    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@3f
    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@45
    .line 319
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
    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v0

    #@52
    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@54
    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v0

    #@58
    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@5a
    .line 322
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
    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v0

    #@67
    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@69
    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6c
    move-result v0

    #@6d
    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@6f
    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@72
    move-result v0

    #@73
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@75
    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@78
    move-result v0

    #@79
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@7b
    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7e
    move-result v0

    #@7f
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    #@81
    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@84
    move-result v0

    #@85
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    #@87
    .line 329
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
    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v0

    #@94
    if-eqz v0, :cond_3

    #@96
    :goto_3
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@98
    .line 308
    return-void

    #@99
    :cond_0
    move v0, v2

    #@9a
    .line 319
    goto :goto_0

    #@9b
    :cond_1
    move v0, v2

    #@9c
    .line 322
    goto :goto_1

    #@9d
    :cond_2
    move v0, v2

    #@9e
    .line 329
    goto :goto_2

    #@9f
    :cond_3
    move v1, v2

    #@a0
    .line 330
    goto :goto_3
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 172
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@6
    .line 173
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@8
    .line 277
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    #@b
    .line 276
    return-void
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
    .line 1153
    if-nez p0, :cond_0

    #@4
    .line 1154
    return v0

    #@5
    .line 1155
    :cond_0
    if-lt p1, v0, :cond_2

    #@7
    .line 1156
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
    .line 1158
    :cond_2
    return v1
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 937
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
    .line 1163
    if-lt p0, v1, :cond_0

    #@3
    .line 1164
    add-int/lit8 v0, p0, -0x1

    #@5
    shl-int v0, v1, v0

    #@7
    return v0

    #@8
    .line 1166
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
    .line 1171
    const-string/jumbo v5, "\\|"

    #@4
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 1172
    .local v3, "bearers":[Ljava/lang/String;
    const/4 v1, 0x0

    #@9
    .line 1173
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
    .line 1174
    .local v0, "bearer":Ljava/lang/String;
    const/4 v2, 0x0

    #@10
    .line 1176
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
    .line 1181
    if-nez v2, :cond_0

    #@1a
    .line 1182
    return v6

    #@1b
    .line 1177
    :catch_0
    move-exception v4

    #@1c
    .line 1178
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    return v6

    #@1d
    .line 1185
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    #@20
    move-result v8

    #@21
    or-int/2addr v1, v8

    #@22
    .line 1173
    add-int/lit8 v5, v5, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1187
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
    .line 230
    packed-switch p0, :pswitch_data_0

    #@3
    .line 244
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 232
    :pswitch_0
    const-string/jumbo v0, "home"

    #@a
    return-object v0

    #@b
    .line 235
    :pswitch_1
    const-string/jumbo v0, "roaming"

    #@e
    return-object v0

    #@f
    .line 238
    :pswitch_2
    const-string/jumbo v0, "Domestic Roaming"

    #@12
    return-object v0

    #@13
    .line 241
    :pswitch_3
    const-string/jumbo v0, "International Roaming"

    #@16
    return-object v0

    #@17
    .line 230
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

.method public static hasCdma(I)Z
    .locals 2
    .param p0, "radioTechnologyBitmask"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1148
    and-int/lit8 v1, p0, 0xf

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isCdma(I)Z
    .locals 2
    .param p0, "radioTechnology"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1129
    const/4 v1, 0x4

    #@2
    if-eq p0, v1, :cond_0

    #@4
    .line 1130
    const/4 v1, 0x5

    #@5
    if-ne p0, v1, :cond_1

    #@7
    .line 1129
    :cond_0
    :goto_0
    return v0

    #@8
    .line 1131
    :cond_1
    const/4 v1, 0x6

    #@9
    if-eq p0, v1, :cond_0

    #@b
    .line 1132
    const/4 v1, 0x7

    #@c
    if-eq p0, v1, :cond_0

    #@e
    .line 1133
    const/16 v1, 0x8

    #@10
    if-eq p0, v1, :cond_0

    #@12
    .line 1134
    const/16 v1, 0xc

    #@14
    if-eq p0, v1, :cond_0

    #@16
    .line 1135
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
    .line 1114
    if-eq p0, v0, :cond_0

    #@3
    .line 1115
    const/4 v1, 0x2

    #@4
    if-ne p0, v1, :cond_1

    #@6
    .line 1114
    :cond_0
    :goto_0
    return v0

    #@7
    .line 1116
    :cond_1
    const/4 v1, 0x3

    #@8
    if-eq p0, v1, :cond_0

    #@a
    .line 1117
    const/16 v1, 0x9

    #@c
    if-eq p0, v1, :cond_0

    #@e
    .line 1118
    const/16 v1, 0xa

    #@10
    if-eq p0, v1, :cond_0

    #@12
    .line 1119
    const/16 v1, 0xb

    #@14
    if-eq p0, v1, :cond_0

    #@16
    .line 1120
    const/16 v1, 0xe

    #@18
    if-eq p0, v1, :cond_0

    #@1a
    .line 1121
    const/16 v1, 0xf

    #@1c
    if-eq p0, v1, :cond_0

    #@1e
    .line 1122
    const/16 v1, 0x10

    #@20
    if-eq p0, v1, :cond_0

    #@22
    .line 1123
    const/16 v1, 0x11

    #@24
    if-eq p0, v1, :cond_0

    #@26
    .line 1124
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
    .line 1196
    iget v1, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1197
    return-object p0

    #@6
    .line 1200
    :cond_0
    new-instance v0, Landroid/telephony/ServiceState;

    #@8
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    #@b
    .line 1203
    .local v0, "newSs":Landroid/telephony/ServiceState;
    iget v1, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@d
    iput v1, v0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@f
    .line 1204
    iput-boolean v2, v0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@11
    .line 1206
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 260
    new-instance v0, Landroid/telephony/ServiceState;

    #@2
    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    #@5
    .line 261
    .local v0, "ret":Landroid/telephony/ServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    #@8
    .line 262
    return-object v0
.end method

.method private rilRadioTechnologyToNetworkType(I)I
    .locals 1
    .param p1, "rt"    # I

    #@0
    .prologue
    .line 1039
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1074
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1041
    :pswitch_1
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1043
    :pswitch_2
    const/4 v0, 0x2

    #@8
    return v0

    #@9
    .line 1045
    :pswitch_3
    const/4 v0, 0x3

    #@a
    return v0

    #@b
    .line 1047
    :pswitch_4
    const/16 v0, 0x8

    #@d
    return v0

    #@e
    .line 1049
    :pswitch_5
    const/16 v0, 0x9

    #@10
    return v0

    #@11
    .line 1051
    :pswitch_6
    const/16 v0, 0xa

    #@13
    return v0

    #@14
    .line 1054
    :pswitch_7
    const/4 v0, 0x4

    #@15
    return v0

    #@16
    .line 1056
    :pswitch_8
    const/4 v0, 0x7

    #@17
    return v0

    #@18
    .line 1058
    :pswitch_9
    const/4 v0, 0x5

    #@19
    return v0

    #@1a
    .line 1060
    :pswitch_a
    const/4 v0, 0x6

    #@1b
    return v0

    #@1c
    .line 1062
    :pswitch_b
    const/16 v0, 0xc

    #@1e
    return v0

    #@1f
    .line 1064
    :pswitch_c
    const/16 v0, 0xe

    #@21
    return v0

    #@22
    .line 1066
    :pswitch_d
    const/16 v0, 0xd

    #@24
    return v0

    #@25
    .line 1068
    :pswitch_e
    const/16 v0, 0xf

    #@27
    return v0

    #@28
    .line 1070
    :pswitch_f
    const/16 v0, 0x10

    #@2a
    return v0

    #@2b
    .line 1072
    :pswitch_10
    const/16 v0, 0x12

    #@2d
    return v0

    #@2e
    .line 1039
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public static rilRadioTechnologyToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "rt"    # I

    #@0
    .prologue
    .line 679
    packed-switch p0, :pswitch_data_0

    #@3
    .line 735
    :pswitch_0
    const-string/jumbo v0, "Unexpected"

    #@6
    .line 736
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
    .line 739
    :goto_0
    return-object v0

    #@21
    .line 681
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "Unknown"

    #@24
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@25
    .line 684
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "GPRS"

    #@28
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@29
    .line 687
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "EDGE"

    #@2c
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 690
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "UMTS"

    #@30
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@31
    .line 693
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "CDMA-IS95A"

    #@34
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@35
    .line 696
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "CDMA-IS95B"

    #@38
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@39
    .line 699
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "1xRTT"

    #@3c
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@3d
    .line 702
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "EvDo-rev.0"

    #@40
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@41
    .line 705
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "EvDo-rev.A"

    #@44
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@45
    .line 708
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "HSDPA"

    #@48
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@49
    .line 711
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v0, "HSUPA"

    #@4c
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@4d
    .line 714
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v0, "HSPA"

    #@50
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@51
    .line 717
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v0, "EvDo-rev.B"

    #@54
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@55
    .line 720
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v0, "eHRPD"

    #@58
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@59
    .line 723
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_f
    const-string/jumbo v0, "LTE"

    #@5c
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@5d
    .line 726
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_10
    const-string/jumbo v0, "HSPAP"

    #@60
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@61
    .line 729
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_11
    const-string/jumbo v0, "GSM"

    #@64
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@65
    .line 732
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_12
    const-string/jumbo v0, "IWLAN"

    #@68
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    #@69
    .line 679
    nop

    #@6a
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_11
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 947
    const-string/jumbo v0, "voiceRegState"

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@9
    .line 948
    const-string/jumbo v0, "dataRegState"

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@12
    .line 949
    const-string/jumbo v0, "voiceRoamingType"

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@1b
    .line 950
    const-string/jumbo v0, "dataRoamingType"

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@24
    .line 951
    const-string/jumbo v0, "operator-alpha-long"

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2d
    .line 952
    const-string/jumbo v0, "operator-alpha-short"

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@36
    .line 953
    const-string/jumbo v0, "operator-numeric"

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@3f
    .line 954
    const-string/jumbo v0, "data-operator-alpha-long"

    #@42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@48
    .line 955
    const-string/jumbo v0, "data-operator-alpha-short"

    #@4b
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@51
    .line 956
    const-string/jumbo v0, "data-operator-numeric"

    #@54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@5a
    .line 957
    const-string/jumbo v0, "manual"

    #@5d
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@60
    move-result v0

    #@61
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@63
    .line 958
    const-string/jumbo v0, "radioTechnology"

    #@66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@69
    move-result v0

    #@6a
    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@6c
    .line 959
    const-string/jumbo v0, "dataRadioTechnology"

    #@6f
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@72
    move-result v0

    #@73
    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@75
    .line 960
    const-string/jumbo v0, "cssIndicator"

    #@78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@7b
    move-result v0

    #@7c
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@7e
    .line 961
    const-string/jumbo v0, "networkId"

    #@81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@84
    move-result v0

    #@85
    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@87
    .line 962
    const-string/jumbo v0, "systemId"

    #@8a
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@8d
    move-result v0

    #@8e
    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@90
    .line 963
    const-string/jumbo v0, "cdmaRoamingIndicator"

    #@93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@96
    move-result v0

    #@97
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@99
    .line 964
    const-string/jumbo v0, "cdmaDefaultRoamingIndicator"

    #@9c
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9f
    move-result v0

    #@a0
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@a2
    .line 965
    const-string/jumbo v0, "emergencyOnly"

    #@a5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@a8
    move-result v0

    #@a9
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@ab
    .line 966
    const-string/jumbo v0, "isDataRoamingFromRegistration"

    #@ae
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@b1
    move-result v0

    #@b2
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@b4
    .line 946
    return-void
.end method

.method private setNullState(I)V
    .locals 6
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 771
    const-string/jumbo v0, "PHONE"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "[ServiceState] setNullState="

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 772
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@1f
    .line 773
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@21
    .line 774
    iput v3, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@23
    .line 775
    iput v3, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@25
    .line 776
    iput-object v5, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@27
    .line 777
    iput-object v5, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@29
    .line 778
    iput-object v5, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@2b
    .line 779
    iput-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@2d
    .line 780
    iput-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@2f
    .line 781
    iput-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@31
    .line 782
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@33
    .line 783
    iput v3, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@35
    .line 784
    iput v3, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@37
    .line 785
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@39
    .line 786
    iput v4, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@3b
    .line 787
    iput v4, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@3d
    .line 788
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@3f
    .line 789
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@41
    .line 790
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    #@43
    .line 791
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    #@45
    .line 792
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@47
    .line 793
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@49
    .line 770
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 281
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@2
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@4
    .line 282
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRegState:I

    #@6
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@8
    .line 283
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@a
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@c
    .line 284
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@e
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@10
    .line 285
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@12
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@14
    .line 286
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@16
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@18
    .line 287
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@1a
    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@1c
    .line 288
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@1e
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@20
    .line 289
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@22
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@24
    .line 290
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@26
    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@28
    .line 291
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@2a
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@2c
    .line 292
    iget v0, p1, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@2e
    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@30
    .line 293
    iget v0, p1, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@32
    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@34
    .line 294
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@36
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@38
    .line 295
    iget v0, p1, Landroid/telephony/ServiceState;->mNetworkId:I

    #@3a
    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@3c
    .line 296
    iget v0, p1, Landroid/telephony/ServiceState;->mSystemId:I

    #@3e
    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@40
    .line 297
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@42
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@44
    .line 298
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@46
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@48
    .line 299
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    #@4a
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    #@4c
    .line 300
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    #@4e
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    #@50
    .line 301
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@52
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@54
    .line 302
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@56
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@58
    .line 280
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 359
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
    .line 636
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Landroid/telephony/ServiceState;

    #@4
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 641
    .local v2, "s":Landroid/telephony/ServiceState;
    if-nez p1, :cond_0

    #@7
    .line 642
    return v3

    #@8
    .line 637
    .end local v2    # "s":Landroid/telephony/ServiceState;
    :catch_0
    move-exception v1

    #@9
    .line 638
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    #@a
    .line 645
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/ServiceState;
    :cond_0
    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@c
    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@e
    if-ne v4, v5, :cond_1

    #@10
    .line 646
    iget v4, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@12
    iget v5, v2, Landroid/telephony/ServiceState;->mDataRegState:I

    #@14
    if-ne v4, v5, :cond_1

    #@16
    .line 647
    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@18
    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@1a
    if-ne v4, v5, :cond_1

    #@1c
    .line 648
    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@1e
    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@20
    if-ne v4, v5, :cond_1

    #@22
    .line 649
    iget v4, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@24
    iget v5, v2, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@26
    if-ne v4, v5, :cond_1

    #@28
    .line 650
    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2a
    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2c
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2f
    move-result v4

    #@30
    .line 645
    if-eqz v4, :cond_1

    #@32
    .line 651
    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@34
    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@36
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@39
    move-result v4

    #@3a
    .line 645
    if-eqz v4, :cond_1

    #@3c
    .line 652
    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@3e
    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@40
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@43
    move-result v4

    #@44
    .line 645
    if-eqz v4, :cond_1

    #@46
    .line 653
    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@48
    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@4a
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4d
    move-result v4

    #@4e
    .line 645
    if-eqz v4, :cond_1

    #@50
    .line 654
    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@52
    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@54
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@57
    move-result v4

    #@58
    .line 645
    if-eqz v4, :cond_1

    #@5a
    .line 655
    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@5c
    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@5e
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@61
    move-result v4

    #@62
    .line 645
    if-eqz v4, :cond_1

    #@64
    .line 656
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
    .line 645
    if-eqz v4, :cond_1

    #@76
    .line 657
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
    .line 645
    if-eqz v4, :cond_1

    #@88
    .line 658
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
    .line 645
    if-eqz v4, :cond_1

    #@9a
    .line 659
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
    .line 645
    if-eqz v4, :cond_1

    #@ac
    .line 660
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
    .line 645
    if-eqz v4, :cond_1

    #@be
    .line 661
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
    .line 645
    if-eqz v4, :cond_1

    #@d0
    .line 662
    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@d2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d5
    move-result-object v4

    #@d6
    .line 663
    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@d8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@db
    move-result-object v5

    #@dc
    .line 662
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@df
    move-result v4

    #@e0
    .line 645
    if-eqz v4, :cond_1

    #@e2
    .line 664
    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@e4
    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@e6
    if-ne v4, v5, :cond_1

    #@e8
    .line 665
    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@ea
    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@ec
    if-ne v4, v5, :cond_1

    #@ee
    const/4 v3, 0x1

    #@ef
    .line 645
    :cond_1
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 976
    const-string/jumbo v0, "voiceRegState"

    #@3
    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8
    .line 977
    const-string/jumbo v0, "dataRegState"

    #@b
    iget v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    .line 978
    const-string/jumbo v0, "voiceRoamingType"

    #@13
    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@18
    .line 979
    const-string/jumbo v0, "dataRoamingType"

    #@1b
    iget v1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@1d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@20
    .line 980
    const-string/jumbo v0, "operator-alpha-long"

    #@23
    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 981
    const-string/jumbo v0, "operator-alpha-short"

    #@2b
    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@2d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 982
    const-string/jumbo v0, "operator-numeric"

    #@33
    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@35
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .line 983
    const-string/jumbo v0, "data-operator-alpha-long"

    #@3b
    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@3d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@40
    .line 984
    const-string/jumbo v0, "data-operator-alpha-short"

    #@43
    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@45
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 985
    const-string/jumbo v0, "data-operator-numeric"

    #@4b
    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@4d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@50
    .line 986
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
    .line 987
    const-string/jumbo v0, "radioTechnology"

    #@63
    iget v1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@65
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@68
    .line 988
    const-string/jumbo v0, "dataRadioTechnology"

    #@6b
    iget v1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@6d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@70
    .line 989
    const-string/jumbo v0, "cssIndicator"

    #@73
    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@75
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@78
    .line 990
    const-string/jumbo v0, "networkId"

    #@7b
    iget v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@7d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@80
    .line 991
    const-string/jumbo v0, "systemId"

    #@83
    iget v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@85
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@88
    .line 992
    const-string/jumbo v0, "cdmaRoamingIndicator"

    #@8b
    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@8d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@90
    .line 993
    const-string/jumbo v0, "cdmaDefaultRoamingIndicator"

    #@93
    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@95
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@98
    .line 994
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
    .line 995
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
    .line 975
    return-void
.end method

.method public getCdmaDefaultRoamingIndicator()I
    .locals 1

    #@0
    .prologue
    .line 493
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@2
    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    #@0
    .prologue
    .line 500
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    #@2
    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    #@0
    .prologue
    .line 507
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    #@2
    return v0
.end method

.method public getCdmaRoamingIndicator()I
    .locals 1

    #@0
    .prologue
    .line 486
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@2
    return v0
.end method

.method public getCssIndicator()I
    .locals 1

    #@0
    .prologue
    .line 1099
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
    .line 1089
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
    .line 537
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataOperatorNumeric()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 600
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataRegState()I
    .locals 1

    #@0
    .prologue
    .line 405
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
    .line 443
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
    .line 463
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@2
    return v0
.end method

.method public getDataRoamingType()I
    .locals 1

    #@0
    .prologue
    .line 472
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@2
    return v0
.end method

.method public getIsManualSelection()Z
    .locals 1

    #@0
    .prologue
    .line 609
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@2
    return v0
.end method

.method public getNetworkId()I
    .locals 1

    #@0
    .prologue
    .line 1104
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@2
    return v0
.end method

.method public getNetworkType()I
    .locals 2

    #@0
    .prologue
    .line 1083
    const-string/jumbo v0, "PHONE"

    #@3
    const-string/jumbo v1, "ServiceState.getNetworkType() DEPRECATED will be removed *******"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1084
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
    .line 519
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 582
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRadioTechnology()I
    .locals 2

    #@0
    .prologue
    .line 1034
    const-string/jumbo v0, "PHONE"

    #@3
    const-string/jumbo v1, "ServiceState.getRadioTechnology() DEPRECATED will be removed *******"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1035
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
    .line 1026
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@2
    return v0
.end method

.method public getRilVoiceRadioTechnology()I
    .locals 1

    #@0
    .prologue
    .line 1022
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@2
    return v0
.end method

.method public getRoaming()Z
    .locals 1

    #@0
    .prologue
    .line 416
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
    .line 377
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
    .line 1109
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@2
    return v0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    #@0
    .prologue
    .line 1094
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
    .line 528
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVoiceOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 557
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVoiceOperatorNumeric()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 591
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVoiceRegState()I
    .locals 1

    #@0
    .prologue
    .line 391
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
    .line 425
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
    .line 434
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
    .line 614
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@4
    mul-int/lit8 v0, v0, 0x1f

    #@6
    .line 615
    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@8
    mul-int/lit8 v3, v3, 0x25

    #@a
    .line 614
    add-int/2addr v0, v3

    #@b
    .line 616
    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@d
    .line 614
    add-int/2addr v0, v3

    #@e
    .line 617
    iget v3, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@10
    .line 614
    add-int/2addr v3, v0

    #@11
    .line 618
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    move v0, v1

    #@16
    .line 614
    :goto_0
    add-int/2addr v3, v0

    #@17
    .line 619
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@19
    if-nez v0, :cond_1

    #@1b
    move v0, v2

    #@1c
    .line 614
    :goto_1
    add-int/2addr v3, v0

    #@1d
    .line 620
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@1f
    if-nez v0, :cond_2

    #@21
    move v0, v2

    #@22
    .line 614
    :goto_2
    add-int/2addr v3, v0

    #@23
    .line 621
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@25
    if-nez v0, :cond_3

    #@27
    move v0, v2

    #@28
    .line 614
    :goto_3
    add-int/2addr v3, v0

    #@29
    .line 622
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@2b
    if-nez v0, :cond_4

    #@2d
    move v0, v2

    #@2e
    .line 614
    :goto_4
    add-int/2addr v3, v0

    #@2f
    .line 623
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@31
    if-nez v0, :cond_5

    #@33
    move v0, v2

    #@34
    .line 614
    :goto_5
    add-int/2addr v3, v0

    #@35
    .line 624
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@37
    if-nez v0, :cond_6

    #@39
    move v0, v2

    #@3a
    .line 614
    :goto_6
    add-int/2addr v0, v3

    #@3b
    .line 625
    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@3d
    .line 614
    add-int/2addr v0, v3

    #@3e
    .line 626
    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@40
    .line 614
    add-int/2addr v3, v0

    #@41
    .line 627
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@43
    if-eqz v0, :cond_7

    #@45
    move v0, v1

    #@46
    .line 614
    :goto_7
    add-int/2addr v0, v3

    #@47
    .line 628
    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@49
    if-eqz v3, :cond_8

    #@4b
    .line 614
    :goto_8
    add-int/2addr v0, v1

    #@4c
    return v0

    #@4d
    :cond_0
    move v0, v2

    #@4e
    .line 618
    goto :goto_0

    #@4f
    .line 619
    :cond_1
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@51
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@54
    move-result v0

    #@55
    goto :goto_1

    #@56
    .line 620
    :cond_2
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@58
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5b
    move-result v0

    #@5c
    goto :goto_2

    #@5d
    .line 621
    :cond_3
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@5f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@62
    move-result v0

    #@63
    goto :goto_3

    #@64
    .line 622
    :cond_4
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@66
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@69
    move-result v0

    #@6a
    goto :goto_4

    #@6b
    .line 623
    :cond_5
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@6d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@70
    move-result v0

    #@71
    goto :goto_5

    #@72
    .line 624
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
    .line 627
    goto :goto_7

    #@7b
    :cond_8
    move v1, v2

    #@7c
    .line 628
    goto :goto_8
.end method

.method public isEmergencyOnly()Z
    .locals 1

    #@0
    .prologue
    .line 479
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@2
    return v0
.end method

.method public setCdmaDefaultRoamingIndicator(I)V
    .locals 0
    .param p1, "roaming"    # I

    #@0
    .prologue
    .line 864
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@2
    .line 863
    return-void
.end method

.method public setCdmaEriIconIndex(I)V
    .locals 0
    .param p1, "index"    # I

    #@0
    .prologue
    .line 871
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    #@2
    .line 870
    return-void
.end method

.method public setCdmaEriIconMode(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 878
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    #@2
    .line 877
    return-void
.end method

.method public setCdmaRoamingIndicator(I)V
    .locals 0
    .param p1, "roaming"    # I

    #@0
    .prologue
    .line 857
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@2
    .line 856
    return-void
.end method

.method public setCssIndicator(I)V
    .locals 1
    .param p1, "css"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1011
    if-eqz p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :cond_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@6
    .line 1010
    return-void
.end method

.method public setDataOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 922
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@2
    .line 921
    return-void
.end method

.method public setDataOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 899
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@2
    .line 900
    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@4
    .line 901
    iput-object p3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@6
    .line 898
    return-void
.end method

.method public setDataRegState(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 817
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@2
    .line 818
    const-string/jumbo v0, "PHONE"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "[ServiceState] setDataRegState="

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 816
    return-void
.end method

.method public setDataRoaming(Z)V
    .locals 1
    .param p1, "dataRoaming"    # Z

    #@0
    .prologue
    .line 838
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@5
    .line 837
    return-void

    #@6
    .line 838
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
    .line 454
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@2
    .line 453
    return-void
.end method

.method public setDataRoamingType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 843
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@2
    .line 842
    return-void
.end method

.method public setEmergencyOnly(Z)V
    .locals 0
    .param p1, "emergencyOnly"    # Z

    #@0
    .prologue
    .line 850
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@2
    .line 849
    return-void
.end method

.method public setIsManualSelection(Z)V
    .locals 0
    .param p1, "isManual"    # Z

    #@0
    .prologue
    .line 926
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@2
    .line 925
    return-void
.end method

.method public setOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 911
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2
    .line 912
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@4
    .line 910
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 882
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2
    .line 883
    iput-object p2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@4
    .line 884
    iput-object p3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@6
    .line 885
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@8
    .line 886
    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@a
    .line 887
    iput-object p3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@c
    .line 881
    return-void
.end method

.method public setRilDataRadioTechnology(I)V
    .locals 3
    .param p1, "rt"    # I

    #@0
    .prologue
    .line 1005
    iput p1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@2
    .line 1006
    const-string/jumbo v0, "PHONE"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "[ServiceState] setDataRadioTechnology="

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget v2, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1004
    return-void
.end method

.method public setRilVoiceRadioTechnology(I)V
    .locals 0
    .param p1, "rt"    # I

    #@0
    .prologue
    .line 1000
    iput p1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@2
    .line 999
    return-void
.end method

.method public setRoaming(Z)V
    .locals 1
    .param p1, "roaming"    # Z

    #@0
    .prologue
    .line 822
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@5
    .line 823
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@7
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@9
    .line 821
    return-void

    #@a
    .line 822
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 805
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    #@3
    .line 806
    const-string/jumbo v0, "PHONE"

    #@6
    const-string/jumbo v1, "[ServiceState] setState deprecated use setVoiceRegState()"

    #@9
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 804
    return-void
.end method

.method public setStateOff()V
    .locals 1

    #@0
    .prologue
    .line 801
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    #@4
    .line 800
    return-void
.end method

.method public setStateOutOfService()V
    .locals 1

    #@0
    .prologue
    .line 797
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    #@4
    .line 796
    return-void
.end method

.method public setSystemAndNetworkId(II)V
    .locals 0
    .param p1, "systemId"    # I
    .param p2, "networkId"    # I

    #@0
    .prologue
    .line 1016
    iput p1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@2
    .line 1017
    iput p2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@4
    .line 1015
    return-void
.end method

.method public setVoiceOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 917
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2
    .line 916
    return-void
.end method

.method public setVoiceOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 892
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@2
    .line 893
    iput-object p2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@4
    .line 894
    iput-object p3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@6
    .line 891
    return-void
.end method

.method public setVoiceRegState(I)V
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 811
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@2
    .line 812
    const-string/jumbo v0, "PHONE"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "[ServiceState] setVoiceRegState="

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 810
    return-void
.end method

.method public setVoiceRoaming(Z)V
    .locals 1
    .param p1, "roaming"    # Z

    #@0
    .prologue
    .line 828
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@5
    .line 827
    return-void

    #@6
    .line 828
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
    .line 833
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@2
    .line 832
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 744
    iget v2, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@2
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 745
    .local v1, "radioTechnology":Ljava/lang/String;
    iget v2, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@8
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 747
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
    .line 748
    const-string/jumbo v3, " "

    #@27
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 749
    const-string/jumbo v3, "voice "

    #@2e
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 749
    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@34
    invoke-static {v3}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 750
    const-string/jumbo v3, " "

    #@3f
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    .line 751
    const-string/jumbo v3, "data "

    #@46
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 751
    iget v3, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@4c
    invoke-static {v3}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    .line 752
    const-string/jumbo v3, " "

    #@57
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    .line 752
    iget-object v3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@5d
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    .line 753
    const-string/jumbo v3, " "

    #@64
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    .line 753
    iget-object v3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@6a
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    .line 754
    const-string/jumbo v3, " "

    #@71
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    .line 754
    iget-object v3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@77
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v2

    #@7b
    .line 755
    const-string/jumbo v3, " "

    #@7e
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    .line 755
    iget-object v3, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@84
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    .line 756
    const-string/jumbo v3, " "

    #@8b
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    .line 756
    iget-object v3, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@91
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v2

    #@95
    .line 757
    const-string/jumbo v3, " "

    #@98
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    .line 757
    iget-object v3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@9e
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    .line 758
    const-string/jumbo v3, " "

    #@a5
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v3

    #@a9
    .line 758
    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@ab
    if-eqz v2, :cond_0

    #@ad
    const-string/jumbo v2, "(manual)"

    #@b0
    .line 747
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v2

    #@b4
    .line 759
    const-string/jumbo v3, " "

    #@b7
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v2

    #@bb
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v2

    #@bf
    .line 760
    const-string/jumbo v3, " "

    #@c2
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v2

    #@c6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v2

    #@ca
    .line 761
    const-string/jumbo v3, " "

    #@cd
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v3

    #@d1
    .line 761
    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@d3
    if-eqz v2, :cond_1

    #@d5
    const-string/jumbo v2, "CSS supported"

    #@d8
    .line 747
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v2

    #@dc
    .line 762
    const-string/jumbo v3, " "

    #@df
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v2

    #@e3
    .line 762
    iget v3, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@e5
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v2

    #@e9
    .line 763
    const-string/jumbo v3, " "

    #@ec
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v2

    #@f0
    .line 763
    iget v3, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@f2
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v2

    #@f6
    .line 764
    const-string/jumbo v3, " RoamInd="

    #@f9
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v2

    #@fd
    .line 764
    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@ff
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@102
    move-result-object v2

    #@103
    .line 765
    const-string/jumbo v3, " DefRoamInd="

    #@106
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v2

    #@10a
    .line 765
    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@10c
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v2

    #@110
    .line 766
    const-string/jumbo v3, " EmergOnly="

    #@113
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v2

    #@117
    .line 766
    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@119
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v2

    #@11d
    .line 767
    const-string/jumbo v3, " IsDataRoamingFromRegistration="

    #@120
    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v2

    #@124
    .line 767
    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@126
    .line 747
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
    .line 758
    :cond_0
    const-string/jumbo v2, ""

    #@132
    goto/16 :goto_0

    #@134
    .line 761
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
    .line 334
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 335
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 336
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 337
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 338
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 339
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 340
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    #@22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@25
    .line 341
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2a
    .line 342
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    #@2c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f
    .line 343
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    #@31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 344
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    #@36
    if-eqz v0, :cond_0

    #@38
    move v0, v1

    #@39
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 345
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 346
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 347
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    #@48
    if-eqz v0, :cond_1

    #@4a
    move v0, v1

    #@4b
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    .line 348
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    #@50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 349
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    #@55
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 350
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    #@5a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    .line 351
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    #@5f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@62
    .line 352
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    #@64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@67
    .line 353
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    #@69
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6c
    .line 354
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    #@6e
    if-eqz v0, :cond_2

    #@70
    move v0, v1

    #@71
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@74
    .line 355
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    #@76
    if-eqz v0, :cond_3

    #@78
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7b
    .line 333
    return-void

    #@7c
    :cond_0
    move v0, v2

    #@7d
    .line 344
    goto :goto_0

    #@7e
    :cond_1
    move v0, v2

    #@7f
    .line 347
    goto :goto_1

    #@80
    :cond_2
    move v0, v2

    #@81
    .line 354
    goto :goto_2

    #@82
    :cond_3
    move v1, v2

    #@83
    .line 355
    goto :goto_3
.end method
