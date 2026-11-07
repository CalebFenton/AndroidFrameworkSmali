.class public Landroid/app/appsearch/SearchResultPage;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/SearchResultPage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mNextPageToken:J

.field private final blacklist mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/SearchResultPageCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/SearchResultPageCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/SearchResultPage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Landroid/app/appsearch/SearchResultPage;->mNextPageToken:J

    .line 6
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Landroid/app/appsearch/SearchResultPage;->mResults:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(JLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-wide p1, p0, Landroid/app/appsearch/SearchResultPage;->mNextPageToken:J

    .line 3
    iput-object p3, p0, Landroid/app/appsearch/SearchResultPage;->mResults:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist getNextPageToken()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/SearchResultPage;->mNextPageToken:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public blacklist getResults()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchResultPage;->mResults:Ljava/util/List;

    .line 2
    .line 3
    if-nez p0, :cond_6

    .line 4
    .line 5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    :cond_6
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/SearchResultPageCreator;->writeToParcel(Landroid/app/appsearch/SearchResultPage;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
