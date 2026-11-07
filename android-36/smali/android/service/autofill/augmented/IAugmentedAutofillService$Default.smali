.class public Landroid/service/autofill/augmented/IAugmentedAutofillService$Default;
.super Ljava/lang/Object;
.source "IAugmentedAutofillService.java"

# interfaces
.implements Landroid/service/autofill/augmented/IAugmentedAutofillService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/IAugmentedAutofillService;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onConnected(ZZ)V
    .registers 3
    .param p1, "debug"    # Z
    .param p2, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onDestroyAllFillWindowsRequest()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onDisconnected()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    .registers 11
    .param p1, "sessionId"    # I
    .param p2, "autofillManagerClient"    # Landroid/os/IBinder;
    .param p3, "taskId"    # I
    .param p4, "activityComponent"    # Landroid/content/ComponentName;
    .param p5, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p6, "focusedValue"    # Landroid/view/autofill/AutofillValue;
    .param p7, "requestTime"    # J
    .param p9, "inlineSuggestionsRequest"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p10, "callback"    # Landroid/service/autofill/augmented/IFillCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
