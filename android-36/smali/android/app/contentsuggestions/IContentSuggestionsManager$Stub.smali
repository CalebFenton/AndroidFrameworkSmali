.class public abstract Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;
.super Landroid/os/Binder;
.source "IContentSuggestionsManager.java"

# interfaces
.implements Landroid/app/contentsuggestions/IContentSuggestionsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/IContentSuggestionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_classifyContentSelections:I = 0x4

.field static final blacklist TRANSACTION_isEnabled:I = 0x6

.field static final blacklist TRANSACTION_notifyInteraction:I = 0x5

.field static final blacklist TRANSACTION_provideContextBitmap:I = 0x2

.field static final blacklist TRANSACTION_provideContextImage:I = 0x1

.field static final blacklist TRANSACTION_resetTemporaryService:I = 0x7

.field static final blacklist TRANSACTION_setDefaultServiceEnabled:I = 0x9

.field static final blacklist TRANSACTION_setTemporaryService:I = 0x8

.field static final blacklist TRANSACTION_suggestContentSelections:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.app.contentsuggestions.IContentSuggestionsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/contentsuggestions/IContentSuggestionsManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_4
    const-string v0, "android.app.contentsuggestions.IContentSuggestionsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-eqz v1, :cond_14

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/app/contentsuggestions/IContentSuggestionsManager;

    return-object v1

    .line 70
    :cond_14
    new-instance v1, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_28

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 115
    :pswitch_5
    const-string/jumbo v0, "setDefaultServiceEnabled"

    return-object v0

    .line 111
    :pswitch_9
    const-string/jumbo v0, "setTemporaryService"

    return-object v0

    .line 107
    :pswitch_d
    const-string/jumbo v0, "resetTemporaryService"

    return-object v0

    .line 103
    :pswitch_11
    const-string/jumbo v0, "isEnabled"

    return-object v0

    .line 99
    :pswitch_15
    const-string/jumbo v0, "notifyInteraction"

    return-object v0

    .line 95
    :pswitch_19
    const-string v0, "classifyContentSelections"

    return-object v0

    .line 91
    :pswitch_1c
    const-string/jumbo v0, "suggestContentSelections"

    return-object v0

    .line 87
    :pswitch_20
    const-string/jumbo v0, "provideContextBitmap"

    return-object v0

    .line 83
    :pswitch_24
    const-string/jumbo v0, "provideContextImage"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_20
        :pswitch_1c
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

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 397
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 126
    invoke-static {p1}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 130
    const-string v0, "android.app.contentsuggestions.IContentSuggestionsManager"

    .line 131
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v1

    .line 138
    :cond_16
    packed-switch p1, :pswitch_data_e2

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 233
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 235
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 236
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2, v3}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->setDefaultServiceEnabled(IZ)V

    .line 238
    goto/16 :goto_e1

    .line 221
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 226
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->setTemporaryService(ILjava/lang/String;I)V

    .line 228
    goto/16 :goto_e1

    .line 213
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 214
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->resetTemporaryService(I)V

    .line 216
    goto/16 :goto_e1

    .line 203
    .end local v2    # "_arg0":I
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v3

    .line 206
    .local v3, "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2, v3}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->isEnabled(ILcom/android/internal/os/IResultReceiver;)V

    .line 208
    goto/16 :goto_e1

    .line 191
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 196
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->notifyInteraction(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 198
    goto :goto_e1

    .line 179
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 181
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/app/contentsuggestions/ClassificationsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/contentsuggestions/ClassificationsRequest;

    .line 183
    .local v3, "_arg1":Landroid/app/contentsuggestions/ClassificationsRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/contentsuggestions/IClassificationsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contentsuggestions/IClassificationsCallback;

    move-result-object v4

    .line 184
    .local v4, "_arg2":Landroid/app/contentsuggestions/IClassificationsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->classifyContentSelections(ILandroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    .line 186
    goto :goto_e1

    .line 167
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/app/contentsuggestions/ClassificationsRequest;
    .end local v4    # "_arg2":Landroid/app/contentsuggestions/IClassificationsCallback;
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/app/contentsuggestions/SelectionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/contentsuggestions/SelectionsRequest;

    .line 171
    .local v3, "_arg1":Landroid/app/contentsuggestions/SelectionsRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/contentsuggestions/ISelectionsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contentsuggestions/ISelectionsCallback;

    move-result-object v4

    .line 172
    .local v4, "_arg2":Landroid/app/contentsuggestions/ISelectionsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->suggestContentSelections(ILandroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    .line 174
    goto :goto_e1

    .line 155
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/app/contentsuggestions/SelectionsRequest;
    .end local v4    # "_arg2":Landroid/app/contentsuggestions/ISelectionsCallback;
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 159
    .local v3, "_arg1":Landroid/graphics/Bitmap;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 160
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->provideContextBitmap(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 162
    goto :goto_e1

    .line 143
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Bitmap;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 147
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 148
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->provideContextImage(IILandroid/os/Bundle;)V

    .line 150
    nop

    .line 245
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :goto_e1
    return v1

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_ca
        :pswitch_af
        :pswitch_94
        :pswitch_79
        :pswitch_62
        :pswitch_4e
        :pswitch_42
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
