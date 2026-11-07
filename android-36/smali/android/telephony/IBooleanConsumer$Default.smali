.class public Landroid/telephony/IBooleanConsumer$Default;
.super Ljava/lang/Object;
.source "IBooleanConsumer.java"

# interfaces
.implements Landroid/telephony/IBooleanConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/IBooleanConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Z)V
    .registers 2
    .param p1, "result"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method
