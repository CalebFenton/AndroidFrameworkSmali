.class public Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;
.super Ljava/lang/Object;
.source "TrainingExamplesOutputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<",
            "Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 127
    new-instance v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;->mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 116
    .local v1, "flg":B
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_f

    .line 117
    goto :goto_17

    .line 118
    :cond_f
    sget-object v0, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    :goto_17
    nop

    .line 120
    .local v0, "trainingExampleRecords":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;>;"
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;->mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    .line 123
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<",
            "Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "trainingExampleRecords":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;->mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    .line 51
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;->mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    .line 54
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 70
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 72
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;

    .line 74
    .local v0, "that":Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;->mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    iget-object v2, v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;->mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    .line 75
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 74
    return v1

    .line 70
    .end local v0    # "that":Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTrainingExampleRecords()Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<",
            "Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;->mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 84
    const/4 v0, 0x1

    .line 85
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;->mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 86
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "flg":B
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;->mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 97
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 98
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;->mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesOutputParcel;->mTrainingExampleRecords:Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 99
    :cond_14
    return-void
.end method
