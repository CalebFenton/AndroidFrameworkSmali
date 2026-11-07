.class Landroid/media/MediaController2$SessionServiceConnection;
.super Ljava/lang/Object;
.source "MediaController2.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionServiceConnection"
.end annotation


# instance fields
.field private final blacklist mConnectionHints:Landroid/os/Bundle;

.field final synthetic blacklist this$0:Landroid/media/MediaController2;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaController2;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 585
    iput-object p1, p0, Landroid/media/MediaController2$SessionServiceConnection;->this$0:Landroid/media/MediaController2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object p2, p0, Landroid/media/MediaController2$SessionServiceConnection;->mConnectionHints:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 634
    iget-object p0, p0, Landroid/media/MediaController2$SessionServiceConnection;->this$0:Landroid/media/MediaController2;

    invoke-virtual {p0}, Landroid/media/MediaController2;->close()V

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .line 592
    const-string v0, "MediaController2"

    .line 594
    :try_start_2
    sget-boolean v1, Landroid/media/MediaController2;->DEBUG:Z

    if-eqz v1, :cond_28

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :catchall_23
    move-exception p1

    goto/16 :goto_ab

    :catch_26
    move-exception p2

    goto :goto_8c

    .line 597
    :cond_28
    :goto_28
    iget-object v1, p0, Landroid/media/MediaController2$SessionServiceConnection;->this$0:Landroid/media/MediaController2;

    invoke-static {v1}, Landroid/media/MediaController2;->-$$Nest$fgetmSessionToken(Landroid/media/MediaController2;)Landroid/media/Session2Token;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Session2Token;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 598
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected connection to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/MediaController2$SessionServiceConnection;->this$0:Landroid/media/MediaController2;

    invoke-static {v1}, Landroid/media/MediaController2;->-$$Nest$fgetmSessionToken(Landroid/media/MediaController2;)Landroid/media/Session2Token;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Session2Token;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but is connected to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_62} :catch_26
    .catchall {:try_start_2 .. :try_end_62} :catchall_23

    .line 614
    :goto_62
    iget-object p0, p0, Landroid/media/MediaController2$SessionServiceConnection;->this$0:Landroid/media/MediaController2;

    invoke-virtual {p0}, Landroid/media/MediaController2;->close()V

    return-void

    .line 602
    :cond_68
    :try_start_68
    invoke-static {p2}, Landroid/media/IMediaSession2Service$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaSession2Service;

    move-result-object p2

    if-nez p2, :cond_74

    .line 604
    const-string p2, "Service interface is missing."

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 607
    :cond_74
    iget-object v1, p0, Landroid/media/MediaController2$SessionServiceConnection;->this$0:Landroid/media/MediaController2;

    iget-object v2, p0, Landroid/media/MediaController2$SessionServiceConnection;->mConnectionHints:Landroid/os/Bundle;

    invoke-static {v1, v2}, Landroid/media/MediaController2;->-$$Nest$mcreateConnectionRequest(Landroid/media/MediaController2;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 608
    iget-object v2, p0, Landroid/media/MediaController2$SessionServiceConnection;->this$0:Landroid/media/MediaController2;

    invoke-static {v2}, Landroid/media/MediaController2;->-$$Nest$fgetmControllerStub(Landroid/media/MediaController2;)Landroid/media/Controller2Link;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaController2$SessionServiceConnection;->this$0:Landroid/media/MediaController2;

    invoke-static {v3}, Landroid/media/MediaController2;->-$$Nest$mgetNextSeqNumber(Landroid/media/MediaController2;)I

    move-result v3

    invoke-interface {p2, v2, v3, v1}, Landroid/media/IMediaSession2Service;->connect(Landroid/media/Controller2Link;ILandroid/os/Bundle;)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_8b} :catch_26
    .catchall {:try_start_68 .. :try_end_8b} :catchall_23

    return-void

    .line 611
    :goto_8c
    :try_start_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has died prematurely"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a5
    .catchall {:try_start_8c .. :try_end_a5} :catchall_23

    .line 614
    iget-object p0, p0, Landroid/media/MediaController2$SessionServiceConnection;->this$0:Landroid/media/MediaController2;

    invoke-virtual {p0}, Landroid/media/MediaController2;->close()V

    return-void

    :goto_ab
    iget-object p0, p0, Landroid/media/MediaController2$SessionServiceConnection;->this$0:Landroid/media/MediaController2;

    invoke-virtual {p0}, Landroid/media/MediaController2;->close()V

    .line 616
    throw p1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 623
    sget-boolean v0, Landroid/media/MediaController2;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is disconnected."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaController2"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_1f
    iget-object p0, p0, Landroid/media/MediaController2$SessionServiceConnection;->this$0:Landroid/media/MediaController2;

    invoke-virtual {p0}, Landroid/media/MediaController2;->close()V

    return-void
.end method
