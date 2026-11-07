.class public final Landroid/media/MediaExtractor$MetricsConstants;
.super Ljava/lang/Object;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetricsConstants"
.end annotation


# static fields
.field public static final whitelist FORMAT:Ljava/lang/String; = "android.media.mediaextractor.fmt"

.field public static final whitelist MIME_TYPE:Ljava/lang/String; = "android.media.mediaextractor.mime"

.field public static final whitelist TRACKS:Ljava/lang/String; = "android.media.mediaextractor.ntrk"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
