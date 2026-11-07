.class public final Landroid/os/ProfilingTrigger$Builder;
.super Ljava/lang/Object;
.source "ProfilingTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ProfilingTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderRateLimitingPeriodHours:I

.field private blacklist mBuilderTriggerType:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "triggerType"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/ProfilingTrigger$Builder;->mBuilderRateLimitingPeriodHours:I

    .line 84
    invoke-static {p1}, Landroid/os/ProfilingTrigger;->isValidRequestTriggerType(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 88
    iput p1, p0, Landroid/os/ProfilingTrigger$Builder;->mBuilderTriggerType:I

    .line 89
    return-void

    .line 85
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid trigger type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/os/ProfilingTrigger;
    .registers 5

    .line 94
    new-instance v0, Landroid/os/ProfilingTrigger;

    iget v1, p0, Landroid/os/ProfilingTrigger$Builder;->mBuilderTriggerType:I

    iget v2, p0, Landroid/os/ProfilingTrigger$Builder;->mBuilderRateLimitingPeriodHours:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/ProfilingTrigger;-><init>(IILandroid/os/ProfilingTrigger-IA;)V

    return-object v0
.end method

.method public whitelist setRateLimitingPeriodHours(I)Landroid/os/ProfilingTrigger$Builder;
    .registers 4
    .param p1, "rateLimitingPeriodHours"    # I

    .line 113
    if-ltz p1, :cond_5

    .line 117
    iput p1, p0, Landroid/os/ProfilingTrigger$Builder;->mBuilderRateLimitingPeriodHours:I

    .line 118
    return-object p0

    .line 114
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hours can\'t be negative. Try again."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
