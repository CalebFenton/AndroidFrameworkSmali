.class public final synthetic Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/adservices/adselection/AdSelectionManager$ServiceProvider;


# instance fields
.field public final synthetic blacklist f$0:Landroid/adservices/adselection/AdSelectionManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/adservices/adselection/AdSelectionManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda0;->f$0:Landroid/adservices/adselection/AdSelectionManager;

    return-void
.end method


# virtual methods
.method public final blacklist getService()Landroid/adservices/adselection/AdSelectionService;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/adservices/adselection/AdSelectionManager$$ExternalSyntheticLambda0;->f$0:Landroid/adservices/adselection/AdSelectionManager;

    invoke-virtual {v0}, Landroid/adservices/adselection/AdSelectionManager;->doGetService()Landroid/adservices/adselection/AdSelectionService;

    move-result-object v0

    return-object v0
.end method
