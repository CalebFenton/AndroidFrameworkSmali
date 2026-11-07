.class public final synthetic Landroid/adservices/adselection/AdSelectionManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/adservices/adselection/AdSelectionManager$1;

.field public final synthetic blacklist f$1:Landroid/adservices/adselection/GetAdSelectionDataResponse;

.field public final synthetic blacklist f$2:Landroid/os/OutcomeReceiver;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/adservices/adselection/AdSelectionManager$1;Landroid/adservices/adselection/GetAdSelectionDataResponse;Landroid/os/OutcomeReceiver;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/adservices/adselection/AdSelectionManager$1;

    iput-object p2, p0, Landroid/adservices/adselection/AdSelectionManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/adservices/adselection/GetAdSelectionDataResponse;

    iput-object p3, p0, Landroid/adservices/adselection/AdSelectionManager$1$$ExternalSyntheticLambda0;->f$2:Landroid/os/OutcomeReceiver;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/adservices/adselection/AdSelectionManager$1;

    iget-object v1, p0, Landroid/adservices/adselection/AdSelectionManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/adservices/adselection/GetAdSelectionDataResponse;

    iget-object v2, p0, Landroid/adservices/adselection/AdSelectionManager$1$$ExternalSyntheticLambda0;->f$2:Landroid/os/OutcomeReceiver;

    invoke-static {v0, v1, v2}, Landroid/adservices/adselection/AdSelectionManager$1;->$r8$lambda$gwc4VD-KttJEDMosH8qtTvb9x54(Landroid/adservices/adselection/AdSelectionManager$1;Landroid/adservices/adselection/GetAdSelectionDataResponse;Landroid/os/OutcomeReceiver;)V

    return-void
.end method
