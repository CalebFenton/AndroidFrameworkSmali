.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;
.super Landroid/support/v4/media/VolumeProviderCompat$Callback;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@0
    .prologue
    .line 1000
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-direct {p0}, Landroid/support/v4/media/VolumeProviderCompat$Callback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onVolumeChanged(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 6
    .param p1, "volumeProvider"    # Landroid/support/v4/media/VolumeProviderCompat;

    #@0
    .prologue
    .line 1003
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get17(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/VolumeProviderCompat;

    #@5
    move-result-object v1

    #@6
    if-eq v1, p1, :cond_0

    #@8
    .line 1004
    return-void

    #@9
    .line 1006
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    #@b
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@d
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get18(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    #@10
    move-result v1

    #@11
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@13
    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get7(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    #@16
    move-result v2

    #@17
    .line 1007
    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    #@1e
    move-result v4

    #@1f
    .line 1008
    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I

    #@22
    move-result v5

    #@23
    .line 1006
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    #@26
    .line 1009
    .local v0, "info":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@28
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    #@2b
    .line 1002
    return-void
.end method
