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
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IVoiceInteractionSession"

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x7

.field static final greylist-max-o TRANSACTION_destroy:I = 0x9

.field static final greylist-max-o TRANSACTION_handleAssist:I = 0x3

.field static final greylist-max-o TRANSACTION_handleScreenshot:I = 0x4

.field static final greylist-max-o TRANSACTION_hide:I = 0x2

.field static final blacklist TRANSACTION_notifyVisibleActivityInfoChanged:I = 0xa

.field static final greylist-max-o TRANSACTION_onLockscreenShown:I = 0x8

.field static final greylist-max-o TRANSACTION_show:I = 0x1

.field static final greylist-max-o TRANSACTION_taskFinished:I = 0x6

.field static final greylist-max-o TRANSACTION_taskStarted:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.service.voice.IVoiceInteractionSession"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    const-string v0, "android.service.voice.IVoiceInteractionSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_14

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/service/voice/IVoiceInteractionSession;

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/voice/IVoiceInteractionSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_2c

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 122
    :pswitch_5
    const-string/jumbo v0, "notifyVisibleActivityInfoChanged"

    return-object v0

    .line 118
    :pswitch_9
    const-string v0, "destroy"

    return-object v0

    .line 114
    :pswitch_c
    const-string/jumbo v0, "onLockscreenShown"

    return-object v0

    .line 110
    :pswitch_10
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 106
    :pswitch_13
    const-string/jumbo v0, "taskFinished"

    return-object v0

    .line 102
    :pswitch_17
    const-string/jumbo v0, "taskStarted"

    return-object v0

    .line 98
    :pswitch_1b
    const-string/jumbo v0, "handleScreenshot"

    return-object v0

    .line 94
    :pswitch_1f
    const-string/jumbo v0, "handleAssist"

    return-object v0

    .line 90
    :pswitch_23
    const-string/jumbo v0, "hide"

    return-object v0

    .line 86
    :pswitch_27
    const-string/jumbo v0, "show"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 402
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 133
    invoke-static {p1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    const-string v0, "android.service.voice.IVoiceInteractionSession"

    .line 138
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 145
    :cond_16
    packed-switch p1, :pswitch_data_d4

    .line 239
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 230
    :pswitch_1f
    sget-object v2, Landroid/service/voice/VisibleActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VisibleActivityInfo;

    .line 232
    .local v2, "_arg0":Landroid/service/voice/VisibleActivityInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 233
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2, v3}, Landroid/service/voice/IVoiceInteractionSession$Stub;->notifyVisibleActivityInfoChanged(Landroid/service/voice/VisibleActivityInfo;I)V

    .line 235
    move-object v3, p0

    goto/16 :goto_d3

    .line 224
    .end local v2    # "_arg0":Landroid/service/voice/VisibleActivityInfo;
    .end local v3    # "_arg1":I
    :pswitch_34
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->destroy()V

    .line 225
    move-object v3, p0

    goto/16 :goto_d3

    .line 219
    :pswitch_3a
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->onLockscreenShown()V

    .line 220
    move-object v3, p0

    goto/16 :goto_d3

    .line 214
    :pswitch_40
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->closeSystemDialogs()V

    .line 215
    move-object v3, p0

    goto/16 :goto_d3

    .line 205
    :pswitch_46
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 207
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3}, Landroid/service/voice/IVoiceInteractionSession$Stub;->taskFinished(Landroid/content/Intent;I)V

    .line 210
    move-object v3, p0

    goto/16 :goto_d3

    .line 195
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":I
    :pswitch_5b
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 197
    .restart local v2    # "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 198
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2, v3}, Landroid/service/voice/IVoiceInteractionSession$Stub;->taskStarted(Landroid/content/Intent;I)V

    .line 200
    move-object v3, p0

    goto :goto_d3

    .line 187
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":I
    :pswitch_6f
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 188
    .local v2, "_arg0":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2}, Landroid/service/voice/IVoiceInteractionSession$Stub;->handleScreenshot(Landroid/graphics/Bitmap;)V

    .line 190
    move-object v3, p0

    goto :goto_d3

    .line 167
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 171
    .local v5, "_arg1":Landroid/os/IBinder;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/os/Bundle;

    .line 173
    .local v6, "_arg2":Landroid/os/Bundle;
    sget-object v2, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/app/assist/AssistStructure;

    .line 175
    .local v7, "_arg3":Landroid/app/assist/AssistStructure;
    sget-object v2, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/app/assist/AssistContent;

    .line 177
    .local v8, "_arg4":Landroid/app/assist/AssistContent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 179
    .local v9, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 180
    .local v10, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/service/voice/IVoiceInteractionSession$Stub;->handleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V

    .line 182
    goto :goto_d3

    .line 161
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Landroid/os/Bundle;
    .end local v7    # "_arg3":Landroid/app/assist/AssistStructure;
    .end local v8    # "_arg4":Landroid/app/assist/AssistContent;
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    :pswitch_b2
    move-object v3, p0

    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->hide()V

    .line 162
    goto :goto_d3

    .line 150
    :pswitch_b7
    move-object v3, p0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 152
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 154
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    move-result-object v5

    .line 155
    .local v5, "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2, v4, v5}, Landroid/service/voice/IVoiceInteractionSession$Stub;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 157
    nop

    .line 242
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    :goto_d3
    return v1

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_b7
        :pswitch_b2
        :pswitch_7f
        :pswitch_6f
        :pswitch_5b
        :pswitch_46
        :pswitch_40
        :pswitch_3a
        :pswitch_34
        :pswitch_1f
    .end packed-switch
.end method
