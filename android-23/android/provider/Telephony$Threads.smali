.class public final Landroid/provider/Telephony$Threads;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$ThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threads"
.end annotation


# static fields
.field public static final BROADCAST_THREAD:I = 0x1

.field public static final COMMON_THREAD:I

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final OBSOLETE_THREADS_URI:Landroid/net/Uri;

.field private static final THREAD_ID_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 1750
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "_id"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    sput-object v0, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    #@b
    .line 1757
    const-string/jumbo v0, "content://mms-sms/threadID"

    #@e
    .line 1756
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    #@14
    .line 1763
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    #@16
    const-string/jumbo v1, "conversations"

    #@19
    .line 1762
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1c
    move-result-object v0

    #@1d
    sput-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    #@1f
    .line 1769
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    #@21
    const-string/jumbo v1, "obsolete"

    #@24
    .line 1768
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@27
    move-result-object v0

    #@28
    sput-object v0, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    #@2a
    .line 1748
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipient"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1791
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 1793
    .local v0, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@8
    .line 1794
    invoke-static {p0, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    #@b
    move-result-wide v2

    #@c
    return-wide v2
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1
    .line 1809
    sget-object v0, Landroid/provider/Telephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    #@3
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@6
    move-result-object v10

    #@7
    .line 1811
    .local v10, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v9

    #@b
    .local v9, "recipient$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v8

    #@15
    check-cast v8, Ljava/lang/String;

    #@17
    .line 1812
    .local v8, "recipient":Ljava/lang/String;
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 1813
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v8

    #@21
    .line 1816
    :cond_0
    const-string/jumbo v0, "recipient"

    #@24
    invoke-virtual {v10, v0, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@27
    goto :goto_0

    #@28
    .line 1819
    .end local v8    # "recipient":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@2b
    move-result-object v2

    #@2c
    .line 1822
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2f
    move-result-object v1

    #@30
    .line 1823
    sget-object v3, Landroid/provider/Telephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    #@32
    move-object v0, p0

    #@33
    move-object v5, v4

    #@34
    move-object v6, v4

    #@35
    .line 1822
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@38
    move-result-object v7

    #@39
    .line 1824
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    #@3b
    .line 1826
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_2

    #@41
    .line 1827
    const/4 v0, 0x0

    #@42
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    move-result-wide v0

    #@46
    .line 1832
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@49
    .line 1827
    return-wide v0

    #@4a
    .line 1829
    :cond_2
    :try_start_1
    const-string/jumbo v0, "Telephony"

    #@4d
    const-string/jumbo v1, "getOrCreateThreadId returned no rows!"

    #@50
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    .line 1832
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@56
    .line 1836
    :cond_3
    const-string/jumbo v0, "Telephony"

    #@59
    new-instance v1, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v3, "getOrCreateThreadId failed with "

    #@61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-interface {p1}, Ljava/util/Set;->size()I

    #@68
    move-result v3

    #@69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    const-string/jumbo v3, " recipients"

    #@70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v1

    #@78
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 1837
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7d
    const-string/jumbo v1, "Unable to find or allocate a thread ID."

    #@80
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@83
    throw v0

    #@84
    .line 1831
    :catchall_0
    move-exception v0

    #@85
    .line 1832
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@88
    .line 1831
    throw v0
.end method
