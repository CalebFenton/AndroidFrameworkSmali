.class public final Landroid/telephony/SmsCbEtwsInfo;
.super Ljava/lang/Object;
.source "SmsCbEtwsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsCbEtwsInfo$WarningType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SmsCbEtwsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ETWS_WARNING_TYPE_EARTHQUAKE:I = 0x0

.field public static final whitelist ETWS_WARNING_TYPE_EARTHQUAKE_AND_TSUNAMI:I = 0x2

.field public static final whitelist ETWS_WARNING_TYPE_OTHER_EMERGENCY:I = 0x4

.field public static final whitelist ETWS_WARNING_TYPE_TEST_MESSAGE:I = 0x3

.field public static final whitelist ETWS_WARNING_TYPE_TSUNAMI:I = 0x1

.field public static final whitelist ETWS_WARNING_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mIsEmergencyUserAlert:Z

.field private final blacklist mIsPopupAlert:Z

.field private final blacklist mIsPrimary:Z

.field private final greylist-max-o mWarningSecurityInformation:[B

.field private final greylist-max-o mWarningType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 254
    new-instance v0, Landroid/telephony/SmsCbEtwsInfo$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbEtwsInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbEtwsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IZZZ[B)V
    .registers 6
    .param p1, "warningType"    # I
    .param p2, "isEmergencyUserAlert"    # Z
    .param p3, "isPopupAlert"    # Z
    .param p4, "isPrimary"    # Z
    .param p5, "warningSecurityInformation"    # [B

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    .line 111
    iput-boolean p2, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsEmergencyUserAlert:Z

    .line 112
    iput-boolean p3, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPopupAlert:Z

    .line 113
    iput-boolean p4, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPrimary:Z

    .line 114
    iput-object p5, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 115
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsEmergencyUserAlert:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPopupAlert:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    iput-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPrimary:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 124
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPrimaryNotificationSignature()[B
    .registers 4

    .line 231
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    array-length v0, v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_c

    goto :goto_14

    .line 234
    :cond_c
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v2, 0x7

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 232
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPrimaryNotificationTimestamp()J
    .registers 16

    .line 180
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    array-length v0, v0

    const/4 v3, 0x7

    if-ge v0, v3, :cond_d

    goto :goto_6f

    .line 184
    :cond_d
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 185
    .local v3, "year":I
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v4, 0x1

    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v5

    .line 186
    .local v5, "month":I
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v4, 0x2

    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .line 187
    .local v6, "day":I
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v7

    .line 188
    .local v7, "hour":I
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v4, 0x4

    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .line 189
    .local v8, "minute":I
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v4, 0x5

    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v9

    .line 196
    .local v9, "second":I
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v4, 0x6

    aget-byte v10, v0, v4

    .line 199
    .local v10, "tzByte":B
    and-int/lit8 v0, v10, -0x9

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 201
    .local v0, "timezoneOffset":I
    and-int/lit8 v4, v10, 0x8

    if-nez v4, :cond_55

    move v4, v0

    goto :goto_56

    :cond_55
    neg-int v4, v0

    :goto_56
    move v11, v4

    .line 203
    .end local v0    # "timezoneOffset":I
    .local v11, "timezoneOffset":I
    mul-int/lit8 v0, v11, 0xf

    mul-int/lit8 v12, v0, 0x3c

    .line 206
    .local v12, "timeZoneOffsetSeconds":I
    add-int/lit16 v4, v3, 0x7d0

    :try_start_5d
    invoke-static/range {v4 .. v9}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 215
    .local v0, "localDateTime":Ljava/time/LocalDateTime;
    sget-object v4, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v4}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v1
    :try_end_67
    .catch Ljava/time/DateTimeException; {:try_start_5d .. :try_end_67} :catch_6d

    int-to-long v13, v12

    sub-long/2addr v1, v13

    .line 217
    .local v1, "epochSeconds":J
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v1

    return-wide v13

    .line 218
    .end local v0    # "localDateTime":Ljava/time/LocalDateTime;
    .end local v1    # "epochSeconds":J
    :catch_6d
    move-exception v0

    .line 221
    return-wide v1

    .line 181
    .end local v3    # "year":I
    .end local v5    # "month":I
    .end local v6    # "day":I
    .end local v7    # "hour":I
    .end local v8    # "minute":I
    .end local v9    # "second":I
    .end local v10    # "tzByte":B
    .end local v11    # "timezoneOffset":I
    .end local v12    # "timeZoneOffsetSeconds":I
    :cond_6f
    :goto_6f
    return-wide v1
.end method

.method public whitelist getWarningType()I
    .registers 2

    .line 146
    iget v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    return v0
.end method

.method public whitelist isEmergencyUserAlert()Z
    .registers 2

    .line 155
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsEmergencyUserAlert:Z

    return v0
.end method

.method public whitelist isPopupAlert()Z
    .registers 2

    .line 163
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPopupAlert:Z

    return v0
.end method

.method public whitelist isPrimary()Z
    .registers 2

    .line 171
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPrimary:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbEtwsInfo{warningType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergencyUserAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsEmergencyUserAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activatePopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPopupAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 134
    iget v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsEmergencyUserAlert:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPopupAlert:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPrimary:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 139
    return-void
.end method
