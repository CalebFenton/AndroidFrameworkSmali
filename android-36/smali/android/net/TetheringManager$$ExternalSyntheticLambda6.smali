.class public final synthetic Landroid/net/TetheringManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/TetheringManager$ConnectorConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/ITetheringEventCallback;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/ITetheringEventCallback;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda6;->f$0:Landroid/net/ITetheringEventCallback;

    iput-object p2, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist onConnectorAvailable(Landroid/net/ITetheringConnector;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda6;->f$0:Landroid/net/ITetheringEventCallback;

    iget-object v1, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/net/TetheringManager;->lambda$unregisterTetheringEventCallback$11(Landroid/net/ITetheringEventCallback;Ljava/lang/String;Landroid/net/ITetheringConnector;)V

    return-void
.end method
