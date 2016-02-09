.class public final Landroid/nfc/NfcActivityManager;
.super Landroid/nfc/IAppCallback$Stub;
.source "NfcActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcActivityManager$NfcApplicationState;,
        Landroid/nfc/NfcActivityManager$NfcActivityState;
    }
.end annotation


# static fields
.field static final DBG:Ljava/lang/Boolean;

.field static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/NfcActivityManager$NfcActivityState;",
            ">;"
        }
    .end annotation
.end field

.field final mAdapter:Landroid/nfc/NfcAdapter;

.field final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/NfcActivityManager$NfcApplicationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 46
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4
    move-result-object v0

    #@5
    sput-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    #@7
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/nfc/NfcAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/nfc/NfcAdapter;

    #@0
    .prologue
    .line 198
    invoke-direct {p0}, Landroid/nfc/IAppCallback$Stub;-><init>()V

    #@3
    .line 199
    iput-object p1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    #@5
    .line 200
    new-instance v0, Ljava/util/LinkedList;

    #@7
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    #@c
    .line 201
    new-instance v0, Ljava/util/ArrayList;

    #@e
    const/4 v1, 0x1

    #@f
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@12
    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    #@14
    .line 198
    return-void
.end method


# virtual methods
.method public createBeamShareData(B)Landroid/nfc/BeamShareData;
    .locals 16
    .param p1, "peerLlcpVersion"    # B

    #@0
    .prologue
    .line 362
    new-instance v2, Landroid/nfc/NfcEvent;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v12, v0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    #@6
    move/from16 v0, p1

    #@8
    invoke-direct {v2, v12, v0}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;B)V

    #@b
    .line 363
    .local v2, "event":Landroid/nfc/NfcEvent;
    monitor-enter p0

    #@c
    .line 364
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v7

    #@10
    .line 365
    .local v7, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v7, :cond_0

    #@12
    const/4 v12, 0x0

    #@13
    monitor-exit p0

    #@14
    return-object v12

    #@15
    .line 367
    :cond_0
    :try_start_1
    iget-object v5, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    #@17
    .line 368
    .local v5, "ndefCallback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    iget-object v10, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    #@19
    .line 369
    .local v10, "urisCallback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    iget-object v4, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    #@1b
    .line 370
    .local v4, "message":Landroid/nfc/NdefMessage;
    iget-object v9, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    #@1d
    .line 371
    .local v9, "uris":[Landroid/net/Uri;
    iget v3, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    #@1f
    .line 372
    .local v3, "flags":I
    iget-object v1, v7, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .local v1, "activity":Landroid/app/Activity;
    monitor-exit p0

    #@22
    .line 376
    if-eqz v5, :cond_1

    #@24
    .line 377
    invoke-interface {v5, v2}, Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;->createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;

    #@27
    move-result-object v4

    #@28
    .line 379
    :cond_1
    if-eqz v10, :cond_6

    #@2a
    .line 380
    invoke-interface {v10, v2}, Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;->createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;

    #@2d
    move-result-object v9

    #@2e
    .line 381
    if-eqz v9, :cond_6

    #@30
    .line 382
    new-instance v11, Ljava/util/ArrayList;

    #@32
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@35
    .line 383
    .local v11, "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v12, 0x0

    #@36
    array-length v13, v9

    #@37
    :goto_0
    if-ge v12, v13, :cond_5

    #@39
    aget-object v8, v9, v12

    #@3b
    .line 384
    .local v8, "uri":Landroid/net/Uri;
    if-nez v8, :cond_2

    #@3d
    .line 385
    const-string/jumbo v14, "NFC"

    #@40
    const-string/jumbo v15, "Uri not allowed to be null."

    #@43
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 383
    :goto_1
    add-int/lit8 v12, v12, 0x1

    #@48
    goto :goto_0

    #@49
    .line 363
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v3    # "flags":I
    .end local v4    # "message":Landroid/nfc/NdefMessage;
    .end local v5    # "ndefCallback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .end local v7    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "uris":[Landroid/net/Uri;
    .end local v10    # "urisCallback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .end local v11    # "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v12

    #@4a
    monitor-exit p0

    #@4b
    throw v12

    #@4c
    .line 388
    .restart local v1    # "activity":Landroid/app/Activity;
    .restart local v3    # "flags":I
    .restart local v4    # "message":Landroid/nfc/NdefMessage;
    .restart local v5    # "ndefCallback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .restart local v7    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .restart local v8    # "uri":Landroid/net/Uri;
    .restart local v9    # "uris":[Landroid/net/Uri;
    .restart local v10    # "urisCallback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .restart local v11    # "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@4f
    move-result-object v6

    #@50
    .line 389
    .local v6, "scheme":Ljava/lang/String;
    if-eqz v6, :cond_4

    #@52
    const-string/jumbo v14, "file"

    #@55
    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@58
    move-result v14

    #@59
    if-nez v14, :cond_3

    #@5b
    .line 390
    const-string/jumbo v14, "content"

    #@5e
    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@61
    move-result v14

    #@62
    if-eqz v14, :cond_4

    #@64
    .line 395
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@67
    move-result v14

    #@68
    invoke-static {v8, v14}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@6b
    move-result-object v8

    #@6c
    .line 396
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6f
    goto :goto_1

    #@70
    .line 391
    :cond_4
    const-string/jumbo v14, "NFC"

    #@73
    const-string/jumbo v15, "Uri needs to have either scheme file or scheme content"

    #@76
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    goto :goto_1

    #@7a
    .line 399
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@7d
    move-result v12

    #@7e
    new-array v12, v12, [Landroid/net/Uri;

    #@80
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@83
    move-result-object v9

    #@84
    .end local v9    # "uris":[Landroid/net/Uri;
    check-cast v9, [Landroid/net/Uri;

    #@86
    .line 402
    .end local v11    # "validUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v9    # "uris":[Landroid/net/Uri;
    :cond_6
    if-eqz v9, :cond_7

    #@88
    array-length v12, v9

    #@89
    if-lez v12, :cond_7

    #@8b
    .line 403
    const/4 v12, 0x0

    #@8c
    array-length v13, v9

    #@8d
    :goto_2
    if-ge v12, v13, :cond_7

    #@8f
    aget-object v8, v9, v12

    #@91
    .line 405
    .restart local v8    # "uri":Landroid/net/Uri;
    const-string/jumbo v14, "com.android.nfc"

    #@94
    .line 406
    const/4 v15, 0x1

    #@95
    .line 405
    invoke-virtual {v1, v14, v8, v15}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    #@98
    .line 403
    add-int/lit8 v12, v12, 0x1

    #@9a
    goto :goto_2

    #@9b
    .line 409
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_7
    new-instance v12, Landroid/nfc/BeamShareData;

    #@9d
    new-instance v13, Landroid/os/UserHandle;

    #@9f
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@a2
    move-result v14

    #@a3
    invoke-direct {v13, v14}, Landroid/os/UserHandle;-><init>(I)V

    #@a6
    invoke-direct {v12, v4, v9, v13, v3}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    #@a9
    return-object v12
.end method

.method declared-synchronized destroyActivityState(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 191
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@4
    move-result-object v0

    #@5
    .line 192
    .local v0, "activityState":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-eqz v0, :cond_0

    #@7
    .line 193
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcActivityState;->destroy()V

    #@a
    .line 194
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    #@c
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit p0

    #@10
    .line 190
    return-void

    #@11
    .end local v0    # "activityState":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1
.end method

.method public disableReaderMode(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 224
    monitor-enter p0

    #@3
    .line 225
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@6
    move-result-object v1

    #@7
    .line 226
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    const/4 v3, 0x0

    #@8
    iput-object v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    #@a
    .line 227
    const/4 v3, 0x0

    #@b
    iput v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    #@d
    .line 228
    const/4 v3, 0x0

    #@e
    iput-object v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    #@10
    .line 229
    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    #@12
    .line 230
    .local v2, "token":Landroid/os/Binder;
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .local v0, "isResumed":Z
    monitor-exit p0

    #@15
    .line 232
    if-eqz v0, :cond_0

    #@17
    .line 233
    invoke-virtual {p0, v2, v5, v4}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    #@1a
    .line 221
    :cond_0
    return-void

    #@1b
    .line 224
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    #@1c
    monitor-exit p0

    #@1d
    throw v3
.end method

.method public enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$ReaderCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 208
    monitor-enter p0

    #@1
    .line 209
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@4
    move-result-object v1

    #@5
    .line 210
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    #@7
    .line 211
    iput p3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    #@9
    .line 212
    iput-object p4, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    #@b
    .line 213
    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    #@d
    .line 214
    .local v2, "token":Landroid/os/Binder;
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .local v0, "isResumed":Z
    monitor-exit p0

    #@10
    .line 216
    if-eqz v0, :cond_0

    #@12
    .line 217
    invoke-virtual {p0, v2, p3, p4}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    #@15
    .line 205
    :cond_0
    return-void

    #@16
    .line 208
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    #@17
    monitor-exit p0

    #@18
    throw v3
.end method

.method declared-synchronized findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 163
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@13
    .line 164
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    if-ne v2, p1, :cond_0

    #@17
    monitor-exit p0

    #@18
    .line 165
    return-object v0

    #@19
    .line 168
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    const/4 v2, 0x0

    #@1a
    monitor-exit p0

    #@1b
    return-object v2

    #@1c
    .end local v1    # "state$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit p0

    #@1e
    throw v2
.end method

.method findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;
    .locals 3
    .param p1, "app"    # Landroid/app/Application;

    #@0
    .prologue
    .line 80
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "appState$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/nfc/NfcActivityManager$NfcApplicationState;

    #@12
    .line 81
    .local v0, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    iget-object v2, v0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 82
    return-object v0

    #@17
    .line 85
    .end local v0    # "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    :cond_1
    const/4 v2, 0x0

    #@18
    return-object v2
.end method

.method declared-synchronized findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 182
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@13
    .line 183
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-boolean v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    if-eqz v2, :cond_0

    #@17
    monitor-exit p0

    #@18
    .line 184
    return-object v0

    #@19
    .line 187
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    const/4 v2, 0x0

    #@1a
    monitor-exit p0

    #@1b
    return-object v2

    #@1c
    .end local v1    # "state$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit p0

    #@1e
    throw v2
.end method

.method declared-synchronized getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 173
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@4
    move-result-object v0

    #@5
    .line 174
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v0, :cond_0

    #@7
    .line 175
    new-instance v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@9
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcActivityManager$NfcActivityState;-><init>(Landroid/nfc/NfcActivityManager;Landroid/app/Activity;)V

    #@c
    .line 176
    .restart local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    #@e
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 178
    return-object v0

    #@13
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit p0

    #@15
    throw v1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 447
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 504
    monitor-enter p0

    #@1
    .line 505
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@4
    move-result-object v0

    #@5
    .line 506
    .local v0, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    #@7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const-string/jumbo v1, "NFC"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "onDestroy() for "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, " "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 507
    :cond_0
    if-eqz v0, :cond_1

    #@34
    .line 509
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->destroyActivityState(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    :cond_1
    monitor-exit p0

    #@38
    .line 503
    return-void

    #@39
    .line 504
    .end local v0    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit p0

    #@3b
    throw v1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 479
    monitor-enter p0

    #@3
    .line 480
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@6
    move-result-object v1

    #@7
    .line 481
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v3, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    #@9
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    const-string/jumbo v3, "NFC"

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "onPause() for "

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    const-string/jumbo v5, " "

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 482
    :cond_0
    if-nez v1, :cond_1

    #@36
    monitor-exit p0

    #@37
    return-void

    #@38
    .line 483
    :cond_1
    const/4 v3, 0x0

    #@39
    :try_start_1
    iput-boolean v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    #@3b
    .line 484
    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    #@3d
    .line 485
    .local v2, "token":Landroid/os/Binder;
    iget v3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    if-eqz v3, :cond_3

    #@41
    const/4 v0, 0x1

    #@42
    .local v0, "readerModeFlagsSet":Z
    :goto_0
    monitor-exit p0

    #@43
    .line 487
    if-eqz v0, :cond_2

    #@45
    .line 489
    invoke-virtual {p0, v2, v6, v7}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    #@48
    .line 476
    :cond_2
    return-void

    #@49
    .line 485
    .end local v0    # "readerModeFlagsSet":Z
    :cond_3
    const/4 v0, 0x0

    #@4a
    .restart local v0    # "readerModeFlagsSet":Z
    goto :goto_0

    #@4b
    .line 479
    .end local v0    # "readerModeFlagsSet":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    #@4c
    monitor-exit p0

    #@4d
    throw v3
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 456
    const/4 v1, 0x0

    #@1
    .line 457
    .local v1, "readerModeFlags":I
    const/4 v0, 0x0

    #@2
    .line 459
    .local v0, "readerModeExtras":Landroid/os/Bundle;
    monitor-enter p0

    #@3
    .line 460
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@6
    move-result-object v2

    #@7
    .line 461
    .local v2, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v4, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    #@9
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    const-string/jumbo v4, "NFC"

    #@12
    new-instance v5, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v6, "onResume() for "

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    const-string/jumbo v6, " "

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 462
    :cond_0
    if-nez v2, :cond_1

    #@36
    monitor-exit p0

    #@37
    return-void

    #@38
    .line 463
    :cond_1
    const/4 v4, 0x1

    #@39
    :try_start_1
    iput-boolean v4, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    #@3b
    .line 464
    iget-object v3, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    #@3d
    .line 465
    .local v3, "token":Landroid/os/Binder;
    iget v1, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    #@3f
    .line 466
    iget-object v0, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    .local v0, "readerModeExtras":Landroid/os/Bundle;
    monitor-exit p0

    #@42
    .line 468
    if-eqz v1, :cond_2

    #@44
    .line 469
    invoke-virtual {p0, v3, v1, v0}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    #@47
    .line 471
    :cond_2
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    #@4a
    .line 455
    return-void

    #@4b
    .line 459
    .end local v2    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v3    # "token":Landroid/os/Binder;
    .local v0, "readerModeExtras":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    #@4c
    monitor-exit p0

    #@4d
    throw v4
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 499
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 451
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 495
    return-void
.end method

.method public onNdefPushComplete(B)V
    .locals 4
    .param p1, "peerLlcpVersion"    # B

    #@0
    .prologue
    .line 416
    monitor-enter p0

    #@1
    .line 417
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v2

    #@5
    .line 418
    .local v2, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v2, :cond_0

    #@7
    monitor-exit p0

    #@8
    return-void

    #@9
    .line 420
    :cond_0
    :try_start_1
    iget-object v0, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    .local v0, "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    monitor-exit p0

    #@c
    .line 422
    new-instance v1, Landroid/nfc/NfcEvent;

    #@e
    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    #@10
    invoke-direct {v1, v3, p1}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;B)V

    #@13
    .line 424
    .local v1, "event":Landroid/nfc/NfcEvent;
    if-eqz v0, :cond_1

    #@15
    .line 425
    invoke-interface {v0, v1}, Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;->onNdefPushComplete(Landroid/nfc/NfcEvent;)V

    #@18
    .line 414
    :cond_1
    return-void

    #@19
    .line 416
    .end local v0    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .end local v1    # "event":Landroid/nfc/NfcEvent;
    .end local v2    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v3

    #@1a
    monitor-exit p0

    #@1b
    throw v3
.end method

.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 432
    monitor-enter p0

    #@1
    .line 433
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v1

    #@5
    .line 434
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v1, :cond_0

    #@7
    monitor-exit p0

    #@8
    return-void

    #@9
    .line 436
    :cond_0
    :try_start_1
    iget-object v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    .local v0, "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    monitor-exit p0

    #@c
    .line 440
    if-eqz v0, :cond_1

    #@e
    .line 441
    invoke-interface {v0, p1}, Landroid/nfc/NfcAdapter$ReaderCallback;->onTagDiscovered(Landroid/nfc/Tag;)V

    #@11
    .line 430
    :cond_1
    return-void

    #@12
    .line 432
    .end local v0    # "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    #@13
    monitor-exit p0

    #@14
    throw v2
.end method

.method registerApplication(Landroid/app/Application;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;

    #@0
    .prologue
    .line 89
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;

    #@3
    move-result-object v0

    #@4
    .line 90
    .local v0, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    if-nez v0, :cond_0

    #@6
    .line 91
    new-instance v0, Landroid/nfc/NfcActivityManager$NfcApplicationState;

    #@8
    .end local v0    # "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcActivityManager$NfcApplicationState;-><init>(Landroid/nfc/NfcActivityManager;Landroid/app/Application;)V

    #@b
    .line 92
    .restart local v0    # "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    #@d
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 94
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcApplicationState;->register()V

    #@13
    .line 88
    return-void
.end method

.method requestNfcServiceCallback()V
    .locals 2

    #@0
    .prologue
    .line 339
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1, p0}, Landroid/nfc/INfcAdapter;->setAppCallback(Landroid/nfc/IAppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 337
    :goto_0
    return-void

    #@6
    .line 340
    :catch_0
    move-exception v0

    #@7
    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    #@9
    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@c
    goto :goto_0
.end method

.method public setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uris"    # [Landroid/net/Uri;

    #@0
    .prologue
    .line 249
    monitor-enter p0

    #@1
    .line 250
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@4
    move-result-object v1

    #@5
    .line 251
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    #@7
    .line 252
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .local v0, "isResumed":Z
    monitor-exit p0

    #@a
    .line 254
    if-eqz v0, :cond_0

    #@c
    .line 256
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    #@f
    .line 247
    :goto_0
    return-void

    #@10
    .line 249
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    #@11
    monitor-exit p0

    #@12
    throw v2

    #@13
    .line 259
    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    #@16
    goto :goto_0
.end method

.method public setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    #@0
    .prologue
    .line 267
    monitor-enter p0

    #@1
    .line 268
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@4
    move-result-object v1

    #@5
    .line 269
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    #@7
    .line 270
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .local v0, "isResumed":Z
    monitor-exit p0

    #@a
    .line 272
    if-eqz v0, :cond_0

    #@c
    .line 274
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    #@f
    .line 265
    :goto_0
    return-void

    #@10
    .line 267
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    #@11
    monitor-exit p0

    #@12
    throw v2

    #@13
    .line 277
    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    #@16
    goto :goto_0
.end method

.method public setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 283
    monitor-enter p0

    #@1
    .line 284
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@4
    move-result-object v1

    #@5
    .line 285
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    #@7
    .line 286
    iput p3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    #@9
    .line 287
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .local v0, "isResumed":Z
    monitor-exit p0

    #@c
    .line 289
    if-eqz v0, :cond_0

    #@e
    .line 291
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    #@11
    .line 281
    :goto_0
    return-void

    #@12
    .line 283
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    #@13
    monitor-exit p0

    #@14
    throw v2

    #@15
    .line 294
    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    #@18
    goto :goto_0
.end method

.method public setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 301
    monitor-enter p0

    #@1
    .line 302
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@4
    move-result-object v1

    #@5
    .line 303
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    #@7
    .line 304
    iput p3, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    #@9
    .line 305
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .local v0, "isResumed":Z
    monitor-exit p0

    #@c
    .line 307
    if-eqz v0, :cond_0

    #@e
    .line 309
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    #@11
    .line 299
    :goto_0
    return-void

    #@12
    .line 301
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    #@13
    monitor-exit p0

    #@14
    throw v2

    #@15
    .line 312
    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    #@18
    goto :goto_0
.end method

.method public setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    #@0
    .prologue
    .line 319
    monitor-enter p0

    #@1
    .line 320
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    #@4
    move-result-object v1

    #@5
    .line 321
    .local v1, "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    #@7
    .line 322
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .local v0, "isResumed":Z
    monitor-exit p0

    #@a
    .line 324
    if-eqz v0, :cond_0

    #@c
    .line 326
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    #@f
    .line 317
    :goto_0
    return-void

    #@10
    .line 319
    .end local v0    # "isResumed":Z
    .end local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    #@11
    monitor-exit p0

    #@12
    throw v2

    #@13
    .line 329
    .restart local v0    # "isResumed":Z
    .restart local v1    # "state":Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    #@16
    goto :goto_0
.end method

.method public setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "flags"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 239
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    #@2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    const-string/jumbo v1, "NFC"

    #@b
    const-string/jumbo v2, "Setting reader mode"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 241
    :cond_0
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@13
    invoke-interface {v1, p1, p0, p2, p3}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 238
    :goto_0
    return-void

    #@17
    .line 242
    :catch_0
    move-exception v0

    #@18
    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    #@1a
    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@1d
    goto :goto_0
.end method

.method unregisterApplication(Landroid/app/Application;)V
    .locals 4
    .param p1, "app"    # Landroid/app/Application;

    #@0
    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;

    #@3
    move-result-object v0

    #@4
    .line 99
    .local v0, "appState":Landroid/nfc/NfcActivityManager$NfcApplicationState;
    if-nez v0, :cond_0

    #@6
    .line 100
    const-string/jumbo v1, "NFC"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "app was not registered "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 101
    return-void

    #@21
    .line 103
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcApplicationState;->unregister()V

    #@24
    .line 97
    return-void
.end method

.method verifyNfcPermission()V
    .locals 2

    #@0
    .prologue
    .line 347
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    #@2
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->verifyNfcPermission()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 345
    :goto_0
    return-void

    #@6
    .line 348
    :catch_0
    move-exception v0

    #@7
    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    #@9
    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    #@c
    goto :goto_0
.end method
