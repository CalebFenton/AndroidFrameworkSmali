.class public Landroid/support/v4/media/session/MediaSessionCompatApi19;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi19.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;
    }
.end annotation


# static fields
.field private static final ACTION_SET_RATING:J = 0x80L

.field private static final METADATA_KEY_RATING:Ljava/lang/String; = "android.media.metadata.RATING"

.field private static final METADATA_KEY_USER_RATING:Ljava/lang/String; = "android.media.metadata.USER_RATING"

.field private static final METADATA_KEY_YEAR:Ljava/lang/String; = "android.media.metadata.YEAR"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static addNewMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V
    .locals 3
    .param p0, "metadata"    # Landroid/os/Bundle;
    .param p1, "editor"    # Landroid/media/RemoteControlClient$MetadataEditor;

    #@0
    .prologue
    .line 69
    if-nez p0, :cond_0

    #@2
    .line 70
    return-void

    #@3
    .line 72
    :cond_0
    const-string/jumbo v0, "android.media.metadata.YEAR"

    #@6
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 74
    const-string/jumbo v0, "android.media.metadata.YEAR"

    #@f
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@12
    move-result-wide v0

    #@13
    .line 73
    const/16 v2, 0x8

    #@15
    invoke-virtual {p1, v2, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    #@18
    .line 76
    :cond_1
    const-string/jumbo v0, "android.media.metadata.RATING"

    #@1b
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 78
    const-string/jumbo v0, "android.media.metadata.RATING"

    #@24
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@27
    move-result-object v0

    #@28
    .line 77
    const/16 v1, 0x65

    #@2a
    invoke-virtual {p1, v1, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    #@2d
    .line 80
    :cond_2
    const-string/jumbo v0, "android.media.metadata.USER_RATING"

    #@30
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_3

    #@36
    .line 82
    const-string/jumbo v0, "android.media.metadata.USER_RATING"

    #@39
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@3c
    move-result-object v0

    #@3d
    .line 81
    const v1, 0x10000001

    #@40
    invoke-virtual {p1, v1, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    #@43
    .line 68
    :cond_3
    return-void
.end method

.method public static createMetadataUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;

    #@0
    .prologue
    .line 40
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)V

    #@5
    return-object v0
.end method

.method static getRccTransportControlFlagsFromActions(J)I
    .locals 6
    .param p0, "actions"    # J

    #@0
    .prologue
    .line 61
    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->getRccTransportControlFlagsFromActions(J)I

    #@3
    move-result v0

    #@4
    .line 62
    .local v0, "transportControlFlags":I
    const-wide/16 v2, 0x80

    #@6
    and-long/2addr v2, p0

    #@7
    const-wide/16 v4, 0x0

    #@9
    cmp-long v1, v2, v4

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 63
    or-int/lit16 v0, v0, 0x200

    #@f
    .line 65
    :cond_0
    return v0
.end method

.method public static setMetadata(Ljava/lang/Object;Landroid/os/Bundle;J)V
    .locals 6
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "metadata"    # Landroid/os/Bundle;
    .param p2, "actions"    # J

    #@0
    .prologue
    .line 44
    check-cast p0, Landroid/media/RemoteControlClient;

    #@2
    .line 45
    .end local p0    # "rccObj":Ljava/lang/Object;
    const/4 v1, 0x1

    #@3
    .line 44
    invoke-virtual {p0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    #@6
    move-result-object v0

    #@7
    .line 46
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->buildOldMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    #@a
    .line 47
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->addNewMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    #@d
    .line 48
    const-wide/16 v2, 0x80

    #@f
    and-long/2addr v2, p2

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v1, v2, v4

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 49
    const v1, 0x10000001

    #@19
    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->addEditableKey(I)V

    #@1c
    .line 51
    :cond_0
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    #@1f
    .line 43
    return-void
.end method

.method public static setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "onMetadataUpdateObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 55
    check-cast p0, Landroid/media/RemoteControlClient;

    #@2
    .line 56
    .end local p0    # "rccObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    #@4
    .line 55
    .end local p1    # "onMetadataUpdateObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    #@7
    .line 54
    return-void
.end method

.method public static setTransportControlFlags(Ljava/lang/Object;J)V
    .locals 1
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "actions"    # J

    #@0
    .prologue
    .line 35
    check-cast p0, Landroid/media/RemoteControlClient;

    #@2
    .line 36
    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->getRccTransportControlFlagsFromActions(J)I

    #@5
    move-result v0

    #@6
    .line 35
    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    #@9
    .line 34
    return-void
.end method
