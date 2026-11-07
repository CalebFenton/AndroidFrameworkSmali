.class public final synthetic Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/ITransportSelectorResultCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;

    iput-object p2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telephony/ITransportSelectorResultCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;

    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telephony/ITransportSelectorResultCallback;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->$r8$lambda$dv79IhTUC_1g0XnXbKbtXfz1pPs(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V

    return-void
.end method
