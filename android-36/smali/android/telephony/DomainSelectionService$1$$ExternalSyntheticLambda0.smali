.class public final synthetic Landroid/telephony/DomainSelectionService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/DomainSelectionService$1;

.field public final synthetic blacklist f$1:Landroid/telephony/DomainSelectionService$SelectionAttributes;

.field public final synthetic blacklist f$2:Lcom/android/internal/telephony/ITransportSelectorCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/DomainSelectionService$1;Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/DomainSelectionService$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/DomainSelectionService$1;

    iput-object p2, p0, Landroid/telephony/DomainSelectionService$1$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/DomainSelectionService$SelectionAttributes;

    iput-object p3, p0, Landroid/telephony/DomainSelectionService$1$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/telephony/ITransportSelectorCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/DomainSelectionService$1;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$1$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/DomainSelectionService$SelectionAttributes;

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$1$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/telephony/ITransportSelectorCallback;

    invoke-static {v0, v1, v2}, Landroid/telephony/DomainSelectionService$1;->$r8$lambda$DPN0qZLaABA8Ko8nJM0nfoJHoGY(Landroid/telephony/DomainSelectionService$1;Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)V

    return-void
.end method
