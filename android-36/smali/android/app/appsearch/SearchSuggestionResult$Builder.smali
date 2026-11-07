.class public final Landroid/app/appsearch/SearchSuggestionResult$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/SearchSuggestionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mSuggestedResult:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Landroid/app/appsearch/SearchSuggestionResult$Builder;->mSuggestedResult:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/appsearch/SearchSuggestionResult;
    .registers 2

    .line 1
    new-instance v0, Landroid/app/appsearch/SearchSuggestionResult;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/app/appsearch/SearchSuggestionResult$Builder;->mSuggestedResult:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/app/appsearch/SearchSuggestionResult;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public whitelist setSuggestedResult(Ljava/lang/String;)Landroid/app/appsearch/SearchSuggestionResult$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/app/appsearch/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/SearchSuggestionResult$Builder;->mSuggestedResult:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method
