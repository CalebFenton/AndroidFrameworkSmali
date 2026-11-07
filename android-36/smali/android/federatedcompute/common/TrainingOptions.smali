.class public final Landroid/federatedcompute/common/TrainingOptions;
.super Ljava/lang/Object;
.source "TrainingOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/common/TrainingOptions$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/federatedcompute/common/TrainingOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContextData:[B

.field private blacklist mOwnerComponentName:Landroid/content/ComponentName;

.field private blacklist mPopulationName:Ljava/lang/String;

.field private blacklist mServerAddress:Ljava/lang/String;

.field private blacklist mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 221
    new-instance v0, Landroid/federatedcompute/common/TrainingOptions$1;

    invoke-direct {v0}, Landroid/federatedcompute/common/TrainingOptions$1;-><init>()V

    sput-object v0, Landroid/federatedcompute/common/TrainingOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Landroid/federatedcompute/common/TrainingOptions;->mPopulationName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Landroid/federatedcompute/common/TrainingOptions;->mServerAddress:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/federatedcompute/common/TrainingOptions;->mOwnerComponentName:Landroid/content/ComponentName;

    .line 53
    iput-object v0, p0, Landroid/federatedcompute/common/TrainingOptions;->mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 199
    .local v1, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "populationName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "serverAddress":Ljava/lang/String;
    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_20

    move-object v4, v0

    goto :goto_28

    :cond_20
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 204
    .local v4, "ownerComponentName":Landroid/content/ComponentName;
    :goto_28
    and-int/lit8 v5, v1, 0x8

    if-nez v5, :cond_2e

    .line 205
    move-object v5, v0

    goto :goto_36

    .line 206
    :cond_2e
    sget-object v5, Landroid/federatedcompute/common/TrainingInterval;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/federatedcompute/common/TrainingInterval;

    :goto_36
    nop

    .line 207
    .local v5, "trainingInterval":Landroid/federatedcompute/common/TrainingInterval;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 209
    .local v6, "contextData":[B
    iput-object v2, p0, Landroid/federatedcompute/common/TrainingOptions;->mPopulationName:Ljava/lang/String;

    .line 210
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/federatedcompute/common/TrainingOptions;->mPopulationName:Ljava/lang/String;

    invoke-static {v7, v0, v8}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 211
    iput-object v3, p0, Landroid/federatedcompute/common/TrainingOptions;->mServerAddress:Ljava/lang/String;

    .line 212
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/federatedcompute/common/TrainingOptions;->mServerAddress:Ljava/lang/String;

    invoke-static {v7, v0, v8}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 213
    iput-object v4, p0, Landroid/federatedcompute/common/TrainingOptions;->mOwnerComponentName:Landroid/content/ComponentName;

    .line 214
    iput-object v5, p0, Landroid/federatedcompute/common/TrainingOptions;->mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;

    .line 215
    iput-object v6, p0, Landroid/federatedcompute/common/TrainingOptions;->mContextData:[B

    .line 218
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/federatedcompute/common/TrainingInterval;[B)V
    .registers 9
    .param p1, "populationName"    # Ljava/lang/String;
    .param p2, "serverAddress"    # Ljava/lang/String;
    .param p3, "ownerComponentName"    # Landroid/content/ComponentName;
    .param p4, "trainingInterval"    # Landroid/federatedcompute/common/TrainingInterval;
    .param p5, "contextData"    # [B

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Landroid/federatedcompute/common/TrainingOptions;->mPopulationName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Landroid/federatedcompute/common/TrainingOptions;->mServerAddress:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/federatedcompute/common/TrainingOptions;->mOwnerComponentName:Landroid/content/ComponentName;

    .line 53
    iput-object v0, p0, Landroid/federatedcompute/common/TrainingOptions;->mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;

    .line 81
    iput-object p1, p0, Landroid/federatedcompute/common/TrainingOptions;->mPopulationName:Ljava/lang/String;

    .line 82
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/federatedcompute/common/TrainingOptions;->mPopulationName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 83
    iput-object p2, p0, Landroid/federatedcompute/common/TrainingOptions;->mServerAddress:Ljava/lang/String;

    .line 84
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/federatedcompute/common/TrainingOptions;->mServerAddress:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 85
    iput-object p3, p0, Landroid/federatedcompute/common/TrainingOptions;->mOwnerComponentName:Landroid/content/ComponentName;

    .line 86
    iput-object p4, p0, Landroid/federatedcompute/common/TrainingOptions;->mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;

    .line 87
    iput-object p5, p0, Landroid/federatedcompute/common/TrainingOptions;->mContextData:[B

    .line 90
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 140
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 141
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4a

    .line 143
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/federatedcompute/common/TrainingOptions;

    .line 145
    .local v2, "that":Landroid/federatedcompute/common/TrainingOptions;
    iget-object v3, p0, Landroid/federatedcompute/common/TrainingOptions;->mPopulationName:Ljava/lang/String;

    iget-object v4, v2, Landroid/federatedcompute/common/TrainingOptions;->mPopulationName:Ljava/lang/String;

    .line 146
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/federatedcompute/common/TrainingOptions;->mServerAddress:Ljava/lang/String;

    iget-object v4, v2, Landroid/federatedcompute/common/TrainingOptions;->mServerAddress:Ljava/lang/String;

    .line 147
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/federatedcompute/common/TrainingOptions;->mOwnerComponentName:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/federatedcompute/common/TrainingOptions;->mOwnerComponentName:Landroid/content/ComponentName;

    .line 148
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/federatedcompute/common/TrainingOptions;->mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;

    iget-object v4, v2, Landroid/federatedcompute/common/TrainingOptions;->mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;

    .line 149
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/federatedcompute/common/TrainingOptions;->mContextData:[B

    iget-object v4, v2, Landroid/federatedcompute/common/TrainingOptions;->mContextData:[B

    .line 150
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_49

    :cond_48
    move v0, v1

    .line 145
    :goto_49
    return v0

    .line 141
    .end local v2    # "that":Landroid/federatedcompute/common/TrainingOptions;
    :cond_4a
    :goto_4a
    return v1
.end method

.method public blacklist getContextData()[B
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/federatedcompute/common/TrainingOptions;->mContextData:[B

    return-object v0
.end method

.method public blacklist getOwnerComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/federatedcompute/common/TrainingOptions;->mOwnerComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getPopulationName()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/federatedcompute/common/TrainingOptions;->mPopulationName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getServerAddress()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/federatedcompute/common/TrainingOptions;->mServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTrainingInterval()Landroid/federatedcompute/common/TrainingInterval;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/federatedcompute/common/TrainingOptions;->mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 159
    const/4 v0, 0x1

    .line 160
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/federatedcompute/common/TrainingOptions;->mPopulationName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 161
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/federatedcompute/common/TrainingOptions;->mServerAddress:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 162
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/federatedcompute/common/TrainingOptions;->mOwnerComponentName:Landroid/content/ComponentName;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 163
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/federatedcompute/common/TrainingOptions;->mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 164
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/federatedcompute/common/TrainingOptions;->mContextData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 165
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "flg":B
    iget-object v1, p0, Landroid/federatedcompute/common/TrainingOptions;->mOwnerComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 176
    :cond_8
    iget-object v1, p0, Landroid/federatedcompute/common/TrainingOptions;->mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 177
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 178
    iget-object v1, p0, Landroid/federatedcompute/common/TrainingOptions;->mPopulationName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Landroid/federatedcompute/common/TrainingOptions;->mServerAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Landroid/federatedcompute/common/TrainingOptions;->mOwnerComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/federatedcompute/common/TrainingOptions;->mOwnerComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 181
    :cond_25
    iget-object v1, p0, Landroid/federatedcompute/common/TrainingOptions;->mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/federatedcompute/common/TrainingOptions;->mTrainingInterval:Landroid/federatedcompute/common/TrainingInterval;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 182
    :cond_2e
    iget-object v1, p0, Landroid/federatedcompute/common/TrainingOptions;->mContextData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 183
    return-void
.end method
