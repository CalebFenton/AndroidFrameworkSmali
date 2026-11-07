.class public abstract Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;
.super Landroid/os/Binder;
.source "IInjectGlobalEvent.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_setResourceContention:I = 0x2

.field static final blacklist TRANSACTION_triggerOnResourcesAvailable:I = 0x3

.field static final blacklist TRANSACTION_triggerRestart:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.media.soundtrigger_middleware.IInjectGlobalEvent"

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    const-string v0, "android.media.soundtrigger_middleware.IInjectGlobalEvent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    if-eqz v1, :cond_14

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 77
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const-string v0, "android.media.soundtrigger_middleware.IInjectGlobalEvent"

    .line 82
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v1

    .line 89
    :cond_16
    packed-switch p1, :pswitch_data_3a

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 108
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->triggerOnResourcesAvailable()V

    .line 109
    goto :goto_39

    .line 99
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 101
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/soundtrigger_middleware/IAcknowledgeEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IAcknowledgeEvent;

    move-result-object v3

    .line 102
    .local v3, "_arg1":Landroid/media/soundtrigger_middleware/IAcknowledgeEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->setResourceContention(ZLandroid/media/soundtrigger_middleware/IAcknowledgeEvent;)V

    .line 104
    goto :goto_39

    .line 93
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/media/soundtrigger_middleware/IAcknowledgeEvent;
    :pswitch_35
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->triggerRestart()V

    .line 94
    nop

    .line 116
    :goto_39
    return v1

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
