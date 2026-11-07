.class public abstract Landroid/service/textclassifier/ITextClassifierService$Stub;
.super Landroid/os/Binder;
.source "ITextClassifierService.java"

# interfaces
.implements Landroid/service/textclassifier/ITextClassifierService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textclassifier/ITextClassifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.textclassifier.ITextClassifierService"

.field static final greylist-max-o TRANSACTION_onClassifyText:I = 0x2

.field static final blacklist TRANSACTION_onConnectedStateChanged:I = 0xa

.field static final greylist-max-o TRANSACTION_onCreateTextClassificationSession:I = 0x6

.field static final greylist-max-o TRANSACTION_onDestroyTextClassificationSession:I = 0x7

.field static final blacklist TRANSACTION_onDetectLanguage:I = 0x8

.field static final greylist-max-o TRANSACTION_onGenerateLinks:I = 0x3

.field static final greylist-max-o TRANSACTION_onSelectionEvent:I = 0x4

.field static final blacklist TRANSACTION_onSuggestConversationActions:I = 0x9

.field static final greylist-max-o TRANSACTION_onSuggestSelection:I = 0x1

.field static final blacklist TRANSACTION_onTextClassifierEvent:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.service.textclassifier.ITextClassifierService"

    invoke-virtual {p0, p0, v0}, Landroid/service/textclassifier/ITextClassifierService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "android.service.textclassifier.ITextClassifierService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/textclassifier/ITextClassifierService;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Landroid/service/textclassifier/ITextClassifierService;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 87
    packed-switch p0, :pswitch_data_2e

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 127
    :pswitch_5
    const-string/jumbo v0, "onConnectedStateChanged"

    return-object v0

    .line 123
    :pswitch_9
    const-string/jumbo v0, "onSuggestConversationActions"

    return-object v0

    .line 119
    :pswitch_d
    const-string/jumbo v0, "onDetectLanguage"

    return-object v0

    .line 115
    :pswitch_11
    const-string/jumbo v0, "onDestroyTextClassificationSession"

    return-object v0

    .line 111
    :pswitch_15
    const-string/jumbo v0, "onCreateTextClassificationSession"

    return-object v0

    .line 107
    :pswitch_19
    const-string/jumbo v0, "onTextClassifierEvent"

    return-object v0

    .line 103
    :pswitch_1d
    const-string/jumbo v0, "onSelectionEvent"

    return-object v0

    .line 99
    :pswitch_21
    const-string/jumbo v0, "onGenerateLinks"

    return-object v0

    .line 95
    :pswitch_25
    const-string/jumbo v0, "onClassifyText"

    return-object v0

    .line 91
    :pswitch_29
    const-string/jumbo v0, "onSuggestSelection"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
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

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 430
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 138
    invoke-static {p1}, Landroid/service/textclassifier/ITextClassifierService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    const-string v0, "android.service.textclassifier.ITextClassifierService"

    .line 143
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 144
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 147
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v1

    .line 150
    :cond_16
    packed-switch p1, :pswitch_data_11e

    .line 260
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 253
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onConnectedStateChanged(I)V

    .line 256
    goto/16 :goto_11d

    .line 241
    .end local v2    # "_arg0":I
    :pswitch_2a
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 243
    .local v2, "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    sget-object v3, Landroid/view/textclassifier/ConversationActions$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/ConversationActions$Request;

    .line 245
    .local v3, "_arg1":Landroid/view/textclassifier/ConversationActions$Request;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    .line 246
    .local v4, "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 248
    goto/16 :goto_11d

    .line 229
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg1":Landroid/view/textclassifier/ConversationActions$Request;
    .end local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    :pswitch_4a
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 231
    .restart local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    sget-object v3, Landroid/view/textclassifier/TextLanguage$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextLanguage$Request;

    .line 233
    .local v3, "_arg1":Landroid/view/textclassifier/TextLanguage$Request;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    .line 234
    .restart local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 236
    goto/16 :goto_11d

    .line 221
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg1":Landroid/view/textclassifier/TextLanguage$Request;
    .end local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    :pswitch_6a
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 222
    .restart local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 224
    goto/16 :goto_11d

    .line 211
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    :pswitch_7a
    sget-object v2, Landroid/view/textclassifier/TextClassificationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationContext;

    .line 213
    .local v2, "_arg0":Landroid/view/textclassifier/TextClassificationContext;
    sget-object v3, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 214
    .local v3, "_arg1":Landroid/view/textclassifier/TextClassificationSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2, v3}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 216
    goto/16 :goto_11d

    .line 201
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationContext;
    .end local v3    # "_arg1":Landroid/view/textclassifier/TextClassificationSessionId;
    :pswitch_92
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 203
    .local v2, "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    sget-object v3, Landroid/view/textclassifier/TextClassifierEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassifierEvent;

    .line 204
    .local v3, "_arg1":Landroid/view/textclassifier/TextClassifierEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2, v3}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    .line 206
    goto :goto_11d

    .line 191
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg1":Landroid/view/textclassifier/TextClassifierEvent;
    :pswitch_a9
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 193
    .restart local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    sget-object v3, Landroid/view/textclassifier/SelectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/SelectionEvent;

    .line 194
    .local v3, "_arg1":Landroid/view/textclassifier/SelectionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2, v3}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    .line 196
    goto :goto_11d

    .line 179
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg1":Landroid/view/textclassifier/SelectionEvent;
    :pswitch_c0
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 181
    .restart local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    sget-object v3, Landroid/view/textclassifier/TextLinks$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextLinks$Request;

    .line 183
    .local v3, "_arg1":Landroid/view/textclassifier/TextLinks$Request;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    .line 184
    .restart local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 186
    goto :goto_11d

    .line 167
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg1":Landroid/view/textclassifier/TextLinks$Request;
    .end local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    :pswitch_df
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 169
    .restart local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    sget-object v3, Landroid/view/textclassifier/TextClassification$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassification$Request;

    .line 171
    .local v3, "_arg1":Landroid/view/textclassifier/TextClassification$Request;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    .line 172
    .restart local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 174
    goto :goto_11d

    .line 155
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg1":Landroid/view/textclassifier/TextClassification$Request;
    .end local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    :pswitch_fe
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 157
    .restart local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    sget-object v3, Landroid/view/textclassifier/TextSelection$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextSelection$Request;

    .line 159
    .local v3, "_arg1":Landroid/view/textclassifier/TextSelection$Request;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    .line 160
    .restart local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 162
    nop

    .line 263
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg1":Landroid/view/textclassifier/TextSelection$Request;
    .end local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    :goto_11d
    return v1

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_df
        :pswitch_c0
        :pswitch_a9
        :pswitch_92
        :pswitch_7a
        :pswitch_6a
        :pswitch_4a
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
