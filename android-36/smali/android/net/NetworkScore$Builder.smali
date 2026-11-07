.class public final Landroid/net/NetworkScore$Builder;
.super Ljava/lang/Object;
.source "NetworkScore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkScore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist INVALID_LEGACY_INT:I = -0x80000000

.field private static final blacklist POLICY_NONE:J


# instance fields
.field private blacklist mKeepConnectedReason:I

.field private blacklist mLegacyInt:I

.field private blacklist mPolicies:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/NetworkScore$Builder;->mLegacyInt:I

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkScore$Builder;->mKeepConnectedReason:I

    .line 235
    iput v0, p0, Landroid/net/NetworkScore$Builder;->mPolicies:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/NetworkScore;
    .registers 6

    .line 339
    new-instance v0, Landroid/net/NetworkScore;

    iget v1, p0, Landroid/net/NetworkScore$Builder;->mLegacyInt:I

    iget v2, p0, Landroid/net/NetworkScore$Builder;->mPolicies:I

    int-to-long v2, v2

    iget v4, p0, Landroid/net/NetworkScore$Builder;->mKeepConnectedReason:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/NetworkScore;-><init>(IJI)V

    return-object v0
.end method

.method public whitelist setExiting(Z)Landroid/net/NetworkScore$Builder;
    .registers 6
    .param p1, "val"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 314
    if-eqz p1, :cond_c

    .line 315
    iget v0, p0, Landroid/net/NetworkScore$Builder;->mPolicies:I

    int-to-long v0, v0

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/net/NetworkScore$Builder;->mPolicies:I

    goto :goto_15

    .line 317
    :cond_c
    iget v0, p0, Landroid/net/NetworkScore$Builder;->mPolicies:I

    int-to-long v0, v0

    const-wide/16 v2, -0x9

    and-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/net/NetworkScore$Builder;->mPolicies:I

    .line 319
    :goto_15
    return-object p0
.end method

.method public whitelist setKeepConnectedReason(I)Landroid/net/NetworkScore$Builder;
    .registers 2
    .param p1, "reason"    # I

    .line 329
    iput p1, p0, Landroid/net/NetworkScore$Builder;->mKeepConnectedReason:I

    .line 330
    return-object p0
.end method

.method public whitelist setLegacyInt(I)Landroid/net/NetworkScore$Builder;
    .registers 2
    .param p1, "score"    # I

    .line 249
    iput p1, p0, Landroid/net/NetworkScore$Builder;->mLegacyInt:I

    .line 250
    return-object p0
.end method

.method public blacklist setShouldYieldToBadWifi(Z)Landroid/net/NetworkScore$Builder;
    .registers 6
    .param p1, "val"    # Z

    .line 268
    if-eqz p1, :cond_c

    .line 269
    iget v0, p0, Landroid/net/NetworkScore$Builder;->mPolicies:I

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/net/NetworkScore$Builder;->mPolicies:I

    goto :goto_15

    .line 271
    :cond_c
    iget v0, p0, Landroid/net/NetworkScore$Builder;->mPolicies:I

    int-to-long v0, v0

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/net/NetworkScore$Builder;->mPolicies:I

    .line 273
    :goto_15
    return-object p0
.end method

.method public whitelist setTransportPrimary(Z)Landroid/net/NetworkScore$Builder;
    .registers 6
    .param p1, "val"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 289
    if-eqz p1, :cond_c

    .line 290
    iget v0, p0, Landroid/net/NetworkScore$Builder;->mPolicies:I

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/net/NetworkScore$Builder;->mPolicies:I

    goto :goto_15

    .line 292
    :cond_c
    iget v0, p0, Landroid/net/NetworkScore$Builder;->mPolicies:I

    int-to-long v0, v0

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/net/NetworkScore$Builder;->mPolicies:I

    .line 294
    :goto_15
    return-object p0
.end method
