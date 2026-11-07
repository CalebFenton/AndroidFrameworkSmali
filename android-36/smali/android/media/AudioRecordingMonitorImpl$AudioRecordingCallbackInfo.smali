.class Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;
.super Ljava/lang/Object;
.source "AudioRecordingMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecordingMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioRecordingCallbackInfo"
.end annotation


# instance fields
.field final blacklist mCb:Landroid/media/AudioManager$AudioRecordingCallback;

.field final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V
    .registers 3
    .param p1, "e"    # Ljava/util/concurrent/Executor;
    .param p2, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;->mExecutor:Ljava/util/concurrent/Executor;

    .line 131
    iput-object p2, p0, Landroid/media/AudioRecordingMonitorImpl$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    .line 132
    return-void
.end method
