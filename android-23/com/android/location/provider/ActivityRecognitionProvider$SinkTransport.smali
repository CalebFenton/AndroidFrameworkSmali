.class final Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;
.super Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;
.source "ActivityRecognitionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/ActivityRecognitionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SinkTransport"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/ActivityRecognitionProvider;


# direct methods
.method private constructor <init>(Lcom/android/location/provider/ActivityRecognitionProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/location/provider/ActivityRecognitionProvider;

    #@0
    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;->this$0:Lcom/android/location/provider/ActivityRecognitionProvider;

    #@2
    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/location/provider/ActivityRecognitionProvider;Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/location/provider/ActivityRecognitionProvider;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;-><init>(Lcom/android/location/provider/ActivityRecognitionProvider;)V

    #@3
    return-void
.end method


# virtual methods
.method public onActivityChanged(Landroid/hardware/location/ActivityChangedEvent;)V
    .locals 12
    .param p1, "activityChangedEvent"    # Landroid/hardware/location/ActivityChangedEvent;

    #@0
    .prologue
    .line 108
    iget-object v8, p0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;->this$0:Lcom/android/location/provider/ActivityRecognitionProvider;

    #@2
    invoke-static {v8}, Lcom/android/location/provider/ActivityRecognitionProvider;->-get0(Lcom/android/location/provider/ActivityRecognitionProvider;)Ljava/util/HashSet;

    #@5
    move-result-object v9

    #@6
    monitor-enter v9

    #@7
    .line 109
    :try_start_0
    iget-object v8, p0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;->this$0:Lcom/android/location/provider/ActivityRecognitionProvider;

    #@9
    invoke-static {v8}, Lcom/android/location/provider/ActivityRecognitionProvider;->-get0(Lcom/android/location/provider/ActivityRecognitionProvider;)Ljava/util/HashSet;

    #@c
    move-result-object v8

    #@d
    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v8

    #@11
    if-eqz v8, :cond_0

    #@13
    monitor-exit v9

    #@14
    .line 110
    return-void

    #@15
    .line 113
    :cond_0
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    #@17
    iget-object v8, p0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;->this$0:Lcom/android/location/provider/ActivityRecognitionProvider;

    #@19
    invoke-static {v8}, Lcom/android/location/provider/ActivityRecognitionProvider;->-get0(Lcom/android/location/provider/ActivityRecognitionProvider;)Ljava/util/HashSet;

    #@1c
    move-result-object v8

    #@1d
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .local v7, "sinks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/location/provider/ActivityRecognitionProvider$Sink;>;"
    monitor-exit v9

    #@21
    .line 118
    new-instance v4, Ljava/util/ArrayList;

    #@23
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@26
    .line 120
    .local v4, "gmsEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/location/provider/ActivityRecognitionEvent;>;"
    invoke-virtual {p1}, Landroid/hardware/location/ActivityChangedEvent;->getActivityRecognitionEvents()Ljava/lang/Iterable;

    #@29
    move-result-object v8

    #@2a
    .line 119
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v1

    #@2e
    .local v1, "event$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v8

    #@32
    if-eqz v8, :cond_1

    #@34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Landroid/hardware/location/ActivityRecognitionEvent;

    #@3a
    .line 121
    .local v0, "event":Landroid/hardware/location/ActivityRecognitionEvent;
    new-instance v3, Lcom/android/location/provider/ActivityRecognitionEvent;

    #@3c
    .line 122
    invoke-virtual {v0}, Landroid/hardware/location/ActivityRecognitionEvent;->getActivity()Ljava/lang/String;

    #@3f
    move-result-object v8

    #@40
    .line 123
    invoke-virtual {v0}, Landroid/hardware/location/ActivityRecognitionEvent;->getEventType()I

    #@43
    move-result v9

    #@44
    .line 124
    invoke-virtual {v0}, Landroid/hardware/location/ActivityRecognitionEvent;->getTimestampNs()J

    #@47
    move-result-wide v10

    #@48
    .line 121
    invoke-direct {v3, v8, v9, v10, v11}, Lcom/android/location/provider/ActivityRecognitionEvent;-><init>(Ljava/lang/String;IJ)V

    #@4b
    .line 125
    .local v3, "gmsEvent":Lcom/android/location/provider/ActivityRecognitionEvent;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4e
    goto :goto_0

    #@4f
    .line 108
    .end local v0    # "event":Landroid/hardware/location/ActivityRecognitionEvent;
    .end local v1    # "event$iterator":Ljava/util/Iterator;
    .end local v3    # "gmsEvent":Lcom/android/location/provider/ActivityRecognitionEvent;
    .end local v4    # "gmsEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/location/provider/ActivityRecognitionEvent;>;"
    .end local v7    # "sinks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/location/provider/ActivityRecognitionProvider$Sink;>;"
    :catchall_0
    move-exception v8

    #@50
    monitor-exit v9

    #@51
    throw v8

    #@52
    .line 127
    .restart local v1    # "event$iterator":Ljava/util/Iterator;
    .restart local v4    # "gmsEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/location/provider/ActivityRecognitionEvent;>;"
    .restart local v7    # "sinks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/location/provider/ActivityRecognitionProvider$Sink;>;"
    :cond_1
    new-instance v2, Lcom/android/location/provider/ActivityChangedEvent;

    #@54
    invoke-direct {v2, v4}, Lcom/android/location/provider/ActivityChangedEvent;-><init>(Ljava/util/List;)V

    #@57
    .line 129
    .local v2, "gmsEvent":Lcom/android/location/provider/ActivityChangedEvent;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5a
    move-result-object v6

    #@5b
    .local v6, "sink$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@5e
    move-result v8

    #@5f
    if-eqz v8, :cond_2

    #@61
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@64
    move-result-object v5

    #@65
    check-cast v5, Lcom/android/location/provider/ActivityRecognitionProvider$Sink;

    #@67
    .line 130
    .local v5, "sink":Lcom/android/location/provider/ActivityRecognitionProvider$Sink;
    invoke-interface {v5, v2}, Lcom/android/location/provider/ActivityRecognitionProvider$Sink;->onActivityChanged(Lcom/android/location/provider/ActivityChangedEvent;)V

    #@6a
    goto :goto_1

    #@6b
    .line 106
    .end local v5    # "sink":Lcom/android/location/provider/ActivityRecognitionProvider$Sink;
    :cond_2
    return-void
.end method
