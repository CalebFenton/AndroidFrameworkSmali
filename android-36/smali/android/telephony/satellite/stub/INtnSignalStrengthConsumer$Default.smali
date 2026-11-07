.class public Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer$Default;
.super Ljava/lang/Object;
.source "INtnSignalStrengthConsumer.java"

# interfaces
.implements Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/telephony/satellite/stub/NtnSignalStrength;)V
    .registers 2
    .param p1, "result"    # Landroid/telephony/satellite/stub/NtnSignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method
