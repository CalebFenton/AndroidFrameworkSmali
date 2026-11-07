.class public final Landroid/media/tv/TvContentRatingSystemInfo;
.super Ljava/lang/Object;
.source "TvContentRatingSystemInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final greylist-max-o mXmlUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Landroid/media/tv/TvContentRatingSystemInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvContentRatingSystemInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvContentRatingSystemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/net/Uri;Landroid/content/pm/ApplicationInfo;)V
    .registers 3
    .param p1, "xmlUri"    # Landroid/net/Uri;
    .param p2, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    .line 58
    iput-object p2, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 59
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-class v0, Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    .line 98
    const-class v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 99
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/TvContentRatingSystemInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvContentRatingSystemInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static final whitelist createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;
    .registers 4
    .param p0, "xmlResourceId"    # I
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 48
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 49
    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 51
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 53
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/media/tv/TvContentRatingSystemInfo;

    invoke-direct {v1, v0, p1}, Landroid/media/tv/TvContentRatingSystemInfo;-><init>(Landroid/net/Uri;Landroid/content/pm/ApplicationInfo;)V

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getXmlUri()Landroid/net/Uri;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final whitelist isSystemDefined()Z
    .registers 3

    .line 66
    iget-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 103
    iget-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    return-void
.end method
