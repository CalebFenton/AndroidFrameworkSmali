.class Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor$1;
.super Ljava/lang/Object;
.source "DomainSelectionConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->onWwanSelectedAsync(Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;

.field final synthetic blacklist val$cb:Lcom/android/internal/telephony/ITransportSelectorResultCallback;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor$1;->this$1:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;

    iput-object p2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor$1;->val$cb:Lcom/android/internal/telephony/ITransportSelectorResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor$1;->this$1:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;

    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor$1;->val$cb:Lcom/android/internal/telephony/ITransportSelectorResultCallback;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;->-$$Nest$monWwanSelectedAsyncInternal(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$TransportSelectorCallbackAdaptor;Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V

    return-void
.end method
