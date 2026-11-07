.class public final Landroid/adservices/common/OutcomeReceiverConverter;
.super Ljava/lang/Object;
.source "OutcomeReceiverConverter.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static blacklist toOutcomeReceiver(Landroid/adservices/common/AdServicesOutcomeReceiver;)Landroid/os/OutcomeReceiver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Landroid/adservices/common/AdServicesOutcomeReceiver<",
            "TR;TE;>;)",
            "Landroid/os/OutcomeReceiver<",
            "TR;TE;>;"
        }
    .end annotation

    .line 46
    .local p0, "callback":Landroid/adservices/common/AdServicesOutcomeReceiver;, "Landroid/adservices/common/AdServicesOutcomeReceiver<TR;TE;>;"
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    new-instance v0, Landroid/adservices/common/OutcomeReceiverConverter$1;

    invoke-direct {v0, p0}, Landroid/adservices/common/OutcomeReceiverConverter$1;-><init>(Landroid/adservices/common/AdServicesOutcomeReceiver;)V

    return-object v0
.end method
