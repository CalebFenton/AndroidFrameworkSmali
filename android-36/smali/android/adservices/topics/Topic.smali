.class public final Landroid/adservices/topics/Topic;
.super Ljava/lang/Object;
.source "Topic.java"


# instance fields
.field private final blacklist mModelVersion:J

.field private final blacklist mTaxonomyVersion:J

.field private final blacklist mTopicId:I


# direct methods
.method public constructor whitelist <init>(JJI)V
    .registers 6
    .param p1, "mTaxonomyVersion"    # J
    .param p3, "mModelVersion"    # J
    .param p5, "mTopicId"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Landroid/adservices/topics/Topic;->mTaxonomyVersion:J

    .line 35
    iput-wide p3, p0, Landroid/adservices/topics/Topic;->mModelVersion:J

    .line 36
    iput p5, p0, Landroid/adservices/topics/Topic;->mTopicId:I

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 57
    :cond_4
    instance-of v1, p1, Landroid/adservices/topics/Topic;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 58
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/topics/Topic;

    .line 59
    .local v1, "topic":Landroid/adservices/topics/Topic;
    invoke-virtual {p0}, Landroid/adservices/topics/Topic;->getTaxonomyVersion()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/adservices/topics/Topic;->getTaxonomyVersion()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_30

    .line 60
    invoke-virtual {p0}, Landroid/adservices/topics/Topic;->getModelVersion()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/adservices/topics/Topic;->getModelVersion()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_30

    .line 61
    invoke-virtual {p0}, Landroid/adservices/topics/Topic;->getTopicId()I

    move-result v3

    invoke-virtual {v1}, Landroid/adservices/topics/Topic;->getTopicId()I

    move-result v4

    if-ne v3, v4, :cond_30

    goto :goto_31

    :cond_30
    move v0, v2

    .line 59
    :goto_31
    return v0
.end method

.method public whitelist getModelVersion()J
    .registers 3

    .line 41
    iget-wide v0, p0, Landroid/adservices/topics/Topic;->mModelVersion:J

    return-wide v0
.end method

.method public whitelist getTaxonomyVersion()J
    .registers 3

    .line 46
    iget-wide v0, p0, Landroid/adservices/topics/Topic;->mTaxonomyVersion:J

    return-wide v0
.end method

.method public whitelist getTopicId()I
    .registers 2

    .line 51
    iget v0, p0, Landroid/adservices/topics/Topic;->mTopicId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 66
    invoke-virtual {p0}, Landroid/adservices/topics/Topic;->getTaxonomyVersion()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Landroid/adservices/topics/Topic;->getModelVersion()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Landroid/adservices/topics/Topic;->getTopicId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Topic{mTaxonomyVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/adservices/topics/Topic;->mTaxonomyVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModelVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/adservices/topics/Topic;->mModelVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTopicCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/topics/Topic;->mTopicId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
