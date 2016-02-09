.class public final Lcom/android/location/provider/ActivityRecognitionProvider;
.super Ljava/lang/Object;
.source "ActivityRecognitionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/location/provider/ActivityRecognitionProvider$Sink;,
        Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;
    }
.end annotation


# static fields
.field public static final ACTIVITY_IN_VEHICLE:Ljava/lang/String; = "android.activity_recognition.in_vehicle"

.field public static final ACTIVITY_ON_BICYCLE:Ljava/lang/String; = "android.activity_recognition.on_bicycle"

.field public static final ACTIVITY_RUNNING:Ljava/lang/String; = "android.activity_recognition.running"

.field public static final ACTIVITY_STILL:Ljava/lang/String; = "android.activity_recognition.still"

.field public static final ACTIVITY_TILTING:Ljava/lang/String; = "android.activity_recognition.tilting"

.field public static final ACTIVITY_WALKING:Ljava/lang/String; = "android.activity_recognition.walking"

.field public static final EVENT_TYPE_ENTER:I = 0x1

.field public static final EVENT_TYPE_EXIT:I = 0x2

.field public static final EVENT_TYPE_FLUSH_COMPLETE:I


# instance fields
.field private final mService:Landroid/hardware/location/IActivityRecognitionHardware;

.field private final mSinkSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/location/provider/ActivityRecognitionProvider$Sink;",
            ">;"
        }
    .end annotation
.end field

.field private final mSinkTransport:Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;


# direct methods
.method static synthetic -get0(Lcom/android/location/provider/ActivityRecognitionProvider;)Ljava/util/HashSet;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/hardware/location/IActivityRecognitionHardware;)V
    .locals 2
    .param p1, "service"    # Landroid/hardware/location/IActivityRecognitionHardware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    #@a
    .line 35
    new-instance v0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-direct {v0, p0, v1}, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;-><init>(Lcom/android/location/provider/ActivityRecognitionProvider;Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;)V

    #@10
    iput-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkTransport:Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;

    #@12
    .line 61
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 62
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    #@17
    .line 63
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    #@19
    iget-object v1, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkTransport:Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;

    #@1b
    invoke-interface {v0, v1}, Landroid/hardware/location/IActivityRecognitionHardware;->registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z

    #@1e
    .line 60
    return-void
.end method


# virtual methods
.method public disableActivityEvent(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IActivityRecognitionHardware;->disableActivityEvent(Ljava/lang/String;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public enableActivityEvent(Ljava/lang/String;IJ)Z
    .locals 1
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "reportLatencyNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/location/IActivityRecognitionHardware;->enableActivityEvent(Ljava/lang/String;IJ)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public flush()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    #@2
    invoke-interface {v0}, Landroid/hardware/location/IActivityRecognitionHardware;->flush()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSupportedActivities()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    #@2
    invoke-interface {v0}, Landroid/hardware/location/IActivityRecognitionHardware;->getSupportedActivities()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isActivitySupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "activity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mService:Landroid/hardware/location/IActivityRecognitionHardware;

    #@2
    invoke-interface {v0, p1}, Landroid/hardware/location/IActivityRecognitionHardware;->isActivitySupported(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public registerSink(Lcom/android/location/provider/ActivityRecognitionProvider$Sink;)V
    .locals 2
    .param p1, "sink"    # Lcom/android/location/provider/ActivityRecognitionProvider$Sink;

    #@0
    .prologue
    .line 75
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 76
    iget-object v1, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    #@5
    monitor-enter v1

    #@6
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 74
    return-void

    #@d
    .line 76
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public unregisterSink(Lcom/android/location/provider/ActivityRecognitionProvider$Sink;)V
    .locals 2
    .param p1, "sink"    # Lcom/android/location/provider/ActivityRecognitionProvider$Sink;

    #@0
    .prologue
    .line 84
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 85
    iget-object v1, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    #@5
    monitor-enter v1

    #@6
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider;->mSinkSet:Ljava/util/HashSet;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 83
    return-void

    #@d
    .line 85
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method
