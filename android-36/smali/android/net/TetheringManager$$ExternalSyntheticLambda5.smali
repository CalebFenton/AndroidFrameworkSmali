.class public final synthetic Landroid/net/TetheringManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/TetheringManager$RequestHelper;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/TetheringManager;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/TetheringManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda5;->f$0:Landroid/net/TetheringManager;

    iput-object p2, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist runRequest(Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda5;->f$0:Landroid/net/TetheringManager;

    iget-object v1, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/TetheringManager$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Landroid/net/TetheringManager;->$r8$lambda$GAGL3PWzMZdMnpIfgqgwcKBF7dM(Landroid/net/TetheringManager;Ljava/lang/String;Ljava/lang/String;Landroid/net/ITetheringConnector;Landroid/net/IIntResultListener;)V

    return-void
.end method
