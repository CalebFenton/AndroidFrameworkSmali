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
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .locals 11
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
    const/4 v10, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionSession"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v10

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionSession"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 53
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/os/Bundle;

    #@24
    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v8

    #@28
    .line 61
    .local v8, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v0

    #@2c
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@2f
    move-result-object v9

    #@30
    .line 62
    .local v9, "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    invoke-virtual {p0, v1, v8, v9}, Landroid/service/voice/IVoiceInteractionSession$Stub;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    #@33
    .line 63
    return v10

    #@34
    .line 56
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    :cond_0
    const/4 v1, 0x0

    #@35
    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    #@36
    .line 67
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionSession"

    #@39
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c
    .line 68
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->hide()V

    #@3f
    .line 69
    return v10

    #@40
    .line 73
    :sswitch_3
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionSession"

    #@43
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46
    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_1

    #@4c
    .line 76
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@51
    move-result-object v1

    #@52
    check-cast v1, Landroid/os/Bundle;

    #@54
    .line 82
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_2

    #@5a
    .line 83
    sget-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5f
    move-result-object v2

    #@60
    check-cast v2, Landroid/app/assist/AssistStructure;

    #@62
    .line 89
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@65
    move-result v0

    #@66
    if-eqz v0, :cond_3

    #@68
    .line 90
    sget-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6a
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6d
    move-result-object v3

    #@6e
    check-cast v3, Landroid/app/assist/AssistContent;

    #@70
    .line 96
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@73
    move-result v4

    #@74
    .line 98
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@77
    move-result v5

    #@78
    .local v5, "_arg4":I
    move-object v0, p0

    #@79
    .line 99
    invoke-virtual/range {v0 .. v5}, Landroid/service/voice/IVoiceInteractionSession$Stub;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V

    #@7c
    .line 100
    return v10

    #@7d
    .line 79
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :cond_1
    const/4 v1, 0x0

    #@7e
    .restart local v1    # "_arg0":Landroid/os/Bundle;
    goto :goto_1

    #@7f
    .line 86
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    #@80
    .local v2, "_arg1":Landroid/app/assist/AssistStructure;
    goto :goto_2

    #@81
    .line 93
    .end local v2    # "_arg1":Landroid/app/assist/AssistStructure;
    :cond_3
    const/4 v3, 0x0

    #@82
    .local v3, "_arg2":Landroid/app/assist/AssistContent;
    goto :goto_3

    #@83
    .line 104
    .end local v3    # "_arg2":Landroid/app/assist/AssistContent;
    :sswitch_4
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionSession"

    #@86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@89
    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v0

    #@8d
    if-eqz v0, :cond_4

    #@8f
    .line 107
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@91
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@94
    move-result-object v7

    #@95
    check-cast v7, Landroid/graphics/Bitmap;

    #@97
    .line 112
    :goto_4
    invoke-virtual {p0, v7}, Landroid/service/voice/IVoiceInteractionSession$Stub;->handleScreenshot(Landroid/graphics/Bitmap;)V

    #@9a
    .line 113
    return v10

    #@9b
    .line 110
    :cond_4
    const/4 v7, 0x0

    #@9c
    .local v7, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_4

    #@9d
    .line 117
    .end local v7    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_5
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionSession"

    #@a0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a3
    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a6
    move-result v0

    #@a7
    if-eqz v0, :cond_5

    #@a9
    .line 120
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ab
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ae
    move-result-object v6

    #@af
    check-cast v6, Landroid/content/Intent;

    #@b1
    .line 126
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b4
    move-result v8

    #@b5
    .line 127
    .restart local v8    # "_arg1":I
    invoke-virtual {p0, v6, v8}, Landroid/service/voice/IVoiceInteractionSession$Stub;->taskStarted(Landroid/content/Intent;I)V

    #@b8
    .line 128
    return v10

    #@b9
    .line 123
    .end local v8    # "_arg1":I
    :cond_5
    const/4 v6, 0x0

    #@ba
    .local v6, "_arg0":Landroid/content/Intent;
    goto :goto_5

    #@bb
    .line 132
    .end local v6    # "_arg0":Landroid/content/Intent;
    :sswitch_6
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionSession"

    #@be
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c1
    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v0

    #@c5
    if-eqz v0, :cond_6

    #@c7
    .line 135
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c9
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cc
    move-result-object v6

    #@cd
    check-cast v6, Landroid/content/Intent;

    #@cf
    .line 141
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d2
    move-result v8

    #@d3
    .line 142
    .restart local v8    # "_arg1":I
    invoke-virtual {p0, v6, v8}, Landroid/service/voice/IVoiceInteractionSession$Stub;->taskFinished(Landroid/content/Intent;I)V

    #@d6
    .line 143
    return v10

    #@d7
    .line 138
    .end local v8    # "_arg1":I
    :cond_6
    const/4 v6, 0x0

    #@d8
    .restart local v6    # "_arg0":Landroid/content/Intent;
    goto :goto_6

    #@d9
    .line 147
    .end local v6    # "_arg0":Landroid/content/Intent;
    :sswitch_7
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionSession"

    #@dc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@df
    .line 148
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->closeSystemDialogs()V

    #@e2
    .line 149
    return v10

    #@e3
    .line 153
    :sswitch_8
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionSession"

    #@e6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e9
    .line 154
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->onLockscreenShown()V

    #@ec
    .line 155
    return v10

    #@ed
    .line 159
    :sswitch_9
    const-string/jumbo v0, "android.service.voice.IVoiceInteractionSession"

    #@f0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f3
    .line 160
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->destroy()V

    #@f6
    .line 161
    return v10

    #@f7
    .line 41
    nop

    #@f8
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
