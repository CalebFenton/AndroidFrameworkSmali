.class Landroid/provider/ContactsContract$Groups$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$Groups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityIteratorImpl"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 7828
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    #@3
    .line 7827
    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 7834
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    .line 7835
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "_id"

    #@8
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@b
    .line 7836
    const-string/jumbo v1, "account_name"

    #@e
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@11
    .line 7837
    const-string/jumbo v1, "account_type"

    #@14
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@17
    .line 7838
    const-string/jumbo v1, "dirty"

    #@1a
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@1d
    .line 7839
    const-string/jumbo v1, "version"

    #@20
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@23
    .line 7840
    const-string/jumbo v1, "sourceid"

    #@26
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@29
    .line 7841
    const-string/jumbo v1, "res_package"

    #@2c
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@2f
    .line 7842
    const-string/jumbo v1, "title"

    #@32
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@35
    .line 7843
    const-string/jumbo v1, "title_res"

    #@38
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@3b
    .line 7844
    const-string/jumbo v1, "group_visible"

    #@3e
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@41
    .line 7845
    const-string/jumbo v1, "sync1"

    #@44
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@47
    .line 7846
    const-string/jumbo v1, "sync2"

    #@4a
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@4d
    .line 7847
    const-string/jumbo v1, "sync3"

    #@50
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@53
    .line 7848
    const-string/jumbo v1, "sync4"

    #@56
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@59
    .line 7849
    const-string/jumbo v1, "system_id"

    #@5c
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@5f
    .line 7850
    const-string/jumbo v1, "deleted"

    #@62
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@65
    .line 7851
    const-string/jumbo v1, "notes"

    #@68
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@6b
    .line 7852
    const-string/jumbo v1, "should_sync"

    #@6e
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@71
    .line 7853
    const-string/jumbo v1, "favorites"

    #@74
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@77
    .line 7854
    const-string/jumbo v1, "auto_add"

    #@7a
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    #@7d
    .line 7855
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    #@80
    .line 7856
    new-instance v1, Landroid/content/Entity;

    #@82
    invoke-direct {v1, v0}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    #@85
    return-object v1
.end method
