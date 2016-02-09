.class public final Landroid/media/tv/TvContentRatingSystemInfo;
.super Ljava/lang/Object;
.source "TvContentRatingSystemInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvContentRatingSystemInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mXmlUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 84
    new-instance v0, Landroid/media/tv/TvContentRatingSystemInfo$1;

    #@2
    invoke-direct {v0}, Landroid/media/tv/TvContentRatingSystemInfo$1;-><init>()V

    #@5
    .line 83
    sput-object v0, Landroid/media/tv/TvContentRatingSystemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "xmlUri"    # Landroid/net/Uri;
    .param p2, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    #@5
    .line 58
    iput-object p2, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 97
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/net/Uri;

    #@a
    iput-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    #@c
    .line 98
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@12
    iput-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@14
    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/TvContentRatingSystemInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvContentRatingSystemInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static final createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;
    .locals 3
    .param p0, "xmlResourceId"    # I
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 48
    new-instance v1, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    .line 49
    const-string/jumbo v2, "android.resource"

    #@8
    .line 48
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v1

    #@c
    .line 50
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@e
    .line 48
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@11
    move-result-object v1

    #@12
    .line 51
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 48
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@1d
    move-result-object v0

    #@1e
    .line 53
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/media/tv/TvContentRatingSystemInfo;

    #@20
    invoke-direct {v1, v0, p1}, Landroid/media/tv/TvContentRatingSystemInfo;-><init>(Landroid/net/Uri;Landroid/content/pm/ApplicationInfo;)V

    #@23
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 109
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final getXmlUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public final isSystemDefined()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 66
    iget-object v1, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5
    and-int/lit8 v1, v1, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 104
    iget-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    .line 102
    return-void
.end method
