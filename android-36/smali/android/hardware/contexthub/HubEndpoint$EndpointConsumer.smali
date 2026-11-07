.class interface abstract Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;
.super Ljava/lang/Object;
.source "HubEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/HubEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "EndpointConsumer"
.end annotation


# virtual methods
.method public abstract blacklist accept(Landroid/hardware/contexthub/IContextHubEndpoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
