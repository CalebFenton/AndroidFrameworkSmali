.class Landroid/media/MediaScanner$PlaylistEntry;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistEntry"
.end annotation


# instance fields
.field bestmatchid:J

.field bestmatchlevel:I

.field path:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner$PlaylistEntry;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/media/MediaScanner$PlaylistEntry;-><init>()V

    #@3
    return-void
.end method
