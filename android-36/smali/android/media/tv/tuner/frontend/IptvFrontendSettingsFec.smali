.class public final Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;
.super Ljava/lang/Object;
.source "IptvFrontendSettingsFec.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec$Builder;,
        Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec$FecType;
    }
.end annotation


# static fields
.field public static final whitelist FEC_TYPE_COLUMN:I = 0x1

.field public static final whitelist FEC_TYPE_COLUMN_ROW:I = 0x4

.field public static final whitelist FEC_TYPE_ROW:I = 0x2

.field public static final whitelist FEC_TYPE_UNDEFINED:I


# instance fields
.field private final blacklist mFecColNum:I

.field private final blacklist mFecRowNum:I

.field private final blacklist mFecType:I


# direct methods
.method private constructor blacklist <init>(III)V
    .registers 4
    .param p1, "fecType"    # I
    .param p2, "fecRowNum"    # I
    .param p3, "fecColNum"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;->mFecType:I

    .line 67
    iput p2, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;->mFecRowNum:I

    .line 68
    iput p3, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;->mFecColNum:I

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILandroid/media/tv/tuner/frontend/IptvFrontendSettingsFec-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;-><init>(III)V

    return-void
.end method


# virtual methods
.method public whitelist getFecColNum()I
    .registers 2

    .line 92
    iget v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;->mFecColNum:I

    return v0
.end method

.method public whitelist getFecRowNum()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;->mFecRowNum:I

    return v0
.end method

.method public whitelist getFecType()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/media/tv/tuner/frontend/IptvFrontendSettingsFec;->mFecType:I

    return v0
.end method
