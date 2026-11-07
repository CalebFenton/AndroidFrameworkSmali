.class public final Landroid/app/appsearch/ast/query/GetSearchStringParameterNode;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/app/appsearch/ast/FunctionNode;


# instance fields
.field private blacklist mSearchStringIndex:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_7

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    const-string v1, "SearchStringIndex must be non-negative."

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Landroid/app/appsearch/ast/query/GetSearchStringParameterNode;->mSearchStringIndex:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_19

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Landroid/app/appsearch/ast/query/GetSearchStringParameterNode;

    .line 13
    .line 14
    if-eq v3, v2, :cond_10

    .line 15
    .line 16
    goto :goto_19

    .line 17
    :cond_10
    check-cast p1, Landroid/app/appsearch/ast/query/GetSearchStringParameterNode;

    .line 18
    .line 19
    iget p0, p0, Landroid/app/appsearch/ast/query/GetSearchStringParameterNode;->mSearchStringIndex:I

    .line 20
    .line 21
    iget p1, p1, Landroid/app/appsearch/ast/query/GetSearchStringParameterNode;->mSearchStringIndex:I

    .line 22
    .line 23
    if-ne p0, p1, :cond_19

    .line 24
    .line 25
    return v0

    .line 26
    :cond_19
    :goto_19
    return v1
.end method

.method public blacklist getFunctionName()Ljava/lang/String;
    .registers 1

    .line 1
    const-string p0, "getSearchStringParameter"

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getSearchStringIndex()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/ast/query/GetSearchStringParameterNode;->mSearchStringIndex:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/ast/query/GetSearchStringParameterNode;->mSearchStringIndex:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public blacklist setSearchStringIndex(I)V
    .registers 4

    .line 1
    if-ltz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_5

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    :goto_5
    const-string v1, "SearchStringIndex must be non-negative."

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/app/appsearch/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput p1, p0, Landroid/app/appsearch/ast/query/GetSearchStringParameterNode;->mSearchStringIndex:I

    .line 12
    .line 13
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "getSearchStringParameter("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Landroid/app/appsearch/ast/query/GetSearchStringParameterNode;->mSearchStringIndex:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
