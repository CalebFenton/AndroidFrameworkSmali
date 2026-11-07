.class public final Landroid/app/appsearch/SearchSuggestionResult;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/SearchSuggestionResult$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/SearchSuggestionResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHashCode:Ljava/lang/Integer;

.field private final blacklist mSuggestedResult:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/SearchSuggestionResultCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/SearchSuggestionResultCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/SearchSuggestionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/SearchSuggestionResult;->mSuggestedResult:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-ne p0, p1, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_4
    instance-of v0, p1, Landroid/app/appsearch/SearchSuggestionResult;

    .line 6
    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    check-cast p1, Landroid/app/appsearch/SearchSuggestionResult;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/app/appsearch/SearchSuggestionResult;->mSuggestedResult:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Landroid/app/appsearch/SearchSuggestionResult;->mSuggestedResult:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public whitelist getSuggestedResult()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/SearchSuggestionResult;->mSuggestedResult:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/SearchSuggestionResult;->mHashCode:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_10

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/appsearch/SearchSuggestionResult;->mSuggestedResult:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroid/app/appsearch/SearchSuggestionResult;->mHashCode:Ljava/lang/Integer;

    .line 16
    .line 17
    :cond_10
    iget-object p0, p0, Landroid/app/appsearch/SearchSuggestionResult;->mHashCode:Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/SearchSuggestionResultCreator;->writeToParcel(Landroid/app/appsearch/SearchSuggestionResult;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
