.class public final synthetic Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;

.field public final synthetic blacklist f$1:Landroid/net/EthernetNetworkManagementException;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;Landroid/net/EthernetNetworkManagementException;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;

    iput-object p2, p0, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/net/EthernetNetworkManagementException;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;

    iget-object v1, p0, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/net/EthernetNetworkManagementException;

    invoke-static {v0, v1}, Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;->$r8$lambda$gvzTi_tk556tdMXgEG-MU7tLaWg(Landroid/net/EthernetManager$NetworkInterfaceOutcomeReceiver;Landroid/net/EthernetNetworkManagementException;)V

    return-void
.end method
