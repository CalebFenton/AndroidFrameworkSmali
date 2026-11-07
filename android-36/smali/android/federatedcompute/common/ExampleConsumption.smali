.class public Landroid/federatedcompute/common/ExampleConsumption;
.super Ljava/lang/Object;
.source "ExampleConsumption.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/common/ExampleConsumption$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/federatedcompute/common/ExampleConsumption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCollectionUri:Ljava/lang/String;

.field private blacklist mExampleCount:I

.field private blacklist mResumptionToken:[B

.field private blacklist mSelectionCriteria:[B

.field private blacklist mTaskId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 182
    new-instance v0, Landroid/federatedcompute/common/ExampleConsumption$1;

    invoke-direct {v0}, Landroid/federatedcompute/common/ExampleConsumption$1;-><init>()V

    sput-object v0, Landroid/federatedcompute/common/ExampleConsumption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 165
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "taskId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 167
    .local v2, "selectionCriteria":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    .local v3, "exampleCount":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 169
    .local v4, "resumptionToken":[B
    and-int/lit8 v5, v0, 0x10

    const/4 v6, 0x0

    if-nez v5, :cond_1e

    move-object v5, v6

    goto :goto_22

    :cond_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "collectionUri":Ljava/lang/String;
    :goto_22
    iput-object v1, p0, Landroid/federatedcompute/common/ExampleConsumption;->mTaskId:Ljava/lang/String;

    .line 172
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/federatedcompute/common/ExampleConsumption;->mTaskId:Ljava/lang/String;

    invoke-static {v7, v6, v8}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 173
    iput-object v2, p0, Landroid/federatedcompute/common/ExampleConsumption;->mSelectionCriteria:[B

    .line 174
    iput v3, p0, Landroid/federatedcompute/common/ExampleConsumption;->mExampleCount:I

    .line 175
    iput-object v4, p0, Landroid/federatedcompute/common/ExampleConsumption;->mResumptionToken:[B

    .line 176
    iput-object v5, p0, Landroid/federatedcompute/common/ExampleConsumption;->mCollectionUri:Ljava/lang/String;

    .line 179
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;[BI[BLjava/lang/String;)V
    .registers 9
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "selectionCriteria"    # [B
    .param p3, "exampleCount"    # I
    .param p4, "resumptionToken"    # [B
    .param p5, "collectionUri"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/federatedcompute/common/ExampleConsumption;->mTaskId:Ljava/lang/String;

    .line 66
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/federatedcompute/common/ExampleConsumption;->mTaskId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 67
    iput-object p2, p0, Landroid/federatedcompute/common/ExampleConsumption;->mSelectionCriteria:[B

    .line 68
    iput p3, p0, Landroid/federatedcompute/common/ExampleConsumption;->mExampleCount:I

    .line 69
    iput-object p4, p0, Landroid/federatedcompute/common/ExampleConsumption;->mResumptionToken:[B

    .line 70
    iput-object p5, p0, Landroid/federatedcompute/common/ExampleConsumption;->mCollectionUri:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 108
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_46

    .line 110
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/federatedcompute/common/ExampleConsumption;

    .line 112
    .local v2, "that":Landroid/federatedcompute/common/ExampleConsumption;
    iget-object v3, p0, Landroid/federatedcompute/common/ExampleConsumption;->mTaskId:Ljava/lang/String;

    iget-object v4, v2, Landroid/federatedcompute/common/ExampleConsumption;->mTaskId:Ljava/lang/String;

    .line 113
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/federatedcompute/common/ExampleConsumption;->mSelectionCriteria:[B

    iget-object v4, v2, Landroid/federatedcompute/common/ExampleConsumption;->mSelectionCriteria:[B

    .line 114
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_44

    iget v3, p0, Landroid/federatedcompute/common/ExampleConsumption;->mExampleCount:I

    iget v4, v2, Landroid/federatedcompute/common/ExampleConsumption;->mExampleCount:I

    if-ne v3, v4, :cond_44

    iget-object v3, p0, Landroid/federatedcompute/common/ExampleConsumption;->mResumptionToken:[B

    iget-object v4, v2, Landroid/federatedcompute/common/ExampleConsumption;->mResumptionToken:[B

    .line 116
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/federatedcompute/common/ExampleConsumption;->mCollectionUri:Ljava/lang/String;

    iget-object v4, v2, Landroid/federatedcompute/common/ExampleConsumption;->mCollectionUri:Ljava/lang/String;

    .line 117
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    .line 112
    :goto_45
    return v0

    .line 108
    .end local v2    # "that":Landroid/federatedcompute/common/ExampleConsumption;
    :cond_46
    :goto_46
    return v1
.end method

.method public blacklist getCollectionUri()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/federatedcompute/common/ExampleConsumption;->mCollectionUri:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExampleCount()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/federatedcompute/common/ExampleConsumption;->mExampleCount:I

    return v0
.end method

.method public blacklist getResumptionToken()[B
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/federatedcompute/common/ExampleConsumption;->mResumptionToken:[B

    return-object v0
.end method

.method public blacklist getSelectionCriteria()[B
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/federatedcompute/common/ExampleConsumption;->mSelectionCriteria:[B

    return-object v0
.end method

.method public blacklist getTaskId()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/federatedcompute/common/ExampleConsumption;->mTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 126
    const/4 v0, 0x1

    .line 127
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/federatedcompute/common/ExampleConsumption;->mTaskId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 128
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/federatedcompute/common/ExampleConsumption;->mSelectionCriteria:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 129
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/federatedcompute/common/ExampleConsumption;->mExampleCount:I

    add-int/2addr v1, v2

    .line 130
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/federatedcompute/common/ExampleConsumption;->mResumptionToken:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 131
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/federatedcompute/common/ExampleConsumption;->mCollectionUri:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 132
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "flg":B
    iget-object v1, p0, Landroid/federatedcompute/common/ExampleConsumption;->mCollectionUri:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 143
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 144
    iget-object v1, p0, Landroid/federatedcompute/common/ExampleConsumption;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Landroid/federatedcompute/common/ExampleConsumption;->mSelectionCriteria:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 146
    iget v1, p0, Landroid/federatedcompute/common/ExampleConsumption;->mExampleCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v1, p0, Landroid/federatedcompute/common/ExampleConsumption;->mResumptionToken:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 148
    iget-object v1, p0, Landroid/federatedcompute/common/ExampleConsumption;->mCollectionUri:Ljava/lang/String;

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/federatedcompute/common/ExampleConsumption;->mCollectionUri:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    :cond_28
    return-void
.end method
