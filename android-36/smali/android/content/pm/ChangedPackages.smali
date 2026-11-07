.class public final Landroid/content/pm/ChangedPackages;
.super Ljava/lang/Object;
.source "ChangedPackages.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ChangedPackages;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSequenceNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/content/pm/ChangedPackages$1;

    invoke-direct {v0}, Landroid/content/pm/ChangedPackages$1;-><init>()V

    sput-object v0, Landroid/content/pm/ChangedPackages;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/List;)V
    .registers 3
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/content/pm/ChangedPackages;->mSequenceNumber:I

    .line 40
    iput-object p2, p0, Landroid/content/pm/ChangedPackages;->mPackageNames:Ljava/util/List;

    .line 41
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ChangedPackages;->mSequenceNumber:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ChangedPackages;->mPackageNames:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPackageNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroid/content/pm/ChangedPackages;->mPackageNames:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSequenceNumber()I
    .registers 2

    .line 64
    iget v0, p0, Landroid/content/pm/ChangedPackages;->mSequenceNumber:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 56
    iget v0, p0, Landroid/content/pm/ChangedPackages;->mSequenceNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Landroid/content/pm/ChangedPackages;->mPackageNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 58
    return-void
.end method
