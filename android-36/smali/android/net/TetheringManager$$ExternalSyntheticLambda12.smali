.class public final synthetic Landroid/net/TetheringManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/TetheringManager$ConnectorConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/TetheringManager;

.field public final synthetic blacklist f$1:Landroid/net/TetheringManager$TetheringRequest;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Landroid/net/IIntResultListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/TetheringManager;Landroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;Landroid/net/IIntResultListener;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda12;->f$0:Landroid/net/TetheringManager;

    iput-object p2, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda12;->f$1:Landroid/net/TetheringManager$TetheringRequest;

    iput-object p3, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda12;->f$3:Landroid/net/IIntResultListener;

    return-void
.end method


# virtual methods
.method public final blacklist onConnectorAvailable(Landroid/net/ITetheringConnector;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda12;->f$0:Landroid/net/TetheringManager;

    iget-object v1, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda12;->f$1:Landroid/net/TetheringManager$TetheringRequest;

    iget-object v2, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda12;->f$3:Landroid/net/IIntResultListener;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/net/TetheringManager;->$r8$lambda$xhn57Fi_glRYNb0HjUDR7KKlQ2w(Landroid/net/TetheringManager;Landroid/net/TetheringManager$TetheringRequest;Ljava/lang/String;Landroid/net/IIntResultListener;Landroid/net/ITetheringConnector;)V

    return-void
.end method
