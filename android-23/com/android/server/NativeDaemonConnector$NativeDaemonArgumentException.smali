.class Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;
.super Lcom/android/server/NativeDaemonConnectorException;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeDaemonArgumentException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/android/server/NativeDaemonEvent;

    #@0
    .prologue
    .line 481
    invoke-direct {p0, p1, p2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    #@3
    .line 480
    return-void
.end method


# virtual methods
.method public rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;
    .locals 2

    #@0
    .prologue
    .line 486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    invoke-virtual {p0}, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;->getMessage()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9
    throw v0
.end method
