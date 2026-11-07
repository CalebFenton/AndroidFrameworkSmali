.class public final Landroid/adservices/topics/GetTopicsResponse$Builder;
.super Ljava/lang/Object;
.source "GetTopicsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/topics/GetTopicsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEncryptedTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/topics/EncryptedTopic;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/topics/Topic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/adservices/topics/Topic;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    .local p1, "topics":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/topics/Topic;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResponse$Builder;->mTopics:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResponse$Builder;->mEncryptedTopics:Ljava/util/List;

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResponse$Builder;->mTopics:Ljava/util/List;

    .line 87
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
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

    .line 96
    .local p1, "topics":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/topics/Topic;>;"
    .local p2, "encryptedTopics":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/topics/EncryptedTopic;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResponse$Builder;->mTopics:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResponse$Builder;->mEncryptedTopics:Ljava/util/List;

    .line 97
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResponse$Builder;->mTopics:Ljava/util/List;

    .line 98
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsResponse$Builder;->mEncryptedTopics:Ljava/util/List;

    .line 99
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/topics/GetTopicsResponse;
    .registers 5

    .line 108
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResponse$Builder;->mTopics:Ljava/util/List;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/adservices/topics/GetTopicsResponse$Builder;->mEncryptedTopics:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 111
    new-instance v0, Landroid/adservices/topics/GetTopicsResponse;

    iget-object v1, p0, Landroid/adservices/topics/GetTopicsResponse$Builder;->mTopics:Ljava/util/List;

    iget-object v2, p0, Landroid/adservices/topics/GetTopicsResponse$Builder;->mEncryptedTopics:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/topics/GetTopicsResponse;-><init>(Ljava/util/List;Ljava/util/List;Landroid/adservices/topics/GetTopicsResponse-IA;)V

    return-object v0

    .line 109
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Topics is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
