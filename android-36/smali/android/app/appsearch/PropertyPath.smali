.class public Landroid/app/appsearch/PropertyPath;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/PropertyPath$PathSegment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/app/appsearch/PropertyPath$PathSegment;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appsearch/PropertyPath$PathSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/appsearch/PropertyPath;->mPathList:Ljava/util/List;

    .line 6
    :try_start_d
    invoke-direct {p0, p1}, Landroid/app/appsearch/PropertyPath;->recursivePathScan(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/appsearch/PropertyPath$PathSegment;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/appsearch/PropertyPath;->mPathList:Ljava/util/List;

    return-void
.end method

.method private blacklist consumePropertyWithIndex(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x5d

    .line 10
    .line 11
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->indexOf(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, -0x1

    .line 16
    if-eq v1, v2, :cond_74

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v2, v3, :cond_2e

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/16 v4, 0x2e

    .line 31
    .line 32
    if-ne v3, v4, :cond_22

    .line 33
    .line 34
    goto :goto_2e

    .line 35
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p2, "Malformed path (\']\' not followed by \'.\'): "

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_2e
    :goto_2e
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    :try_start_34
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result p2
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_38} :catch_5b

    .line 57
    if-ltz p2, :cond_53

    .line 58
    .line 59
    iget-object p0, p0, Landroid/app/appsearch/PropertyPath;->mPathList:Ljava/util/List;

    .line 60
    .line 61
    new-instance v3, Landroid/app/appsearch/PropertyPath$PathSegment;

    .line 62
    .line 63
    invoke-direct {v3, v0, p2}, Landroid/app/appsearch/PropertyPath$PathSegment;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-ge v2, p0, :cond_51

    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x2

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_51
    const/4 p0, 0x0

    .line 83
    return-object p0

    .line 84
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    const-string p1, "Malformed path (path index less than 0)"

    .line 87
    .line 88
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :catch_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v0, "Malformed path (\""

    .line 97
    .line 98
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p2, "\" as path index)"

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    const-string p1, "Malformed path (no ending \']\')"

    .line 120
    .line 121
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method private blacklist recursivePathScan(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, -0x1

    .line 9
    if-ge v1, v2, :cond_2c

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/16 v5, 0x5d

    .line 16
    .line 17
    if-eq v2, v5, :cond_24

    .line 18
    .line 19
    const/16 v5, 0x5b

    .line 20
    .line 21
    if-eq v2, v5, :cond_1e

    .line 22
    .line 23
    const/16 v6, 0x2e

    .line 24
    .line 25
    if-ne v2, v6, :cond_1b

    .line 26
    .line 27
    goto :goto_1e

    .line 28
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1e
    :goto_1e
    if-ne v2, v5, :cond_22

    .line 32
    .line 33
    move v2, v3

    .line 34
    goto :goto_2e

    .line 35
    :cond_22
    move v2, v0

    .line 36
    goto :goto_2e

    .line 37
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string p1, "Malformed path (no starting \'[\')"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_2c
    move v2, v0

    .line 46
    move v1, v4

    .line 47
    :goto_2e
    if-eqz v1, :cond_64

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_64

    .line 54
    .line 55
    if-ne v1, v4, :cond_43

    .line 56
    .line 57
    iget-object p0, p0, Landroid/app/appsearch/PropertyPath;->mPathList:Ljava/util/List;

    .line 58
    .line 59
    new-instance v0, Landroid/app/appsearch/PropertyPath$PathSegment;

    .line 60
    .line 61
    invoke-direct {v0, p1, v4}, Landroid/app/appsearch/PropertyPath$PathSegment;-><init>(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_43
    if-nez v2, :cond_59

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    add-int/2addr v1, v3

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object v1, p0, Landroid/app/appsearch/PropertyPath;->mPathList:Ljava/util/List;

    .line 80
    .line 81
    new-instance v2, Landroid/app/appsearch/PropertyPath$PathSegment;

    .line 82
    .line 83
    invoke-direct {v2, v0, v4}, Landroid/app/appsearch/PropertyPath$PathSegment;-><init>(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_60

    .line 90
    :cond_59
    invoke-direct {p0, p1, v1}, Landroid/app/appsearch/PropertyPath;->consumePropertyWithIndex(Ljava/lang/String;I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-nez p1, :cond_60

    .line 95
    .line 96
    return-void

    .line 97
    :cond_60
    :goto_60
    invoke-direct {p0, p1}, Landroid/app/appsearch/PropertyPath;->recursivePathScan(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    const-string p1, "Malformed path (blank property name)"

    .line 104
    .line 105
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0
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
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 7
    .line 8
    return v0

    .line 9
    :cond_8
    instance-of v1, p1, Landroid/app/appsearch/PropertyPath;

    .line 10
    .line 11
    if-nez v1, :cond_d

    .line 12
    .line 13
    return v0

    .line 14
    :cond_d
    check-cast p1, Landroid/app/appsearch/PropertyPath;

    .line 15
    .line 16
    iget-object p0, p0, Landroid/app/appsearch/PropertyPath;->mPathList:Ljava/util/List;

    .line 17
    .line 18
    iget-object p1, p1, Landroid/app/appsearch/PropertyPath;->mPathList:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public whitelist get(I)Landroid/app/appsearch/PropertyPath$PathSegment;
    .registers 2

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/PropertyPath;->mPathList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/appsearch/PropertyPath$PathSegment;

    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/PropertyPath;->mPathList:Ljava/util/List;

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

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/app/appsearch/PropertyPath$PathSegment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/PropertyPath;->mPathList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist size()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/PropertyPath;->mPathList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    iget-object v2, p0, Landroid/app/appsearch/PropertyPath;->mPathList:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_2b

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/app/appsearch/PropertyPath;->get(I)Landroid/app/appsearch/PropertyPath$PathSegment;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/app/appsearch/PropertyPath$PathSegment;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Landroid/app/appsearch/PropertyPath;->mPathList:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    if-ge v1, v2, :cond_28

    .line 35
    .line 36
    const/16 v2, 0x2e

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :cond_28
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_6

    .line 44
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
