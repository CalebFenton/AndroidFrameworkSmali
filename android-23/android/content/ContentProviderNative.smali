.class public abstract Landroid/content/ContentProviderNative;
.super Landroid/os/Binder;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 45
    const-string/jumbo v0, "android.content.IContentProvider"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/ContentProviderNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 54
    if-nez p0, :cond_0

    #@3
    .line 55
    return-object v1

    #@4
    .line 58
    :cond_0
    const-string/jumbo v1, "android.content.IContentProvider"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/content/IContentProvider;

    #@d
    .line 59
    .local v0, "in":Landroid/content/IContentProvider;
    if-eqz v0, :cond_1

    #@f
    .line 60
    return-object v0

    #@10
    .line 63
    :cond_1
    new-instance v1, Landroid/content/ContentProviderProxy;

    #@12
    invoke-direct {v1, p0}, Landroid/content/ContentProviderProxy;-><init>(Landroid/os/IBinder;)V

    #@15
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 369
    return-object p0
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 51
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
    .line 77
    packed-switch p1, :pswitch_data_0

    #@3
    .line 364
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 80
    :pswitch_1
    :try_start_0
    const-string/jumbo v4, "android.content.IContentProvider"

    #@b
    move-object/from16 v0, p2

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10
    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 83
    .local v5, "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16
    move-object/from16 v0, p2

    #@18
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    check-cast v6, Landroid/net/Uri;

    #@1e
    .line 86
    .local v6, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v40

    #@22
    .line 87
    .local v40, "num":I
    const/4 v7, 0x0

    #@23
    .line 88
    .local v7, "projection":[Ljava/lang/String;
    if-lez v40, :cond_0

    #@25
    .line 89
    move/from16 v0, v40

    #@27
    new-array v7, v0, [Ljava/lang/String;

    #@29
    .line 90
    .local v7, "projection":[Ljava/lang/String;
    const/16 v37, 0x0

    #@2b
    .local v37, "i":I
    :goto_0
    move/from16 v0, v37

    #@2d
    move/from16 v1, v40

    #@2f
    if-ge v0, v1, :cond_0

    #@31
    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    aput-object v4, v7, v37

    #@37
    .line 90
    add-int/lit8 v37, v37, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 96
    .end local v7    # "projection":[Ljava/lang/String;
    .end local v37    # "i":I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d
    move-result-object v8

    #@3e
    .line 97
    .local v8, "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v40

    #@42
    .line 98
    const/4 v9, 0x0

    #@43
    .line 99
    .local v9, "selectionArgs":[Ljava/lang/String;
    if-lez v40, :cond_1

    #@45
    .line 100
    move/from16 v0, v40

    #@47
    new-array v9, v0, [Ljava/lang/String;

    #@49
    .line 101
    .local v9, "selectionArgs":[Ljava/lang/String;
    const/16 v37, 0x0

    #@4b
    .restart local v37    # "i":I
    :goto_1
    move/from16 v0, v37

    #@4d
    move/from16 v1, v40

    #@4f
    if-ge v0, v1, :cond_1

    #@51
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    aput-object v4, v9, v37

    #@57
    .line 101
    add-int/lit8 v37, v37, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 106
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v37    # "i":I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    .line 108
    .local v10, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@61
    move-result-object v4

    #@62
    .line 107
    invoke-static {v4}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    #@65
    move-result-object v42

    #@66
    .line 110
    .local v42, "observer":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@69
    move-result-object v4

    #@6a
    .line 109
    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    #@6d
    move-result-object v11

    #@6e
    .local v11, "cancellationSignal":Landroid/os/ICancellationSignal;
    move-object/from16 v4, p0

    #@70
    .line 112
    invoke-virtual/range {v4 .. v11}, Landroid/content/ContentProviderNative;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@73
    move-result-object v32

    #@74
    .line 114
    .local v32, "cursor":Landroid/database/Cursor;
    if-eqz v32, :cond_4

    #@76
    .line 115
    const/16 v28, 0x0

    #@78
    .line 118
    .local v28, "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :try_start_1
    new-instance v29, Landroid/database/CursorToBulkCursorAdaptor;

    #@7a
    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->getProviderName()Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    .line 118
    move-object/from16 v0, v29

    #@80
    move-object/from16 v1, v32

    #@82
    move-object/from16 v2, v42

    #@84
    invoke-direct {v0, v1, v2, v4}, Landroid/database/CursorToBulkCursorAdaptor;-><init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@87
    .line 120
    .local v29, "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    const/16 v32, 0x0

    #@89
    .line 122
    .local v32, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual/range {v29 .. v29}, Landroid/database/CursorToBulkCursorAdaptor;->getBulkCursorDescriptor()Landroid/database/BulkCursorDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@8c
    .end local v28    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    move-result-object v33

    #@8d
    .line 123
    .local v33, "d":Landroid/database/BulkCursorDescriptor;
    const/16 v28, 0x0

    #@8f
    .line 125
    .restart local v28    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@92
    .line 126
    .end local v29    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    const/4 v4, 0x1

    #@93
    move-object/from16 v0, p3

    #@95
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@98
    .line 127
    const/4 v4, 0x1

    #@99
    move-object/from16 v0, v33

    #@9b
    move-object/from16 v1, p3

    #@9d
    invoke-virtual {v0, v1, v4}, Landroid/database/BulkCursorDescriptor;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a0
    .line 142
    .end local v28    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .end local v33    # "d":Landroid/database/BulkCursorDescriptor;
    :goto_2
    const/4 v4, 0x1

    #@a1
    return v4

    #@a2
    .line 128
    .restart local v28    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :catchall_0
    move-exception v4

    #@a3
    .line 130
    .end local v28    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :goto_3
    if-eqz v28, :cond_2

    #@a5
    .line 131
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Landroid/database/CursorToBulkCursorAdaptor;->close()V

    #@a8
    .line 133
    :cond_2
    if-eqz v32, :cond_3

    #@aa
    .line 134
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    #@ad
    .line 128
    :cond_3
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@ae
    .line 359
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v10    # "sortOrder":Ljava/lang/String;
    .end local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .end local v40    # "num":I
    .end local v42    # "observer":Landroid/database/IContentObserver;
    :catch_0
    move-exception v34

    #@af
    .line 360
    .local v34, "e":Ljava/lang/Exception;
    move-object/from16 v0, p3

    #@b1
    move-object/from16 v1, v34

    #@b3
    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    #@b6
    .line 361
    const/4 v4, 0x1

    #@b7
    return v4

    #@b8
    .line 138
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v5    # "callingPkg":Ljava/lang/String;
    .restart local v6    # "url":Landroid/net/Uri;
    .restart local v8    # "selection":Ljava/lang/String;
    .restart local v10    # "sortOrder":Ljava/lang/String;
    .restart local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .local v32, "cursor":Landroid/database/Cursor;
    .restart local v40    # "num":I
    .restart local v42    # "observer":Landroid/database/IContentObserver;
    :cond_4
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bb
    .line 139
    const/4 v4, 0x0

    #@bc
    move-object/from16 v0, p3

    #@be
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@c1
    goto :goto_2

    #@c2
    .line 147
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v10    # "sortOrder":Ljava/lang/String;
    .end local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .end local v40    # "num":I
    .end local v42    # "observer":Landroid/database/IContentObserver;
    :pswitch_2
    const-string/jumbo v4, "android.content.IContentProvider"

    #@c5
    move-object/from16 v0, p2

    #@c7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca
    .line 148
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cc
    move-object/from16 v0, p2

    #@ce
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d1
    move-result-object v6

    #@d2
    check-cast v6, Landroid/net/Uri;

    #@d4
    .line 149
    .restart local v6    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@d6
    invoke-virtual {v0, v6}, Landroid/content/ContentProviderNative;->getType(Landroid/net/Uri;)Ljava/lang/String;

    #@d9
    move-result-object v48

    #@da
    .line 150
    .local v48, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dd
    .line 151
    move-object/from16 v0, p3

    #@df
    move-object/from16 v1, v48

    #@e1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e4
    .line 153
    const/4 v4, 0x1

    #@e5
    return v4

    #@e6
    .line 158
    .end local v6    # "url":Landroid/net/Uri;
    .end local v48    # "type":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v4, "android.content.IContentProvider"

    #@e9
    move-object/from16 v0, p2

    #@eb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ee
    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f1
    move-result-object v5

    #@f2
    .line 160
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f4
    move-object/from16 v0, p2

    #@f6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f9
    move-result-object v6

    #@fa
    check-cast v6, Landroid/net/Uri;

    #@fc
    .line 161
    .restart local v6    # "url":Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fe
    move-object/from16 v0, p2

    #@100
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@103
    move-result-object v15

    #@104
    check-cast v15, Landroid/content/ContentValues;

    #@106
    .line 163
    .local v15, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    #@108
    invoke-virtual {v0, v5, v6, v15}, Landroid/content/ContentProviderNative;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@10b
    move-result-object v44

    #@10c
    .line 164
    .local v44, "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10f
    .line 165
    move-object/from16 v0, p3

    #@111
    move-object/from16 v1, v44

    #@113
    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    #@116
    .line 166
    const/4 v4, 0x1

    #@117
    return v4

    #@118
    .line 171
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v44    # "out":Landroid/net/Uri;
    :pswitch_4
    const-string/jumbo v4, "android.content.IContentProvider"

    #@11b
    move-object/from16 v0, p2

    #@11d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@120
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@123
    move-result-object v5

    #@124
    .line 173
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@126
    move-object/from16 v0, p2

    #@128
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12b
    move-result-object v6

    #@12c
    check-cast v6, Landroid/net/Uri;

    #@12e
    .line 174
    .restart local v6    # "url":Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    #@130
    move-object/from16 v0, p2

    #@132
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@135
    move-result-object v50

    #@136
    check-cast v50, [Landroid/content/ContentValues;

    #@138
    .line 176
    .local v50, "values":[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    #@13a
    move-object/from16 v1, v50

    #@13c
    invoke-virtual {v0, v5, v6, v1}, Landroid/content/ContentProviderNative;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    #@13f
    move-result v31

    #@140
    .line 177
    .local v31, "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@143
    .line 178
    move-object/from16 v0, p3

    #@145
    move/from16 v1, v31

    #@147
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14a
    .line 179
    const/4 v4, 0x1

    #@14b
    return v4

    #@14c
    .line 184
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v31    # "count":I
    .end local v50    # "values":[Landroid/content/ContentValues;
    :pswitch_5
    const-string/jumbo v4, "android.content.IContentProvider"

    #@14f
    move-object/from16 v0, p2

    #@151
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@154
    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@157
    move-result-object v5

    #@158
    .line 186
    .restart local v5    # "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15b
    move-result v41

    #@15c
    .line 188
    .local v41, "numOperations":I
    new-instance v43, Ljava/util/ArrayList;

    #@15e
    move-object/from16 v0, v43

    #@160
    move/from16 v1, v41

    #@162
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@165
    .line 189
    .local v43, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v37, 0x0

    #@167
    .restart local v37    # "i":I
    :goto_4
    move/from16 v0, v37

    #@169
    move/from16 v1, v41

    #@16b
    if-ge v0, v1, :cond_5

    #@16d
    .line 190
    sget-object v4, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16f
    move-object/from16 v0, p2

    #@171
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@174
    move-result-object v4

    #@175
    check-cast v4, Landroid/content/ContentProviderOperation;

    #@177
    move-object/from16 v0, v43

    #@179
    move/from16 v1, v37

    #@17b
    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@17e
    .line 189
    add-int/lit8 v37, v37, 0x1

    #@180
    goto :goto_4

    #@181
    .line 192
    :cond_5
    move-object/from16 v0, p0

    #@183
    move-object/from16 v1, v43

    #@185
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderNative;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    #@188
    move-result-object v46

    #@189
    .line 193
    .local v46, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18c
    .line 194
    const/4 v4, 0x0

    #@18d
    move-object/from16 v0, p3

    #@18f
    move-object/from16 v1, v46

    #@191
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@194
    .line 195
    const/4 v4, 0x1

    #@195
    return v4

    #@196
    .line 200
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v37    # "i":I
    .end local v41    # "numOperations":I
    .end local v43    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v46    # "results":[Landroid/content/ContentProviderResult;
    :pswitch_6
    const-string/jumbo v4, "android.content.IContentProvider"

    #@199
    move-object/from16 v0, p2

    #@19b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19e
    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a1
    move-result-object v5

    #@1a2
    .line 202
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a4
    move-object/from16 v0, p2

    #@1a6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a9
    move-result-object v6

    #@1aa
    check-cast v6, Landroid/net/Uri;

    #@1ac
    .line 203
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1af
    move-result-object v8

    #@1b0
    .line 204
    .restart local v8    # "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@1b3
    move-result-object v9

    #@1b4
    .line 206
    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@1b6
    invoke-virtual {v0, v5, v6, v8, v9}, Landroid/content/ContentProviderNative;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@1b9
    move-result v31

    #@1ba
    .line 208
    .restart local v31    # "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bd
    .line 209
    move-object/from16 v0, p3

    #@1bf
    move/from16 v1, v31

    #@1c1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c4
    .line 210
    const/4 v4, 0x1

    #@1c5
    return v4

    #@1c6
    .line 215
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v31    # "count":I
    :pswitch_7
    const-string/jumbo v4, "android.content.IContentProvider"

    #@1c9
    move-object/from16 v0, p2

    #@1cb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ce
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d1
    move-result-object v5

    #@1d2
    .line 217
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d4
    move-object/from16 v0, p2

    #@1d6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d9
    move-result-object v6

    #@1da
    check-cast v6, Landroid/net/Uri;

    #@1dc
    .line 218
    .restart local v6    # "url":Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1de
    move-object/from16 v0, p2

    #@1e0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e3
    move-result-object v15

    #@1e4
    check-cast v15, Landroid/content/ContentValues;

    #@1e6
    .line 219
    .restart local v15    # "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e9
    move-result-object v8

    #@1ea
    .line 220
    .restart local v8    # "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@1ed
    move-result-object v9

    #@1ee
    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    move-object/from16 v12, p0

    #@1f0
    move-object v13, v5

    #@1f1
    move-object v14, v6

    #@1f2
    move-object/from16 v16, v8

    #@1f4
    move-object/from16 v17, v9

    #@1f6
    .line 222
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentProviderNative;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@1f9
    move-result v31

    #@1fa
    .line 224
    .restart local v31    # "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fd
    .line 225
    move-object/from16 v0, p3

    #@1ff
    move/from16 v1, v31

    #@201
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@204
    .line 226
    const/4 v4, 0x1

    #@205
    return v4

    #@206
    .line 231
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v31    # "count":I
    :pswitch_8
    const-string/jumbo v4, "android.content.IContentProvider"

    #@209
    move-object/from16 v0, p2

    #@20b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20e
    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@211
    move-result-object v5

    #@212
    .line 233
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@214
    move-object/from16 v0, p2

    #@216
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@219
    move-result-object v6

    #@21a
    check-cast v6, Landroid/net/Uri;

    #@21c
    .line 234
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21f
    move-result-object v19

    #@220
    .line 236
    .local v19, "mode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@223
    move-result-object v4

    #@224
    .line 235
    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    #@227
    move-result-object v20

    #@228
    .line 237
    .local v20, "signal":Landroid/os/ICancellationSignal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22b
    move-result-object v21

    #@22c
    .local v21, "callerToken":Landroid/os/IBinder;
    move-object/from16 v16, p0

    #@22e
    move-object/from16 v17, v5

    #@230
    move-object/from16 v18, v6

    #@232
    .line 240
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentProviderNative;->openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;

    #@235
    move-result-object v36

    #@236
    .line 241
    .local v36, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@239
    .line 242
    if-eqz v36, :cond_6

    #@23b
    .line 243
    const/4 v4, 0x1

    #@23c
    move-object/from16 v0, p3

    #@23e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@241
    .line 245
    const/4 v4, 0x1

    #@242
    .line 244
    move-object/from16 v0, v36

    #@244
    move-object/from16 v1, p3

    #@246
    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@249
    .line 249
    :goto_5
    const/4 v4, 0x1

    #@24a
    return v4

    #@24b
    .line 247
    :cond_6
    const/4 v4, 0x0

    #@24c
    move-object/from16 v0, p3

    #@24e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@251
    goto :goto_5

    #@252
    .line 254
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v19    # "mode":Ljava/lang/String;
    .end local v20    # "signal":Landroid/os/ICancellationSignal;
    .end local v21    # "callerToken":Landroid/os/IBinder;
    .end local v36    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_9
    const-string/jumbo v4, "android.content.IContentProvider"

    #@255
    move-object/from16 v0, p2

    #@257
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25a
    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25d
    move-result-object v5

    #@25e
    .line 256
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@260
    move-object/from16 v0, p2

    #@262
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@265
    move-result-object v6

    #@266
    check-cast v6, Landroid/net/Uri;

    #@268
    .line 257
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26b
    move-result-object v19

    #@26c
    .line 259
    .restart local v19    # "mode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@26f
    move-result-object v4

    #@270
    .line 258
    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    #@273
    move-result-object v20

    #@274
    .line 262
    .restart local v20    # "signal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p0

    #@276
    move-object/from16 v1, v19

    #@278
    move-object/from16 v2, v20

    #@27a
    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/content/ContentProviderNative;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@27d
    move-result-object v35

    #@27e
    .line 263
    .local v35, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@281
    .line 264
    if-eqz v35, :cond_7

    #@283
    .line 265
    const/4 v4, 0x1

    #@284
    move-object/from16 v0, p3

    #@286
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@289
    .line 267
    const/4 v4, 0x1

    #@28a
    .line 266
    move-object/from16 v0, v35

    #@28c
    move-object/from16 v1, p3

    #@28e
    invoke-virtual {v0, v1, v4}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@291
    .line 271
    :goto_6
    const/4 v4, 0x1

    #@292
    return v4

    #@293
    .line 269
    :cond_7
    const/4 v4, 0x0

    #@294
    move-object/from16 v0, p3

    #@296
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@299
    goto :goto_6

    #@29a
    .line 276
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v19    # "mode":Ljava/lang/String;
    .end local v20    # "signal":Landroid/os/ICancellationSignal;
    .end local v35    # "fd":Landroid/content/res/AssetFileDescriptor;
    :pswitch_a
    const-string/jumbo v4, "android.content.IContentProvider"

    #@29d
    move-object/from16 v0, p2

    #@29f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a2
    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a5
    move-result-object v5

    #@2a6
    .line 279
    .restart local v5    # "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a9
    move-result-object v38

    #@2aa
    .line 280
    .local v38, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ad
    move-result-object v47

    #@2ae
    .line 281
    .local v47, "stringArg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@2b1
    move-result-object v30

    #@2b2
    .line 283
    .local v30, "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    #@2b4
    move-object/from16 v1, v38

    #@2b6
    move-object/from16 v2, v47

    #@2b8
    move-object/from16 v3, v30

    #@2ba
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/content/ContentProviderNative;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@2bd
    move-result-object v45

    #@2be
    .line 285
    .local v45, "responseBundle":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c1
    .line 286
    move-object/from16 v0, p3

    #@2c3
    move-object/from16 v1, v45

    #@2c5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@2c8
    .line 287
    const/4 v4, 0x1

    #@2c9
    return v4

    #@2ca
    .line 292
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v30    # "args":Landroid/os/Bundle;
    .end local v38    # "method":Ljava/lang/String;
    .end local v45    # "responseBundle":Landroid/os/Bundle;
    .end local v47    # "stringArg":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v4, "android.content.IContentProvider"

    #@2cd
    move-object/from16 v0, p2

    #@2cf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d2
    .line 293
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d4
    move-object/from16 v0, p2

    #@2d6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d9
    move-result-object v6

    #@2da
    check-cast v6, Landroid/net/Uri;

    #@2dc
    .line 294
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2df
    move-result-object v39

    #@2e0
    .line 295
    .local v39, "mimeTypeFilter":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2e2
    move-object/from16 v1, v39

    #@2e4
    invoke-virtual {v0, v6, v1}, Landroid/content/ContentProviderNative;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    #@2e7
    move-result-object v49

    #@2e8
    .line 296
    .local v49, "types":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2eb
    .line 297
    move-object/from16 v0, p3

    #@2ed
    move-object/from16 v1, v49

    #@2ef
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@2f2
    .line 299
    const/4 v4, 0x1

    #@2f3
    return v4

    #@2f4
    .line 304
    .end local v6    # "url":Landroid/net/Uri;
    .end local v39    # "mimeTypeFilter":Ljava/lang/String;
    .end local v49    # "types":[Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v4, "android.content.IContentProvider"

    #@2f7
    move-object/from16 v0, p2

    #@2f9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fc
    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ff
    move-result-object v5

    #@300
    .line 306
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@302
    move-object/from16 v0, p2

    #@304
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@307
    move-result-object v6

    #@308
    check-cast v6, Landroid/net/Uri;

    #@30a
    .line 307
    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30d
    move-result-object v25

    #@30e
    .line 308
    .local v25, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@311
    move-result-object v26

    #@312
    .line 310
    .local v26, "opts":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@315
    move-result-object v4

    #@316
    .line 309
    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    #@319
    move-result-object v20

    #@31a
    .restart local v20    # "signal":Landroid/os/ICancellationSignal;
    move-object/from16 v22, p0

    #@31c
    move-object/from16 v23, v5

    #@31e
    move-object/from16 v24, v6

    #@320
    move-object/from16 v27, v20

    #@322
    .line 313
    invoke-virtual/range {v22 .. v27}, Landroid/content/ContentProviderNative;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    #@325
    move-result-object v35

    #@326
    .line 314
    .restart local v35    # "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@329
    .line 315
    if-eqz v35, :cond_8

    #@32b
    .line 316
    const/4 v4, 0x1

    #@32c
    move-object/from16 v0, p3

    #@32e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@331
    .line 318
    const/4 v4, 0x1

    #@332
    .line 317
    move-object/from16 v0, v35

    #@334
    move-object/from16 v1, p3

    #@336
    invoke-virtual {v0, v1, v4}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@339
    .line 322
    :goto_7
    const/4 v4, 0x1

    #@33a
    return v4

    #@33b
    .line 320
    :cond_8
    const/4 v4, 0x0

    #@33c
    move-object/from16 v0, p3

    #@33e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@341
    goto :goto_7

    #@342
    .line 327
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v20    # "signal":Landroid/os/ICancellationSignal;
    .end local v25    # "mimeType":Ljava/lang/String;
    .end local v26    # "opts":Landroid/os/Bundle;
    .end local v35    # "fd":Landroid/content/res/AssetFileDescriptor;
    :pswitch_d
    const-string/jumbo v4, "android.content.IContentProvider"

    #@345
    move-object/from16 v0, p2

    #@347
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34a
    .line 329
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->createCancellationSignal()Landroid/os/ICancellationSignal;

    #@34d
    move-result-object v11

    #@34e
    .line 330
    .restart local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@351
    .line 331
    invoke-interface {v11}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    #@354
    move-result-object v4

    #@355
    move-object/from16 v0, p3

    #@357
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@35a
    .line 332
    const/4 v4, 0x1

    #@35b
    return v4

    #@35c
    .line 337
    .end local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :pswitch_e
    const-string/jumbo v4, "android.content.IContentProvider"

    #@35f
    move-object/from16 v0, p2

    #@361
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@364
    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@367
    move-result-object v5

    #@368
    .line 339
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36a
    move-object/from16 v0, p2

    #@36c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36f
    move-result-object v6

    #@370
    check-cast v6, Landroid/net/Uri;

    #@372
    .line 341
    .restart local v6    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@374
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderNative;->canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    #@377
    move-result-object v44

    #@378
    .line 342
    .restart local v44    # "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37b
    .line 343
    move-object/from16 v0, p3

    #@37d
    move-object/from16 v1, v44

    #@37f
    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    #@382
    .line 344
    const/4 v4, 0x1

    #@383
    return v4

    #@384
    .line 349
    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v44    # "out":Landroid/net/Uri;
    :pswitch_f
    const-string/jumbo v4, "android.content.IContentProvider"

    #@387
    move-object/from16 v0, p2

    #@389
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38c
    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@38f
    move-result-object v5

    #@390
    .line 351
    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@392
    move-object/from16 v0, p2

    #@394
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@397
    move-result-object v6

    #@398
    check-cast v6, Landroid/net/Uri;

    #@39a
    .line 353
    .restart local v6    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    #@39c
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderNative;->uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    #@39f
    move-result-object v44

    #@3a0
    .line 354
    .restart local v44    # "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a3
    .line 355
    move-object/from16 v0, p3

    #@3a5
    move-object/from16 v1, v44

    #@3a7
    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    #@3aa
    .line 356
    const/4 v4, 0x1

    #@3ab
    return v4

    #@3ac
    .line 128
    .end local v44    # "out":Landroid/net/Uri;
    .restart local v8    # "selection":Ljava/lang/String;
    .restart local v10    # "sortOrder":Ljava/lang/String;
    .restart local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .restart local v29    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .local v32, "cursor":Landroid/database/Cursor;
    .restart local v40    # "num":I
    .restart local v42    # "observer":Landroid/database/IContentObserver;
    :catchall_1
    move-exception v4

    #@3ad
    move-object/from16 v28, v29

    #@3af
    .end local v29    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .local v28, "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    goto/16 :goto_3

    #@3b1
    .line 77
    nop

    #@3b2
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
