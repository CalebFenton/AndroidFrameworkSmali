.class public final Landroid/os/ProfilingTrigger;
.super Ljava/lang/Object;
.source "ProfilingTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ProfilingTrigger$Builder;,
        Landroid/os/ProfilingTrigger$TriggerType;
    }
.end annotation


# static fields
.field public static final whitelist TRIGGER_TYPE_ANR:I = 0x2

.field public static final whitelist TRIGGER_TYPE_APP_FULLY_DRAWN:I = 0x1

.field public static final whitelist TRIGGER_TYPE_NONE:I


# instance fields
.field private final blacklist mRateLimitingPeriodHours:I

.field private final blacklist mTriggerType:I


# direct methods
.method private constructor blacklist <init>(II)V
    .registers 3
    .param p1, "triggerType"    # I
    .param p2, "rateLimitingPeriodHours"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroid/os/ProfilingTrigger;->mTriggerType:I

    .line 61
    iput p2, p0, Landroid/os/ProfilingTrigger;->mRateLimitingPeriodHours:I

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/os/ProfilingTrigger-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/os/ProfilingTrigger;-><init>(II)V

    return-void
.end method

.method public static blacklist isValidRequestTriggerType(I)Z
    .registers 3
    .param p0, "triggerType"    # I

    .line 162
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method


# virtual methods
.method public whitelist getRateLimitingPeriodHours()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/os/ProfilingTrigger;->mRateLimitingPeriodHours:I

    return v0
.end method

.method public whitelist getTriggerType()I
    .registers 2

    .line 124
    iget v0, p0, Landroid/os/ProfilingTrigger;->mTriggerType:I

    return v0
.end method

.method public blacklist toValueParcel()Landroid/os/ProfilingTriggerValueParcel;
    .registers 3

    .line 147
    new-instance v0, Landroid/os/ProfilingTriggerValueParcel;

    invoke-direct {v0}, Landroid/os/ProfilingTriggerValueParcel;-><init>()V

    .line 149
    .local v0, "valueParcel":Landroid/os/ProfilingTriggerValueParcel;
    iget v1, p0, Landroid/os/ProfilingTrigger;->mTriggerType:I

    iput v1, v0, Landroid/os/ProfilingTriggerValueParcel;->triggerType:I

    .line 150
    iget v1, p0, Landroid/os/ProfilingTrigger;->mRateLimitingPeriodHours:I

    iput v1, v0, Landroid/os/ProfilingTriggerValueParcel;->rateLimitingPeriodHours:I

    .line 152
    return-object v0
.end method
