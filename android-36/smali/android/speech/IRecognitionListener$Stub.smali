.class public abstract Landroid/speech/IRecognitionListener$Stub;
.super Landroid/os/Binder;
.source "IRecognitionListener.java"

# interfaces
.implements Landroid/speech/IRecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/IRecognitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IRecognitionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.speech.IRecognitionListener"

.field static final greylist-max-o TRANSACTION_onBeginningOfSpeech:I = 0x2

.field static final greylist-max-o TRANSACTION_onBufferReceived:I = 0x4

.field static final blacklist TRANSACTION_onEndOfSegmentedSession:I = 0xa

.field static final greylist-max-o TRANSACTION_onEndOfSpeech:I = 0x5

.field static final greylist-max-o TRANSACTION_onError:I = 0x6

.field static final greylist-max-o TRANSACTION_onEvent:I = 0xc

.field static final blacklist TRANSACTION_onLanguageDetection:I = 0xb

.field static final greylist-max-o TRANSACTION_onPartialResults:I = 0x8

.field static final greylist-max-o TRANSACTION_onReadyForSpeech:I = 0x1

.field static final greylist-max-o TRANSACTION_onResults:I = 0x7

.field static final greylist-max-o TRANSACTION_onRmsChanged:I = 0x3

.field static final blacklist TRANSACTION_onSegmentResults:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 128
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 129
    const-string v0, "android.speech.IRecognitionListener"

    invoke-virtual {p0, p0, v0}, Landroid/speech/IRecognitionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 137
    if-nez p0, :cond_4

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_4
    const-string v0, "android.speech.IRecognitionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 141
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/speech/IRecognitionListener;

    if-eqz v1, :cond_14

    .line 142
    move-object v1, v0

    check-cast v1, Landroid/speech/IRecognitionListener;

    return-object v1

    .line 144
    :cond_14
    new-instance v1, Landroid/speech/IRecognitionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/speech/IRecognitionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 153
    packed-switch p0, :pswitch_data_36

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 201
    :pswitch_5
    const-string/jumbo v0, "onEvent"

    return-object v0

    .line 197
    :pswitch_9
    const-string/jumbo v0, "onLanguageDetection"

    return-object v0

    .line 193
    :pswitch_d
    const-string/jumbo v0, "onEndOfSegmentedSession"

    return-object v0

    .line 189
    :pswitch_11
    const-string/jumbo v0, "onSegmentResults"

    return-object v0

    .line 185
    :pswitch_15
    const-string/jumbo v0, "onPartialResults"

    return-object v0

    .line 181
    :pswitch_19
    const-string/jumbo v0, "onResults"

    return-object v0

    .line 177
    :pswitch_1d
    const-string/jumbo v0, "onError"

    return-object v0

    .line 173
    :pswitch_21
    const-string/jumbo v0, "onEndOfSpeech"

    return-object v0

    .line 169
    :pswitch_25
    const-string/jumbo v0, "onBufferReceived"

    return-object v0

    .line 165
    :pswitch_29
    const-string/jumbo v0, "onRmsChanged"

    return-object v0

    .line 161
    :pswitch_2d
    const-string/jumbo v0, "onBeginningOfSpeech"

    return-object v0

    .line 157
    :pswitch_31
    const-string/jumbo v0, "onReadyForSpeech"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 148
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 557
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 212
    invoke-static {p1}, Landroid/speech/IRecognitionListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 216
    const-string v0, "android.speech.IRecognitionListener"

    .line 217
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 218
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 221
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    return v1

    .line 224
    :cond_16
    packed-switch p1, :pswitch_data_ac

    .line 317
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 308
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 310
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 311
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v2, v3}, Landroid/speech/IRecognitionListener$Stub;->onEvent(ILandroid/os/Bundle;)V

    .line 313
    goto/16 :goto_aa

    .line 300
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_32
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 301
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onLanguageDetection(Landroid/os/Bundle;)V

    .line 303
    goto :goto_aa

    .line 294
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_41
    invoke-virtual {p0}, Landroid/speech/IRecognitionListener$Stub;->onEndOfSegmentedSession()V

    .line 295
    goto :goto_aa

    .line 287
    :pswitch_45
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 288
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onSegmentResults(Landroid/os/Bundle;)V

    .line 290
    goto :goto_aa

    .line 279
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_54
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 280
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onPartialResults(Landroid/os/Bundle;)V

    .line 282
    goto :goto_aa

    .line 271
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_63
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 272
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onResults(Landroid/os/Bundle;)V

    .line 274
    goto :goto_aa

    .line 263
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 264
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onError(I)V

    .line 266
    goto :goto_aa

    .line 257
    .end local v2    # "_arg0":I
    :pswitch_7d
    invoke-virtual {p0}, Landroid/speech/IRecognitionListener$Stub;->onEndOfSpeech()V

    .line 258
    goto :goto_aa

    .line 250
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 251
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onBufferReceived([B)V

    .line 253
    goto :goto_aa

    .line 242
    .end local v2    # "_arg0":[B
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 243
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onRmsChanged(F)V

    .line 245
    goto :goto_aa

    .line 236
    .end local v2    # "_arg0":F
    :pswitch_97
    invoke-virtual {p0}, Landroid/speech/IRecognitionListener$Stub;->onBeginningOfSpeech()V

    .line 237
    goto :goto_aa

    .line 229
    :pswitch_9b
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 230
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onReadyForSpeech(Landroid/os/Bundle;)V

    .line 232
    nop

    .line 320
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :goto_aa
    return v1

    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_97
        :pswitch_8c
        :pswitch_81
        :pswitch_7d
        :pswitch_72
        :pswitch_63
        :pswitch_54
        :pswitch_45
        :pswitch_41
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
