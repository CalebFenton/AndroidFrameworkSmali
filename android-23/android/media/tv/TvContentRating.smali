.class public final Landroid/media/tv/TvContentRating;
.super Ljava/lang/Object;
.source "TvContentRating.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "/"

.field public static final UNRATED:Landroid/media/tv/TvContentRating;


# instance fields
.field private final mDomain:Ljava/lang/String;

.field private final mHashCode:I

.field private final mRating:Ljava/lang/String;

.field private final mRatingSystem:Ljava/lang/String;

.field private final mSubRatings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 794
    new-instance v0, Landroid/media/tv/TvContentRating;

    #@2
    const-string/jumbo v1, "null"

    #@5
    const-string/jumbo v2, "null"

    #@8
    const-string/jumbo v3, "null"

    #@b
    const/4 v4, 0x0

    #@c
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/tv/TvContentRating;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@f
    sput-object v0, Landroid/media/tv/TvContentRating;->UNRATED:Landroid/media/tv/TvContentRating;

    #@11
    .line 774
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ratingSystem"    # Ljava/lang/String;
    .param p3, "rating"    # Ljava/lang/String;
    .param p4, "subRatings"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 856
    iput-object p1, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    #@7
    .line 857
    iput-object p2, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    #@9
    .line 858
    iput-object p3, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    #@b
    .line 859
    if-eqz p4, :cond_0

    #@d
    array-length v0, p4

    #@e
    if-nez v0, :cond_1

    #@10
    .line 860
    :cond_0
    iput-object v1, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    #@12
    .line 865
    :goto_0
    const/4 v0, 0x2

    #@13
    new-array v0, v0, [Ljava/lang/Object;

    #@15
    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    #@17
    aput-object v1, v0, v2

    #@19
    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    #@1b
    const/4 v2, 0x1

    #@1c
    aput-object v1, v0, v2

    #@1e
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@21
    move-result v0

    #@22
    mul-int/lit8 v0, v0, 0x1f

    #@24
    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    #@26
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@29
    move-result v1

    #@2a
    add-int/2addr v0, v1

    #@2b
    iput v0, p0, Landroid/media/tv/TvContentRating;->mHashCode:I

    #@2d
    .line 855
    return-void

    #@2e
    .line 862
    :cond_1
    invoke-static {p4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@31
    .line 863
    iput-object p4, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    #@33
    goto :goto_0
.end method

.method public static varargs createRating(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/media/tv/TvContentRating;
    .locals 2
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "ratingSystem"    # Ljava/lang/String;
    .param p2, "rating"    # Ljava/lang/String;
    .param p3, "subRatings"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 809
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 810
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "domain cannot be empty"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 812
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "ratingSystem cannot be empty"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 815
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 816
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v1, "rating cannot be empty"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 818
    :cond_2
    new-instance v0, Landroid/media/tv/TvContentRating;

    #@2f
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/tv/TvContentRating;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@32
    return-object v0
.end method

.method public static unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;
    .locals 7
    .param p0, "ratingString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x3

    #@3
    const/4 v3, 0x0

    #@4
    .line 831
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 832
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v3, "ratingString cannot be empty"

    #@f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 834
    :cond_0
    const-string/jumbo v2, "/"

    #@16
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 835
    .local v0, "strs":[Ljava/lang/String;
    array-length v2, v0

    #@1b
    if-ge v2, v4, :cond_1

    #@1d
    .line 836
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "Invalid rating string: "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2

    #@37
    .line 838
    :cond_1
    array-length v2, v0

    #@38
    if-le v2, v4, :cond_2

    #@3a
    .line 839
    array-length v2, v0

    #@3b
    add-int/lit8 v2, v2, -0x3

    #@3d
    new-array v1, v2, [Ljava/lang/String;

    #@3f
    .line 840
    .local v1, "subRatings":[Ljava/lang/String;
    array-length v2, v1

    #@40
    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@43
    .line 841
    new-instance v2, Landroid/media/tv/TvContentRating;

    #@45
    aget-object v3, v0, v3

    #@47
    aget-object v4, v0, v5

    #@49
    aget-object v5, v0, v6

    #@4b
    invoke-direct {v2, v3, v4, v5, v1}, Landroid/media/tv/TvContentRating;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@4e
    return-object v2

    #@4f
    .line 843
    .end local v1    # "subRatings":[Ljava/lang/String;
    :cond_2
    new-instance v2, Landroid/media/tv/TvContentRating;

    #@51
    aget-object v3, v0, v3

    #@53
    aget-object v4, v0, v5

    #@55
    aget-object v5, v0, v6

    #@57
    const/4 v6, 0x0

    #@58
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/media/tv/TvContentRating;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@5b
    return-object v2
.end method


# virtual methods
.method public final contains(Landroid/media/tv/TvContentRating;)Z
    .locals 6
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 938
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 939
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getMainRating()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    iget-object v3, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 940
    return v4

    #@12
    .line 942
    :cond_0
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getDomain()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 943
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getRatingSystem()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    iget-object v3, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 944
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getMainRating()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    iget-object v3, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_1

    #@36
    .line 947
    invoke-virtual {p0}, Landroid/media/tv/TvContentRating;->getSubRatings()Ljava/util/List;

    #@39
    move-result-object v0

    #@3a
    .line 948
    .local v0, "subRatings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getSubRatings()Ljava/util/List;

    #@3d
    move-result-object v1

    #@3e
    .line 949
    .local v1, "subRatingsOther":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    #@40
    if-nez v1, :cond_2

    #@42
    .line 950
    return v5

    #@43
    .line 945
    .end local v0    # "subRatings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "subRatingsOther":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return v4

    #@44
    .line 951
    .restart local v0    # "subRatings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "subRatingsOther":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-nez v0, :cond_3

    #@46
    if-eqz v1, :cond_3

    #@48
    .line 952
    return v4

    #@49
    .line 953
    :cond_3
    if-eqz v0, :cond_4

    #@4b
    if-nez v1, :cond_4

    #@4d
    .line 954
    return v5

    #@4e
    .line 956
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    #@51
    move-result v2

    #@52
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 962
    instance-of v1, p1, Landroid/media/tv/TvContentRating;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 963
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 965
    check-cast v0, Landroid/media/tv/TvContentRating;

    #@9
    .line 966
    .local v0, "other":Landroid/media/tv/TvContentRating;
    iget v1, p0, Landroid/media/tv/TvContentRating;->mHashCode:I

    #@b
    iget v2, v0, Landroid/media/tv/TvContentRating;->mHashCode:I

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 967
    return v3

    #@10
    .line 969
    :cond_1
    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    #@12
    iget-object v2, v0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    #@14
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_2

    #@1a
    .line 970
    return v3

    #@1b
    .line 972
    :cond_2
    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    #@1d
    iget-object v2, v0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    #@1f
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_3

    #@25
    .line 973
    return v3

    #@26
    .line 975
    :cond_3
    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    #@28
    iget-object v2, v0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    #@2a
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@2d
    move-result v1

    #@2e
    if-nez v1, :cond_4

    #@30
    .line 976
    return v3

    #@31
    .line 978
    :cond_4
    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    #@33
    iget-object v2, v0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    #@35
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    return v1
.end method

.method public flattenToString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 911
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 912
    const-string/jumbo v2, "/"

    #@d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 913
    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 914
    const-string/jumbo v2, "/"

    #@18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 915
    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    #@1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 916
    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 917
    iget-object v3, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    #@26
    const/4 v2, 0x0

    #@27
    array-length v4, v3

    #@28
    :goto_0
    if-ge v2, v4, :cond_0

    #@2a
    aget-object v1, v3, v2

    #@2c
    .line 918
    .local v1, "subRating":Ljava/lang/String;
    const-string/jumbo v5, "/"

    #@2f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 919
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 917
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 922
    .end local v1    # "subRating":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    return-object v2
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 872
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMainRating()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 886
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRatingSystem()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 879
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubRatings()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 894
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 895
    return-object v1

    #@6
    .line 897
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    #@8
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 983
    iget v0, p0, Landroid/media/tv/TvContentRating;->mHashCode:I

    #@2
    return v0
.end method
