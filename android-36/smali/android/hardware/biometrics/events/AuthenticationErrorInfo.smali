.class public final Landroid/hardware/biometrics/events/AuthenticationErrorInfo;
.super Ljava/lang/Object;
.source "AuthenticationErrorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/events/AuthenticationErrorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private final blacklist mErrCode:I

.field private final blacklist mErrString:Ljava/lang/String;

.field private final blacklist mRequestReason:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 210
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V
    .registers 8
    .param p1, "biometricSourceType"    # Landroid/hardware/biometrics/BiometricSourceType;
    .param p2, "requestReason"    # I
    .param p3, "errString"    # Ljava/lang/String;
    .param p4, "errCode"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 86
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 88
    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mRequestReason:I

    .line 89
    const-class v0, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mRequestReason:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 91
    iput-object p3, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrString:Ljava/lang/String;

    .line 92
    iput p4, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrCode:I

    .line 95
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 192
    .local v0, "flg":B
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricSourceType;

    .line 193
    .local v1, "biometricSourceType":Landroid/hardware/biometrics/BiometricSourceType;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .local v2, "requestReason":I
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-nez v3, :cond_1a

    move-object v3, v4

    goto :goto_1e

    :cond_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "errString":Ljava/lang/String;
    :goto_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 197
    .local v5, "errCode":I
    iput-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 198
    const-class v6, Landroid/annotation/NonNull;

    iget-object v7, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v6, v4, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 200
    iput v2, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mRequestReason:I

    .line 201
    const-class v6, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v7, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mRequestReason:I

    invoke-static {v6, v4, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 203
    iput-object v3, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrString:Ljava/lang/String;

    .line 204
    iput v5, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrCode:I

    .line 207
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 139
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 140
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_38

    .line 142
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    .line 144
    .local v2, "that":Landroid/hardware/biometrics/events/AuthenticationErrorInfo;
    iget-object v3, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v4, v2, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 145
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget v3, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mRequestReason:I

    iget v4, v2, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mRequestReason:I

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrString:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrString:Ljava/lang/String;

    .line 147
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget v3, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrCode:I

    iget v4, v2, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrCode:I

    if-ne v3, v4, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    .line 144
    :goto_37
    return v0

    .line 140
    .end local v2    # "that":Landroid/hardware/biometrics/events/AuthenticationErrorInfo;
    :cond_38
    :goto_38
    return v1
.end method

.method public blacklist getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-object v0
.end method

.method public blacklist getErrCode()I
    .registers 2

    .line 129
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrCode:I

    return v0
.end method

.method public blacklist getErrString()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrString:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequestReason()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mRequestReason:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 157
    const/4 v0, 0x1

    .line 158
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 159
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mRequestReason:I

    add-int/2addr v0, v2

    .line 160
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrString:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 161
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrCode:I

    add-int/2addr v0, v2

    .line 162
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "flg":B
    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrString:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 173
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 174
    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 175
    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mRequestReason:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrString:Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    :cond_1e
    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;->mErrCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    return-void
.end method
