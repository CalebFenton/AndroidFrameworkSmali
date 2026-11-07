.class public final Landroid/app/adservices/topics/TopicParcel$Builder;
.super Ljava/lang/Object;
.source "TopicParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/adservices/topics/TopicParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mModelVersion:J

.field private blacklist mTaxonomyVersion:J

.field private blacklist mTopicId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmModelVersion(Landroid/app/adservices/topics/TopicParcel$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/adservices/topics/TopicParcel$Builder;->mModelVersion:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTaxonomyVersion(Landroid/app/adservices/topics/TopicParcel$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/adservices/topics/TopicParcel$Builder;->mTaxonomyVersion:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopicId(Landroid/app/adservices/topics/TopicParcel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/adservices/topics/TopicParcel$Builder;->mTopicId:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/adservices/topics/TopicParcel;
    .registers 3

    .line 120
    new-instance v0, Landroid/app/adservices/topics/TopicParcel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/adservices/topics/TopicParcel;-><init>(Landroid/app/adservices/topics/TopicParcel$Builder;Landroid/app/adservices/topics/TopicParcel-IA;)V

    return-object v0
.end method

.method public blacklist setModelVersion(J)Landroid/app/adservices/topics/TopicParcel$Builder;
    .registers 3
    .param p1, "modelVersion"    # J

    .line 106
    iput-wide p1, p0, Landroid/app/adservices/topics/TopicParcel$Builder;->mModelVersion:J

    .line 107
    return-object p0
.end method

.method public blacklist setTaxonomyVersion(J)Landroid/app/adservices/topics/TopicParcel$Builder;
    .registers 3
    .param p1, "taxonomyVersion"    # J

    .line 99
    iput-wide p1, p0, Landroid/app/adservices/topics/TopicParcel$Builder;->mTaxonomyVersion:J

    .line 100
    return-object p0
.end method

.method public blacklist setTopicId(I)Landroid/app/adservices/topics/TopicParcel$Builder;
    .registers 2
    .param p1, "topicId"    # I

    .line 113
    iput p1, p0, Landroid/app/adservices/topics/TopicParcel$Builder;->mTopicId:I

    .line 114
    return-object p0
.end method
