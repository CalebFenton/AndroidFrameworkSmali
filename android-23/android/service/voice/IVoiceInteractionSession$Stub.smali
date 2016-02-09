.class public abstract Landroid/service/voice/IVoiceInteractionSession$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionSession.java"

# interfaces
.implements Landroid/service/voice/IVoiceInteractionSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IVoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IVoiceInteractionSession"

.field static final TRANSACTION_closeSystemDialogs:I = 0x7

.field static final TRANSACTION_destroy:I = 0x9

.field static final TRANSACTION_handleAssist:I = 0x3

.field static final TRANSACTION_handleScreenshot:I = 0x4

.field static final TRANSACTION_hide:I = 0x2

.field static final TRANSACTION_onLockscreenShown:I = 0x8

.field static final TRANSACTION_show:I = 0x1

.field static final TRANSACTION_taskFinished:I = 0x6

.field static final TRANSACTION_taskStarted:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionSession"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;
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
    const-string/jumbo v1, "android.service.voice.IVoiceInteractionSession"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/voice/IVoiceInteractionSession;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/service/voice/IVoiceInteractionSession;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v7

    #@8
    return v7

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v7, "android.service.voice.IVoiceInteractionSession"

    #@c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v8

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v7, "android.service.voice.IVoiceInteractionSession"

    #@13
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_0

    #@1c
    .line 53
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/os/Bundle;

    #@24
    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v3

    #@28
    .line 61
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v7

    #@2c
    invoke-static {v7}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@2f
    move-result-object v6

    #@30
    .line 62
    .local v6, "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    invoke-virtual {p0, v2, v3, v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    #@33
    .line 63
    return v8

    #@34
    .line 56
    .end local v3    # "_arg1":I
    .end local v6    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    :cond_0
    const/4 v2, 0x0

    #@35
    .local v2, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    #@36
    .line 67
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v7, "android.service.voice.IVoiceInteractionSession"

    #@39
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c
    .line 68
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->hide()V

    #@3f
    .line 69
    return v8

    #@40
    .line 73
    :sswitch_3
    const-string/jumbo v7, "android.service.voice.IVoiceInteractionSession"

    #@43
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46
    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v7

    #@4a
    if-eqz v7, :cond_1

    #@4c
    .line 76
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@51
    move-result-object v2

    #@52
    check-cast v2, Landroid/os/Bundle;

    #@54
    .line 82
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v7

    #@58
    if-eqz v7, :cond_2

    #@5a
    .line 83
    sget-object v7, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5c
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5f
    move-result-object v4

    #@60
    check-cast v4, Landroid/app/assist/AssistStructure;

    #@62
    .line 89
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@65
    move-result v7

    #@66
    if-eqz v7, :cond_3

    #@68
    .line 90
    sget-object v7, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6a
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6d
    move-result-object v5

    #@6e
    check-cast v5, Landroid/app/assist/AssistContent;

    #@70
    .line 95
    :goto_3
    invoke-virtual {p0, v2, v4, v5}, Landroid/service/voice/IVoiceInteractionSession$Stub;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V

    #@73
    .line 96
    return v8

    #@74
    .line 79
    :cond_1
    const/4 v2, 0x0

    #@75
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    goto :goto_1

    #@76
    .line 86
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_2
    const/4 v4, 0x0

    #@77
    .local v4, "_arg1":Landroid/app/assist/AssistStructure;
    goto :goto_2

    #@78
    .line 93
    .end local v4    # "_arg1":Landroid/app/assist/AssistStructure;
    :cond_3
    const/4 v5, 0x0

    #@79
    .local v5, "_arg2":Landroid/app/assist/AssistContent;
    goto :goto_3

    #@7a
    .line 100
    .end local v5    # "_arg2":Landroid/app/assist/AssistContent;
    :sswitch_4
    const-string/jumbo v7, "android.service.voice.IVoiceInteractionSession"

    #@7d
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v7

    #@84
    if-eqz v7, :cond_4

    #@86
    .line 103
    sget-object v7, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@88
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8b
    move-result-object v1

    #@8c
    check-cast v1, Landroid/graphics/Bitmap;

    #@8e
    .line 108
    :goto_4
    invoke-virtual {p0, v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->handleScreenshot(Landroid/graphics/Bitmap;)V

    #@91
    .line 109
    return v8

    #@92
    .line 106
    :cond_4
    const/4 v1, 0x0

    #@93
    .local v1, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_4

    #@94
    .line 113
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_5
    const-string/jumbo v7, "android.service.voice.IVoiceInteractionSession"

    #@97
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9a
    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9d
    move-result v7

    #@9e
    if-eqz v7, :cond_5

    #@a0
    .line 116
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a2
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a5
    move-result-object v0

    #@a6
    check-cast v0, Landroid/content/Intent;

    #@a8
    .line 122
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ab
    move-result v3

    #@ac
    .line 123
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/service/voice/IVoiceInteractionSession$Stub;->taskStarted(Landroid/content/Intent;I)V

    #@af
    .line 124
    return v8

    #@b0
    .line 119
    .end local v3    # "_arg1":I
    :cond_5
    const/4 v0, 0x0

    #@b1
    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_5

    #@b2
    .line 128
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_6
    const-string/jumbo v7, "android.service.voice.IVoiceInteractionSession"

    #@b5
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8
    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bb
    move-result v7

    #@bc
    if-eqz v7, :cond_6

    #@be
    .line 131
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c0
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c3
    move-result-object v0

    #@c4
    check-cast v0, Landroid/content/Intent;

    #@c6
    .line 137
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c9
    move-result v3

    #@ca
    .line 138
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/service/voice/IVoiceInteractionSession$Stub;->taskFinished(Landroid/content/Intent;I)V

    #@cd
    .line 139
    return v8

    #@ce
    .line 134
    .end local v3    # "_arg1":I
    :cond_6
    const/4 v0, 0x0

    #@cf
    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_6

    #@d0
    .line 143
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_7
    const-string/jumbo v7, "android.service.voice.IVoiceInteractionSession"

    #@d3
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d6
    .line 144
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->closeSystemDialogs()V

    #@d9
    .line 145
    return v8

    #@da
    .line 149
    :sswitch_8
    const-string/jumbo v7, "android.service.voice.IVoiceInteractionSession"

    #@dd
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e0
    .line 150
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->onLockscreenShown()V

    #@e3
    .line 151
    return v8

    #@e4
    .line 155
    :sswitch_9
    const-string/jumbo v7, "android.service.voice.IVoiceInteractionSession"

    #@e7
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ea
    .line 156
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->destroy()V

    #@ed
    .line 157
    return v8

    #@ee
    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
