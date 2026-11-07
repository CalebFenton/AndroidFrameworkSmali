.class Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection$1;
.super Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;
.source "EmergencyCallDomainSelectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/domainselection/EmergencyCallDomainSelectionConnection;Ljava/util/concurrent/Executor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 166
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onPreferredTransportChanged(IZ)V
    .registers 3

    .line 0
    return-void
.end method
