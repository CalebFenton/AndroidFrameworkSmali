.class Landroid/media/MediaSession2$Builder$1;
.super Landroid/media/MediaSession2$SessionCallback;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSession2$Builder;->build()Landroid/media/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaSession2$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 616
    invoke-direct {p0}, Landroid/media/MediaSession2$SessionCallback;-><init>()V

    return-void
.end method
