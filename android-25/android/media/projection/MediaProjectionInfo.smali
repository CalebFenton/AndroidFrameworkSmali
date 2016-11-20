.class public final Landroid/media/projection/MediaProjectionInfo;
.super Ljava/lang/Object;
.source "MediaProjectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjectionInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/projection/MediaProjectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 82
    new-instance v0, Landroid/media/projection/MediaProjectionInfo$1;

    #@2
    invoke-direct {v0}, Landroid/media/projection/MediaProjectionInfo$1;-><init>()V

    #@5
    .line 81
    sput-object v0, Landroid/media/projection/MediaProjectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    #@9
    .line 37
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    #@f
    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "handle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    #@5
    .line 32
    iput-object p2, p0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    #@7
    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 72
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 50
    instance-of v2, p1, Landroid/media/projection/MediaProjectionInfo;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 51
    check-cast v0, Landroid/media/projection/MediaProjectionInfo;

    #@8
    .line 52
    .local v0, "other":Landroid/media/projection/MediaProjectionInfo;
    iget-object v2, v0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    #@a
    iget-object v3, p0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    #@c
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 53
    iget-object v1, v0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    #@14
    iget-object v2, p0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    #@16
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    .line 52
    :cond_0
    return v1

    #@1b
    .line 55
    .end local v0    # "other":Landroid/media/projection/MediaProjectionInfo;
    :cond_1
    return v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 60
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-object v1, p0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget-object v1, p0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "MediaProjectionInfo{mPackageName="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 66
    iget-object v1, p0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    #@e
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 66
    const-string/jumbo v1, ", mUserHandle="

    #@15
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 67
    iget-object v1, p0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    #@1b
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 67
    const-string/jumbo v1, "}"

    #@22
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mPackageName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 78
    iget-object v0, p0, Landroid/media/projection/MediaProjectionInfo;->mUserHandle:Landroid/os/UserHandle;

    #@7
    invoke-static {v0, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    #@a
    .line 76
    return-void
.end method
