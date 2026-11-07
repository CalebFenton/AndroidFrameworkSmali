.class public final Landroid/provider/ContactsContract$PinnedPositions;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinnedPositions"
.end annotation


# static fields
.field public static final whitelist DEMOTED:I = -0x1

.field public static final greylist-max-o UNDEMOTE_METHOD:Ljava/lang/String; = "undemote"

.field public static final whitelist UNPINNED:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 9630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist pin(Landroid/content/ContentResolver;JI)V
    .registers 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J
    .param p3, "pinnedPosition"    # I

    .line 9662
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 9663
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 9664
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "pinned"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9665
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9666
    return-void
.end method

.method public static whitelist undemote(Landroid/content/ContentResolver;J)V
    .registers 7
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J

    .line 9648
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 9650
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 9648
    const-string/jumbo v2, "undemote"

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v1, v3}, Landroid/provider/ContactsContract;->-$$Nest$smnullSafeCall(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 9651
    return-void
.end method
