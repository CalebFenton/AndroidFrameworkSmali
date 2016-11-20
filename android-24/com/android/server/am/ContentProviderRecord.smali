.class final Lcom/android/server/am/ContentProviderRecord;
.super Ljava/lang/Object;
.source "ContentProviderRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    }
.end annotation


# instance fields
.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field final connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field externalProcessNoHandleCount:I

.field externalProcessTokenToHandle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final info:Landroid/content/pm/ProviderInfo;

.field launchingApp:Lcom/android/server/am/ProcessRecord;

.field final name:Landroid/content/ComponentName;

.field public noReleaseNeeded:Z

.field proc:Lcom/android/server/am/ProcessRecord;

.field public provider:Landroid/content/IContentProvider;

.field final service:Lcom/android/server/am/ActivityManagerService;

.field shortStringName:Ljava/lang/String;

.field final singleton:Z

.field stringName:Ljava/lang/String;

.field final uid:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "_service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_info"    # Landroid/content/pm/ProviderInfo;
    .param p3, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "_name"    # Landroid/content/ComponentName;
    .param p5, "_singleton"    # Z

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    #@7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 45
    iput-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    #@c
    .line 59
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@e
    .line 60
    iput-object p2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@10
    .line 61
    iget v2, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    #@12
    iput v2, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    #@14
    .line 62
    iput-object p3, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    .line 63
    iput-object p4, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    #@18
    .line 64
    iput-boolean p5, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    #@1a
    .line 65
    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    #@1c
    if-eqz v2, :cond_0

    #@1e
    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    #@20
    const/16 v3, 0x3e8

    #@22
    if-ne v2, v3, :cond_1

    #@24
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    #@26
    .line 58
    return-void

    #@27
    :cond_1
    move v0, v1

    #@28
    .line 65
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;)V
    .locals 1
    .param p1, "cpr"    # Lcom/android/server/am/ContentProviderRecord;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 45
    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    #@a
    .line 69
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@c
    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    #@e
    .line 70
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@10
    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@12
    .line 71
    iget v0, p1, Lcom/android/server/am/ContentProviderRecord;->uid:I

    #@14
    iput v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    #@16
    .line 72
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@18
    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@1a
    .line 73
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    #@1c
    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    #@1e
    .line 74
    iget-boolean v0, p1, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    #@20
    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    #@22
    .line 75
    iget-boolean v0, p1, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    #@24
    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    #@26
    .line 68
    return-void
.end method

.method private removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    #@8
    .line 131
    .local v0, "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->unlinkFromOwnDeathLocked()V

    #@b
    .line 132
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    #@d
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 133
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    #@12
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 134
    const/4 v1, 0x0

    #@19
    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    #@1b
    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public addExternalProcessHandleLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 92
    if-nez p1, :cond_0

    #@2
    .line 93
    iget v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    iput v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    #@8
    .line 91
    :goto_0
    return-void

    #@9
    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    #@b
    if-nez v1, :cond_1

    #@d
    .line 96
    new-instance v1, Ljava/util/HashMap;

    #@f
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@12
    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    #@14
    .line 98
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    #@16
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    #@1c
    .line 99
    .local v0, "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    if-nez v0, :cond_2

    #@1e
    .line 100
    new-instance v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    #@20
    .end local v0    # "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;-><init>(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V

    #@23
    .line 101
    .restart local v0    # "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    #@25
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 103
    :cond_2
    invoke-static {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->-get0(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I

    #@2b
    move-result v1

    #@2c
    add-int/lit8 v1, v1, 0x1

    #@2e
    invoke-static {v0, v1}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->-set0(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;I)I

    #@31
    goto :goto_0
.end method

.method public canRunHere(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 87
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@3
    iget-boolean v1, v1, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@9
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    #@b
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 88
    :cond_0
    iget v1, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    #@15
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@17
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@19
    if-ne v1, v2, :cond_1

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 87
    :cond_1
    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "full"    # Z

    #@0
    .prologue
    .line 147
    if-eqz p3, :cond_0

    #@2
    .line 148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5
    const-string/jumbo v2, "package="

    #@8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    .line 149
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@d
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    .line 150
    const-string/jumbo v2, " process="

    #@17
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@1c
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    #@1e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@21
    .line 152
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24
    const-string/jumbo v2, "proc="

    #@27
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    #@2c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2f
    .line 153
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    #@31
    if-eqz v2, :cond_1

    #@33
    .line 154
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    const-string/jumbo v2, "launchingApp="

    #@39
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3c
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    #@3e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@41
    .line 156
    :cond_1
    if-eqz p3, :cond_2

    #@43
    .line 157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    const-string/jumbo v2, "uid="

    #@49
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    #@4e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@51
    .line 158
    const-string/jumbo v2, " provider="

    #@54
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    #@59
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5c
    .line 160
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    #@5e
    if-eqz v2, :cond_3

    #@60
    .line 161
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    const-string/jumbo v2, "singleton="

    #@66
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    #@6b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    #@6e
    .line 163
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@71
    const-string/jumbo v2, "authority="

    #@74
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@79
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@7b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7e
    .line 164
    if-eqz p3, :cond_5

    #@80
    .line 165
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@82
    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    #@84
    if-nez v2, :cond_4

    #@86
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@88
    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    #@8a
    if-nez v2, :cond_4

    #@8c
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@8e
    iget v2, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    #@90
    if-eqz v2, :cond_5

    #@92
    .line 166
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@95
    const-string/jumbo v2, "isSyncable="

    #@98
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9b
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@9d
    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    #@9f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@a2
    .line 167
    const-string/jumbo v2, " multiprocess="

    #@a5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@aa
    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    #@ac
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    #@af
    .line 168
    const-string/jumbo v2, " initOrder="

    #@b2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b5
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@b7
    iget v2, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    #@b9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    #@bc
    .line 171
    :cond_5
    if-eqz p3, :cond_b

    #@be
    .line 172
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    #@c1
    move-result v2

    #@c2
    if-eqz v2, :cond_8

    #@c4
    .line 173
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c7
    const-string/jumbo v2, "externals:"

    #@ca
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cd
    .line 174
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    #@cf
    if-eqz v2, :cond_6

    #@d1
    .line 175
    const-string/jumbo v2, " w/token="

    #@d4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d7
    .line 176
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    #@d9
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    #@dc
    move-result v2

    #@dd
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@e0
    .line 178
    :cond_6
    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    #@e2
    if-lez v2, :cond_7

    #@e4
    .line 179
    const-string/jumbo v2, " notoken="

    #@e7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ea
    .line 180
    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    #@ec
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@ef
    .line 182
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@f2
    .line 191
    :cond_8
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    #@f4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@f7
    move-result v2

    #@f8
    if-lez v2, :cond_d

    #@fa
    .line 192
    if-eqz p3, :cond_9

    #@fc
    .line 193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ff
    const-string/jumbo v2, "Connections:"

    #@102
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@105
    .line 195
    :cond_9
    const/4 v1, 0x0

    #@106
    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    #@108
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@10b
    move-result v2

    #@10c
    if-ge v1, v2, :cond_d

    #@10e
    .line 196
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    #@110
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@113
    move-result-object v0

    #@114
    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    #@116
    .line 197
    .local v0, "conn":Lcom/android/server/am/ContentProviderConnection;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@119
    const-string/jumbo v2, "  -> "

    #@11c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11f
    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderConnection;->toClientString()Ljava/lang/String;

    #@122
    move-result-object v2

    #@123
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@126
    .line 198
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    #@128
    if-eq v2, p0, :cond_a

    #@12a
    .line 199
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12d
    const-string/jumbo v2, "    *** WRONG PROVIDER: "

    #@130
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@133
    .line 200
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    #@135
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@138
    .line 195
    :cond_a
    add-int/lit8 v1, v1, 0x1

    #@13a
    goto :goto_1

    #@13b
    .line 185
    .end local v0    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v1    # "i":I
    :cond_b
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    #@13d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@140
    move-result v2

    #@141
    if-gtz v2, :cond_c

    #@143
    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    #@145
    if-lez v2, :cond_8

    #@147
    .line 186
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14a
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    #@14c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@14f
    move-result v2

    #@150
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@153
    .line 187
    const-string/jumbo v2, " connections, "

    #@156
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@159
    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    #@15b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@15e
    .line 188
    const-string/jumbo v2, " external handles"

    #@161
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@164
    goto :goto_0

    #@165
    .line 146
    :cond_d
    return-void
.end method

.method public hasConnectionOrHandle()Z
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public hasExternalProcessHandles()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 139
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    #@4
    if-nez v2, :cond_0

    #@6
    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    #@8
    if-lez v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    move v0, v1

    #@c
    goto :goto_0
.end method

.method public newHolder(Lcom/android/server/am/ContentProviderConnection;)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 2
    .param p1, "conn"    # Lcom/android/server/am/ContentProviderConnection;

    #@0
    .prologue
    .line 79
    new-instance v0, Landroid/app/IActivityManager$ContentProviderHolder;

    #@2
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    #@4
    invoke-direct {v0, v1}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    #@7
    .line 80
    .local v0, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    #@9
    iput-object v1, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@b
    .line 81
    iget-boolean v1, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    #@d
    iput-boolean v1, v0, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    #@f
    .line 82
    iput-object p1, v0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@11
    .line 83
    return-object v0
.end method

.method public removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 108
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 109
    const/4 v1, 0x0

    #@9
    .line 110
    .local v1, "hasHandle":Z
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 111
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    #@f
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    #@15
    .line 112
    .local v0, "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    if-eqz v0, :cond_0

    #@17
    .line 113
    const/4 v1, 0x1

    #@18
    .line 114
    invoke-static {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->-get0(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I

    #@1b
    move-result v2

    #@1c
    add-int/lit8 v2, v2, -0x1

    #@1e
    invoke-static {v0, v2}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->-set0(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;I)I

    #@21
    .line 115
    invoke-static {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->-get0(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I

    #@24
    move-result v2

    #@25
    if-nez v2, :cond_0

    #@27
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    #@2a
    .line 117
    return v4

    #@2b
    .line 121
    .end local v0    # "handle":Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    :cond_0
    if-nez v1, :cond_1

    #@2d
    .line 122
    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    #@2f
    add-int/lit8 v2, v2, -0x1

    #@31
    iput v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    #@33
    .line 123
    return v4

    #@34
    .line 126
    .end local v1    # "hasHandle":Z
    :cond_1
    return v3
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 224
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 226
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const/16 v1, 0x80

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 227
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@11
    move-result v1

    #@12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 228
    const/16 v1, 0x2f

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 229
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    #@20
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    #@2d
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 209
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 211
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const/16 v1, 0x80

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 212
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ContentProviderRecord{"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 213
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@17
    move-result v1

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 214
    const-string/jumbo v1, " u"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 215
    iget v1, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    #@27
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    #@2a
    move-result v1

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    .line 216
    const/16 v1, 0x20

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    .line 217
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    #@35
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 218
    const/16 v1, 0x7d

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    #@47
    return-object v1
.end method
