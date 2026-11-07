.class public final Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;
.super Ljava/lang/Object;
.source "TrainingExamplesInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCollectionName:Ljava/lang/String;

.field private blacklist mPopulationName:Ljava/lang/String;

.field private blacklist mResumptionToken:[B

.field private blacklist mTaskName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 152
    new-instance v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mPopulationName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mTaskName:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mResumptionToken:[B

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 135
    .local v1, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "populationName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "taskName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 138
    .local v4, "resumptionToken":[B
    and-int/lit8 v5, v1, 0x8

    if-nez v5, :cond_22

    move-object v5, v0

    goto :goto_26

    :cond_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "collectionName":Ljava/lang/String;
    :goto_26
    iput-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mPopulationName:Ljava/lang/String;

    .line 141
    const-class v6, Landroid/annotation/NonNull;

    iget-object v7, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mPopulationName:Ljava/lang/String;

    invoke-static {v6, v0, v7}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 142
    iput-object v3, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mTaskName:Ljava/lang/String;

    .line 143
    const-class v6, Landroid/annotation/NonNull;

    iget-object v7, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mTaskName:Ljava/lang/String;

    invoke-static {v6, v0, v7}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 145
    iput-object v4, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mResumptionToken:[B

    .line 146
    iput-object v5, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mCollectionName:Ljava/lang/String;

    .line 149
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .registers 8
    .param p1, "populationName"    # Ljava/lang/String;
    .param p2, "taskName"    # Ljava/lang/String;
    .param p3, "resumptionToken"    # [B
    .param p4, "collectionName"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mPopulationName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mTaskName:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mResumptionToken:[B

    .line 67
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mPopulationName:Ljava/lang/String;

    .line 68
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mPopulationName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 69
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mTaskName:Ljava/lang/String;

    .line 70
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mTaskName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 71
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mResumptionToken:[B

    .line 72
    iput-object p4, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mCollectionName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 261
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCollectionName()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mCollectionName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPopulationName()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mPopulationName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResumptionToken()[B
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mResumptionToken:[B

    return-object v0
.end method

.method public blacklist getTaskName()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mTaskName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "flg":B
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mCollectionName:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 116
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 117
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mPopulationName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mTaskName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mResumptionToken:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 120
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mCollectionName:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExamplesInputParcel;->mCollectionName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    :cond_23
    return-void
.end method
