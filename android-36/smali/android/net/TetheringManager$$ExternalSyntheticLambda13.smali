.class public final synthetic Landroid/net/TetheringManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/TetheringManager$ConnectorConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/TetheringManager;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/os/ResultReceiver;

.field public final synthetic blacklist f$3:Z

.field public final synthetic blacklist f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/TetheringManager;ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda13;->f$0:Landroid/net/TetheringManager;

    iput p2, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda13;->f$1:I

    iput-object p3, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda13;->f$2:Landroid/os/ResultReceiver;

    iput-boolean p4, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda13;->f$3:Z

    iput-object p5, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda13;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist onConnectorAvailable(Landroid/net/ITetheringConnector;)V
    .registers 8

    .line 0
    iget-object v0, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda13;->f$0:Landroid/net/TetheringManager;

    iget v1, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda13;->f$1:I

    iget-object v2, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda13;->f$2:Landroid/os/ResultReceiver;

    iget-boolean v3, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda13;->f$3:Z

    iget-object v4, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda13;->f$4:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/net/TetheringManager;->$r8$lambda$KcKbV-Ufa1SVRnqjPiKhPufh7ac(Landroid/net/TetheringManager;ILandroid/os/ResultReceiver;ZLjava/lang/String;Landroid/net/ITetheringConnector;)V

    return-void
.end method
