.class public final Landroid/app/appsearch/ast/query/HasPropertyNode;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/app/appsearch/ast/FunctionNode;


# instance fields
.field private blacklist mPropertyPath:Landroid/app/appsearch/PropertyPath;


# direct methods
.method public constructor blacklist <init>(Landroid/app/appsearch/PropertyPath;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/ast/query/HasPropertyNode;->mPropertyPath:Landroid/app/appsearch/PropertyPath;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    if-ne p0, p1, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_4
    if-eqz p1, :cond_1a

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-class v1, Landroid/app/appsearch/ast/query/HasPropertyNode;

    .line 12
    .line 13
    if-eq v1, v0, :cond_f

    .line 14
    .line 15
    goto :goto_1a

    .line 16
    :cond_f
    check-cast p1, Landroid/app/appsearch/ast/query/HasPropertyNode;

    .line 17
    .line 18
    iget-object p0, p0, Landroid/app/appsearch/ast/query/HasPropertyNode;->mPropertyPath:Landroid/app/appsearch/PropertyPath;

    .line 19
    .line 20
    iget-object p1, p1, Landroid/app/appsearch/ast/query/HasPropertyNode;->mPropertyPath:Landroid/app/appsearch/PropertyPath;

    .line 21
    .line 22
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public blacklist getFunctionName()Ljava/lang/String;
    .registers 1

    .line 1
    const-string p0, "hasProperty"

    .line 2
    .line 3
    return-object p0
.end method

.method public blacklist getPropertyPath()Landroid/app/appsearch/PropertyPath;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/ast/query/HasPropertyNode;->mPropertyPath:Landroid/app/appsearch/PropertyPath;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/ast/query/HasPropertyNode;->mPropertyPath:Landroid/app/appsearch/PropertyPath;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public blacklist setPropertyPath(Landroid/app/appsearch/PropertyPath;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/appsearch/ast/query/HasPropertyNode;->mPropertyPath:Landroid/app/appsearch/PropertyPath;

    .line 5
    .line 6
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "hasProperty(\""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroid/app/appsearch/ast/query/HasPropertyNode;->mPropertyPath:Landroid/app/appsearch/PropertyPath;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "\")"

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
