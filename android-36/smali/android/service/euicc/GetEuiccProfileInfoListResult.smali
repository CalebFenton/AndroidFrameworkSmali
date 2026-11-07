.class public final Landroid/service/euicc/GetEuiccProfileInfoListResult;
.super Ljava/lang/Object;
.source "GetEuiccProfileInfoListResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/euicc/GetEuiccProfileInfoListResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mIsRemovable:Z

.field private final greylist-max-o mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

.field public final greylist-max-o result:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/service/euicc/GetEuiccProfileInfoListResult$1;

    invoke-direct {v0}, Landroid/service/euicc/GetEuiccProfileInfoListResult$1;-><init>()V

    sput-object v0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I[Landroid/service/euicc/EuiccProfileInfo;Z)V
    .registers 7
    .param p1, "result"    # I
    .param p2, "profiles"    # [Landroid/service/euicc/EuiccProfileInfo;
    .param p3, "isRemovable"    # Z

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    .line 96
    iput-boolean p3, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mIsRemovable:Z

    .line 97
    iget v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    if-nez v0, :cond_e

    .line 98
    iput-object p2, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

    goto :goto_30

    .line 101
    :cond_e
    if-eqz p2, :cond_2d

    array-length v0, p2

    if-gtz v0, :cond_14

    goto :goto_2d

    .line 102
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error result with non-empty profiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

    .line 107
    :goto_30
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    .line 111
    sget-object v0, Landroid/service/euicc/EuiccProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/euicc/EuiccProfileInfo;

    iput-object v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mIsRemovable:Z

    .line 113
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/euicc/GetEuiccProfileInfoListResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/euicc/GetEuiccProfileInfoListResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIsRemovable()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mIsRemovable:Z

    return v0
.end method

.method public whitelist getProfiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_6
    iget-object v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getResult()I
    .registers 2

    .line 65
    iget v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GetEuiccProfileInfoListResult: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    invoke-static {v1}, Landroid/service/euicc/EuiccService;->resultToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRemovable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mIsRemovable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProfiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

    .line 135
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mProfiles:[Landroid/service/euicc/EuiccProfileInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 119
    iget-boolean v0, p0, Landroid/service/euicc/GetEuiccProfileInfoListResult;->mIsRemovable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    return-void
.end method
