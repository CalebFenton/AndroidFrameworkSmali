.class public final Landroid/net/metrics/ValidationProbeEvent$Builder;
.super Ljava/lang/Object;
.source "ValidationProbeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/ValidationProbeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDurationMs:J

.field private blacklist mProbeType:I

.field private blacklist mReturnCode:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/metrics/ValidationProbeEvent;
    .registers 7

    .line 125
    new-instance v0, Landroid/net/metrics/ValidationProbeEvent;

    iget-wide v1, p0, Landroid/net/metrics/ValidationProbeEvent$Builder;->mDurationMs:J

    iget v3, p0, Landroid/net/metrics/ValidationProbeEvent$Builder;->mProbeType:I

    iget v4, p0, Landroid/net/metrics/ValidationProbeEvent$Builder;->mReturnCode:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/metrics/ValidationProbeEvent;-><init>(JIILandroid/net/metrics/ValidationProbeEvent-IA;)V

    return-object v0
.end method

.method public whitelist setDurationMs(J)Landroid/net/metrics/ValidationProbeEvent$Builder;
    .registers 3
    .param p1, "durationMs"    # J

    .line 98
    iput-wide p1, p0, Landroid/net/metrics/ValidationProbeEvent$Builder;->mDurationMs:J

    .line 99
    return-object p0
.end method

.method public whitelist setProbeType(IZ)Landroid/net/metrics/ValidationProbeEvent$Builder;
    .registers 4
    .param p1, "probeType"    # I
    .param p2, "firstValidation"    # Z

    .line 107
    invoke-static {p1, p2}, Landroid/net/metrics/ValidationProbeEvent;->-$$Nest$smmakeProbeType(IZ)I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ValidationProbeEvent$Builder;->mProbeType:I

    .line 108
    return-object p0
.end method

.method public whitelist setReturnCode(I)Landroid/net/metrics/ValidationProbeEvent$Builder;
    .registers 2
    .param p1, "returnCode"    # I

    .line 116
    iput p1, p0, Landroid/net/metrics/ValidationProbeEvent$Builder;->mReturnCode:I

    .line 117
    return-object p0
.end method
