.class public final Lcom/android/internal/midi/MidiDispatcher;
.super Landroid/media/midi/MidiReceiver;
.source "MidiDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;
    }
.end annotation


# instance fields
.field private final blacklist mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

.field private final blacklist mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/midi/MidiReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSender:Landroid/media/midi/MidiSender;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmReceivers(Lcom/android/internal/midi/MidiDispatcher;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/midi/MidiDispatcher;-><init>(Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;)V

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;)V
    .registers 3
    .param p1, "failureHandler"    # Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    .line 65
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    new-instance v0, Lcom/android/internal/midi/MidiDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/midi/MidiDispatcher$1;-><init>(Lcom/android/internal/midi/MidiDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mSender:Landroid/media/midi/MidiSender;

    .line 66
    iput-object p1, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    .line 67
    return-void
.end method


# virtual methods
.method public blacklist getReceiverCount()I
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getSender()Landroid/media/midi/MidiSender;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mSender:Landroid/media/midi/MidiSender;

    return-object v0
.end method

.method public whitelist onFlush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/midi/MidiReceiver;

    .line 108
    .local v1, "receiver":Landroid/media/midi/MidiReceiver;
    :try_start_12
    invoke-virtual {v1}, Landroid/media/midi/MidiReceiver;->flush()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    .line 115
    goto :goto_25

    .line 109
    :catch_16
    move-exception v2

    .line 111
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 112
    iget-object v3, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    if-eqz v3, :cond_25

    .line 113
    iget-object v3, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    invoke-interface {v3, v1, v2}, Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;->onReceiverFailure(Landroid/media/midi/MidiReceiver;Ljava/io/IOException;)V

    .line 116
    .end local v1    # "receiver":Landroid/media/midi/MidiReceiver;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_25
    :goto_25
    goto :goto_6

    .line 117
    :cond_26
    return-void
.end method

.method public whitelist onSend([BIIJ)V
    .registers 14
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/midi/MidiReceiver;

    .line 91
    .local v2, "receiver":Landroid/media/midi/MidiReceiver;
    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    .end local p1    # "msg":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    .end local p4    # "timestamp":J
    .local v3, "msg":[B
    .local v4, "offset":I
    .local v5, "count":I
    .local v6, "timestamp":J
    :try_start_17
    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 100
    goto :goto_2b

    .line 92
    :catch_1b
    move-exception v0

    move-object p1, v0

    .line 96
    .local p1, "e":Ljava/io/IOException;
    iget-object p2, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 97
    iget-object p2, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    if-eqz p2, :cond_2b

    .line 98
    iget-object p2, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    invoke-interface {p2, v2, p1}, Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;->onReceiverFailure(Landroid/media/midi/MidiReceiver;Ljava/io/IOException;)V

    .line 101
    .end local v2    # "receiver":Landroid/media/midi/MidiReceiver;
    .end local p1    # "e":Ljava/io/IOException;
    :cond_2b
    :goto_2b
    move-object p1, v3

    move p2, v4

    move p3, v5

    move-wide p4, v6

    goto :goto_6

    .line 102
    .end local v3    # "msg":[B
    .end local v4    # "offset":I
    .end local v5    # "count":I
    .end local v6    # "timestamp":J
    .local p1, "msg":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    .restart local p4    # "timestamp":J
    :cond_30
    return-void
.end method
