.class public final Landroid/app/cloudsearch/SearchResponse;
.super Ljava/lang/Object;
.source "SearchResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/SearchResponse$Builder;,
        Landroid/app/cloudsearch/SearchResponse$SearchStatusCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/cloudsearch/SearchResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SEARCH_STATUS_NO_INTERNET:I = 0x2

.field public static final whitelist SEARCH_STATUS_OK:I = 0x0

.field public static final whitelist SEARCH_STATUS_TIME_OUT:I = 0x1

.field public static final whitelist SEARCH_STATUS_UNKNOWN:I = -0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Landroid/app/cloudsearch/SearchResponse$1;

    invoke-direct {v0}, Landroid/app/cloudsearch/SearchResponse$1;-><init>()V

    sput-object v0, Landroid/app/cloudsearch/SearchResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/cloudsearch/SearchResponse-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/cloudsearch/SearchResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSearchResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/cloudsearch/SearchResult;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getSource()Ljava/lang/String;
    .registers 2

    .line 62
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getStatusCode()I
    .registers 2

    .line 56
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSource(Ljava/lang/String;)V
    .registers 2
    .param p1, "source"    # Ljava/lang/String;

    .line 77
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    return-void
.end method
