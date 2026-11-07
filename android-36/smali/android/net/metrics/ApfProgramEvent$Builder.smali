.class public final Landroid/net/metrics/ApfProgramEvent$Builder;
.super Ljava/lang/Object;
.source "ApfProgramEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/ApfProgramEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActualLifetime:J

.field private blacklist mCurrentRas:I

.field private blacklist mFilteredRas:I

.field private blacklist mFlags:I

.field private blacklist mLifetime:J

.field private blacklist mProgramLength:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/metrics/ApfProgramEvent;
    .registers 11

    .line 170
    new-instance v0, Landroid/net/metrics/ApfProgramEvent;

    iget-wide v1, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mLifetime:J

    iget-wide v3, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mActualLifetime:J

    iget v5, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mFilteredRas:I

    iget v6, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mCurrentRas:I

    iget v7, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mProgramLength:I

    iget v8, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mFlags:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/net/metrics/ApfProgramEvent;-><init>(JJIIIILandroid/net/metrics/ApfProgramEvent-IA;)V

    return-object v0
.end method

.method public whitelist setActualLifetime(J)Landroid/net/metrics/ApfProgramEvent$Builder;
    .registers 3
    .param p1, "lifetime"    # J

    .line 125
    iput-wide p1, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mActualLifetime:J

    .line 126
    return-object p0
.end method

.method public whitelist setCurrentRas(I)Landroid/net/metrics/ApfProgramEvent$Builder;
    .registers 2
    .param p1, "currentRas"    # I

    .line 143
    iput p1, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mCurrentRas:I

    .line 144
    return-object p0
.end method

.method public whitelist setFilteredRas(I)Landroid/net/metrics/ApfProgramEvent$Builder;
    .registers 2
    .param p1, "filteredRas"    # I

    .line 134
    iput p1, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mFilteredRas:I

    .line 135
    return-object p0
.end method

.method public whitelist setFlags(ZZ)Landroid/net/metrics/ApfProgramEvent$Builder;
    .registers 4
    .param p1, "hasIPv4"    # Z
    .param p2, "multicastFilterOn"    # Z

    .line 161
    invoke-static {p1, p2}, Landroid/net/metrics/ApfProgramEvent;->flagsFor(ZZ)I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mFlags:I

    .line 162
    return-object p0
.end method

.method public whitelist setLifetime(J)Landroid/net/metrics/ApfProgramEvent$Builder;
    .registers 3
    .param p1, "lifetime"    # J

    .line 116
    iput-wide p1, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mLifetime:J

    .line 117
    return-object p0
.end method

.method public whitelist setProgramLength(I)Landroid/net/metrics/ApfProgramEvent$Builder;
    .registers 2
    .param p1, "programLength"    # I

    .line 152
    iput p1, p0, Landroid/net/metrics/ApfProgramEvent$Builder;->mProgramLength:I

    .line 153
    return-object p0
.end method
