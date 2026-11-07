.class public final Landroid/provider/ContactsContract$Groups;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$GroupsColumns;
.implements Landroid/provider/ContactsContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Groups"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$Groups$EntityIteratorImpl;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/group"

.field public static final whitelist CONTENT_SUMMARY_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/group"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 8711
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "groups"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 8717
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "groups_summary"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 8705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8706
    return-void
.end method

.method public static whitelist newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    .registers 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 8731
    new-instance v0, Landroid/provider/ContactsContract$Groups$EntityIteratorImpl;

    invoke-direct {v0, p0}, Landroid/provider/ContactsContract$Groups$EntityIteratorImpl;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
