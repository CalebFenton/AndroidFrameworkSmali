.class public interface abstract Landroid/database/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/Cursor$FieldType;
    }
.end annotation


# static fields
.field public static final whitelist FIELD_TYPE_BLOB:I = 0x4

.field public static final whitelist FIELD_TYPE_FLOAT:I = 0x2

.field public static final whitelist FIELD_TYPE_INTEGER:I = 0x1

.field public static final whitelist FIELD_TYPE_NULL:I = 0x0

.field public static final whitelist FIELD_TYPE_STRING:I = 0x3


# virtual methods
.method public abstract whitelist test-api close()V
.end method

.method public abstract whitelist copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
.end method

.method public abstract whitelist deactivate()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getBlob(I)[B
.end method

.method public abstract whitelist getColumnCount()I
.end method

.method public abstract whitelist getColumnIndex(Ljava/lang/String;)I
.end method

.method public abstract whitelist getColumnIndexOrThrow(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract whitelist getColumnName(I)Ljava/lang/String;
.end method

.method public abstract whitelist getColumnNames()[Ljava/lang/String;
.end method

.method public abstract whitelist getCount()I
.end method

.method public abstract whitelist getDouble(I)D
.end method

.method public abstract whitelist getExtras()Landroid/os/Bundle;
.end method

.method public abstract whitelist getFloat(I)F
.end method

.method public abstract whitelist getInt(I)I
.end method

.method public abstract whitelist getLong(I)J
.end method

.method public abstract whitelist getNotificationUri()Landroid/net/Uri;
.end method

.method public whitelist getNotificationUris()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 485
    invoke-interface {p0}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v0

    .line 486
    .local v0, "notifyUri":Landroid/net/Uri;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_12

    :cond_8
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_12
    return-object v1
.end method

.method public abstract whitelist getPosition()I
.end method

.method public abstract whitelist getShort(I)S
.end method

.method public abstract whitelist getString(I)Ljava/lang/String;
.end method

.method public abstract whitelist getType(I)I
.end method

.method public abstract whitelist getWantsAllOnMoveCalls()Z
.end method

.method public abstract whitelist isAfterLast()Z
.end method

.method public abstract whitelist isBeforeFirst()Z
.end method

.method public abstract whitelist isClosed()Z
.end method

.method public abstract whitelist isFirst()Z
.end method

.method public abstract whitelist isLast()Z
.end method

.method public abstract whitelist isNull(I)Z
.end method

.method public abstract whitelist move(I)Z
.end method

.method public abstract whitelist moveToFirst()Z
.end method

.method public abstract whitelist moveToLast()Z
.end method

.method public abstract whitelist moveToNext()Z
.end method

.method public abstract whitelist moveToPosition(I)Z
.end method

.method public abstract whitelist moveToPrevious()Z
.end method

.method public abstract whitelist registerContentObserver(Landroid/database/ContentObserver;)V
.end method

.method public abstract whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract whitelist requery()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist respond(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract whitelist setExtras(Landroid/os/Bundle;)V
.end method

.method public abstract whitelist setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
.end method

.method public whitelist setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;)V
    .registers 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 460
    .local p2, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-interface {p0, p1, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 461
    return-void
.end method

.method public abstract whitelist unregisterContentObserver(Landroid/database/ContentObserver;)V
.end method

.method public abstract whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.end method
