.class Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInputContextCallback.java"

# interfaces
.implements Lcom/android/internal/view/IInputContextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputContextCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 136
    iput-object p1, p0, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 134
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 144
    const-string/jumbo v0, "com.android.internal.view.IInputContextCallback"

    #@3
    return-object v0
.end method

.method public setCursorCapsMode(II)V
    .locals 5
    .param p1, "capsMode"    # I
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 188
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContextCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 189
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 190
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 191
    iget-object v1, p0, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x3

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 184
    return-void

    #@1c
    .line 193
    :catchall_0
    move-exception v1

    #@1d
    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 193
    throw v1
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    .locals 5
    .param p1, "extractedText"    # Landroid/view/inputmethod/ExtractedText;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 201
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContextCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 202
    if-eqz p1, :cond_0

    #@c
    .line 203
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 204
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/ExtractedText;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 209
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 210
    iget-object v1, p0, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x4

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 197
    return-void

    #@23
    .line 207
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 212
    :catchall_0
    move-exception v1

    #@29
    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 212
    throw v1
.end method

.method public setRequestUpdateCursorAnchorInfoResult(ZI)V
    .locals 5
    .param p1, "result"    # Z
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 239
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.view.IInputContextCallback"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 240
    if-eqz p1, :cond_0

    #@d
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 241
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 242
    iget-object v1, p0, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@15
    const/4 v2, 0x6

    #@16
    const/4 v3, 0x0

    #@17
    const/4 v4, 0x1

    #@18
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 235
    return-void

    #@1f
    .line 240
    :cond_0
    const/4 v1, 0x0

    #@20
    goto :goto_0

    #@21
    .line 244
    :catchall_0
    move-exception v1

    #@22
    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 244
    throw v1
.end method

.method public setSelectedText(Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "selectedText"    # Ljava/lang/CharSequence;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 220
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContextCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 221
    if-eqz p1, :cond_0

    #@c
    .line 222
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 223
    const/4 v1, 0x0

    #@11
    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@14
    .line 228
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 229
    iget-object v1, p0, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x5

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 216
    return-void

    #@23
    .line 226
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 231
    :catchall_0
    move-exception v1

    #@29
    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 231
    throw v1
.end method

.method public setTextAfterCursor(Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "textAfterCursor"    # Ljava/lang/CharSequence;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 169
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContextCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 170
    if-eqz p1, :cond_0

    #@c
    .line 171
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 172
    const/4 v1, 0x0

    #@11
    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@14
    .line 177
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 178
    iget-object v1, p0, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x2

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 165
    return-void

    #@23
    .line 175
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 180
    :catchall_0
    move-exception v1

    #@29
    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 180
    throw v1
.end method

.method public setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "textBeforeCursor"    # Ljava/lang/CharSequence;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 150
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.IInputContextCallback"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 151
    if-eqz p1, :cond_0

    #@c
    .line 152
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 153
    const/4 v1, 0x0

    #@11
    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@14
    .line 158
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 159
    iget-object v1, p0, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/4 v2, 0x1

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v4, 0x1

    #@1c
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 146
    return-void

    #@23
    .line 156
    :cond_0
    const/4 v1, 0x0

    #@24
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 161
    :catchall_0
    move-exception v1

    #@29
    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 161
    throw v1
.end method
