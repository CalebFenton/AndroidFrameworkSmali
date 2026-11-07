.class public final Landroid/telephony/mbms/UriPathPair;
.super Ljava/lang/Object;
.source "UriPathPair.java"

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
            "Landroid/telephony/mbms/UriPathPair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mContentUri:Landroid/net/Uri;

.field private final greylist-max-o mFilePathUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Landroid/telephony/mbms/UriPathPair$1;

    invoke-direct {v0}, Landroid/telephony/mbms/UriPathPair$1;-><init>()V

    sput-object v0, Landroid/telephony/mbms/UriPathPair;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 5
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "contentUri"    # Landroid/net/Uri;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-eqz p1, :cond_2c

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 41
    if-eqz p2, :cond_24

    const-string v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 45
    iput-object p1, p0, Landroid/telephony/mbms/UriPathPair;->mFilePathUri:Landroid/net/Uri;

    .line 46
    iput-object p2, p0, Landroid/telephony/mbms/UriPathPair;->mContentUri:Landroid/net/Uri;

    .line 47
    return-void

    .line 42
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content URI must have content scheme"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File URI must have file scheme"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/mbms/UriPathPair;->mFilePathUri:Landroid/net/Uri;

    .line 52
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/mbms/UriPathPair;->mContentUri:Landroid/net/Uri;

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/mbms/UriPathPair-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/mbms/UriPathPair;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getContentUri()Landroid/net/Uri;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/telephony/mbms/UriPathPair;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getFilePathUri()Landroid/net/Uri;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/telephony/mbms/UriPathPair;->mFilePathUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 95
    iget-object v0, p0, Landroid/telephony/mbms/UriPathPair;->mFilePathUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    iget-object v0, p0, Landroid/telephony/mbms/UriPathPair;->mContentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    return-void
.end method
