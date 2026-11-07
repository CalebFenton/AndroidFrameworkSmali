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
.field private static final greylist-max-o DATA_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 20

    .line 3715
    const-string v18, "data_sync3"

    const-string v19, "data_sync4"

    const-string v1, "data1"

    const-string v2, "data2"

    const-string v3, "data3"

    const-string v4, "data4"

    const-string v5, "data5"

    const-string v6, "data6"

    const-string v7, "data7"

    const-string v8, "data8"

    const-string v9, "data9"

    const-string v10, "data10"

    const-string v11, "data11"

    const-string v12, "data12"

    const-string v13, "data13"

    const-string v14, "data14"

    const-string v15, "data15"

    const-string v16, "data_sync1"

    const-string v17, "data_sync2"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/database/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 3737
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 3738
    return-void
.end method


# virtual methods
.method public greylist-max-o getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .registers 14
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3743
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 3744
    .local v1, "columnRawContactId":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3747
    .local v2, "rawContactId":J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3748
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v5, "account_name"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3749
    const-string v5, "account_type"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3750
    const-string v5, "data_set"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3751
    invoke-static {p1, v4, v0}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3752
    const-string v5, "dirty"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3753
    const-string/jumbo v5, "version"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3754
    const-string/jumbo v5, "sourceid"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3755
    const-string/jumbo v5, "sync1"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3756
    const-string/jumbo v5, "sync2"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3757
    const-string/jumbo v5, "sync3"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3758
    const-string/jumbo v5, "sync4"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3759
    const-string v5, "deleted"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3760
    const-string v5, "contact_id"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3761
    const-string/jumbo v5, "starred"

    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3762
    new-instance v5, Landroid/content/Entity;

    invoke-direct {v5, v4}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 3766
    .local v5, "contact":Landroid/content/Entity;
    :cond_5f
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_68

    .line 3767
    goto :goto_df

    .line 3770
    :cond_68
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v4, v6

    .line 3771
    const-string v6, "data_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3772
    const-string/jumbo v6, "res_package"

    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3774
    const-string/jumbo v6, "mimetype"

    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3775
    const-string/jumbo v6, "is_primary"

    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3776
    const-string/jumbo v6, "is_super_primary"

    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3778
    const-string v6, "data_version"

    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3779
    const-string/jumbo v7, "group_sourceid"

    invoke-static {p1, v4, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3781
    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3783
    sget-object v6, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_a9
    if-ge v8, v7, :cond_d4

    aget-object v9, v6, v8

    .line 3784
    .local v9, "key":Ljava/lang/String;
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 3785
    .local v10, "columnIndex":I
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getType(I)I

    move-result v11

    packed-switch v11, :pswitch_data_e0

    .line 3798
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "Invalid or unhandled data type"

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3795
    :pswitch_c0
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 3796
    goto :goto_d1

    .line 3792
    :pswitch_c8
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3793
    goto :goto_d1

    .line 3788
    :pswitch_d0
    nop

    .line 3783
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "columnIndex":I
    :goto_d1
    add-int/lit8 v8, v8, 0x1

    goto :goto_a9

    .line 3801
    :cond_d4
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 3802
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_5f

    .line 3804
    :goto_df
    return-object v5

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_d0
        :pswitch_c8
        :pswitch_c8
        :pswitch_c8
        :pswitch_c0
    .end packed-switch
.end method
