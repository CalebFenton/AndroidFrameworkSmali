.class interface abstract Landroid/net/TetheringManager$ConnectorConsumer;
.super Ljava/lang/Object;
.source "TetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetheringManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ConnectorConsumer"
.end annotation


# virtual methods
.method public abstract blacklist onConnectorAvailable(Landroid/net/ITetheringConnector;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
