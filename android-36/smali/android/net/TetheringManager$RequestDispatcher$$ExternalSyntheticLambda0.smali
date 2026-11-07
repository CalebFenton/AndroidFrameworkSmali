.class public final synthetic Landroid/net/TetheringManager$RequestDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/TetheringManager$ConnectorConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/TetheringManager$RequestDispatcher;

.field public final synthetic blacklist f$1:Landroid/net/TetheringManager$RequestHelper;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/TetheringManager$RequestDispatcher;Landroid/net/TetheringManager$RequestHelper;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/TetheringManager$RequestDispatcher$$ExternalSyntheticLambda0;->f$0:Landroid/net/TetheringManager$RequestDispatcher;

    iput-object p2, p0, Landroid/net/TetheringManager$RequestDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/net/TetheringManager$RequestHelper;

    return-void
.end method


# virtual methods
.method public final blacklist onConnectorAvailable(Landroid/net/ITetheringConnector;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/TetheringManager$RequestDispatcher$$ExternalSyntheticLambda0;->f$0:Landroid/net/TetheringManager$RequestDispatcher;

    iget-object v1, p0, Landroid/net/TetheringManager$RequestDispatcher$$ExternalSyntheticLambda0;->f$1:Landroid/net/TetheringManager$RequestHelper;

    invoke-static {v0, v1, p1}, Landroid/net/TetheringManager$RequestDispatcher;->$r8$lambda$a2oLHSaquGUnQ97vPL6YBWMclxM(Landroid/net/TetheringManager$RequestDispatcher;Landroid/net/TetheringManager$RequestHelper;Landroid/net/ITetheringConnector;)V

    return-void
.end method
