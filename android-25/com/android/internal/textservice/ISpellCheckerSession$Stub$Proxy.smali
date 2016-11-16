.class Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISpellCheckerSession.java"

# interfaces
.implements Lcom/android/internal/textservice/ISpellCheckerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ISpellCheckerSession$Stub;
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
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    iput-object p1, p0, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 88
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 98
    const-string/jumbo v0, "com.android.internal.textservice.ISpellCheckerSession"

    #@3
    return-object v0
.end method

.method public onCancel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 131
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.textservice.ISpellCheckerSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 132
    iget-object v1, p0, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x3

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 127
    return-void

    #@16
    .line 134
    :catchall_0
    move-exception v1

    #@17
    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 134
    throw v1
.end method

.method public onClose()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 142
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.textservice.ISpellCheckerSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 143
    iget-object v1, p0, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@c
    const/4 v2, 0x4

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x1

    #@f
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 138
    return-void

    #@16
    .line 145
    :catchall_0
    move-exception v1

    #@17
    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1a
    .line 145
    throw v1
.end method

.method public onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .locals 5
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 118
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.textservice.ISpellCheckerSession"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 119
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@e
    .line 120
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 121
    iget-object v1, p0, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v2, 0x2

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 114
    return-void

    #@1d
    .line 123
    :catchall_0
    move-exception v1

    #@1e
    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 123
    throw v1
.end method

.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .locals 5
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "multipleWords"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@5
    move-result-object v0

    #@6
    .line 104
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.textservice.ISpellCheckerSession"

    #@9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@c
    .line 105
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, p1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@10
    .line 106
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 107
    if-eqz p3, :cond_0

    #@15
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 108
    iget-object v1, p0, Lcom/android/internal/textservice/ISpellCheckerSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v2, 0x1

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 100
    return-void

    #@24
    :cond_0
    move v1, v2

    #@25
    .line 107
    goto :goto_0

    #@26
    .line 110
    :catchall_0
    move-exception v1

    #@27
    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 110
    throw v1
.end method
