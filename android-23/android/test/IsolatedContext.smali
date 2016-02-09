.class public Landroid/test/IsolatedContext;
.super Landroid/content/ContextWrapper;
.source "IsolatedContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/IsolatedContext$MockAccountManager;
    }
.end annotation


# instance fields
.field private mBroadcastIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mMockAccountManager:Landroid/test/IsolatedContext$MockAccountManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "targetContext"    # Landroid/content/Context;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@3
    .line 54
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    #@9
    .line 59
    iput-object p1, p0, Landroid/test/IsolatedContext;->mResolver:Landroid/content/ContentResolver;

    #@b
    .line 60
    new-instance v0, Landroid/test/IsolatedContext$MockAccountManager;

    #@d
    invoke-direct {v0, p0}, Landroid/test/IsolatedContext$MockAccountManager;-><init>(Landroid/test/IsolatedContext;)V

    #@10
    iput-object v0, p0, Landroid/test/IsolatedContext;->mMockAccountManager:Landroid/test/IsolatedContext$MockAccountManager;

    #@12
    .line 57
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 79
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    #@0
    .prologue
    .line 111
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I

    #@0
    .prologue
    .line 106
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAndClearBroadcastIntents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    #@2
    .line 66
    .local v0, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@5
    move-result-object v1

    #@6
    iput-object v1, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    #@8
    .line 67
    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/test/IsolatedContext;->mResolver:Landroid/content/ContentResolver;

    #@2
    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 190
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "/dev/null"

    #@5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 116
    const-string/jumbo v0, "account"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 117
    iget-object v0, p0, Landroid/test/IsolatedContext;->mMockAccountManager:Landroid/test/IsolatedContext$MockAccountManager;

    #@b
    return-object v0

    #@c
    .line 120
    :cond_0
    const/4 v0, 0x0

    #@d
    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 84
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 93
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 98
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    #@0
    .prologue
    .line 88
    return-void
.end method
