.class public final synthetic Landroid/app/ActivityThread$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewRootImpl$ConfigChangedCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ActivityThread;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;->f$0:Landroid/app/ActivityThread;

    return-void
.end method


# virtual methods
.method public final blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;->f$0:Landroid/app/ActivityThread;

    invoke-static {v0, p1}, Landroid/app/ActivityThread;->$r8$lambda$ER5_VDuGIZMC0J2vqX33KPnkevc(Landroid/app/ActivityThread;Landroid/content/res/Configuration;)V

    return-void
.end method
