.class public interface abstract Landroid/adservices/signals/IProtectedSignalsService;
.super Ljava/lang/Object;
.source "IProtectedSignalsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/signals/IProtectedSignalsService$Stub;,
        Landroid/adservices/signals/IProtectedSignalsService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.signals.IProtectedSignalsService"


# virtual methods
.method public abstract blacklist updateSignals(Landroid/adservices/signals/UpdateSignalsInput;Landroid/adservices/signals/UpdateSignalsCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
