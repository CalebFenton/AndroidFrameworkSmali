.class public Lcom/android/internal/app/DumpHeapActivity;
.super Landroid/app/Activity;
.source "DumpHeapActivity.java"


# static fields
.field public static final ACTION_DELETE_DUMPHEAP:Ljava/lang/String; = "com.android.server.am.DELETE_DUMPHEAP"

.field public static final EXTRA_DELAY_DELETE:Ljava/lang/String; = "delay_delete"

.field public static final JAVA_URI:Landroid/net/Uri;

.field public static final KEY_DIRECT_LAUNCH:Ljava/lang/String; = "direct_launch"

.field public static final KEY_PROCESS:Ljava/lang/String; = "process"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field mHandled:Z

.field mProcess:Ljava/lang/String;

.field mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    const-string/jumbo v0, "content://com.android.server.heapdump/java"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    #@9
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    .line 54
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    #@6
    .line 35
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v10, 0x1

    #@3
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@6
    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->getIntent()Landroid/content/Intent;

    #@9
    move-result-object v5

    #@a
    const-string/jumbo v6, "process"

    #@d
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    iput-object v5, p0, Lcom/android/internal/app/DumpHeapActivity;->mProcess:Ljava/lang/String;

    #@13
    .line 61
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->getIntent()Landroid/content/Intent;

    #@16
    move-result-object v5

    #@17
    const-string/jumbo v6, "size"

    #@1a
    const-wide/16 v8, 0x0

    #@1c
    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    #@1f
    move-result-wide v6

    #@20
    iput-wide v6, p0, Lcom/android/internal/app/DumpHeapActivity;->mSize:J

    #@22
    .line 63
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->getIntent()Landroid/content/Intent;

    #@25
    move-result-object v5

    #@26
    const-string/jumbo v6, "direct_launch"

    #@29
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 64
    .local v2, "directLaunch":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@2f
    .line 65
    new-instance v4, Landroid/content/Intent;

    #@31
    const-string/jumbo v5, "android.app.action.REPORT_HEAP_LIMIT"

    #@34
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@37
    .line 66
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@3a
    .line 67
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->getContentResolver()Landroid/content/ContentResolver;

    #@3d
    move-result-object v5

    #@3e
    const-string/jumbo v6, "Heap Dump"

    #@41
    sget-object v7, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    #@43
    invoke-static {v5, v6, v7}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    #@46
    move-result-object v1

    #@47
    .line 68
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@4a
    .line 69
    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@4d
    .line 70
    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5, v11}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@58
    .line 71
    const-string/jumbo v5, "android.intent.extra.STREAM"

    #@5b
    sget-object v6, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    #@5d
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@60
    .line 73
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/internal/app/DumpHeapActivity;->startActivity(Landroid/content/Intent;)V

    #@63
    .line 74
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->scheduleDelete()V

    #@66
    .line 75
    const/4 v5, 0x1

    #@67
    iput-boolean v5, p0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    #@69
    .line 76
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@6c
    .line 77
    return-void

    #@6d
    .line 78
    :catch_0
    move-exception v3

    #@6e
    .line 79
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v5, "DumpHeapActivity"

    #@71
    new-instance v6, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v7, "Unable to direct launch to "

    #@79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v6

    #@7d
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    .line 80
    const-string/jumbo v7, ": "

    #@84
    .line 79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    .line 80
    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    #@8b
    move-result-object v7

    #@8c
    .line 79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v6

    #@94
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 84
    .end local v1    # "clip":Landroid/content/ClipData;
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #@99
    .line 85
    const v5, 0x103023a

    #@9c
    .line 84
    invoke-direct {v0, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    #@9f
    .line 86
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v5, 0x104037c

    #@a2
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    #@a5
    .line 87
    const/4 v5, 0x2

    #@a6
    new-array v5, v5, [Ljava/lang/Object;

    #@a8
    .line 88
    iget-object v6, p0, Lcom/android/internal/app/DumpHeapActivity;->mProcess:Ljava/lang/String;

    #@aa
    aput-object v6, v5, v11

    #@ac
    iget-wide v6, p0, Lcom/android/internal/app/DumpHeapActivity;->mSize:J

    #@ae
    invoke-static {v6, v7, v12}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    #@b1
    move-result-object v6

    #@b2
    aput-object v6, v5, v10

    #@b4
    .line 87
    const v6, 0x104037d

    #@b7
    invoke-virtual {p0, v6, v5}, Lcom/android/internal/app/DumpHeapActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@ba
    move-result-object v5

    #@bb
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@be
    .line 89
    new-instance v5, Lcom/android/internal/app/DumpHeapActivity$1;

    #@c0
    invoke-direct {v5, p0}, Lcom/android/internal/app/DumpHeapActivity$1;-><init>(Lcom/android/internal/app/DumpHeapActivity;)V

    #@c3
    const/high16 v6, 0x1040000

    #@c5
    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@c8
    .line 97
    new-instance v5, Lcom/android/internal/app/DumpHeapActivity$2;

    #@ca
    invoke-direct {v5, p0}, Lcom/android/internal/app/DumpHeapActivity$2;-><init>(Lcom/android/internal/app/DumpHeapActivity;)V

    #@cd
    const v6, 0x104000a

    #@d0
    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@d3
    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    #@d6
    move-result-object v5

    #@d7
    iput-object v5, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Landroid/app/AlertDialog;

    #@d9
    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    #@0
    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    #@3
    .line 135
    iget-object v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Landroid/app/AlertDialog;

    #@5
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    #@8
    .line 133
    return-void
.end method

.method protected onStop()V
    .locals 2

    #@0
    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    #@3
    .line 125
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->isChangingConfigurations()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 126
    iget-boolean v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    #@b
    if-nez v0, :cond_0

    #@d
    .line 127
    new-instance v0, Landroid/content/Intent;

    #@f
    const-string/jumbo v1, "com.android.server.am.DELETE_DUMPHEAP"

    #@12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual {p0, v0}, Lcom/android/internal/app/DumpHeapActivity;->sendBroadcast(Landroid/content/Intent;)V

    #@18
    .line 123
    :cond_0
    return-void
.end method

.method scheduleDelete()V
    .locals 3

    #@0
    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "com.android.server.am.DELETE_DUMPHEAP"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 118
    .local v0, "broadcast":Landroid/content/Intent;
    const-string/jumbo v1, "delay_delete"

    #@b
    const/4 v2, 0x1

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@f
    .line 119
    invoke-virtual {p0, v0}, Lcom/android/internal/app/DumpHeapActivity;->sendBroadcast(Landroid/content/Intent;)V

    #@12
    .line 116
    return-void
.end method
