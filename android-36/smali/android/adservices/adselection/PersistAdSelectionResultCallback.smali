.class public interface abstract Landroid/adservices/adselection/PersistAdSelectionResultCallback;
.super Ljava/lang/Object;
.source "PersistAdSelectionResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/PersistAdSelectionResultCallback$Stub;,
        Landroid/adservices/adselection/PersistAdSelectionResultCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.adselection.PersistAdSelectionResultCallback"


# virtual methods
.method public abstract blacklist onFailure(Landroid/adservices/common/FledgeErrorResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/adservices/adselection/PersistAdSelectionResultResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
