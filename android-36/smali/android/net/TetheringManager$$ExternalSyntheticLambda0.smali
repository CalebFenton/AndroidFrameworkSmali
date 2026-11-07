.class public final synthetic Landroid/net/TetheringManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/TetheringManager$ConnectorConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/TetheringManager;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/TetheringManager;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda0;->f$0:Landroid/net/TetheringManager;

    iput p2, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist onConnectorAvailable(Landroid/net/ITetheringConnector;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda0;->f$0:Landroid/net/TetheringManager;

    iget v1, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Landroid/net/TetheringManager;->$r8$lambda$W3WcUD0fkB4_yC1EJnmH_SZB_A8(Landroid/net/TetheringManager;ILjava/lang/String;Landroid/net/ITetheringConnector;)V

    return-void
.end method
