.class public final Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;
.super Ljava/lang/Object;
.source "FrontendStatusReadiness.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/FrontendStatusReadiness$Readiness;
    }
.end annotation


# static fields
.field public static final whitelist FRONTEND_STATUS_READINESS_STABLE:I = 0x3

.field public static final whitelist FRONTEND_STATUS_READINESS_UNAVAILABLE:I = 0x1

.field public static final whitelist FRONTEND_STATUS_READINESS_UNDEFINED:I = 0x0

.field public static final whitelist FRONTEND_STATUS_READINESS_UNSTABLE:I = 0x2

.field public static final whitelist FRONTEND_STATUS_READINESS_UNSUPPORTED:I = 0x4


# instance fields
.field private blacklist mFrontendStatusType:I

.field private blacklist mStatusReadiness:I


# direct methods
.method private constructor blacklist <init>(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "readiness"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;->mFrontendStatusType:I

    .line 76
    iput p2, p0, Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;->mStatusReadiness:I

    .line 77
    return-void
.end method


# virtual methods
.method public whitelist getStatusReadiness()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;->mStatusReadiness:I

    return v0
.end method

.method public whitelist getStatusType()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;->mFrontendStatusType:I

    return v0
.end method
