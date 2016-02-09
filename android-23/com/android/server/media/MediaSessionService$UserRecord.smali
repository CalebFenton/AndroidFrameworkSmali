.class final Lcom/android/server/media/MediaSessionService$UserRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UserRecord"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

.field private final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method static synthetic -get0(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/media/MediaSessionService$UserRecord;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mUserId:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/media/MediaSessionService$UserRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    #@2
    return-object p1
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionService;Landroid/content/Context;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 525
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mSessions:Ljava/util/ArrayList;

    #@c
    .line 531
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mContext:Landroid/content/Context;

    #@e
    .line 532
    iput p3, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mUserId:I

    #@10
    .line 533
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$UserRecord;->restoreMediaButtonReceiver()V

    #@13
    .line 530
    return-void
.end method

.method private restoreMediaButtonReceiver()V
    .locals 5

    #@0
    .prologue
    .line 577
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    #@2
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-get3(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    #@5
    move-result-object v2

    #@6
    .line 578
    const-string/jumbo v3, "media_button_receiver"

    #@9
    const/4 v4, -0x2

    #@a
    .line 577
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 579
    .local v1, "receiverName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_1

    #@14
    .line 580
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@17
    move-result-object v0

    #@18
    .line 581
    .local v0, "eventReceiver":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    #@1a
    .line 583
    return-void

    #@1b
    .line 585
    :cond_0
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    #@1d
    .line 576
    .end local v0    # "eventReceiver":Landroid/content/ComponentName;
    :cond_1
    return-void
.end method


# virtual methods
.method public addSessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mSessions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 554
    return-void
.end method

.method public destroyLocked()V
    .locals 3

    #@0
    .prologue
    .line 544
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mSessions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 545
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mSessions:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    #@12
    .line 546
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    #@14
    invoke-static {v2, v1}, Lcom/android/server/media/MediaSessionService;->-wrap2(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V

    #@17
    .line 544
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 543
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v3

    #@9
    const-string/jumbo v4, "Record for user "

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    iget v4, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mUserId:I

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 564
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, "  "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 565
    .local v1, "indent":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    const-string/jumbo v4, "MediaButtonReceiver:"

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    const-string/jumbo v4, "Restored ButtonReceiver:"

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b
    .line 567
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mSessions:Ljava/util/ArrayList;

    #@6d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@70
    move-result v2

    #@71
    .line 568
    .local v2, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v3

    #@7a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    const-string/jumbo v4, " Sessions:"

    #@81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v3

    #@89
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8c
    .line 569
    const/4 v0, 0x0

    #@8d
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@8f
    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mSessions:Ljava/util/ArrayList;

    #@9a
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9d
    move-result-object v3

    #@9e
    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    #@a0
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->toString()Ljava/lang/String;

    #@a3
    move-result-object v3

    #@a4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v3

    #@ac
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@af
    .line 569
    add-int/lit8 v0, v0, 0x1

    #@b1
    goto :goto_0

    #@b2
    .line 562
    :cond_0
    return-void
.end method

.method public getSessionsLocked()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mSessions:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public removeSessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$UserRecord;->mSessions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 558
    return-void
.end method

.method public startLocked()V
    .locals 0

    #@0
    .prologue
    .line 536
    return-void
.end method

.method public stopLocked()V
    .locals 0

    #@0
    .prologue
    .line 539
    return-void
.end method
