.class public final Landroid/media/quality/ActiveProcessingPicture;
.super Ljava/lang/Object;
.source "ActiveProcessingPicture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mForGlobal:Z

.field private final blacklist mId:I

.field private final blacklist mProfileId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Landroid/media/quality/ActiveProcessingPicture$1;

    invoke-direct {v0}, Landroid/media/quality/ActiveProcessingPicture$1;-><init>()V

    sput-object v0, Landroid/media/quality/ActiveProcessingPicture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "profileId"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/media/quality/ActiveProcessingPicture;->mId:I

    .line 38
    iput-object p2, p0, Landroid/media/quality/ActiveProcessingPicture;->mProfileId:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mForGlobal:Z

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Z)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "profileId"    # Ljava/lang/String;
    .param p3, "forGlobal"    # Z

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroid/media/quality/ActiveProcessingPicture;->mId:I

    .line 45
    iput-object p2, p0, Landroid/media/quality/ActiveProcessingPicture;->mProfileId:Ljava/lang/String;

    .line 46
    iput-boolean p3, p0, Landroid/media/quality/ActiveProcessingPicture;->mForGlobal:Z

    .line 47
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mId:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mProfileId:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mForGlobal:Z

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 75
    iget v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mId:I

    return v0
.end method

.method public whitelist getProfileId()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mProfileId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isForGlobal()Z
    .registers 2

    .line 91
    iget-boolean v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mForGlobal:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 101
    iget v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mProfileId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-boolean v0, p0, Landroid/media/quality/ActiveProcessingPicture;->mForGlobal:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 104
    return-void
.end method
