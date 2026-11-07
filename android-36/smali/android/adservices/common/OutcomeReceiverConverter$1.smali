.class Landroid/adservices/common/OutcomeReceiverConverter$1;
.super Ljava/lang/Object;
.source "OutcomeReceiverConverter.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/adservices/common/OutcomeReceiverConverter;->toOutcomeReceiver(Landroid/adservices/common/AdServicesOutcomeReceiver;)Landroid/os/OutcomeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "TR;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/adservices/common/AdServicesOutcomeReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/common/AdServicesOutcomeReceiver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Landroid/adservices/common/OutcomeReceiverConverter$1;->val$callback:Landroid/adservices/common/AdServicesOutcomeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 58
    .local p1, "error":Ljava/lang/Throwable;, "TE;"
    iget-object v0, p0, Landroid/adservices/common/OutcomeReceiverConverter$1;->val$callback:Landroid/adservices/common/AdServicesOutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/adservices/common/AdServicesOutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public whitelist onResult(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 53
    .local p1, "result":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Landroid/adservices/common/OutcomeReceiverConverter$1;->val$callback:Landroid/adservices/common/AdServicesOutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/adservices/common/AdServicesOutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 54
    return-void
.end method
