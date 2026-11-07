.class public final synthetic Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;


# instance fields
.field public final synthetic blacklist f$0:Landroid/adservices/adselection/AdSelectionService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/adservices/adselection/AdSelectionService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda3;->f$0:Landroid/adservices/adselection/AdSelectionService;

    return-void
.end method


# virtual methods
.method public final blacklist getService()Landroid/adservices/adselection/AdSelectionService;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda3;->f$0:Landroid/adservices/adselection/AdSelectionService;

    invoke-static {v0}, Landroid/adservices/adselection/AdSelectionManager;->lambda$get$0(Landroid/adservices/adselection/AdSelectionService;)Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    return-object v0
.end method
