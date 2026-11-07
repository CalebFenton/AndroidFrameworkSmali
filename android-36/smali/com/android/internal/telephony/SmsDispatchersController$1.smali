.class Lcom/android/internal/telephony/SmsDispatchersController$1;
.super Ljava/lang/Object;
.source "SmsDispatchersController.java"

# interfaces
.implements Lcom/android/internal/telephony/SmsDispatchersController$DomainSelectionResolverProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsDispatchersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SmsDispatchersController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDomainSelectionConnection(Lcom/android/internal/telephony/Phone;IZ)Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;
    .registers 4

    .line 205
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getDomainSelectionConnection(Lcom/android/internal/telephony/Phone;IZ)Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist isDomainSelectionSupported()Z
    .registers 1

    .line 217
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result p0

    return p0
.end method
