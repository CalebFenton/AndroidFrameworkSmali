.class public final Lcom/google/android/mms/util/PduCache;
.super Lcom/google/android/mms/util/AbstractCache;
.source "PduCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/mms/util/AbstractCache<",
        "Landroid/net/Uri;",
        "Lcom/google/android/mms/util/PduCacheEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOCAL_LOGV:Z = false

.field private static final blacklist MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MMS_ALL:I = 0x0

.field private static final blacklist MMS_ALL_ID:I = 0x1

.field private static final blacklist MMS_CONVERSATION:I = 0xa

.field private static final blacklist MMS_CONVERSATION_ID:I = 0xb

.field private static final blacklist MMS_DRAFTS:I = 0x6

.field private static final blacklist MMS_DRAFTS_ID:I = 0x7

.field private static final blacklist MMS_INBOX:I = 0x2

.field private static final blacklist MMS_INBOX_ID:I = 0x3

.field private static final blacklist MMS_OUTBOX:I = 0x8

.field private static final blacklist MMS_OUTBOX_ID:I = 0x9

.field private static final blacklist MMS_SENT:I = 0x4

.field private static final blacklist MMS_SENT_ID:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "PduCache"

.field private static final blacklist URI_MATCHER:Landroid/content/UriMatcher;

.field private static blacklist sInstance:Lcom/google/android/mms/util/PduCache;


# instance fields
.field private final blacklist mMessageBoxes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mUpdating:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 54
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 55
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "mms"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "#"

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "inbox"

    const/4 v4, 0x2

    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 57
    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "inbox/#"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "sent"

    const/4 v6, 0x4

    .line 70
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 59
    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "sent/#"

    const/4 v6, 0x5

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drafts"

    const/4 v6, 0x6

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drafts/#"

    const/4 v8, 0x7

    invoke-virtual {v0, v3, v1, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "outbox"

    const/16 v8, 0x8

    invoke-virtual {v0, v3, v1, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "outbox/#"

    const/16 v9, 0x9

    invoke-virtual {v0, v3, v1, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "conversations"

    const/16 v3, 0xa

    const-string v9, "mms-sms"

    invoke-virtual {v0, v9, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "conversations/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v9, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    .line 69
    sget-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method private constructor greylist <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Lcom/google/android/mms/util/AbstractCache;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/util/PduCache;->mUpdating:Ljava/util/HashSet;

    .line 84
    return-void
.end method

.method public static final declared-synchronized greylist getInstance()Lcom/google/android/mms/util/PduCache;
    .registers 2

    const-class v0, Lcom/google/android/mms/util/PduCache;

    monitor-enter v0

    .line 88
    :try_start_3
    sget-object v1, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;

    if-nez v1, :cond_e

    .line 92
    new-instance v1, Lcom/google/android/mms/util/PduCache;

    invoke-direct {v1}, Lcom/google/android/mms/util/PduCache;-><init>()V

    sput-object v1, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;

    .line 94
    :cond_e
    sget-object v1, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 87
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private blacklist normalizeKey(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 194
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 195
    .local v0, "match":I
    const/4 v1, 0x0

    .line 197
    .local v1, "normalizedKey":Landroid/net/Uri;
    packed-switch v0, :pswitch_data_1a

    .line 209
    :pswitch_a
    const/4 v2, 0x0

    return-object v2

    .line 205
    :pswitch_c
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "msgId":Ljava/lang/String;
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 207
    goto :goto_19

    .line 199
    .end local v2    # "msgId":Ljava/lang/String;
    :pswitch_17
    move-object v1, p1

    .line 200
    nop

    .line 215
    :goto_19
    return-object v1

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private blacklist purgeByMessageBox(Ljava/lang/Integer;)V
    .registers 6
    .param p1, "msgBoxId"    # Ljava/lang/Integer;

    .line 223
    if-eqz p1, :cond_2d

    .line 224
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 225
    .local v0, "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v0, :cond_2d

    .line 226
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 227
    .local v2, "key":Landroid/net/Uri;
    iget-object v3, p0, Lcom/google/android/mms/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 228
    invoke-super {p0, v2}, Lcom/google/android/mms/util/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/mms/util/PduCacheEntry;

    .line 229
    .local v3, "entry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v3, :cond_2c

    .line 230
    invoke-direct {p0, v2, v3}, Lcom/google/android/mms/util/PduCache;->removeFromThreads(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V

    .line 232
    .end local v2    # "key":Landroid/net/Uri;
    .end local v3    # "entry":Lcom/google/android/mms/util/PduCacheEntry;
    :cond_2c
    goto :goto_10

    .line 235
    .end local v0    # "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    :cond_2d
    return-void
.end method

.method private blacklist purgeByThreadId(J)V
    .registers 7
    .param p1, "threadId"    # J

    .line 249
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 250
    .local v0, "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v0, :cond_2f

    .line 251
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 252
    .local v2, "key":Landroid/net/Uri;
    iget-object v3, p0, Lcom/google/android/mms/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 253
    invoke-super {p0, v2}, Lcom/google/android/mms/util/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/mms/util/PduCacheEntry;

    .line 254
    .local v3, "entry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v3, :cond_2e

    .line 255
    invoke-direct {p0, v2, v3}, Lcom/google/android/mms/util/PduCache;->removeFromMessageBoxes(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V

    .line 257
    .end local v2    # "key":Landroid/net/Uri;
    .end local v3    # "entry":Lcom/google/android/mms/util/PduCacheEntry;
    :cond_2e
    goto :goto_12

    .line 259
    :cond_2f
    return-void
.end method

.method private blacklist purgeSingleEntry(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;
    .registers 4
    .param p1, "key"    # Landroid/net/Uri;

    .line 169
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 170
    invoke-super {p0, p1}, Lcom/google/android/mms/util/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    .line 171
    .local v0, "entry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v0, :cond_14

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/google/android/mms/util/PduCache;->removeFromThreads(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/google/android/mms/util/PduCache;->removeFromMessageBoxes(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V

    .line 174
    return-object v0

    .line 176
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist removeFromMessageBoxes(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V
    .registers 6
    .param p1, "key"    # Landroid/net/Uri;
    .param p2, "entry"    # Lcom/google/android/mms/util/PduCacheEntry;

    .line 262
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/google/android/mms/util/PduCacheEntry;->getMessageBox()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 263
    .local v0, "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v0, :cond_16

    .line 264
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 266
    :cond_16
    return-void
.end method

.method private blacklist removeFromThreads(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V
    .registers 6
    .param p1, "key"    # Landroid/net/Uri;
    .param p2, "entry"    # Lcom/google/android/mms/util/PduCacheEntry;

    .line 238
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/google/android/mms/util/PduCacheEntry;->getThreadId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 239
    .local v0, "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v0, :cond_15

    .line 240
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 242
    :cond_15
    return-void
.end method


# virtual methods
.method public declared-synchronized greylist isUpdating(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    monitor-enter p0

    .line 133
    :try_start_1
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 133
    .end local p0    # "this":Lcom/google/android/mms/util/PduCache;
    .end local p1    # "uri":Landroid/net/Uri;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized greylist purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    monitor-enter p0

    .line 139
    :try_start_1
    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_42

    .line 140
    .local v0, "match":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_46

    .line 164
    .end local p0    # "this":Lcom/google/android/mms/util/PduCache;
    monitor-exit p0

    return-object v1

    .line 161
    .restart local p0    # "this":Lcom/google/android/mms/util/PduCache;
    :pswitch_d
    :try_start_d
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/mms/util/PduCache;->purgeByThreadId(J)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_42

    .line 162
    monitor-exit p0

    return-object v1

    .line 147
    .end local p0    # "this":Lcom/google/android/mms/util/PduCache;
    :pswitch_16
    :try_start_16
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "msgId":Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/mms/util/PduCache;->purgeSingleEntry(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_42

    monitor-exit p0

    return-object v2

    .line 158
    .end local v1    # "msgId":Ljava/lang/String;
    :pswitch_26
    :try_start_26
    sget-object v2, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/google/android/mms/util/PduCache;->purgeByMessageBox(Ljava/lang/Integer;)V
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_42

    .line 159
    monitor-exit p0

    return-object v1

    .line 142
    :pswitch_37
    :try_start_37
    invoke-direct {p0, p1}, Lcom/google/android/mms/util/PduCache;->purgeSingleEntry(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    move-result-object v1
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_42

    monitor-exit p0

    return-object v1

    .line 152
    :pswitch_3d
    :try_start_3d
    invoke-virtual {p0}, Lcom/google/android/mms/util/PduCache;->purgeAll()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_42

    .line 153
    monitor-exit p0

    return-object v1

    .line 138
    .end local v0    # "match":I
    .end local p1    # "uri":Landroid/net/Uri;
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_37
        :pswitch_26
        :pswitch_16
        :pswitch_26
        :pswitch_16
        :pswitch_26
        :pswitch_16
        :pswitch_26
        :pswitch_16
        :pswitch_3d
        :pswitch_d
    .end packed-switch
.end method

.method public bridge synthetic greylist purge(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized greylist purgeAll()V
    .registers 2

    monitor-enter p0

    .line 182
    :try_start_1
    invoke-super {p0}, Lcom/google/android/mms/util/AbstractCache;->purgeAll()V

    .line 184
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 185
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 186
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 187
    monitor-exit p0

    return-void

    .line 181
    .end local p0    # "this":Lcom/google/android/mms/util/PduCache;
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public declared-synchronized blacklist put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "entry"    # Lcom/google/android/mms/util/PduCacheEntry;

    monitor-enter p0

    .line 99
    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/mms/util/PduCacheEntry;->getMessageBox()I

    move-result v0

    .line 100
    .local v0, "msgBoxId":I
    iget-object v1, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 101
    .local v1, "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v1, :cond_22

    .line 102
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v1, v2

    .line 103
    iget-object v2, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .end local p0    # "this":Lcom/google/android/mms/util/PduCache;
    :cond_22
    invoke-virtual {p2}, Lcom/google/android/mms/util/PduCacheEntry;->getThreadId()J

    move-result-wide v2

    .line 107
    .local v2, "threadId":J
    iget-object v4, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 108
    .local v4, "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v4, :cond_43

    .line 109
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v4, v5

    .line 110
    iget-object v5, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_43
    invoke-direct {p0, p1}, Lcom/google/android/mms/util/PduCache;->normalizeKey(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 114
    .local v5, "finalKey":Landroid/net/Uri;
    invoke-super {p0, v5, p2}, Lcom/google/android/mms/util/AbstractCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 115
    .local v6, "result":Z
    if-eqz v6, :cond_53

    .line 116
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_53
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_59

    .line 120
    monitor-exit p0

    return v6

    .line 98
    .end local v0    # "msgBoxId":I
    .end local v1    # "msgBox":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .end local v2    # "threadId":J
    .end local v4    # "thread":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    .end local v5    # "finalKey":Landroid/net/Uri;
    .end local v6    # "result":Z
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "entry":Lcom/google/android/mms/util/PduCacheEntry;
    :catchall_59
    move-exception p1

    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public bridge synthetic blacklist put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 30
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Lcom/google/android/mms/util/PduCacheEntry;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized blacklist setUpdating(Landroid/net/Uri;Z)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "updating"    # Z

    monitor-enter p0

    .line 124
    if-eqz p2, :cond_9

    .line 125
    :try_start_3
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 127
    .end local p0    # "this":Lcom/google/android/mms/util/PduCache;
    :cond_9
    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mUpdating:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 129
    :goto_e
    monitor-exit p0

    return-void

    .line 123
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "updating":Z
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method
