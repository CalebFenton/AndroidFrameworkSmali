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
    .line 3032
    const/16 v0, 0x13

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 3033
    const-string/jumbo v1, "data1"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 3034
    const-string/jumbo v1, "data2"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 3035
    const-string/jumbo v1, "data3"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 3036
    const-string/jumbo v1, "data4"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 3037
    const-string/jumbo v1, "data5"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 3038
    const-string/jumbo v1, "data6"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 3039
    const-string/jumbo v1, "data7"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 3040
    const-string/jumbo v1, "data8"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 3041
    const-string/jumbo v1, "data9"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 3042
    const-string/jumbo v1, "data10"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 3043
    const-string/jumbo v1, "data11"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 3044
    const-string/jumbo v1, "data12"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 3045
    const-string/jumbo v1, "data13"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 3046
    const-string/jumbo v1, "data14"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 3047
    const-string/jumbo v1, "data15"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 3048
    const-string/jumbo v1, "data_sync1"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 3049
    const-string/jumbo v1, "data_sync2"

    #@6f
    const/16 v2, 0x10

    #@71
    aput-object v1, v0, v2

    #@73
    .line 3050
    const-string/jumbo v1, "data_sync3"

    #@76
    const/16 v2, 0x11

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 3051
    const-string/jumbo v1, "data_sync4"

    #@7d
    const/16 v2, 0x12

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 3032
    sput-object v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    #@83
    .line 3031
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 3054
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    #@3
    .line 3053
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
    .line 3060
    const-string/jumbo v5, "_id"

    #@3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@6
    move-result v1

    #@7
    .line 3061
    .local v1, "columnRawContactId":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    #@a
    move-result-wide v6

    #@b
    .line 3064
    .local v6, "rawContactId":J
    new-instance v3, Landroid/content/ContentValues;

    #@d
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@10
    .line 3065
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "account_name"

    #@13
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@16
    .line 3066
    const-string/jumbo v5, "account_type"

    #@19
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1c
    .line 3067
    const-string/jumbo v5, "data_set"

    #@1f
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@22
    .line 3068
    const-string/jumbo v5, "_id"

    #@25
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@28
    .line 3069
    const-string/jumbo v5, "dirty"

    #@2b
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@2e
    .line 3070
    const-string/jumbo v5, "version"

    #@31
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@34
    .line 3071
    const-string/jumbo v5, "sourceid"

    #@37
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@3a
    .line 3072
    const-string/jumbo v5, "sync1"

    #@3d
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@40
    .line 3073
    const-string/jumbo v5, "sync2"

    #@43
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@46
    .line 3074
    const-string/jumbo v5, "sync3"

    #@49
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@4c
    .line 3075
    const-string/jumbo v5, "sync4"

    #@4f
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@52
    .line 3076
    const-string/jumbo v5, "deleted"

    #@55
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@58
    .line 3077
    const-string/jumbo v5, "contact_id"

    #@5b
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@5e
    .line 3078
    const-string/jumbo v5, "starred"

    #@61
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@64
    .line 3079
    new-instance v2, Landroid/content/Entity;

    #@66
    invoke-direct {v2, v3}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    #@69
    .line 3083
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
    .line 3121
    :cond_0
    return-object v2

    #@72
    .line 3087
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    #@74
    .end local v3    # "cv":Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@77
    .line 3088
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
    .line 3090
    const-string/jumbo v5, "res_package"

    #@8f
    .line 3089
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@92
    .line 3091
    const-string/jumbo v5, "mimetype"

    #@95
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@98
    .line 3092
    const-string/jumbo v5, "is_primary"

    #@9b
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@9e
    .line 3094
    const-string/jumbo v5, "is_super_primary"

    #@a1
    .line 3093
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@a4
    .line 3095
    const-string/jumbo v5, "data_version"

    #@a7
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@aa
    .line 3097
    const-string/jumbo v5, "group_sourceid"

    #@ad
    .line 3096
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@b0
    .line 3099
    const-string/jumbo v5, "data_version"

    #@b3
    .line 3098
    invoke-static {p1, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@b6
    .line 3100
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
    .line 3101
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@c1
    move-result v0

    #@c2
    .line 3102
    .local v0, "columnIndex":I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getType(I)I

    #@c5
    move-result v10

    #@c6
    packed-switch v10, :pswitch_data_0

    #@c9
    .line 3115
    new-instance v5, Ljava/lang/IllegalStateException;

    #@cb
    const-string/jumbo v8, "Invalid or unhandled data type"

    #@ce
    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d1
    throw v5

    #@d2
    .line 3109
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@d5
    move-result-object v10

    #@d6
    invoke-virtual {v3, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@d9
    .line 3100
    :goto_2
    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    #@db
    goto :goto_1

    #@dc
    .line 3112
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    #@df
    move-result-object v10

    #@e0
    invoke-virtual {v3, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    #@e3
    goto :goto_2

    #@e4
    .line 3118
    .end local v0    # "columnIndex":I
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #@e6
    invoke-virtual {v2, v5, v3}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    #@e9
    .line 3119
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    #@ec
    move-result v5

    #@ed
    if-eqz v5, :cond_0

    #@ef
    goto/16 :goto_0

    #@f1
    .line 3102
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
