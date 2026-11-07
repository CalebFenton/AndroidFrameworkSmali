.class public abstract Landroid/app/people/IPeopleManager$Stub;
.super Landroid/os/Binder;
.source "IPeopleManager.java"

# interfaces
.implements Landroid/app/people/IPeopleManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/people/IPeopleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/people/IPeopleManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addOrUpdateStatus:I = 0x7

.field static final blacklist TRANSACTION_clearStatus:I = 0x8

.field static final blacklist TRANSACTION_clearStatuses:I = 0x9

.field static final blacklist TRANSACTION_getConversation:I = 0x1

.field static final blacklist TRANSACTION_getLastInteraction:I = 0x6

.field static final blacklist TRANSACTION_getRecentConversations:I = 0x2

.field static final blacklist TRANSACTION_getStatuses:I = 0xa

.field static final blacklist TRANSACTION_isConversation:I = 0x5

.field static final blacklist TRANSACTION_registerConversationListener:I = 0xb

.field static final blacklist TRANSACTION_removeAllRecentConversations:I = 0x4

.field static final blacklist TRANSACTION_removeRecentConversation:I = 0x3

.field static final blacklist TRANSACTION_unregisterConversationListener:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 90
    const-string v0, "android.app.people.IPeopleManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/people/IPeopleManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 98
    if-nez p0, :cond_4

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_4
    const-string v0, "android.app.people.IPeopleManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 102
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/people/IPeopleManager;

    if-eqz v1, :cond_14

    .line 103
    move-object v1, v0

    check-cast v1, Landroid/app/people/IPeopleManager;

    return-object v1

    .line 105
    :cond_14
    new-instance v1, Landroid/app/people/IPeopleManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/people/IPeopleManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 114
    packed-switch p0, :pswitch_data_30

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 162
    :pswitch_5
    const-string/jumbo v0, "unregisterConversationListener"

    return-object v0

    .line 158
    :pswitch_9
    const-string/jumbo v0, "registerConversationListener"

    return-object v0

    .line 154
    :pswitch_d
    const-string/jumbo v0, "getStatuses"

    return-object v0

    .line 150
    :pswitch_11
    const-string v0, "clearStatuses"

    return-object v0

    .line 146
    :pswitch_14
    const-string v0, "clearStatus"

    return-object v0

    .line 142
    :pswitch_17
    const-string v0, "addOrUpdateStatus"

    return-object v0

    .line 138
    :pswitch_1a
    const-string v0, "getLastInteraction"

    return-object v0

    .line 134
    :pswitch_1d
    const-string/jumbo v0, "isConversation"

    return-object v0

    .line 130
    :pswitch_21
    const-string/jumbo v0, "removeAllRecentConversations"

    return-object v0

    .line 126
    :pswitch_25
    const-string/jumbo v0, "removeRecentConversation"

    return-object v0

    .line 122
    :pswitch_29
    const-string v0, "getRecentConversations"

    return-object v0

    .line 118
    :pswitch_2c
    const-string v0, "getConversation"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 109
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 606
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 173
    invoke-static {p1}, Landroid/app/people/IPeopleManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    const-string v0, "android.app.people.IPeopleManager"

    .line 178
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 179
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 182
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    return v1

    .line 185
    :cond_16
    packed-switch p1, :pswitch_data_134

    .line 338
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 330
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/people/IConversationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IConversationListener;

    move-result-object v2

    .line 331
    .local v2, "_arg0":Landroid/app/people/IConversationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2}, Landroid/app/people/IPeopleManager$Stub;->unregisterConversationListener(Landroid/app/people/IConversationListener;)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    goto/16 :goto_132

    .line 315
    .end local v2    # "_arg0":Landroid/app/people/IConversationListener;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 319
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/people/IConversationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IConversationListener;

    move-result-object v5

    .line 322
    .local v5, "_arg3":Landroid/app/people/IConversationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/people/IPeopleManager$Stub;->registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/IConversationListener;)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    goto/16 :goto_132

    .line 301
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Landroid/app/people/IConversationListener;
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 305
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 306
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->getStatuses(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 308
    .local v5, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 310
    goto/16 :goto_132

    .line 288
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 292
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 293
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->clearStatuses(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto/16 :goto_132

    .line 273
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 277
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 279
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/people/IPeopleManager$Stub;->clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    goto/16 :goto_132

    .line 258
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 260
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 262
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 264
    .restart local v4    # "_arg2":Ljava/lang/String;
    sget-object v5, Landroid/app/people/ConversationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/people/ConversationStatus;

    .line 265
    .local v5, "_arg3":Landroid/app/people/ConversationStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/people/IPeopleManager$Stub;->addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    goto/16 :goto_132

    .line 244
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Landroid/app/people/ConversationStatus;
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 248
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 249
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v5

    .line 251
    .local v5, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 253
    goto :goto_132

    .line 230
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":J
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 234
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 235
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->isConversation(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    .line 237
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 239
    goto :goto_132

    .line 223
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_f0
    invoke-virtual {p0}, Landroid/app/people/IPeopleManager$Stub;->removeAllRecentConversations()V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto :goto_132

    .line 211
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 213
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 215
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 216
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->removeRecentConversation(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto :goto_132

    .line 203
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_10d
    invoke-virtual {p0}, Landroid/app/people/IPeopleManager$Stub;->getRecentConversations()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 204
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    goto :goto_132

    .line 190
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 195
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/people/IPeopleManager$Stub;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object v5

    .line 197
    .local v5, "_result":Landroid/app/people/ConversationChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 199
    nop

    .line 341
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/app/people/ConversationChannel;
    :goto_132
    return v1

    nop

    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_118
        :pswitch_10d
        :pswitch_f7
        :pswitch_f0
        :pswitch_d6
        :pswitch_bc
        :pswitch_9d
        :pswitch_82
        :pswitch_6b
        :pswitch_50
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
