.class public final Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;
.super Ljava/lang/Object;
.source "AuthenticationStoppedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private final blacklist mRequestReason:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 159
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .registers 6
    .param p1, "biometricSourceType"    # Landroid/hardware/biometrics/BiometricSourceType;
    .param p2, "requestReason"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 69
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 71
    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mRequestReason:I

    .line 72
    const-class v0, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mRequestReason:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 76
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricSourceType;

    .line 146
    .local v0, "biometricSourceType":Landroid/hardware/biometrics/BiometricSourceType;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .local v1, "requestReason":I
    iput-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 149
    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 151
    iput v1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mRequestReason:I

    .line 152
    const-class v2, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v3, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mRequestReason:I

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 156
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 103
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 105
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    .line 107
    .local v2, "that":Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;
    iget-object v3, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v4, v2, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 108
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget v3, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mRequestReason:I

    iget v4, v2, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mRequestReason:I

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    .line 107
    :goto_27
    return v0

    .line 103
    .end local v2    # "that":Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;
    :cond_28
    :goto_28
    return v1
.end method

.method public blacklist getBiometricSourceType()Landroid/hardware/biometrics/BiometricSourceType;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-object v0
.end method

.method public blacklist getRequestReason()I
    .registers 2

    .line 92
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mRequestReason:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 118
    const/4 v0, 0x1

    .line 119
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 120
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mRequestReason:I

    add-int/2addr v0, v2

    .line 121
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 130
    iget-object v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 131
    iget v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;->mRequestReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void
.end method
