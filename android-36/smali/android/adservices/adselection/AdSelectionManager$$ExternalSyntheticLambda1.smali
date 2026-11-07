.class public final synthetic Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/adservices/adselection/AdSelectionManager$AdSelectionAdIdCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/adservices/adselection/ReportInteractionInput$Builder;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/adservices/adselection/ReportInteractionInput$Builder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda1;->f$0:Landroid/adservices/adselection/ReportInteractionInput$Builder;

    return-void
.end method


# virtual methods
.method public final blacklist onResult(Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda1;->f$0:Landroid/adservices/adselection/ReportInteractionInput$Builder;

    invoke-static {v0, p1}, Landroid/adservices/adselection/AdSelectionManager;->lambda$reportEvent$1(Landroid/adservices/adselection/ReportInteractionInput$Builder;Ljava/lang/String;)V

    return-void
.end method
