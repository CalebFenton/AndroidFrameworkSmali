.class Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;
.super Landroid/window/ISurfaceSyncGroup$Stub;
.source "SurfaceSyncGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SurfaceSyncGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISurfaceSyncGroupImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/SurfaceSyncGroup;


# direct methods
.method private constructor blacklist <init>(Landroid/window/SurfaceSyncGroup;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 762
    iput-object p1, p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-direct {p0}, Landroid/window/ISurfaceSyncGroup$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/SurfaceSyncGroup;Landroid/window/SurfaceSyncGroup-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;-><init>(Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method


# virtual methods
.method public blacklist addToSync(Landroid/window/ISurfaceSyncGroup;Z)Z
    .registers 5
    .param p1, "surfaceSyncGroup"    # Landroid/window/ISurfaceSyncGroup;
    .param p2, "parentSyncGroupMerge"    # Z

    .line 779
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;->this$0:Landroid/window/SurfaceSyncGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/window/SurfaceSyncGroup;->add(Landroid/window/ISurfaceSyncGroup;ZLjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method blacklist getSurfaceSyncGroup()Landroid/window/SurfaceSyncGroup;
    .registers 2

    .line 784
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;->this$0:Landroid/window/SurfaceSyncGroup;

    return-object v0
.end method

.method public blacklist onAddedToSyncGroup(Landroid/os/IBinder;Z)Z
    .registers 8
    .param p1, "parentSyncGroupToken"    # Landroid/os/IBinder;
    .param p2, "parentSyncGroupMerge"    # Z

    .line 766
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 767
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-static {v2}, Landroid/window/SurfaceSyncGroup;->-$$Nest$fgetmTrackName(Landroid/window/SurfaceSyncGroup;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAddedToSyncGroup token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 768
    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 767
    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 770
    :cond_2c
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;->this$0:Landroid/window/SurfaceSyncGroup;

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Landroid/window/SurfaceSyncGroup;->-$$Nest$maddSyncToWm(Landroid/window/SurfaceSyncGroup;Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;)Z

    move-result v2

    .line 771
    .local v2, "didAdd":Z
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 772
    iget-object v3, p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-static {v3}, Landroid/window/SurfaceSyncGroup;->-$$Nest$fgetmTrackName(Landroid/window/SurfaceSyncGroup;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 774
    :cond_46
    return v2
.end method
