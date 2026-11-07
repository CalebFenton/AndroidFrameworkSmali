.class public final Landroid/telecom/StreamingCallAdapter;
.super Ljava/lang/Object;
.source "StreamingCallAdapter.java"


# instance fields
.field private final blacklist mAdapter:Lcom/android/internal/telecom/IStreamingCallAdapter;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telecom/IStreamingCallAdapter;)V
    .registers 2
    .param p1, "adapter"    # Lcom/android/internal/telecom/IStreamingCallAdapter;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/telecom/StreamingCallAdapter;->mAdapter:Lcom/android/internal/telecom/IStreamingCallAdapter;

    .line 41
    return-void
.end method


# virtual methods
.method public blacklist setStreamingState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 50
    :try_start_0
    iget-object v0, p0, Landroid/telecom/StreamingCallAdapter;->mAdapter:Lcom/android/internal/telecom/IStreamingCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IStreamingCallAdapter;->setStreamingState(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 52
    goto :goto_7

    .line 51
    :catch_6
    move-exception v0

    .line 53
    :goto_7
    return-void
.end method
