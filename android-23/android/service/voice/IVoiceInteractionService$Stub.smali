.class public abstract Landroid/service/voice/IVoiceInteractionService$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionService.java"

# interfaces
.implements Landroid/service/voice/IVoiceInteractionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IVoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IVoiceInteractionService"

.field static final TRANSACTION_launchVoiceAssistFromKeyguard:I = 0x4

.field static final TRANSACTION_ready:I = 0x1

.field static final TRANSACTION_shutdown:I = 0x3

.field static final TRANSACTION_soundModelsChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IVoiceInteractionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.service.voice.IVoiceInteractionService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/voice/IVoiceInteractionService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/service/voice/IVoiceInteractionService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionService"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v1

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionService"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 51
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->ready()V

    #@19
    .line 52
    return v1

    #@1a
    .line 56
    :sswitch_2
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionService"

    #@1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20
    .line 57
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->soundModelsChanged()V

    #@23
    .line 58
    return v1

    #@24
    .line 62
    :sswitch_3
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionService"

    #@27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a
    .line 63
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->shutdown()V

    #@2d
    .line 64
    return v1

    #@2e
    .line 68
    :sswitch_4
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionService"

    #@31
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 69
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->launchVoiceAssistFromKeyguard()V

    #@37
    .line 70
    return v1

    #@38
    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
