.class public abstract Landroid/app/appsearch/aidl/IAppSearchManager$Stub;
.super Landroid/os/Binder;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/app/appsearch/aidl/IAppSearchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/aidl/IAppSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/aidl/IAppSearchManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_commitBlob:I = 0x17

.field static final blacklist TRANSACTION_getDocuments:I = 0x6

.field static final blacklist TRANSACTION_getNamespaces:I = 0x4

.field static final blacklist TRANSACTION_getNextPage:I = 0x9

.field static final blacklist TRANSACTION_getSchema:I = 0x3

.field static final blacklist TRANSACTION_getStorageInfo:I = 0x11

.field static final blacklist TRANSACTION_globalSearch:I = 0x8

.field static final blacklist TRANSACTION_initialize:I = 0x1

.field static final blacklist TRANSACTION_invalidateNextPageToken:I = 0xa

.field static final blacklist TRANSACTION_openBlobForRead:I = 0x18

.field static final blacklist TRANSACTION_openBlobForWrite:I = 0x16

.field static final blacklist TRANSACTION_persistToDisk:I = 0x12

.field static final blacklist TRANSACTION_putDocuments:I = 0x5

.field static final blacklist TRANSACTION_putDocumentsFromFile:I = 0xc

.field static final blacklist TRANSACTION_registerObserverCallback:I = 0x13

.field static final blacklist TRANSACTION_removeBlob:I = 0x19

.field static final blacklist TRANSACTION_removeByDocumentId:I = 0xf

.field static final blacklist TRANSACTION_removeByQuery:I = 0x10

.field static final blacklist TRANSACTION_reportUsage:I = 0xe

.field static final blacklist TRANSACTION_search:I = 0x7

.field static final blacklist TRANSACTION_searchSuggestion:I = 0xd

.field static final blacklist TRANSACTION_setBlobVisibility:I = 0x1a

.field static final blacklist TRANSACTION_setSchema:I = 0x2

.field static final blacklist TRANSACTION_unregisterObserverCallback:I = 0x14

.field static final blacklist TRANSACTION_writeSearchResultsToFile:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.app.appsearch.aidl.IAppSearchManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchManager;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "android.app.appsearch.aidl.IAppSearchManager"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 12
    .line 13
    instance-of v1, v0, Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 14
    .line 15
    if-eqz v1, :cond_13

    .line 16
    .line 17
    check-cast v0, Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Landroid/app/appsearch/aidl/IAppSearchManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/app/appsearch/aidl/IAppSearchManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 1
    packed-switch p0, :pswitch_data_50

    .line 2
    .line 3
    .line 4
    :pswitch_3
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_5
    const-string p0, "setBlobVisibility"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_8
    const-string p0, "removeBlob"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_b
    const-string p0, "openBlobForRead"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_e
    const-string p0, "commitBlob"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_11
    const-string p0, "openBlobForWrite"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_14
    const-string p0, "unregisterObserverCallback"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_17
    const-string p0, "registerObserverCallback"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_1a
    const-string p0, "persistToDisk"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_1d
    const-string p0, "getStorageInfo"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_20
    const-string p0, "removeByQuery"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_23
    const-string p0, "removeByDocumentId"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_26
    const-string p0, "reportUsage"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_29
    const-string p0, "searchSuggestion"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_2c
    const-string p0, "putDocumentsFromFile"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_2f
    const-string p0, "writeSearchResultsToFile"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_32
    const-string p0, "invalidateNextPageToken"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_35
    const-string p0, "getNextPage"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_38
    const-string p0, "globalSearch"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_3b
    const-string p0, "search"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_3e
    const-string p0, "getDocuments"

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_41
    const-string p0, "putDocuments"

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_44
    const-string p0, "getNamespaces"

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_47
    const-string p0, "getSchema"

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_4a
    const-string p0, "setSchema"

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_4d
    const-string p0, "initialize"

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_3
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 1

    .line 1
    const/16 p0, 0x19

    .line 2
    .line 3
    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/aidl/IAppSearchManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "android.app.appsearch.aidl.IAppSearchManager"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_d

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_d

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_d
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v2, :cond_16

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_16
    packed-switch p1, :pswitch_data_2b4

    .line 24
    .line 25
    .line 26
    :pswitch_19
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :pswitch_1e
    sget-object p1, Landroid/app/appsearch/aidl/SetBlobVisibilityAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/app/appsearch/aidl/SetBlobVisibilityAidlRequest;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 48
    .line 49
    .line 50
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->setBlobVisibility(Landroid/app/appsearch/aidl/SetBlobVisibilityAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_2b3

    .line 57
    .line 58
    :pswitch_39
    sget-object p1, Landroid/app/appsearch/aidl/RemoveBlobAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/app/appsearch/aidl/RemoveBlobAidlRequest;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->removeBlob(Landroid/app/appsearch/aidl/RemoveBlobAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_2b3

    .line 84
    .line 85
    :pswitch_54
    sget-object p1, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;

    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    .line 103
    .line 104
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->openBlobForRead(Landroid/app/appsearch/aidl/OpenBlobForReadAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_2b3

    .line 111
    .line 112
    :pswitch_6f
    sget-object p1, Landroid/app/appsearch/aidl/CommitBlobAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 113
    .line 114
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/app/appsearch/aidl/CommitBlobAidlRequest;

    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 121
    .line 122
    .line 123
    move-result-object p4

    .line 124
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 125
    .line 126
    .line 127
    move-result-object p4

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    .line 130
    .line 131
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->commitBlob(Landroid/app/appsearch/aidl/CommitBlobAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_2b3

    .line 138
    .line 139
    :pswitch_8a
    sget-object p1, Landroid/app/appsearch/aidl/OpenBlobForWriteAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 140
    .line 141
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Landroid/app/appsearch/aidl/OpenBlobForWriteAidlRequest;

    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 148
    .line 149
    .line 150
    move-result-object p4

    .line 151
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 152
    .line 153
    .line 154
    move-result-object p4

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    .line 157
    .line 158
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->openBlobForWrite(Landroid/app/appsearch/aidl/OpenBlobForWriteAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_2b3

    .line 165
    .line 166
    :pswitch_a5
    sget-object p1, Landroid/app/appsearch/aidl/UnregisterObserverCallbackAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 167
    .line 168
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Landroid/app/appsearch/aidl/UnregisterObserverCallbackAidlRequest;

    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 175
    .line 176
    .line 177
    move-result-object p4

    .line 178
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchObserverProxy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchObserverProxy;

    .line 179
    .line 180
    .line 181
    move-result-object p4

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    .line 184
    .line 185
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->unregisterObserverCallback(Landroid/app/appsearch/aidl/UnregisterObserverCallbackAidlRequest;Landroid/app/appsearch/aidl/IAppSearchObserverProxy;)Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_2b3

    .line 196
    .line 197
    :pswitch_c4
    sget-object p1, Landroid/app/appsearch/aidl/RegisterObserverCallbackAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 198
    .line 199
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Landroid/app/appsearch/aidl/RegisterObserverCallbackAidlRequest;

    .line 204
    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 206
    .line 207
    .line 208
    move-result-object p4

    .line 209
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchObserverProxy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchObserverProxy;

    .line 210
    .line 211
    .line 212
    move-result-object p4

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    .line 215
    .line 216
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->registerObserverCallback(Landroid/app/appsearch/aidl/RegisterObserverCallbackAidlRequest;Landroid/app/appsearch/aidl/IAppSearchObserverProxy;)Landroid/app/appsearch/aidl/AppSearchResultParcel;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_2b3

    .line 227
    .line 228
    :pswitch_e3
    sget-object p1, Landroid/app/appsearch/aidl/PersistToDiskAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 229
    .line 230
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Landroid/app/appsearch/aidl/PersistToDiskAidlRequest;

    .line 235
    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    .line 238
    .line 239
    invoke-interface {p0, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->persistToDisk(Landroid/app/appsearch/aidl/PersistToDiskAidlRequest;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_2b3

    .line 246
    .line 247
    :pswitch_f6
    sget-object p1, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 248
    .line 249
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;

    .line 254
    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 256
    .line 257
    .line 258
    move-result-object p4

    .line 259
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 260
    .line 261
    .line 262
    move-result-object p4

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    .line 265
    .line 266
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->getStorageInfo(Landroid/app/appsearch/aidl/GetStorageInfoAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_2b3

    .line 273
    .line 274
    :pswitch_111
    sget-object p1, Landroid/app/appsearch/aidl/RemoveByQueryAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 275
    .line 276
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    check-cast p1, Landroid/app/appsearch/aidl/RemoveByQueryAidlRequest;

    .line 281
    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 283
    .line 284
    .line 285
    move-result-object p4

    .line 286
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 287
    .line 288
    .line 289
    move-result-object p4

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    .line 292
    .line 293
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->removeByQuery(Landroid/app/appsearch/aidl/RemoveByQueryAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_2b3

    .line 300
    .line 301
    :pswitch_12c
    sget-object p1, Landroid/app/appsearch/aidl/RemoveByDocumentIdAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 302
    .line 303
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    check-cast p1, Landroid/app/appsearch/aidl/RemoveByDocumentIdAidlRequest;

    .line 308
    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 310
    .line 311
    .line 312
    move-result-object p4

    .line 313
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;

    .line 314
    .line 315
    .line 316
    move-result-object p4

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    .line 319
    .line 320
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->removeByDocumentId(Landroid/app/appsearch/aidl/RemoveByDocumentIdAidlRequest;Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_2b3

    .line 327
    .line 328
    :pswitch_147
    sget-object p1, Landroid/app/appsearch/aidl/ReportUsageAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 329
    .line 330
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    check-cast p1, Landroid/app/appsearch/aidl/ReportUsageAidlRequest;

    .line 335
    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 337
    .line 338
    .line 339
    move-result-object p4

    .line 340
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 341
    .line 342
    .line 343
    move-result-object p4

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    .line 346
    .line 347
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->reportUsage(Landroid/app/appsearch/aidl/ReportUsageAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_2b3

    .line 354
    .line 355
    :pswitch_162
    sget-object p1, Landroid/app/appsearch/aidl/SearchSuggestionAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 356
    .line 357
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    check-cast p1, Landroid/app/appsearch/aidl/SearchSuggestionAidlRequest;

    .line 362
    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 364
    .line 365
    .line 366
    move-result-object p4

    .line 367
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 368
    .line 369
    .line 370
    move-result-object p4

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    .line 373
    .line 374
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->searchSuggestion(Landroid/app/appsearch/aidl/SearchSuggestionAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    .line 379
    .line 380
    goto/16 :goto_2b3

    .line 381
    .line 382
    :pswitch_17d
    sget-object p1, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 383
    .line 384
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    check-cast p1, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;

    .line 389
    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 391
    .line 392
    .line 393
    move-result-object p4

    .line 394
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 395
    .line 396
    .line 397
    move-result-object p4

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    .line 400
    .line 401
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->putDocumentsFromFile(Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_2b3

    .line 408
    .line 409
    :pswitch_198
    sget-object p1, Landroid/app/appsearch/aidl/WriteSearchResultsToFileAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 410
    .line 411
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    check-cast p1, Landroid/app/appsearch/aidl/WriteSearchResultsToFileAidlRequest;

    .line 416
    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 418
    .line 419
    .line 420
    move-result-object p4

    .line 421
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 422
    .line 423
    .line 424
    move-result-object p4

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    .line 427
    .line 428
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->writeSearchResultsToFile(Landroid/app/appsearch/aidl/WriteSearchResultsToFileAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_2b3

    .line 435
    .line 436
    :pswitch_1b3
    sget-object p1, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 437
    .line 438
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    check-cast p1, Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;

    .line 443
    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    .line 446
    .line 447
    invoke-interface {p0, p1}, Landroid/app/appsearch/aidl/IAppSearchManager;->invalidateNextPageToken(Landroid/app/appsearch/aidl/InvalidateNextPageTokenAidlRequest;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    .line 452
    .line 453
    goto/16 :goto_2b3

    .line 454
    .line 455
    :pswitch_1c6
    sget-object p1, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 456
    .line 457
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    check-cast p1, Landroid/app/appsearch/aidl/GetNextPageAidlRequest;

    .line 462
    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 464
    .line 465
    .line 466
    move-result-object p4

    .line 467
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 468
    .line 469
    .line 470
    move-result-object p4

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    .line 473
    .line 474
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->getNextPage(Landroid/app/appsearch/aidl/GetNextPageAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_2b3

    .line 481
    .line 482
    :pswitch_1e1
    sget-object p1, Landroid/app/appsearch/aidl/GlobalSearchAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 483
    .line 484
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    check-cast p1, Landroid/app/appsearch/aidl/GlobalSearchAidlRequest;

    .line 489
    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 491
    .line 492
    .line 493
    move-result-object p4

    .line 494
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 495
    .line 496
    .line 497
    move-result-object p4

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    .line 500
    .line 501
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->globalSearch(Landroid/app/appsearch/aidl/GlobalSearchAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    .line 506
    .line 507
    goto/16 :goto_2b3

    .line 508
    .line 509
    :pswitch_1fc
    sget-object p1, Landroid/app/appsearch/aidl/SearchAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 510
    .line 511
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    check-cast p1, Landroid/app/appsearch/aidl/SearchAidlRequest;

    .line 516
    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 518
    .line 519
    .line 520
    move-result-object p4

    .line 521
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 522
    .line 523
    .line 524
    move-result-object p4

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    .line 527
    .line 528
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->search(Landroid/app/appsearch/aidl/SearchAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_2b3

    .line 535
    .line 536
    :pswitch_217
    sget-object p1, Landroid/app/appsearch/aidl/GetDocumentsAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 537
    .line 538
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    check-cast p1, Landroid/app/appsearch/aidl/GetDocumentsAidlRequest;

    .line 543
    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 545
    .line 546
    .line 547
    move-result-object p4

    .line 548
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;

    .line 549
    .line 550
    .line 551
    move-result-object p4

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    .line 554
    .line 555
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->getDocuments(Landroid/app/appsearch/aidl/GetDocumentsAidlRequest;Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    .line 560
    .line 561
    goto/16 :goto_2b3

    .line 562
    .line 563
    :pswitch_232
    sget-object p1, Landroid/app/appsearch/aidl/PutDocumentsAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 564
    .line 565
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    check-cast p1, Landroid/app/appsearch/aidl/PutDocumentsAidlRequest;

    .line 570
    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 572
    .line 573
    .line 574
    move-result-object p4

    .line 575
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;

    .line 576
    .line 577
    .line 578
    move-result-object p4

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    .line 581
    .line 582
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->putDocuments(Landroid/app/appsearch/aidl/PutDocumentsAidlRequest;Landroid/app/appsearch/aidl/IAppSearchBatchResultCallback;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    .line 587
    .line 588
    goto :goto_2b3

    .line 589
    :pswitch_24c
    sget-object p1, Landroid/app/appsearch/aidl/GetNamespacesAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 590
    .line 591
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    check-cast p1, Landroid/app/appsearch/aidl/GetNamespacesAidlRequest;

    .line 596
    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 598
    .line 599
    .line 600
    move-result-object p4

    .line 601
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 602
    .line 603
    .line 604
    move-result-object p4

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    .line 607
    .line 608
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->getNamespaces(Landroid/app/appsearch/aidl/GetNamespacesAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    .line 613
    .line 614
    goto :goto_2b3

    .line 615
    :pswitch_266
    sget-object p1, Landroid/app/appsearch/aidl/GetSchemaAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 616
    .line 617
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    check-cast p1, Landroid/app/appsearch/aidl/GetSchemaAidlRequest;

    .line 622
    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 624
    .line 625
    .line 626
    move-result-object p4

    .line 627
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 628
    .line 629
    .line 630
    move-result-object p4

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    .line 633
    .line 634
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->getSchema(Landroid/app/appsearch/aidl/GetSchemaAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    .line 639
    .line 640
    goto :goto_2b3

    .line 641
    :pswitch_280
    sget-object p1, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 642
    .line 643
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object p1

    .line 647
    check-cast p1, Landroid/app/appsearch/aidl/SetSchemaAidlRequest;

    .line 648
    .line 649
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 650
    .line 651
    .line 652
    move-result-object p4

    .line 653
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 654
    .line 655
    .line 656
    move-result-object p4

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    .line 659
    .line 660
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->setSchema(Landroid/app/appsearch/aidl/SetSchemaAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    .line 665
    .line 666
    goto :goto_2b3

    .line 667
    :pswitch_29a
    sget-object p1, Landroid/app/appsearch/aidl/InitializeAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 668
    .line 669
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object p1

    .line 673
    check-cast p1, Landroid/app/appsearch/aidl/InitializeAidlRequest;

    .line 674
    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 676
    .line 677
    .line 678
    move-result-object p4

    .line 679
    invoke-static {p4}, Landroid/app/appsearch/aidl/IAppSearchResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appsearch/aidl/IAppSearchResultCallback;

    .line 680
    .line 681
    .line 682
    move-result-object p4

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    .line 685
    .line 686
    invoke-interface {p0, p1, p4}, Landroid/app/appsearch/aidl/IAppSearchManager;->initialize(Landroid/app/appsearch/aidl/InitializeAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    .line 691
    .line 692
    :goto_2b3
    return v1

    :pswitch_data_2b4
    .packed-switch 0x1
        :pswitch_29a
        :pswitch_280
        :pswitch_266
        :pswitch_24c
        :pswitch_232
        :pswitch_217
        :pswitch_1fc
        :pswitch_1e1
        :pswitch_1c6
        :pswitch_1b3
        :pswitch_198
        :pswitch_17d
        :pswitch_162
        :pswitch_147
        :pswitch_12c
        :pswitch_111
        :pswitch_f6
        :pswitch_e3
        :pswitch_c4
        :pswitch_a5
        :pswitch_19
        :pswitch_8a
        :pswitch_6f
        :pswitch_54
        :pswitch_39
        :pswitch_1e
    .end packed-switch
.end method
