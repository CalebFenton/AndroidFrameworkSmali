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
.field public static final APP_ID:Ljava/lang/String; = "appid"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.userword"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.userword"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "frequency DESC"

.field public static final FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final LOCALE:Ljava/lang/String; = "locale"

.field public static final LOCALE_TYPE_ALL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCALE_TYPE_CURRENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final WORD:Ljava/lang/String; = "word"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 54
    const-string/jumbo v0, "content://user_dictionary/words"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 53
    sput-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addWord(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I
    .param p3, "localeType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 132
    if-eqz p3, :cond_0

    #@3
    if-eq p3, v1, :cond_0

    #@5
    .line 133
    return-void

    #@6
    .line 138
    :cond_0
    if-ne p3, v1, :cond_1

    #@8
    .line 139
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@b
    move-result-object v0

    #@c
    .line 144
    :goto_0
    const/4 v1, 0x0

    #@d
    invoke-static {p0, p1, p2, v1, v0}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V

    #@10
    .line 130
    return-void

    #@11
    .line 141
    :cond_1
    const/4 v0, 0x0

    #@12
    .local v0, "locale":Ljava/util/Locale;
    goto :goto_0
.end method

.method public static addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I
    .param p3, "shortcut"    # Ljava/lang/String;
    .param p4, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 162
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 163
    return-void

    #@d
    .line 166
    :cond_0
    if-gez p2, :cond_1

    #@f
    const/4 p2, 0x0

    #@10
    .line 167
    :cond_1
    const/16 v5, 0xff

    #@12
    if-le p2, v5, :cond_2

    #@14
    const/16 p2, 0xff

    #@16
    .line 169
    :cond_2
    const/4 v0, 0x5

    #@17
    .line 170
    .local v0, "COLUMN_COUNT":I
    new-instance v3, Landroid/content/ContentValues;

    #@19
    const/4 v5, 0x5

    #@1a
    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    #@1d
    .line 172
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "word"

    #@20
    invoke-virtual {v3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 173
    const-string/jumbo v5, "frequency"

    #@26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@2d
    .line 174
    const-string/jumbo v5, "locale"

    #@30
    if-nez p4, :cond_3

    #@32
    :goto_0
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@35
    .line 175
    const-string/jumbo v4, "appid"

    #@38
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@3f
    .line 176
    const-string/jumbo v4, "shortcut"

    #@42
    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@45
    .line 178
    sget-object v4, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    #@47
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@4a
    move-result-object v2

    #@4b
    .line 159
    .local v2, "result":Landroid/net/Uri;
    return-void

    #@4c
    .line 174
    .end local v2    # "result":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    goto :goto_0
.end method
