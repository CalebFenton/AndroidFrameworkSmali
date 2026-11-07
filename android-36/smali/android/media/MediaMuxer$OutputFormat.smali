.class public final Landroid/media/MediaMuxer$OutputFormat;
.super Ljava/lang/Object;
.source "MediaMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputFormat"
.end annotation


# static fields
.field public static final whitelist MUXER_OUTPUT_3GPP:I = 0x2

.field public static final greylist-max-o MUXER_OUTPUT_FIRST:I = 0x0

.field public static final whitelist MUXER_OUTPUT_HEIF:I = 0x3

.field public static final greylist-max-o MUXER_OUTPUT_LAST:I = 0x4

.field public static final whitelist MUXER_OUTPUT_MPEG_4:I = 0x0

.field public static final whitelist MUXER_OUTPUT_OGG:I = 0x4

.field public static final whitelist MUXER_OUTPUT_WEBM:I = 0x1


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
