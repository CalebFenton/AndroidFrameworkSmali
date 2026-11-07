.class public final Landroid/app/appsearch/observer/DocumentChangeInfo;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# instance fields
.field private final blacklist mChangedDocumentIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDatabase:Ljava/lang/String;

.field private final blacklist mNamespace:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSchemaName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mPackageName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mDatabase:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mNamespace:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iput-object p4, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mSchemaName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mChangedDocumentIds:Ljava/util/Set;

    .line 32
    .line 33
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
    instance-of v1, p1, Landroid/app/appsearch/observer/DocumentChangeInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Landroid/app/appsearch/observer/DocumentChangeInfo;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mPackageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Landroid/app/appsearch/observer/DocumentChangeInfo;->mPackageName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3f

    .line 22
    .line 23
    iget-object v1, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mDatabase:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Landroid/app/appsearch/observer/DocumentChangeInfo;->mDatabase:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3f

    .line 32
    .line 33
    iget-object v1, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mNamespace:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, p1, Landroid/app/appsearch/observer/DocumentChangeInfo;->mNamespace:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3f

    .line 42
    .line 43
    iget-object v1, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mSchemaName:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p1, Landroid/app/appsearch/observer/DocumentChangeInfo;->mSchemaName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3f

    .line 52
    .line 53
    iget-object p0, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mChangedDocumentIds:Ljava/util/Set;

    .line 54
    .line 55
    iget-object p1, p1, Landroid/app/appsearch/observer/DocumentChangeInfo;->mChangedDocumentIds:Ljava/util/Set;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3f

    .line 62
    .line 63
    return v0

    .line 64
    :cond_3f
    return v2
.end method

.method public whitelist getChangedDocumentIds()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mChangedDocumentIds:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getDatabaseName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mDatabase:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getNamespace()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mNamespace:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getSchemaName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mSchemaName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mDatabase:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mNamespace:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mSchemaName:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mChangedDocumentIds:Ljava/util/Set;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DocumentChangeInfo{packageName=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', database=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mDatabase:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', namespace=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mNamespace:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', schemaName=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mSchemaName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\', changedDocumentIds=\'"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Landroid/app/appsearch/observer/DocumentChangeInfo;->mChangedDocumentIds:Ljava/util/Set;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, "\'}"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
