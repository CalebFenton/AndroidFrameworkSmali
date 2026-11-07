.class public Landroid/app/job/UserVisibleJobSummary;
.super Ljava/lang/Object;
.source "UserVisibleJobSummary.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/UserVisibleJobSummary;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallingPackageName:Ljava/lang/String;

.field private final blacklist mCallingUid:I

.field private final blacklist mJobId:I

.field private final blacklist mNamespace:Ljava/lang/String;

.field private final blacklist mSourcePackageName:Ljava/lang/String;

.field private final blacklist mSourceUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Landroid/app/job/UserVisibleJobSummary$1;

    invoke-direct {v0}, Landroid/app/job/UserVisibleJobSummary$1;-><init>()V

    sput-object v0, Landroid/app/job/UserVisibleJobSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "sourcePackageName"    # Ljava/lang/String;
    .param p5, "namespace"    # Ljava/lang/String;
    .param p6, "jobId"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    .line 46
    iput-object p2, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    .line 47
    iput p3, p0, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    .line 48
    iput-object p4, p0, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    .line 50
    iput p6, p0, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    .line 51
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 91
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 92
    :cond_4
    instance-of v1, p1, Landroid/app/job/UserVisibleJobSummary;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 93
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/job/UserVisibleJobSummary;

    .line 94
    .local v1, "that":Landroid/app/job/UserVisibleJobSummary;
    iget v3, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    iget v4, v1, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    if-ne v3, v4, :cond_3e

    iget-object v3, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget v3, p0, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    iget v4, v1, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    if-ne v3, v4, :cond_3e

    iget-object v3, p0, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    .line 98
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget v3, p0, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    iget v4, v1, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    if-ne v3, v4, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v2

    .line 94
    :goto_3f
    return v0
.end method

.method public blacklist getCallingPackageName()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCallingUid()I
    .registers 2

    .line 68
    iget v0, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    return v0
.end method

.method public blacklist getJobId()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    return v0
.end method

.method public blacklist getNamespace()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSourcePackageName()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSourceUserId()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    add-int/2addr v1, v2

    .line 106
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 107
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    add-int/2addr v1, v2

    .line 108
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 109
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iget-object v1, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 110
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 112
    :cond_2b
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    add-int/2addr v1, v2

    .line 113
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserVisibleJobSummary{callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callingPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', sourceUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourcePackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', namespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jobId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    iget v0, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget v0, p0, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    return-void
.end method
