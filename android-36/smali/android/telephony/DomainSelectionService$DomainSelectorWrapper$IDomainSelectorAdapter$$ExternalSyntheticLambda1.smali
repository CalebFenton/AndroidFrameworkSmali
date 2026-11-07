.class public final synthetic Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/DomainSelector;

.field public final synthetic blacklist f$1:Landroid/telephony/DomainSelectionService$SelectionAttributes;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/DomainSelector;Landroid/telephony/DomainSelectionService$SelectionAttributes;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/DomainSelector;

    iput-object p2, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/DomainSelectionService$SelectionAttributes;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/DomainSelector;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/DomainSelectionService$SelectionAttributes;

    invoke-static {v0, v1}, Landroid/telephony/DomainSelectionService$DomainSelectorWrapper$IDomainSelectorAdapter;->lambda$reselectDomain$0(Landroid/telephony/DomainSelector;Landroid/telephony/DomainSelectionService$SelectionAttributes;)V

    return-void
.end method
