.class public Landroid/media/tv/tuner/filter/SectionEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "SectionEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mDataLength:J

.field private final blacklist mSectionNum:I

.field private final blacklist mTableId:I

.field private final blacklist mVersion:I


# direct methods
.method private constructor blacklist <init>(IIIJ)V
    .registers 6
    .param p1, "tableId"    # I
    .param p2, "version"    # I
    .param p3, "sectionNum"    # I
    .param p4, "dataLength"    # J

    .line 35
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    .line 36
    iput p1, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mTableId:I

    .line 37
    iput p2, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mVersion:I

    .line 38
    iput p3, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mSectionNum:I

    .line 39
    iput-wide p4, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mDataLength:J

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist getDataLength()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-virtual {p0}, Landroid/media/tv/tuner/filter/SectionEvent;->getDataLengthLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getDataLengthLong()J
    .registers 3

    .line 78
    iget-wide v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mDataLength:J

    return-wide v0
.end method

.method public whitelist getSectionNumber()I
    .registers 2

    .line 60
    iget v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mSectionNum:I

    return v0
.end method

.method public whitelist getTableId()I
    .registers 2

    .line 46
    iget v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mTableId:I

    return v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 53
    iget v0, p0, Landroid/media/tv/tuner/filter/SectionEvent;->mVersion:I

    return v0
.end method
