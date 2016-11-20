.class Lcom/android/internal/textservice/ITextServicesSessionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITextServicesSessionListener.java"

# interfaces
.implements Lcom/android/internal/textservice/ITextServicesSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ITextServicesSessionListener$Stub;
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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    iput-object p1, p0, Lcom/android/internal/textservice/ITextServicesSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 63
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/textservice/ITextServicesSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 73
    const-string/jumbo v0, "com.android.internal.textservice.ITextServicesSessionListener"

    #@3
    return-object v0
.end method

.method public onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .locals 5
    .param p1, "spellCheckerSession"    # Lcom/android/internal/textservice/ISpellCheckerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 77
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 79
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.textservice.ITextServicesSessionListener"

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@b
    .line 80
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 81
    iget-object v1, p0, Lcom/android/internal/textservice/ITextServicesSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v2, 0x1

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x1

    #@19
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 75
    return-void

    #@20
    .line 83
    :catchall_0
    move-exception v1

    #@21
    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 83
    throw v1
.end method
