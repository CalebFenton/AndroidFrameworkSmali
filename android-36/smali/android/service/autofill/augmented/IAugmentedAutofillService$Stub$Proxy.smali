.class Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAugmentedAutofillService.java"

# interfaces
.implements Landroid/service/autofill/augmented/IAugmentedAutofillService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 166
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 173
    const-string v0, "android.service.autofill.augmented.IAugmentedAutofillService"

    return-object v0
.end method

.method public blacklist onConnected(ZZ)V
    .registers 7
    .param p1, "debug"    # Z
    .param p2, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 179
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 181
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 182
    iget-object v1, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    nop

    .line 187
    return-void

    .line 185
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    throw v1
.end method

.method public blacklist onDestroyAllFillWindowsRequest()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 223
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1a

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 228
    nop

    .line 229
    return-void

    .line 227
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 228
    throw v1
.end method

.method public blacklist onDisconnected()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 192
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1a

    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    nop

    .line 198
    return-void

    .line 196
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    throw v1
.end method

.method public blacklist onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    .registers 16
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

    .line 201
    invoke-virtual {p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 203
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 206
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 209
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 210
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    .line 211
    invoke-virtual {v0, p9, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 212
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 213
    iget-object v1, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_36

    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 217
    nop

    .line 218
    return-void

    .line 216
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 217
    throw v1
.end method
