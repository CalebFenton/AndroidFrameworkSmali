.class Landroid/media/MediaCodec$PersistentSurface;
.super Landroid/view/Surface;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PersistentSurface"
.end annotation


# instance fields
.field private mPersistentObject:J


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1923
    invoke-direct {p0}, Landroid/view/Surface;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    #@0
    .prologue
    .line 1927
    invoke-static {p0}, Landroid/media/MediaCodec;->-wrap0(Landroid/view/Surface;)V

    #@3
    .line 1928
    invoke-super {p0}, Landroid/view/Surface;->release()V

    #@6
    .line 1926
    return-void
.end method
