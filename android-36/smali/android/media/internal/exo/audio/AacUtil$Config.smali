.class public final Landroid/media/internal/exo/audio/AacUtil$Config;
.super Ljava/lang/Object;
.source "AacUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/audio/AacUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field public final blacklist channelCount:I

.field public final blacklist codecs:Ljava/lang/String;

.field public final blacklist sampleRateHz:I


# direct methods
.method private constructor blacklist <init>(IILjava/lang/String;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/media/internal/exo/audio/AacUtil$Config;->sampleRateHz:I

    .line 44
    iput p2, p0, Landroid/media/internal/exo/audio/AacUtil$Config;->channelCount:I

    .line 45
    iput-object p3, p0, Landroid/media/internal/exo/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(IILjava/lang/String;Landroid/media/internal/exo/audio/AacUtil$1;)V
    .registers 5

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/media/internal/exo/audio/AacUtil$Config;-><init>(IILjava/lang/String;)V

    return-void
.end method
