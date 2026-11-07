.class public final Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;
.super Ljava/lang/Object;
.source "TrainingExampleRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mResumptionToken:[B

.field private blacklist mTrainingExample:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 121
    new-instance v0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;->mTrainingExample:[B

    .line 42
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;->mResumptionToken:[B

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 112
    .local v0, "trainingExample":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 114
    .local v1, "resumptionToken":[B
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;->mTrainingExample:[B

    .line 115
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;->mResumptionToken:[B

    .line 118
    return-void
.end method

.method constructor blacklist <init>([B[B)V
    .registers 4
    .param p1, "trainingExample"    # [B
    .param p2, "resumptionToken"    # [B

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;->mTrainingExample:[B

    .line 42
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;->mResumptionToken:[B

    .line 64
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;->mTrainingExample:[B

    .line 65
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;->mResumptionToken:[B

    .line 68
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getResumptionToken()[B
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;->mResumptionToken:[B

    return-object v0
.end method

.method public whitelist getTrainingExample()[B
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;->mTrainingExample:[B

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;->mTrainingExample:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 97
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingExampleRecord;->mResumptionToken:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 98
    return-void
.end method
