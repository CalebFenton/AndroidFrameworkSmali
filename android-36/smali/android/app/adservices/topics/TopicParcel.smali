.class public final Landroid/app/adservices/topics/TopicParcel;
.super Ljava/lang/Object;
.source "TopicParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/adservices/topics/TopicParcel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/adservices/topics/TopicParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mModelVersion:J

.field private final blacklist mTaxonomyVersion:J

.field private final blacklist mTopicId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/app/adservices/topics/TopicParcel$1;

    invoke-direct {v0}, Landroid/app/adservices/topics/TopicParcel$1;-><init>()V

    sput-object v0, Landroid/app/adservices/topics/TopicParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/adservices/topics/TopicParcel$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/app/adservices/topics/TopicParcel$Builder;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Landroid/app/adservices/topics/TopicParcel$Builder;->-$$Nest$fgetmTaxonomyVersion(Landroid/app/adservices/topics/TopicParcel$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/adservices/topics/TopicParcel;->mTaxonomyVersion:J

    .line 37
    invoke-static {p1}, Landroid/app/adservices/topics/TopicParcel$Builder;->-$$Nest$fgetmModelVersion(Landroid/app/adservices/topics/TopicParcel$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/adservices/topics/TopicParcel;->mModelVersion:J

    .line 38
    invoke-static {p1}, Landroid/app/adservices/topics/TopicParcel$Builder;->-$$Nest$fgetmTopicId(Landroid/app/adservices/topics/TopicParcel$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/adservices/topics/TopicParcel;->mTopicId:I

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/adservices/topics/TopicParcel$Builder;Landroid/app/adservices/topics/TopicParcel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/adservices/topics/TopicParcel;-><init>(Landroid/app/adservices/topics/TopicParcel$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/adservices/topics/TopicParcel;->mTaxonomyVersion:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/adservices/topics/TopicParcel;->mModelVersion:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/adservices/topics/TopicParcel;->mTopicId:I

    .line 45
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/adservices/topics/TopicParcel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/adservices/topics/TopicParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 132
    return v0

    .line 134
    :cond_4
    instance-of v1, p1, Landroid/app/adservices/topics/TopicParcel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 135
    return v2

    .line 138
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/adservices/topics/TopicParcel;

    .line 139
    .local v1, "topicParcel":Landroid/app/adservices/topics/TopicParcel;
    invoke-virtual {p0}, Landroid/app/adservices/topics/TopicParcel;->getTaxonomyVersion()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/app/adservices/topics/TopicParcel;->getTaxonomyVersion()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_30

    .line 140
    invoke-virtual {p0}, Landroid/app/adservices/topics/TopicParcel;->getModelVersion()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/app/adservices/topics/TopicParcel;->getModelVersion()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_30

    .line 141
    invoke-virtual {p0}, Landroid/app/adservices/topics/TopicParcel;->getTopicId()I

    move-result v3

    invoke-virtual {v1}, Landroid/app/adservices/topics/TopicParcel;->getTopicId()I

    move-result v4

    if-ne v3, v4, :cond_30

    goto :goto_31

    :cond_30
    move v0, v2

    .line 139
    :goto_31
    return v0
.end method

.method public blacklist getModelVersion()J
    .registers 3

    .line 80
    iget-wide v0, p0, Landroid/app/adservices/topics/TopicParcel;->mModelVersion:J

    return-wide v0
.end method

.method public blacklist getTaxonomyVersion()J
    .registers 3

    .line 75
    iget-wide v0, p0, Landroid/app/adservices/topics/TopicParcel;->mTaxonomyVersion:J

    return-wide v0
.end method

.method public blacklist getTopicId()I
    .registers 2

    .line 85
    iget v0, p0, Landroid/app/adservices/topics/TopicParcel;->mTopicId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 126
    invoke-virtual {p0}, Landroid/app/adservices/topics/TopicParcel;->getTaxonomyVersion()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/adservices/topics/TopicParcel;->getModelVersion()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/adservices/topics/TopicParcel;->getTopicId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    iget-wide v0, p0, Landroid/app/adservices/topics/TopicParcel;->mTaxonomyVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-wide v0, p0, Landroid/app/adservices/topics/TopicParcel;->mModelVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget v0, p0, Landroid/app/adservices/topics/TopicParcel;->mTopicId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return-void
.end method
