.class public Landroid/telephony/SmsCbEtwsInfo;
.super Ljava/lang/Object;
.source "SmsCbEtwsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsCbEtwsInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SmsCbEtwsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ETWS_WARNING_TYPE_EARTHQUAKE:I = 0x0

.field public static final ETWS_WARNING_TYPE_EARTHQUAKE_AND_TSUNAMI:I = 0x2

.field public static final ETWS_WARNING_TYPE_OTHER_EMERGENCY:I = 0x4

.field public static final ETWS_WARNING_TYPE_TEST_MESSAGE:I = 0x3

.field public static final ETWS_WARNING_TYPE_TSUNAMI:I = 0x1

.field public static final ETWS_WARNING_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final mActivatePopup:Z

.field private final mEmergencyUserAlert:Z

.field private final mPrimary:Z

.field private final mWarningSecurityInformation:[B

.field private final mWarningType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 211
    new-instance v0, Landroid/telephony/SmsCbEtwsInfo$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/SmsCbEtwsInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/telephony/SmsCbEtwsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>(IZZZ[B)V
    .locals 0
    .param p1, "warningType"    # I
    .param p2, "emergencyUserAlert"    # Z
    .param p3, "activatePopup"    # Z
    .param p4, "primary"    # Z
    .param p5, "warningSecurityInformation"    # [B

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    iput p1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    #@5
    .line 78
    iput-boolean p2, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    #@7
    .line 79
    iput-boolean p3, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    #@9
    .line 80
    iput-boolean p4, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    #@b
    .line 81
    iput-object p5, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@d
    .line 76
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    #@b
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    move v0, v1

    #@12
    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    #@14
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    move v0, v1

    #@1b
    :goto_1
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    #@1d
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2

    #@23
    :goto_2
    iput-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    #@25
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@2b
    .line 85
    return-void

    #@2c
    :cond_0
    move v0, v2

    #@2d
    .line 87
    goto :goto_0

    #@2e
    :cond_1
    move v0, v2

    #@2f
    .line 88
    goto :goto_1

    #@30
    :cond_2
    move v1, v2

    #@31
    .line 89
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 207
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPrimaryNotificationSignature()[B
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/16 v2, 0x32

    #@3
    .line 189
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@9
    array-length v0, v0

    #@a
    if-ge v0, v2, :cond_1

    #@c
    .line 190
    :cond_0
    return-object v1

    #@d
    .line 192
    :cond_1
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@f
    const/4 v1, 0x7

    #@10
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public getPrimaryNotificationTimestamp()J
    .locals 14

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 146
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@4
    if-eqz v9, :cond_0

    #@6
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@8
    array-length v9, v9

    #@9
    const/4 v10, 0x7

    #@a
    if-ge v9, v10, :cond_1

    #@c
    .line 147
    :cond_0
    const-wide/16 v10, 0x0

    #@e
    return-wide v10

    #@f
    .line 150
    :cond_1
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@11
    aget-byte v9, v9, v11

    #@13
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    #@16
    move-result v8

    #@17
    .line 151
    .local v8, "year":I
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@19
    aget-byte v9, v9, v12

    #@1b
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    #@1e
    move-result v3

    #@1f
    .line 152
    .local v3, "month":I
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@21
    const/4 v10, 0x2

    #@22
    aget-byte v9, v9, v10

    #@24
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    #@27
    move-result v0

    #@28
    .line 153
    .local v0, "day":I
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@2a
    const/4 v10, 0x3

    #@2b
    aget-byte v9, v9, v10

    #@2d
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    #@30
    move-result v1

    #@31
    .line 154
    .local v1, "hour":I
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@33
    const/4 v10, 0x4

    #@34
    aget-byte v9, v9, v10

    #@36
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    #@39
    move-result v2

    #@3a
    .line 155
    .local v2, "minute":I
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@3c
    const/4 v10, 0x5

    #@3d
    aget-byte v9, v9, v10

    #@3f
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    #@42
    move-result v4

    #@43
    .line 162
    .local v4, "second":I
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@45
    const/4 v10, 0x6

    #@46
    aget-byte v7, v9, v10

    #@48
    .line 165
    .local v7, "tzByte":B
    and-int/lit8 v9, v7, -0x9

    #@4a
    int-to-byte v9, v9

    #@4b
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    #@4e
    move-result v6

    #@4f
    .line 167
    .local v6, "timezoneOffset":I
    and-int/lit8 v9, v7, 0x8

    #@51
    if-nez v9, :cond_2

    #@53
    .line 169
    :goto_0
    new-instance v5, Landroid/text/format/Time;

    #@55
    const-string/jumbo v9, "UTC"

    #@58
    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #@5b
    .line 172
    .local v5, "time":Landroid/text/format/Time;
    add-int/lit16 v9, v8, 0x7d0

    #@5d
    iput v9, v5, Landroid/text/format/Time;->year:I

    #@5f
    .line 173
    add-int/lit8 v9, v3, -0x1

    #@61
    iput v9, v5, Landroid/text/format/Time;->month:I

    #@63
    .line 174
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    #@65
    .line 175
    iput v1, v5, Landroid/text/format/Time;->hour:I

    #@67
    .line 176
    iput v2, v5, Landroid/text/format/Time;->minute:I

    #@69
    .line 177
    iput v4, v5, Landroid/text/format/Time;->second:I

    #@6b
    .line 180
    invoke-virtual {v5, v12}, Landroid/text/format/Time;->toMillis(Z)J

    #@6e
    move-result-wide v10

    #@6f
    mul-int/lit8 v9, v6, 0xf

    #@71
    mul-int/lit8 v9, v9, 0x3c

    #@73
    mul-int/lit16 v9, v9, 0x3e8

    #@75
    int-to-long v12, v9

    #@76
    sub-long/2addr v10, v12

    #@77
    return-wide v10

    #@78
    .line 167
    .end local v5    # "time":Landroid/text/format/Time;
    :cond_2
    neg-int v6, v6

    #@79
    goto :goto_0
.end method

.method public getWarningType()I
    .locals 1

    #@0
    .prologue
    .line 113
    iget v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    #@2
    return v0
.end method

.method public isEmergencyUserAlert()Z
    .locals 1

    #@0
    .prologue
    .line 121
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    #@2
    return v0
.end method

.method public isPopupAlert()Z
    .locals 1

    #@0
    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    #@2
    return v0
.end method

.method public isPrimary()Z
    .locals 1

    #@0
    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SmsCbEtwsInfo{warningType="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", emergencyUserAlert="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 198
    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    #@1b
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 198
    const-string/jumbo v1, ", activatePopup="

    #@22
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 198
    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    #@28
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 198
    const/16 v1, 0x7d

    #@2e
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 101
    iget v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 102
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    move v0, v1

    #@c
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 103
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    move v0, v1

    #@14
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 104
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    #@19
    if-eqz v0, :cond_2

    #@1b
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 105
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@23
    .line 100
    return-void

    #@24
    :cond_0
    move v0, v2

    #@25
    .line 102
    goto :goto_0

    #@26
    :cond_1
    move v0, v2

    #@27
    .line 103
    goto :goto_1

    #@28
    :cond_2
    move v1, v2

    #@29
    .line 104
    goto :goto_2
.end method
