.class public final Landroid/app/ondeviceintelligence/InferenceInfo$Builder;
.super Ljava/lang/Object;
.source "InferenceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ondeviceintelligence/InferenceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist endTimeMs:J

.field private blacklist startTimeMs:J

.field private blacklist suspendedTimeMs:J

.field private final blacklist uid:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p1, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->uid:I

    .line 178
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/ondeviceintelligence/InferenceInfo;
    .registers 9

    .line 221
    new-instance v0, Landroid/app/ondeviceintelligence/InferenceInfo;

    iget v1, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->uid:I

    iget-wide v2, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->startTimeMs:J

    iget-wide v4, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->endTimeMs:J

    iget-wide v6, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->suspendedTimeMs:J

    invoke-direct/range {v0 .. v7}, Landroid/app/ondeviceintelligence/InferenceInfo;-><init>(IJJJ)V

    return-object v0
.end method

.method public blacklist setEndTimeMillis(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;
    .registers 3
    .param p1, "endTimeMs"    # J

    .line 198
    iput-wide p1, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->endTimeMs:J

    .line 199
    return-object p0
.end method

.method public blacklist setStartTimeMillis(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;
    .registers 3
    .param p1, "startTimeMs"    # J

    .line 187
    iput-wide p1, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->startTimeMs:J

    .line 188
    return-object p0
.end method

.method public blacklist setSuspendedTimeMillis(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;
    .registers 3
    .param p1, "suspendedTimeMs"    # J

    .line 211
    iput-wide p1, p0, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->suspendedTimeMs:J

    .line 212
    return-object p0
.end method
