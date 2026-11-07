.class public final synthetic Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;

.field public final synthetic blacklist f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;Landroid/os/IBinder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;

    iput-object p2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection$$ExternalSyntheticLambda2;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;

    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection$$ExternalSyntheticLambda2;->f$1:Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;->$r8$lambda$jk9yK-gkOJYXDkhlGGaMNM8bV9g(Lcom/android/internal/telephony/domainselection/DomainSelectionController$DomainSelectionServiceConnection;Landroid/os/IBinder;)V

    return-void
.end method
