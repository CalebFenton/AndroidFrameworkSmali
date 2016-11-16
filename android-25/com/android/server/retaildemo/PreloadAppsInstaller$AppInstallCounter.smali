.class Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;
.super Ljava/lang/Object;
.source "PreloadAppsInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/retaildemo/PreloadAppsInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInstallCounter"
.end annotation


# instance fields
.field private expectedCount:I

.field private finishedCount:I

.field private final mContext:Landroid/content/Context;

.field private final userId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 149
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->expectedCount:I

    #@6
    .line 155
    iput-object p1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->mContext:Landroid/content/Context;

    #@8
    .line 156
    iput p2, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->userId:I

    #@a
    .line 154
    return-void
.end method

.method private checkIfAllFinished()V
    .locals 4

    #@0
    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->expectedCount:I

    #@2
    iget v1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->finishedCount:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 171
    invoke-static {}, Lcom/android/server/retaildemo/PreloadAppsInstaller;->-get1()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "All preloads finished installing for user "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget v2, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->userId:I

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 172
    iget-object v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->mContext:Landroid/content/Context;

    #@25
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@28
    move-result-object v0

    #@29
    .line 173
    const-string/jumbo v1, "demo_user_setup_complete"

    #@2c
    const-string/jumbo v2, "1"

    #@2f
    iget v3, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->userId:I

    #@31
    .line 172
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@34
    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized appInstallFinished()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 160
    :try_start_0
    iget v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->finishedCount:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->finishedCount:I

    #@7
    .line 161
    invoke-direct {p0}, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->checkIfAllFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 159
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method declared-synchronized setExpectedAppsCount(I)V
    .locals 1
    .param p1, "expectedCount"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 165
    :try_start_0
    iput p1, p0, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->expectedCount:I

    #@3
    .line 166
    invoke-direct {p0}, Lcom/android/server/retaildemo/PreloadAppsInstaller$AppInstallCounter;->checkIfAllFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 164
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method
