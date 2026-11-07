.class public Landroid/app/appsearch/exceptions/AppSearchException;
.super Ljava/lang/Exception;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# instance fields
.field private final blacklist mResultCode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/appsearch/exceptions/AppSearchException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/app/appsearch/exceptions/AppSearchException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 3
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput p1, p0, Landroid/app/appsearch/exceptions/AppSearchException;->mResultCode:I

    return-void
.end method


# virtual methods
.method public whitelist getResultCode()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/exceptions/AppSearchException;->mResultCode:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist toAppSearchResult()Landroid/app/appsearch/AppSearchResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/app/appsearch/AppSearchResult<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/app/appsearch/exceptions/AppSearchException;->mResultCode:I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(ILjava/lang/String;)Landroid/app/appsearch/AppSearchResult;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
