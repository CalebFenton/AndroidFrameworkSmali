.class public final Landroid/media/MediaParser$TrackData;
.super Ljava/lang/Object;
.source "MediaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackData"
.end annotation


# instance fields
.field public final whitelist drmInitData:Landroid/media/DrmInitData;

.field public final whitelist mediaFormat:Landroid/media/MediaFormat;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaFormat;Landroid/media/DrmInitData;)V
    .registers 3

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Landroid/media/MediaParser$TrackData;->mediaFormat:Landroid/media/MediaFormat;

    .line 279
    iput-object p2, p0, Landroid/media/MediaParser$TrackData;->drmInitData:Landroid/media/DrmInitData;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaFormat;Landroid/media/DrmInitData;Landroid/media/MediaParser-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaParser$TrackData;-><init>(Landroid/media/MediaFormat;Landroid/media/DrmInitData;)V

    return-void
.end method
