.class public Landroid/app/appsearch/PropertyPath$PathSegment;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/PropertyPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathSegment"
.end annotation


# static fields
.field public static final whitelist NON_REPEATED_CARDINALITY:I = -0x1


# instance fields
.field private final blacklist mPropertyIndex:I

.field private final blacklist mPropertyName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/PropertyPath$PathSegment;->mPropertyName:Ljava/lang/String;

    .line 8
    .line 9
    iput p2, p0, Landroid/app/appsearch/PropertyPath$PathSegment;->mPropertyIndex:I

    .line 10
    .line 11
    return-void
.end method

.method public static whitelist create(Ljava/lang/String;)Landroid/app/appsearch/PropertyPath$PathSegment;
    .registers 2

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/app/appsearch/PropertyPath$PathSegment;->create(Ljava/lang/String;I)Landroid/app/appsearch/PropertyPath$PathSegment;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist create(Ljava/lang/String;I)Landroid/app/appsearch/PropertyPath$PathSegment;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "["

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "]"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "."

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    if-gez p1, :cond_3b

    const/4 v0, -0x1

    if-ne p1, v0, :cond_27

    goto :goto_3b

    .line 6
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid propertyIndex value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_3b
    :goto_3b
    new-instance v0, Landroid/app/appsearch/PropertyPath$PathSegment;

    invoke-direct {v0, p0, p1}, Landroid/app/appsearch/PropertyPath$PathSegment;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 8
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid propertyName value:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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
    if-nez p1, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v2, p1, Landroid/app/appsearch/PropertyPath$PathSegment;

    .line 10
    .line 11
    if-nez v2, :cond_d

    .line 12
    .line 13
    return v1

    .line 14
    :cond_d
    check-cast p1, Landroid/app/appsearch/PropertyPath$PathSegment;

    .line 15
    .line 16
    iget v2, p0, Landroid/app/appsearch/PropertyPath$PathSegment;->mPropertyIndex:I

    .line 17
    .line 18
    iget v3, p1, Landroid/app/appsearch/PropertyPath$PathSegment;->mPropertyIndex:I

    .line 19
    .line 20
    if-ne v2, v3, :cond_20

    .line 21
    .line 22
    iget-object p0, p0, Landroid/app/appsearch/PropertyPath$PathSegment;->mPropertyName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p1, Landroid/app/appsearch/PropertyPath$PathSegment;->mPropertyName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_20

    .line 31
    .line 32
    return v0

    .line 33
    :cond_20
    return v1
.end method

.method public whitelist getPropertyIndex()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/PropertyPath$PathSegment;->mPropertyIndex:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getPropertyName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/PropertyPath$PathSegment;->mPropertyName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/PropertyPath$PathSegment;->mPropertyName:Ljava/lang/String;

    .line 2
    .line 3
    iget p0, p0, Landroid/app/appsearch/PropertyPath$PathSegment;->mPropertyIndex:I

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Landroid/app/appsearch/PropertyPath$PathSegment;->mPropertyIndex:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_23

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroid/app/appsearch/PropertyPath$PathSegment;->mPropertyName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "["

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget p0, p0, Landroid/app/appsearch/PropertyPath$PathSegment;->mPropertyIndex:I

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, "]"

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_23
    iget-object p0, p0, Landroid/app/appsearch/PropertyPath$PathSegment;->mPropertyName:Ljava/lang/String;

    .line 37
    .line 38
    return-object p0
.end method
