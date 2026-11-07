.class public final Landroid/content/rollback/RollbackInfo;
.super Ljava/lang/Object;
.source "RollbackInfo.java"

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
            "Landroid/content/rollback/RollbackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCausePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCommittedSessionId:I

.field private final blacklist mIsStaged:Z

.field private final blacklist mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRollbackId:I

.field private blacklist mRollbackImpactLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 170
    new-instance v0, Landroid/content/rollback/RollbackInfo$1;

    invoke-direct {v0}, Landroid/content/rollback/RollbackInfo$1;-><init>()V

    sput-object v0, Landroid/content/rollback/RollbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;ZLjava/util/List;I)V
    .registers 13
    .param p1, "rollbackId"    # I
    .param p3, "isStaged"    # Z
    .param p5, "committedSessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;Z",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;I)V"
        }
    .end annotation

    .line 72
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo;>;"
    .local p4, "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "rollbackId":I
    .end local p2    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo;>;"
    .end local p3    # "isStaged":Z
    .end local p4    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local p5    # "committedSessionId":I
    .local v1, "rollbackId":I
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo;>;"
    .local v3, "isStaged":Z
    .local v4, "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .local v5, "committedSessionId":I
    invoke-direct/range {v0 .. v6}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;II)V

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;ZLjava/util/List;II)V
    .registers 7
    .param p1, "rollbackId"    # I
    .param p3, "isStaged"    # Z
    .param p5, "committedSessionId"    # I
    .param p6, "rollbackImpactLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;Z",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;II)V"
        }
    .end annotation

    .line 55
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/PackageRollbackInfo;>;"
    .local p4, "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    .line 57
    iput-object p2, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    .line 58
    iput-boolean p3, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    .line 59
    iput-object p4, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    .line 60
    iput p5, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    .line 61
    iput p6, p0, Landroid/content/rollback/RollbackInfo;->mRollbackImpactLevel:I

    .line 62
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    .line 83
    sget-object v0, Landroid/content/rollback/PackageRollbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    .line 85
    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackImpactLevel:I

    .line 88
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/rollback/RollbackInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/rollback/RollbackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCausePackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCommittedSessionId()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    return v0
.end method

.method public whitelist getPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getRollbackId()I
    .registers 2

    .line 92
    iget v0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    return v0
.end method

.method public whitelist getRollbackImpactLevel()I
    .registers 2

    .line 140
    iget v0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackImpactLevel:I

    return v0
.end method

.method public whitelist isStaged()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    return v0
.end method

.method public blacklist setCommittedSessionId(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 120
    iput p1, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    .line 121
    return-void
.end method

.method public blacklist setRollbackImpactLevel(I)V
    .registers 2
    .param p1, "rollbackImpactLevel"    # I

    .line 152
    iput p1, p0, Landroid/content/rollback/RollbackInfo;->mRollbackImpactLevel:I

    .line 153
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 162
    iget v0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 164
    iget-boolean v0, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 165
    iget-object v0, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 166
    iget v0, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackImpactLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
