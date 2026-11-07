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
.field private greylist-max-o mPersistentObject:J


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 2712
    invoke-direct {p0}, Landroid/view/Surface;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist release()V
    .registers 1

    .line 2716
    invoke-static {p0}, Landroid/media/MediaCodec;->-$$Nest$smnative_releasePersistentInputSurface(Landroid/view/Surface;)V

    .line 2717
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 2718
    return-void
.end method
