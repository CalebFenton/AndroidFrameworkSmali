.class public final synthetic Landroid/os/IncidentManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/IncidentManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/IncidentManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/IncidentManager$$ExternalSyntheticLambda1;->f$0:Landroid/os/IncidentManager;

    return-void
.end method


# virtual methods
.method public final whitelist binderDied()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/os/IncidentManager$$ExternalSyntheticLambda1;->f$0:Landroid/os/IncidentManager;

    invoke-static {v0}, Landroid/os/IncidentManager;->$r8$lambda$z82u9FYdAfbEmHqbSggjHRJmRTU(Landroid/os/IncidentManager;)V

    return-void
.end method
