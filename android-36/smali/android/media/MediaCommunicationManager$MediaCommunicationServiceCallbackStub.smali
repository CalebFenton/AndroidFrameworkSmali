.class Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub;
.super Landroid/media/IMediaCommunicationServiceCallback$Stub;
.source "MediaCommunicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCommunicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaCommunicationServiceCallbackStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaCommunicationManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$MLbj-e1Ker8XgSTMcFPK5a5pGak(Landroid/media/MediaCommunicationManager$SessionCallbackRecord;Ljava/util/List;)V
    .registers 2

    .line 361
    iget-object p0, p0, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;->callback:Landroid/media/MediaCommunicationManager$SessionCallback;

    invoke-interface {p0, p1}, Landroid/media/MediaCommunicationManager$SessionCallback;->onSession2TokensChanged(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eqnUBIXbOB1FB-Nt4WrFV7-tXNY(Landroid/media/MediaCommunicationManager$SessionCallbackRecord;Landroid/media/Session2Token;I)V
    .registers 3

    .line 349
    iget-object p0, p0, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;->callback:Landroid/media/MediaCommunicationManager$SessionCallback;

    invoke-interface {p0, p1, p2}, Landroid/media/MediaCommunicationManager$SessionCallback;->onSession2TokenCreated(Landroid/media/Session2Token;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaCommunicationManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 343
    iput-object p1, p0, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub;->this$0:Landroid/media/MediaCommunicationManager;

    invoke-direct {p0}, Landroid/media/IMediaCommunicationServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSession2Changed(Landroid/media/MediaParceledListSlice;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-virtual {p1}, Landroid/media/MediaParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 360
    iget-object p0, p0, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub;->this$0:Landroid/media/MediaCommunicationManager;

    invoke-static {p0}, Landroid/media/MediaCommunicationManager;->-$$Nest$fgetmTokenCallbackRecords(Landroid/media/MediaCommunicationManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;

    .line 361
    iget-object v1, v0, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaCommunicationManager$SessionCallbackRecord;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_25
    return-void
.end method

.method public blacklist onSession2Created(Landroid/media/Session2Token;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    iget-object p0, p0, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub;->this$0:Landroid/media/MediaCommunicationManager;

    invoke-static {p0}, Landroid/media/MediaCommunicationManager;->-$$Nest$fgetmTokenCallbackRecords(Landroid/media/MediaCommunicationManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;

    .line 347
    iget-object v1, v0, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, p2}, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaCommunicationManager$SessionCallbackRecord;Landroid/media/Session2Token;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_21
    return-void
.end method
