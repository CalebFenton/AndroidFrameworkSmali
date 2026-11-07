.class public Landroid/provider/UserDictionary$Words;
.super Ljava/lang/Object;
.source "UserDictionary.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/UserDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Words"
.end annotation


# static fields
.field public static final whitelist APP_ID:Ljava/lang/String; = "appid"

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.userword"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.userword"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "frequency DESC"

.field public static final whitelist FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final whitelist LOCALE:Ljava/lang/String; = "locale"

.field public static final whitelist LOCALE_TYPE_ALL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCALE_TYPE_CURRENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final whitelist WORD:Ljava/lang/String; = "word"

.field public static final whitelist _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    nop

    .line 57
    const-string v0, "content://user_dictionary/words"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    .line 56
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist addWord(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I
    .param p3, "localeType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    const/4 v0, 0x1

    if-eqz p3, :cond_6

    if-eq p3, v0, :cond_6

    .line 136
    return-void

    .line 141
    :cond_6
    if-ne p3, v0, :cond_d

    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .local v0, "locale":Ljava/util/Locale;
    goto :goto_e

    .line 144
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_d
    const/4 v0, 0x0

    .line 147
    .restart local v0    # "locale":Ljava/util/Locale;
    :goto_e
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V

    .line 148
    return-void
.end method

.method public static whitelist addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I
    .param p3, "shortcut"    # Ljava/lang/String;
    .param p4, "locale"    # Ljava/util/Locale;

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 165
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 166
    return-void

    .line 169
    :cond_b
    if-gez p2, :cond_e

    const/4 p2, 0x0

    .line 170
    :cond_e
    const/16 v1, 0xff

    if-le p2, v1, :cond_14

    const/16 p2, 0xff

    .line 172
    :cond_14
    const/4 v1, 0x5

    .line 173
    .local v1, "COLUMN_COUNT":I
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 175
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "word"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v3, "frequency"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    if-nez p4, :cond_2e

    const/4 v3, 0x0

    goto :goto_32

    :cond_2e
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_32
    const-string/jumbo v4, "locale"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "appid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string/jumbo v3, "shortcut"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v3, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 184
    .local v3, "result":Landroid/net/Uri;
    return-void
.end method
