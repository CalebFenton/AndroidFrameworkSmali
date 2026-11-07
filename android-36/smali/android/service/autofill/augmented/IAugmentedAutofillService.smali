.class public interface abstract Landroid/service/autofill/augmented/IAugmentedAutofillService;
.super Ljava/lang/Object;
.source "IAugmentedAutofillService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;,
        Landroid/service/autofill/augmented/IAugmentedAutofillService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.autofill.augmented.IAugmentedAutofillService"


# virtual methods
.method public abstract blacklist onConnected(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDestroyAllFillWindowsRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDisconnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
