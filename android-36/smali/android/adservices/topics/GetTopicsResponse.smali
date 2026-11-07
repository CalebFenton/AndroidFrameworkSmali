.class public final Landroid/adservices/topics/GetTopicsResponse;
.super Ljava/lang/Object;
.source "GetTopicsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/topics/GetTopicsResponse$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mEncryptedTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/topics/EncryptedTopic;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/topics/Topic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/topics/Topic;",
            ">;",
            "Ljava/util/List<",
            "Landroid/adservices/topics/EncryptedTopic;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "topics":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/topics/Topic;>;"
    .local p2, "encryptedTopics":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/topics/EncryptedTopic;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/adservices/topics/GetTopicsResponse;->mTopics:Ljava/util/List;

    .line 37
    iput-object p2, p0, Landroid/adservices/topics/GetTopicsResponse;->mEncryptedTopics:Ljava/util/List;

    .line 38
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Landroid/adservices/topics/GetTopicsResponse-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/adservices/topics/GetTopicsResponse;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 56
    return v0

    .line 58
    :cond_4
    instance-of v1, p1, Landroid/adservices/topics/GetTopicsResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 59
    return v2

    .line 61
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/topics/GetTopicsResponse;

    .line 62
    .local v1, "that":Landroid/adservices/topics/GetTopicsResponse;
    iget-object v3, p0, Landroid/adservices/topics/GetTopicsResponse;->mTopics:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/topics/GetTopicsResponse;->mTopics:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/adservices/topics/GetTopicsResponse;->mEncryptedTopics:Ljava/util/List;

    iget-object v4, v1, Landroid/adservices/topics/GetTopicsResponse;->mEncryptedTopics:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public whitelist getEncryptedTopics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/topics/EncryptedTopic;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResponse;->mEncryptedTopics:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTopics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/topics/Topic;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResponse;->mTopics:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 67
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResponse;->mTopics:Ljava/util/List;

    iget-object v1, p0, Landroid/adservices/topics/GetTopicsResponse;->mEncryptedTopics:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
