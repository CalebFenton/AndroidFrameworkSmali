.class public final Landroid/content/UriPermission;
.super Ljava/lang/Object;
.source "UriPermission.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/UriPermission$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_TIME:J = -0x8000000000000000L


# instance fields
.field private final mModeFlags:I

.field private final mPersistedTime:J

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 106
    new-instance v0, Landroid/content/UriPermission$1;

    #@2
    invoke-direct {v0}, Landroid/content/UriPermission$1;-><init>()V

    #@5
    sput-object v0, Landroid/content/UriPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;IJ)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "persistedTime"    # J

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Landroid/content/UriPermission;->mUri:Landroid/net/Uri;

    #@5
    .line 44
    iput p2, p0, Landroid/content/UriPermission;->mModeFlags:I

    #@7
    .line 45
    iput-wide p3, p0, Landroid/content/UriPermission;->mPersistedTime:J

    #@9
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/net/Uri;

    #@a
    iput-object v0, p0, Landroid/content/UriPermission;->mUri:Landroid/net/Uri;

    #@c
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/content/UriPermission;->mModeFlags:I

    #@12
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@15
    move-result-wide v0

    #@16
    iput-wide v0, p0, Landroid/content/UriPermission;->mPersistedTime:J

    #@18
    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 96
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPersistedTime()J
    .locals 2

    #@0
    .prologue
    .line 85
    iget-wide v0, p0, Landroid/content/UriPermission;->mPersistedTime:J

    #@2
    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Landroid/content/UriPermission;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public isReadPermission()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 66
    iget v1, p0, Landroid/content/UriPermission;->mModeFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isWritePermission()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 73
    iget v1, p0, Landroid/content/UriPermission;->mModeFlags:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "UriPermission {uri="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/content/UriPermission;->mUri:Landroid/net/Uri;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", modeFlags="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/content/UriPermission;->mModeFlags:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", persistedTime="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 91
    iget-wide v2, p0, Landroid/content/UriPermission;->mPersistedTime:J

    #@28
    .line 90
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 91
    const-string/jumbo v1, "}"

    #@2f
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/content/UriPermission;->mUri:Landroid/net/Uri;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 102
    iget v0, p0, Landroid/content/UriPermission;->mModeFlags:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 103
    iget-wide v0, p0, Landroid/content/UriPermission;->mPersistedTime:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 100
    return-void
.end method
