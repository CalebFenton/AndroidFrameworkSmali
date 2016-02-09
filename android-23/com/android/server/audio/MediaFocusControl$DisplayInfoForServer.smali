.class Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayInfoForServer"
.end annotation


# instance fields
.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private mClientNotifListComp:Landroid/content/ComponentName;

.field private mEnabled:Z

.field private final mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private final mRcDisplayBinder:Landroid/os/IBinder;

.field private mWantsPositionSync:Z

.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    #@2
    return p1
.end method

.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p2, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p3, "w"    # I
    .param p4, "h"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 1765
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 1759
    iput v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    #@8
    .line 1760
    iput v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    #@a
    .line 1761
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    #@d
    .line 1763
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    #@10
    .line 1767
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    #@12
    .line 1768
    invoke-interface {p2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    #@18
    .line 1769
    iput p3, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    #@1a
    .line 1770
    iput p4, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    #@1c
    .line 1765
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    #@0
    .prologue
    .line 1794
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@2
    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->-get6(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 1795
    :try_start_0
    const-string/jumbo v2, "MediaFocusControl"

    #@a
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "RemoteControl: display "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, " died"

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 1797
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->this$0:Lcom/android/server/audio/MediaFocusControl;

    #@2c
    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->-get7(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/ArrayList;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v1

    #@34
    .line 1798
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_1

    #@3a
    .line 1799
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    #@40
    .line 1800
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    #@42
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    #@44
    if-ne v2, v4, :cond_0

    #@46
    .line 1802
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    monitor-exit v3

    #@4a
    .line 1803
    return-void

    #@4b
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    monitor-exit v3

    #@4c
    .line 1793
    return-void

    #@4d
    .line 1794
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :catchall_0
    move-exception v2

    #@4e
    monitor-exit v3

    #@4f
    throw v2
.end method

.method public init()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1775
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 1781
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 1776
    :catch_0
    move-exception v0

    #@a
    .line 1778
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaFocusControl"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "registerRemoteControlDisplay() has a dead client "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 1779
    return v4
.end method

.method public release()V
    .locals 3

    #@0
    .prologue
    .line 1786
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1784
    :goto_0
    return-void

    #@7
    .line 1787
    :catch_0
    move-exception v0

    #@8
    .line 1789
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string/jumbo v1, "MediaFocusControl"

    #@b
    const-string/jumbo v2, "Error in DisplaInfoForServer.relase()"

    #@e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11
    goto :goto_0
.end method
