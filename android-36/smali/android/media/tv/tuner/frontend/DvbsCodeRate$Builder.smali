.class public Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;
.super Ljava/lang/Object;
.source "DvbsCodeRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/frontend/DvbsCodeRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitsPer1000Symbol:I

.field private blacklist mFec:J

.field private blacklist mIsLinear:Z

.field private blacklist mIsShortFrames:Z


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/frontend/DvbsCodeRate-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/tuner/frontend/DvbsCodeRate;
    .registers 8

    .line 125
    new-instance v0, Landroid/media/tv/tuner/frontend/DvbsCodeRate;

    iget-wide v1, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mFec:J

    iget-boolean v3, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mIsLinear:Z

    iget-boolean v4, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mIsShortFrames:Z

    iget v5, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mBitsPer1000Symbol:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/tv/tuner/frontend/DvbsCodeRate;-><init>(JZZILandroid/media/tv/tuner/frontend/DvbsCodeRate-IA;)V

    return-object v0
.end method

.method public whitelist setBitsPer1000Symbol(I)Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;
    .registers 2
    .param p1, "bitsPer1000Symbol"    # I

    .line 116
    iput p1, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mBitsPer1000Symbol:I

    .line 117
    return-object p0
.end method

.method public whitelist setInnerFec(J)Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;
    .registers 3
    .param p1, "fec"    # J

    .line 92
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mFec:J

    .line 93
    return-object p0
.end method

.method public whitelist setLinear(Z)Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;
    .registers 2
    .param p1, "isLinear"    # Z

    .line 100
    iput-boolean p1, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mIsLinear:Z

    .line 101
    return-object p0
.end method

.method public whitelist setShortFrameEnabled(Z)Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;
    .registers 2
    .param p1, "isShortFrames"    # Z

    .line 108
    iput-boolean p1, p0, Landroid/media/tv/tuner/frontend/DvbsCodeRate$Builder;->mIsShortFrames:Z

    .line 109
    return-object p0
.end method
