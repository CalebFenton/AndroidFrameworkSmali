.class public final synthetic Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;

.field public final synthetic blacklist f$1:Landroid/telephony/WwanSelectorCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;Landroid/telephony/WwanSelectorCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;

    iput-object p2, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/WwanSelectorCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/WwanSelectorCallback;

    invoke-static {v0, v1}, Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;->$r8$lambda$JI8W9zcryOk7qNqdUQ7dRpy5Hjg(Landroid/telephony/DomainSelectionService$TransportSelectorCallbackWrapper$ITransportSelectorResultCallbackAdapter;Landroid/telephony/WwanSelectorCallback;)V

    return-void
.end method
