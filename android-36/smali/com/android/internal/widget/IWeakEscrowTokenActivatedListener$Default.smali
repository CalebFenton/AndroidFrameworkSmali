.class public Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener$Default;
.super Ljava/lang/Object;
.source "IWeakEscrowTokenActivatedListener.java"

# interfaces
.implements Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onWeakEscrowTokenActivated(JI)V
    .registers 4
    .param p1, "handle"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
