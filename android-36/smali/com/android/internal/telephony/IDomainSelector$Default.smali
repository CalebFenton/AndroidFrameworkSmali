.class public Lcom/android/internal/telephony/IDomainSelector$Default;
.super Ljava/lang/Object;
.source "IDomainSelector.java"

# interfaces
.implements Lcom/android/internal/telephony/IDomainSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IDomainSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist finishSelection()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist reselectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V
    .registers 2
    .param p1, "attr"    # Landroid/telephony/DomainSelectionService$SelectionAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
