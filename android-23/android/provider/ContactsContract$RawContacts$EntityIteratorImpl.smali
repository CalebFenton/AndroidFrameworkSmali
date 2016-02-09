.class Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$RawContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final DATA_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 2923
    const/16 v0, 0x13

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 2924
    const-string/jumbo v1, "data1"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 2925
    const-string/jumbo v1, "data2"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 2926
    const-string/jumbo v1, "data3"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 2927
    const-string/jumbo v1, "data4"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 2928
    const-string/jumbo v1, "data5"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 2929
    const-string/jumbo v1, "data6"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 2930
    const-string/jumbo v1, "data7"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 2931
    const-string/jumbo v1, "data8"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 2932
    const-string/jumbo v1, "data9"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 2933
    const-string/jumbo v1, "data10"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 2934
    const-string/jumbo v1, "data11"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 2935
    const-string/jumbo v1, "data12"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 2936
    const-string/jumbo v1, "data13"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 2937
    const-string/jumbo v1, "data14"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 2938
    const-string/jumbo v1, "data15"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 2939
    const-string/jumbo v1, "data_sync1"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 2940
    const-string/jumbo v1, "data_sync2"

    #@6f
    const/16 v2, 0x10

    #@71
    aput-object v1, v0, v2

    #@73
    .line 2941
    const-string/jumbo v1, "data_sync3"

    #@76
    const/16 v2, 0x11

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 2942
    const-string/jumbo v1, "data_sync4"

    #@7d
    const/16 v2, 0x12

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 2923
    sput-object v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    #@83
    .line 2922
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 2945
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    #@3
    .line 2944
    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 2951
    const-string/jumbo v5, "_id"

    #@3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@6
    move-result v1

    #@7
    .line 2952
    .local v1, "columnRawContactId":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    #@a
    move-result-wide v6

    #@b
    .line 2955
    .local v6, "rawContactId":J
    new-instance v3, Landroid/content/ContentValues;

    #@d
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@10
    .line 2956
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "account_name"

    #@13
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@16
    .line 2957
    const-string/jumbo v5, "account_type"

    #@19
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1c
    .line 2958
    const-string/jumbo v5, "data_set"

    #@1f
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@22
    .line 2959
    const-string/jumbo v5, "_id"

    #@25
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@28
    .line 2960
    const-string/jumbo v5, "dirty"

    #@2b
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@2e
    .line 2961
    const-string/jumbo v5, "version"

    #@31
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@34
    .line 2962
    const-string/jumbo v5, "sourceid"

    #@37
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@3a
    .line 2963
    const-string/jumbo v5, "sync1"

    #@3d
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@40
    .line 2964
    const-string/jumbo v5, "sync2"

    #@43
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@46
    .line 2965
    const-string/jumbo v5, "sync3"

    #@49
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@4c
    .line 2966
    const-string/jumbo v5, "sync4"

    #@4f
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@52
    .line 2967
    const-string/jumbo v5, "deleted"

    #@55
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@58
    .line 2968
    const-string/jumbo v5, "contact_id"

    #@5b
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@5e
    .line 2969
    const-string/jumbo v5, "starred"

    #@61
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@64
    .line 2970
    new-instance v2, Landroid/content/Entity;

    #@66
    invoke-direct {v2, v3}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    #@69
    .line 2974
    .local v2, "contact":Landroid/content/Entity;
    :goto_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    #@6c
    move-result-wide v8

    #@6d
    cmp-long v5, v6, v8

    #@6f
    if-eqz v5, :cond_1

    #@71
    .line 3012
    :cond_0
    return-object v2

    #@72
    .line 2978
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    #@74
    .end local v3    # "cv":Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@77
    .line 2979
    .restart local v3    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "_id"

    #@7a
    const-string/jumbo v8, "data_id"

    #@7d
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@80
    move-result v8

    #@81
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    #@84
    move-result-wide v8

    #@85
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@88
    move-result-object v8

    #@89
    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@8c
    .line 2981
    const-string/jumbo v5, "res_package"

    #@8f
    .line 2980
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@92
    .line 2982
    const-string/jumbo v5, "mimetype"

    #@95
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@98
    .line 2983
    const-string/jumbo v5, "is_primary"

    #@9b
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@9e
    .line 2985
    const-string/jumbo v5, "is_super_primary"

    #@a1
    .line 2984
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@a4
    .line 2986
    const-string/jumbo v5, "data_version"

    #@a7
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@aa
    .line 2988
    const-string/jumbo v5, "group_sourceid"

    #@ad
    .line 2987
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@b0
    .line 2990
    const-string/jumbo v5, "data_version"

    #@b3
    .line 2989
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@b6
    .line 2991
    sget-object v8, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    #@b8
    const/4 v5, 0x0

    #@b9
    array-length v9, v8

    #@ba
    :goto_1
    if-ge v5, v9, :cond_2

    #@bc
    aget-object v4, v8, v5

    #@be
    .line 2992
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@c1
    move-result v0

    #@c2
    .line 2993
    .local v0, "columnIndex":I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getType(I)I

    #@c5
    move-result v10

    #@c6
    packed-switch v10, :pswitch_data_0

    #@c9
    .line 3006
    new-instance v5, Ljava/lang/IllegalStateException;

    #@cb
    const-string/jumbo v8, "Invalid or unhandled data type"

    #@ce
    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d1
    throw v5

    #@d2
    .line 3000
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@d5
    move-result-object v10

    #@d6
    invoke-virtual {v3, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@d9
    .line 2991
    :goto_2
    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    #@db
    goto :goto_1

    #@dc
    .line 3003
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    #@df
    move-result-object v10

    #@e0
    invoke-virtual {v3, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    #@e3
    goto :goto_2

    #@e4
    .line 3009
    .end local v0    # "columnIndex":I
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #@e6
    invoke-virtual {v2, v5, v3}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    #@e9
    .line 3010
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    #@ec
    move-result v5

    #@ed
    if-eqz v5, :cond_0

    #@ef
    goto/16 :goto_0

    #@f1
    .line 2993
    nop

    #@f2
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
