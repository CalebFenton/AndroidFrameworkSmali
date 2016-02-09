.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackupRestoreController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BackupRestoreController"

.field private static final WIDGET_STATE_VERSION:I = 0x2


# instance fields
.field private final mPrunedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatesByHost:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUpdatesByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@0
    .prologue
    .line 3584
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3596
    new-instance v0, Ljava/util/HashSet;

    #@7
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    #@c
    .line 3599
    new-instance v0, Ljava/util/HashMap;

    #@e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@11
    .line 3598
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    #@13
    .line 3601
    new-instance v0, Ljava/util/HashMap;

    #@15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@18
    .line 3600
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    #@1a
    .line 3584
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    #@3
    return-void
.end method

.method private alreadyStashed(Ljava/util/ArrayList;II)Z
    .locals 4
    .param p2, "oldId"    # I
    .param p3, "newId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;II)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4038
    .local p1, "stash":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    .line 4039
    .local v0, "N":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@7
    .line 4040
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    #@d
    .line 4041
    .local v2, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    #@f
    if-ne v3, p2, :cond_0

    #@11
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    #@13
    if-ne v3, p3, :cond_0

    #@15
    .line 4042
    const/4 v3, 0x1

    #@16
    return v3

    #@17
    .line 4039
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 4045
    .end local v2    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_1
    const/4 v3, 0x0

    #@1b
    return v3
.end method

.method private countPendingUpdates(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 4153
    .local p1, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    const/4 v2, 0x0

    #@1
    .line 4154
    .local v2, "pending":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@4
    move-result v0

    #@5
    .line 4155
    .local v0, "N":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@8
    .line 4156
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    #@e
    .line 4157
    .local v3, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget-boolean v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    #@10
    if-nez v4, :cond_0

    #@12
    .line 4158
    add-int/lit8 v2, v2, 0x1

    #@14
    .line 4155
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 4161
    .end local v3    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_1
    return v2
.end method

.method private findProviderLocked(Landroid/content/ComponentName;I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3958
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get7(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    .line 3959
    .local v2, "providerCount":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@d
    .line 3960
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@f
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get7(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@19
    .line 3961
    .local v1, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@1c
    move-result v3

    #@1d
    if-ne v3, p2, :cond_0

    #@1f
    .line 3962
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@21
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@23
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    .line 3961
    if-eqz v3, :cond_0

    #@29
    .line 3963
    return-object v1

    #@2a
    .line 3959
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 3966
    .end local v1    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1
    const/4 v3, 0x0

    #@2e
    return-object v3
.end method

.method private findRestoredWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .locals 7
    .param p1, "restoredId"    # I
    .param p2, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p3, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3971
    const-string/jumbo v3, "BackupRestoreController"

    #@4
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "Find restored widget: id="

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    .line 3972
    const-string/jumbo v5, " host="

    #@17
    .line 3971
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    .line 3972
    const-string/jumbo v5, " provider="

    #@22
    .line 3971
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 3975
    if-eqz p3, :cond_0

    #@33
    if-nez p2, :cond_1

    #@35
    .line 3976
    :cond_0
    return-object v6

    #@36
    .line 3979
    :cond_1
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@38
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v0

    #@40
    .line 3980
    .local v0, "N":I
    const/4 v1, 0x0

    #@41
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@43
    .line 3981
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@45
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object v2

    #@4d
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@4f
    .line 3982
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    #@51
    if-ne v3, p1, :cond_2

    #@53
    .line 3983
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@55
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@57
    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@59
    invoke-virtual {v3, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v3

    #@5d
    .line 3982
    if-eqz v3, :cond_2

    #@5f
    .line 3984
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@61
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@63
    iget-object v4, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@65
    invoke-virtual {v3, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v3

    #@69
    .line 3982
    if-eqz v3, :cond_2

    #@6b
    .line 3986
    const-string/jumbo v3, "BackupRestoreController"

    #@6e
    new-instance v4, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v5, "   Found at "

    #@76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v4

    #@7a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    const-string/jumbo v5, " : "

    #@81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v4

    #@8d
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    .line 3988
    return-object v2

    #@91
    .line 3980
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@93
    goto :goto_0

    #@94
    .line 3991
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_3
    return-object v6
.end method

.method private isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z
    .locals 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 4118
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@4
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    #@7
    move-result v2

    #@8
    if-ne v2, p2, :cond_2

    #@a
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 4119
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@10
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    #@13
    move-result v2

    #@14
    if-ne v2, p2, :cond_1

    #@16
    .line 4118
    :cond_0
    :goto_0
    return v0

    #@17
    :cond_1
    move v0, v1

    #@18
    .line 4119
    goto :goto_0

    #@19
    :cond_2
    move v0, v1

    #@1a
    .line 4118
    goto :goto_0
.end method

.method private packageNeedsWidgetBackupLocked(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 3995
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@3
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    .line 3996
    .local v0, "N":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@e
    .line 3997
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@10
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@1a
    .line 4000
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v3, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z

    #@1d
    move-result v4

    #@1e
    if-nez v4, :cond_1

    #@20
    .line 3996
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 4004
    :cond_1
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@25
    invoke-virtual {v4, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_2

    #@2b
    .line 4006
    return v5

    #@2c
    .line 4009
    :cond_2
    iget-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@2e
    .line 4010
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v2, :cond_0

    #@30
    invoke-virtual {v2, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_0

    #@36
    .line 4012
    return v5

    #@37
    .line 4015
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_3
    const/4 v4, 0x0

    #@38
    return v4
.end method

.method private parseWidgetIdOptions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    #@0
    .prologue
    const/16 v9, 0x10

    #@2
    const/4 v8, 0x0

    #@3
    .line 4123
    new-instance v5, Landroid/os/Bundle;

    #@5
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@8
    .line 4124
    .local v5, "options":Landroid/os/Bundle;
    const-string/jumbo v6, "min_width"

    #@b
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    .line 4125
    .local v4, "minWidthString":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@11
    .line 4126
    const-string/jumbo v6, "appWidgetMinWidth"

    #@14
    .line 4127
    invoke-static {v4, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@17
    move-result v7

    #@18
    .line 4126
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1b
    .line 4129
    :cond_0
    const-string/jumbo v6, "min_height"

    #@1e
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 4130
    .local v3, "minHeightString":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@24
    .line 4131
    const-string/jumbo v6, "appWidgetMinHeight"

    #@27
    .line 4132
    invoke-static {v3, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@2a
    move-result v7

    #@2b
    .line 4131
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2e
    .line 4134
    :cond_1
    const-string/jumbo v6, "max_width"

    #@31
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    .line 4135
    .local v2, "maxWidthString":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@37
    .line 4136
    const-string/jumbo v6, "appWidgetMaxWidth"

    #@3a
    .line 4137
    invoke-static {v2, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@3d
    move-result v7

    #@3e
    .line 4136
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@41
    .line 4139
    :cond_2
    const-string/jumbo v6, "max_height"

    #@44
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    .line 4140
    .local v1, "maxHeightString":Ljava/lang/String;
    if-eqz v1, :cond_3

    #@4a
    .line 4141
    const-string/jumbo v6, "appWidgetMaxHeight"

    #@4d
    .line 4142
    invoke-static {v1, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@50
    move-result v7

    #@51
    .line 4141
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@54
    .line 4144
    :cond_3
    const-string/jumbo v6, "host_category"

    #@57
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    .line 4145
    .local v0, "categoryString":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@5d
    .line 4146
    const-string/jumbo v6, "appWidgetCategory"

    #@60
    .line 4147
    invoke-static {v0, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@63
    move-result v7

    #@64
    .line 4146
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@67
    .line 4149
    :cond_4
    return-object v5
.end method

.method private pruneWidgetStateLocked(Ljava/lang/String;I)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 4087
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    #@2
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_3

    #@8
    .line 4089
    const-string/jumbo v4, "BackupRestoreController"

    #@b
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "pruning widget state for restoring package "

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 4091
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@24
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v4

    #@2c
    add-int/lit8 v1, v4, -0x1

    #@2e
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@30
    .line 4092
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@32
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@3c
    .line 4094
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v0, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@3e
    .line 4095
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@40
    .line 4097
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-static {v0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->-wrap0(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z

    #@43
    move-result v4

    #@44
    if-nez v4, :cond_0

    #@46
    .line 4098
    if-eqz v2, :cond_1

    #@48
    invoke-virtual {v2, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    #@4b
    move-result v4

    #@4c
    .line 4097
    if-eqz v4, :cond_1

    #@4e
    .line 4102
    :cond_0
    iget-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@53
    .line 4103
    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@58
    .line 4104
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@5a
    invoke-static {v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap18(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@5d
    .line 4105
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@5f
    invoke-virtual {v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@62
    .line 4091
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@64
    goto :goto_0

    #@65
    .line 4108
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_2
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    #@67
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@6a
    .line 4086
    .end local v1    # "i":I
    :goto_1
    return-void

    #@6b
    .line 4111
    :cond_3
    const-string/jumbo v4, "BackupRestoreController"

    #@6e
    new-instance v5, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v6, "already pruned "

    #@76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v5

    #@7e
    const-string/jumbo v6, ", continuing normally"

    #@81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v5

    #@89
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8c
    goto :goto_1
.end method

.method private sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p3, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p4, "oldIds"    # [I
    .param p5, "newIds"    # [I
    .param p6, "userHandle"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4067
    new-instance v0, Landroid/content/Intent;

    #@3
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@6
    .line 4068
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "appWidgetOldIds"

    #@9
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    #@c
    .line 4069
    const-string/jumbo v1, "appWidgetIds"

    #@f
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    #@12
    .line 4070
    if-eqz p2, :cond_0

    #@14
    .line 4071
    iget-object v1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@16
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1b
    .line 4072
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@1d
    invoke-static {v1, v0, p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap14(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@20
    .line 4074
    :cond_0
    if-eqz p3, :cond_1

    #@22
    .line 4075
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@25
    .line 4076
    iget-object v1, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@27
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@2c
    .line 4077
    const-string/jumbo v1, "hostId"

    #@2f
    iget-object v2, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@31
    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    #@33
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@36
    .line 4078
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@38
    invoke-static {v1, v0, p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap14(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@3b
    .line 4066
    :cond_1
    return-void
.end method

.method private stashHostRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;II)V
    .locals 4
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "oldId"    # I
    .param p3, "newId"    # I

    #@0
    .prologue
    .line 4049
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    .line 4050
    .local v0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    if-nez v0, :cond_1

    #@a
    .line 4051
    new-instance v0, Ljava/util/ArrayList;

    #@c
    .end local v0    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 4052
    .restart local v0    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    #@11
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 4062
    :cond_0
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    #@16
    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;II)V

    #@19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 4048
    return-void

    #@1d
    .line 4054
    :cond_1
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->alreadyStashed(Ljava/util/ArrayList;II)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_0

    #@23
    .line 4056
    const-string/jumbo v1, "BackupRestoreController"

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "ID remap "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    const-string/jumbo v3, " -> "

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    .line 4057
    const-string/jumbo v3, " already stashed for "

    #@44
    .line 4056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 4059
    return-void
.end method

.method private stashProviderRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;II)V
    .locals 4
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "oldId"    # I
    .param p3, "newId"    # I

    #@0
    .prologue
    .line 4019
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    .line 4020
    .local v0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    if-nez v0, :cond_1

    #@a
    .line 4021
    new-instance v0, Ljava/util/ArrayList;

    #@c
    .end local v0    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 4022
    .restart local v0    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    #@11
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 4033
    :cond_0
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    #@16
    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;II)V

    #@19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 4018
    return-void

    #@1d
    .line 4025
    :cond_1
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->alreadyStashed(Ljava/util/ArrayList;II)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_0

    #@23
    .line 4027
    const-string/jumbo v1, "BackupRestoreController"

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "ID remap "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    const-string/jumbo v3, " -> "

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    .line 4028
    const-string/jumbo v3, " already stashed for "

    #@44
    .line 4027
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 4030
    return-void
.end method


# virtual methods
.method public getWidgetParticipants(I)Ljava/util/List;
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3605
    const-string/jumbo v5, "BackupRestoreController"

    #@3
    new-instance v6, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v7, "Getting widget participants for user: "

    #@b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v6

    #@13
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v6

    #@17
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 3608
    new-instance v2, Ljava/util/HashSet;

    #@1c
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@1f
    .line 3609
    .local v2, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@21
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get4(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    #@24
    move-result-object v6

    #@25
    monitor-enter v6

    #@26
    .line 3610
    :try_start_0
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@28
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v0

    #@30
    .line 3611
    .local v0, "N":I
    const/4 v1, 0x0

    #@31
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@33
    .line 3612
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@35
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v4

    #@3d
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@3f
    .line 3615
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z

    #@42
    move-result v5

    #@43
    if-nez v5, :cond_1

    #@45
    .line 3611
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_0

    #@48
    .line 3619
    :cond_1
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@4a
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@4c
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@4e
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@51
    .line 3620
    iget-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@53
    .line 3621
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v3, :cond_0

    #@55
    .line 3622
    iget-object v5, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@57
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@59
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    goto :goto_1

    #@61
    .line 3609
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_0
    move-exception v5

    #@62
    monitor-exit v6

    #@63
    throw v5

    #@64
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_2
    monitor-exit v6

    #@65
    .line 3626
    new-instance v5, Ljava/util/ArrayList;

    #@67
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@6a
    return-object v5
.end method

.method public getWidgetState(Ljava/lang/String;I)[B
    .locals 13
    .param p1, "backedupPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 3631
    const-string/jumbo v9, "BackupRestoreController"

    #@3
    new-instance v10, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v11, "Getting widget state for user: "

    #@b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v10

    #@f
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v10

    #@13
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v10

    #@17
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 3634
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    #@1c
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@1f
    .line 3635
    .local v7, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@21
    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get4(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    #@24
    move-result-object v10

    #@25
    monitor-enter v10

    #@26
    .line 3638
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->packageNeedsWidgetBackupLocked(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    move-result v9

    #@2a
    if-nez v9, :cond_0

    #@2c
    .line 3639
    const/4 v9, 0x0

    #@2d
    monitor-exit v10

    #@2e
    return-object v9

    #@2f
    .line 3643
    :cond_0
    :try_start_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    #@31
    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@34
    .line 3644
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@36
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@39
    move-result-object v9

    #@3a
    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@3d
    .line 3645
    const/4 v9, 0x1

    #@3e
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@41
    move-result-object v9

    #@42
    const/4 v11, 0x0

    #@43
    invoke-interface {v5, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@46
    .line 3646
    const-string/jumbo v9, "ws"

    #@49
    const/4 v11, 0x0

    #@4a
    invoke-interface {v5, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4d
    .line 3647
    const-string/jumbo v9, "version"

    #@50
    const/4 v11, 0x2

    #@51
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@54
    move-result-object v11

    #@55
    const/4 v12, 0x0

    #@56
    invoke-interface {v5, v12, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@59
    .line 3648
    const-string/jumbo v9, "pkg"

    #@5c
    const/4 v11, 0x0

    #@5d
    invoke-interface {v5, v11, v9, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@60
    .line 3653
    const/4 v4, 0x0

    #@61
    .line 3654
    .local v4, "index":I
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@63
    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get7(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@66
    move-result-object v9

    #@67
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@6a
    move-result v0

    #@6b
    .line 3655
    .local v0, "N":I
    const/4 v3, 0x0

    #@6c
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@6e
    .line 3656
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@70
    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get7(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@77
    move-result-object v6

    #@78
    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@7a
    .line 3658
    .local v6, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v9, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@7c
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    #@7f
    move-result v9

    #@80
    if-nez v9, :cond_2

    #@82
    .line 3659
    invoke-virtual {v6, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    #@85
    move-result v9

    #@86
    if-nez v9, :cond_1

    #@88
    .line 3660
    invoke-virtual {v6, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->hostedByPackageForUser(Ljava/lang/String;I)Z

    #@8b
    move-result v9

    #@8c
    .line 3658
    if-eqz v9, :cond_2

    #@8e
    .line 3661
    :cond_1
    iput v4, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    #@90
    .line 3662
    invoke-static {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap17(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@93
    .line 3663
    add-int/lit8 v4, v4, 0x1

    #@95
    .line 3655
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@97
    goto :goto_0

    #@98
    .line 3667
    .end local v6    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_3
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@9a
    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get3(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@9d
    move-result-object v9

    #@9e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@a1
    move-result v0

    #@a2
    .line 3668
    const/4 v4, 0x0

    #@a3
    .line 3669
    const/4 v3, 0x0

    #@a4
    :goto_1
    if-ge v3, v0, :cond_6

    #@a6
    .line 3670
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@a8
    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get3(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@ab
    move-result-object v9

    #@ac
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@af
    move-result-object v2

    #@b0
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@b2
    .line 3672
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v9, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@b4
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    #@b7
    move-result v9

    #@b8
    if-nez v9, :cond_5

    #@ba
    .line 3673
    invoke-virtual {v2, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    #@bd
    move-result v9

    #@be
    if-nez v9, :cond_4

    #@c0
    .line 3674
    invoke-static {v2, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->-wrap0(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z

    #@c3
    move-result v9

    #@c4
    .line 3672
    if-eqz v9, :cond_5

    #@c6
    .line 3675
    :cond_4
    iput v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    #@c8
    .line 3676
    invoke-static {v5, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap16(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    #@cb
    .line 3677
    add-int/lit8 v4, v4, 0x1

    #@cd
    .line 3669
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@cf
    goto :goto_1

    #@d0
    .line 3683
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_6
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@d2
    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@d5
    move-result-object v9

    #@d6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@d9
    move-result v0

    #@da
    .line 3684
    const/4 v3, 0x0

    #@db
    :goto_2
    if-ge v3, v0, :cond_9

    #@dd
    .line 3685
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@df
    invoke-static {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get10(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@e2
    move-result-object v9

    #@e3
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e6
    move-result-object v8

    #@e7
    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@e9
    .line 3687
    .local v8, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v6, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@eb
    .line 3688
    .restart local v6    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@ed
    invoke-virtual {v9, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    #@f0
    move-result v9

    #@f1
    if-nez v9, :cond_7

    #@f3
    .line 3689
    if-eqz v6, :cond_8

    #@f5
    .line 3690
    invoke-virtual {v6, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    #@f8
    move-result v9

    #@f9
    .line 3688
    if-eqz v9, :cond_8

    #@fb
    .line 3691
    :cond_7
    invoke-static {v5, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap15(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@fe
    .line 3684
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@100
    goto :goto_2

    #@101
    .line 3695
    .end local v6    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v8    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_9
    const-string/jumbo v9, "ws"

    #@104
    const/4 v11, 0x0

    #@105
    invoke-interface {v5, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@108
    .line 3696
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10b
    monitor-exit v10

    #@10c
    .line 3703
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@10f
    move-result-object v9

    #@110
    return-object v9

    #@111
    .line 3697
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    #@112
    .line 3698
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v9, "BackupRestoreController"

    #@115
    new-instance v11, Ljava/lang/StringBuilder;

    #@117
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@11a
    const-string/jumbo v12, "Unable to save widget state for "

    #@11d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v11

    #@121
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v11

    #@125
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v11

    #@129
    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12c
    .line 3699
    const/4 v9, 0x0

    #@12d
    monitor-exit v10

    #@12e
    return-object v9

    #@12f
    .line 3635
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    #@130
    monitor-exit v10

    #@131
    throw v9
.end method

.method public restoreFinished(I)V
    .locals 28
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3881
    const-string/jumbo v2, "BackupRestoreController"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "restoreFinished for "

    #@b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    move/from16 v0, p1

    #@11
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 3884
    new-instance v8, Landroid/os/UserHandle;

    #@1e
    move/from16 v0, p1

    #@20
    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@23
    .line 3885
    .local v8, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    #@25
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@27
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get4(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    #@2a
    move-result-object v27

    #@2b
    monitor-enter v27

    #@2c
    .line 3888
    :try_start_0
    move-object/from16 v0, p0

    #@2e
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    #@30
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@33
    move-result-object v24

    #@34
    .line 3889
    .local v24, "providerEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v19

    #@38
    .local v19, "e$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_3

    #@3e
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v18

    #@42
    check-cast v18, Ljava/util/Map$Entry;

    #@44
    .line 3891
    .local v18, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@47
    move-result-object v4

    #@48
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@4a
    .line 3892
    .local v4, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4d
    move-result-object v26

    #@4e
    check-cast v26, Ljava/util/ArrayList;

    #@50
    .line 3893
    .local v26, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    move-object/from16 v0, p0

    #@52
    move-object/from16 v1, v26

    #@54
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->countPendingUpdates(Ljava/util/ArrayList;)I

    #@57
    move-result v23

    #@58
    .line 3895
    .local v23, "pending":I
    const-string/jumbo v2, "BackupRestoreController"

    #@5b
    new-instance v3, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v5, "Provider "

    #@63
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    const-string/jumbo v5, " pending: "

    #@6e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v3

    #@72
    move/from16 v0, v23

    #@74
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    .line 3897
    if-lez v23, :cond_0

    #@81
    .line 3898
    move/from16 v0, v23

    #@83
    new-array v6, v0, [I

    #@85
    .line 3899
    .local v6, "oldIds":[I
    move/from16 v0, v23

    #@87
    new-array v7, v0, [I

    #@89
    .line 3900
    .local v7, "newIds":[I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    #@8c
    move-result v16

    #@8d
    .line 3901
    .local v16, "N":I
    const/16 v22, 0x0

    #@8f
    .line 3902
    .local v22, "nextPending":I
    const/16 v21, 0x0

    #@91
    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    #@93
    move/from16 v1, v16

    #@95
    if-ge v0, v1, :cond_2

    #@97
    .line 3903
    move-object/from16 v0, v26

    #@99
    move/from16 v1, v21

    #@9b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9e
    move-result-object v25

    #@9f
    check-cast v25, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    #@a1
    .line 3904
    .local v25, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    move-object/from16 v0, v25

    #@a3
    iget-boolean v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    #@a5
    if-nez v2, :cond_1

    #@a7
    .line 3905
    const/4 v2, 0x1

    #@a8
    move-object/from16 v0, v25

    #@aa
    iput-boolean v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    #@ac
    .line 3906
    move-object/from16 v0, v25

    #@ae
    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    #@b0
    aput v2, v6, v22

    #@b2
    .line 3907
    move-object/from16 v0, v25

    #@b4
    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    #@b6
    aput v2, v7, v22

    #@b8
    .line 3908
    add-int/lit8 v22, v22, 0x1

    #@ba
    .line 3910
    const-string/jumbo v2, "BackupRestoreController"

    #@bd
    new-instance v3, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v5, "   "

    #@c5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v3

    #@c9
    move-object/from16 v0, v25

    #@cb
    iget v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    #@cd
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v3

    #@d1
    const-string/jumbo v5, " => "

    #@d4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v3

    #@d8
    move-object/from16 v0, v25

    #@da
    iget v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    #@dc
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@df
    move-result-object v3

    #@e0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v3

    #@e4
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e7
    .line 3902
    :cond_1
    add-int/lit8 v21, v21, 0x1

    #@e9
    goto :goto_1

    #@ea
    .line 3915
    .end local v25    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_2
    const-string/jumbo v3, "android.appwidget.action.APPWIDGET_RESTORED"

    #@ed
    .line 3916
    const/4 v5, 0x0

    #@ee
    move-object/from16 v2, p0

    #@f0
    .line 3914
    invoke-direct/range {v2 .. v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f3
    goto/16 :goto_0

    #@f5
    .line 3885
    .end local v4    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v6    # "oldIds":[I
    .end local v7    # "newIds":[I
    .end local v16    # "N":I
    .end local v18    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    .end local v19    # "e$iterator":Ljava/util/Iterator;
    .end local v21    # "i":I
    .end local v22    # "nextPending":I
    .end local v23    # "pending":I
    .end local v24    # "providerEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    .end local v26    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    :catchall_0
    move-exception v2

    #@f6
    monitor-exit v27

    #@f7
    throw v2

    #@f8
    .line 3922
    .restart local v19    # "e$iterator":Ljava/util/Iterator;
    .restart local v24    # "providerEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    #@fa
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    #@fc
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@ff
    move-result-object v20

    #@100
    .line 3923
    .local v20, "hostEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@103
    move-result-object v19

    #@104
    :cond_4
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@107
    move-result v2

    #@108
    if-eqz v2, :cond_7

    #@10a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10d
    move-result-object v17

    #@10e
    check-cast v17, Ljava/util/Map$Entry;

    #@110
    .line 3924
    .local v17, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@113
    move-result-object v12

    #@114
    check-cast v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@116
    .line 3925
    .local v12, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v2, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@118
    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    #@11a
    const/4 v3, -0x1

    #@11b
    if-eq v2, v3, :cond_4

    #@11d
    .line 3926
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@120
    move-result-object v26

    #@121
    check-cast v26, Ljava/util/ArrayList;

    #@123
    .line 3927
    .restart local v26    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    move-object/from16 v0, p0

    #@125
    move-object/from16 v1, v26

    #@127
    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->countPendingUpdates(Ljava/util/ArrayList;)I

    #@12a
    move-result v23

    #@12b
    .line 3929
    .restart local v23    # "pending":I
    const-string/jumbo v2, "BackupRestoreController"

    #@12e
    new-instance v3, Ljava/lang/StringBuilder;

    #@130
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@133
    const-string/jumbo v5, "Host "

    #@136
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v3

    #@13a
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v3

    #@13e
    const-string/jumbo v5, " pending: "

    #@141
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v3

    #@145
    move/from16 v0, v23

    #@147
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v3

    #@14b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14e
    move-result-object v3

    #@14f
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@152
    .line 3931
    if-lez v23, :cond_4

    #@154
    .line 3932
    move/from16 v0, v23

    #@156
    new-array v6, v0, [I

    #@158
    .line 3933
    .restart local v6    # "oldIds":[I
    move/from16 v0, v23

    #@15a
    new-array v7, v0, [I

    #@15c
    .line 3934
    .restart local v7    # "newIds":[I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    #@15f
    move-result v16

    #@160
    .line 3935
    .restart local v16    # "N":I
    const/16 v22, 0x0

    #@162
    .line 3936
    .restart local v22    # "nextPending":I
    const/16 v21, 0x0

    #@164
    .restart local v21    # "i":I
    :goto_3
    move/from16 v0, v21

    #@166
    move/from16 v1, v16

    #@168
    if-ge v0, v1, :cond_6

    #@16a
    .line 3937
    move-object/from16 v0, v26

    #@16c
    move/from16 v1, v21

    #@16e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@171
    move-result-object v25

    #@172
    check-cast v25, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    #@174
    .line 3938
    .restart local v25    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    move-object/from16 v0, v25

    #@176
    iget-boolean v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    #@178
    if-nez v2, :cond_5

    #@17a
    .line 3939
    const/4 v2, 0x1

    #@17b
    move-object/from16 v0, v25

    #@17d
    iput-boolean v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    #@17f
    .line 3940
    move-object/from16 v0, v25

    #@181
    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    #@183
    aput v2, v6, v22

    #@185
    .line 3941
    move-object/from16 v0, v25

    #@187
    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    #@189
    aput v2, v7, v22

    #@18b
    .line 3942
    add-int/lit8 v22, v22, 0x1

    #@18d
    .line 3944
    const-string/jumbo v2, "BackupRestoreController"

    #@190
    new-instance v3, Ljava/lang/StringBuilder;

    #@192
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@195
    const-string/jumbo v5, "   "

    #@198
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v3

    #@19c
    move-object/from16 v0, v25

    #@19e
    iget v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    #@1a0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v3

    #@1a4
    const-string/jumbo v5, " => "

    #@1a7
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v3

    #@1ab
    move-object/from16 v0, v25

    #@1ad
    iget v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    #@1af
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v3

    #@1b3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b6
    move-result-object v3

    #@1b7
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1ba
    .line 3936
    :cond_5
    add-int/lit8 v21, v21, 0x1

    #@1bc
    goto :goto_3

    #@1bd
    .line 3949
    .end local v25    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_6
    const-string/jumbo v10, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    #@1c0
    .line 3950
    const/4 v11, 0x0

    #@1c1
    move-object/from16 v9, p0

    #@1c3
    move-object v13, v6

    #@1c4
    move-object v14, v7

    #@1c5
    move-object v15, v8

    #@1c6
    .line 3948
    invoke-direct/range {v9 .. v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c9
    goto/16 :goto_2

    #@1cb
    .end local v6    # "oldIds":[I
    .end local v7    # "newIds":[I
    .end local v12    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v16    # "N":I
    .end local v17    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    .end local v21    # "i":I
    .end local v22    # "nextPending":I
    .end local v23    # "pending":I
    .end local v26    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    :cond_7
    monitor-exit v27

    #@1cc
    .line 3879
    return-void
.end method

.method public restoreStarting(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3708
    const-string/jumbo v0, "BackupRestoreController"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Restore starting for user: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 3711
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@1c
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get4(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    monitor-enter v1

    #@21
    .line 3715
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    #@23
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    #@26
    .line 3716
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    #@28
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@2b
    .line 3717
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    #@2d
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v1

    #@31
    .line 3706
    return-void

    #@32
    .line 3711
    :catchall_0
    move-exception v0

    #@33
    monitor-exit v1

    #@34
    throw v0
.end method

.method public restoreWidgetState(Ljava/lang/String;[BI)V
    .locals 31
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restoredState"    # [B
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 3723
    const-string/jumbo v27, "BackupRestoreController"

    #@3
    new-instance v28, Ljava/lang/StringBuilder;

    #@5
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v29, "Restoring widget state for user:"

    #@b
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v28

    #@f
    move-object/from16 v0, v28

    #@11
    move/from16 v1, p3

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v28

    #@17
    .line 3724
    const-string/jumbo v29, " package: "

    #@1a
    .line 3723
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v28

    #@1e
    move-object/from16 v0, v28

    #@20
    move-object/from16 v1, p1

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v28

    #@26
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v28

    #@2a
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 3727
    new-instance v20, Ljava/io/ByteArrayInputStream;

    #@2f
    move-object/from16 v0, v20

    #@31
    move-object/from16 v1, p2

    #@33
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@36
    .line 3730
    .local v20, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v19, Ljava/util/ArrayList;

    #@38
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@3b
    .line 3733
    .local v19, "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    new-instance v17, Ljava/util/ArrayList;

    #@3d
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    #@40
    .line 3735
    .local v17, "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@43
    move-result-object v14

    #@44
    .line 3736
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v27, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@46
    invoke-virtual/range {v27 .. v27}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@49
    move-result-object v27

    #@4a
    move-object/from16 v0, v20

    #@4c
    move-object/from16 v1, v27

    #@4e
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@51
    .line 3738
    move-object/from16 v0, p0

    #@53
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@55
    move-object/from16 v27, v0

    #@57
    invoke-static/range {v27 .. v27}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get4(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    #@5a
    move-result-object v28

    #@5b
    monitor-enter v28
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@5c
    .line 3741
    :cond_0
    :try_start_1
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@5f
    move-result v22

    #@60
    .line 3742
    .local v22, "type":I
    const/16 v27, 0x2

    #@62
    move/from16 v0, v22

    #@64
    move/from16 v1, v27

    #@66
    if-ne v0, v1, :cond_4

    #@68
    .line 3743
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@6b
    move-result-object v21

    #@6c
    .line 3744
    .local v21, "tag":Ljava/lang/String;
    const-string/jumbo v27, "ws"

    #@6f
    move-object/from16 v0, v27

    #@71
    move-object/from16 v1, v21

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v27

    #@77
    if-eqz v27, :cond_2

    #@79
    .line 3745
    const-string/jumbo v27, "version"

    #@7c
    const/16 v29, 0x0

    #@7e
    move-object/from16 v0, v29

    #@80
    move-object/from16 v1, v27

    #@82
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@85
    move-result-object v24

    #@86
    .line 3747
    .local v24, "version":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@89
    move-result v25

    #@8a
    .line 3748
    .local v25, "versionNumber":I
    const/16 v27, 0x2

    #@8c
    move/from16 v0, v25

    #@8e
    move/from16 v1, v27

    #@90
    if-le v0, v1, :cond_1

    #@92
    .line 3749
    const-string/jumbo v27, "BackupRestoreController"

    #@95
    new-instance v29, Ljava/lang/StringBuilder;

    #@97
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v30, "Unable to process state version "

    #@9d
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v29

    #@a1
    move-object/from16 v0, v29

    #@a3
    move-object/from16 v1, v24

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v29

    #@a9
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v29

    #@ad
    move-object/from16 v0, v27

    #@af
    move-object/from16 v1, v29

    #@b1
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b4
    :try_start_2
    monitor-exit v28
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@b5
    .line 3872
    move-object/from16 v0, p0

    #@b7
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@b9
    move-object/from16 v27, v0

    #@bb
    move-object/from16 v0, v27

    #@bd
    move/from16 v1, p3

    #@bf
    invoke-static {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap12(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    #@c2
    .line 3750
    return-void

    #@c3
    .line 3754
    :cond_1
    :try_start_3
    const-string/jumbo v27, "pkg"

    #@c6
    const/16 v29, 0x0

    #@c8
    move-object/from16 v0, v29

    #@ca
    move-object/from16 v1, v27

    #@cc
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@cf
    move-result-object v15

    #@d0
    .line 3755
    .local v15, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    #@d2
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v27

    #@d6
    if-nez v27, :cond_4

    #@d8
    .line 3756
    const-string/jumbo v27, "BackupRestoreController"

    #@db
    const-string/jumbo v29, "Package mismatch in ws"

    #@de
    move-object/from16 v0, v27

    #@e0
    move-object/from16 v1, v29

    #@e2
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e5
    :try_start_4
    monitor-exit v28
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@e6
    .line 3872
    move-object/from16 v0, p0

    #@e8
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@ea
    move-object/from16 v27, v0

    #@ec
    move-object/from16 v0, v27

    #@ee
    move/from16 v1, p3

    #@f0
    invoke-static {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap12(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    #@f3
    .line 3757
    return-void

    #@f4
    .line 3759
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v24    # "version":Ljava/lang/String;
    .end local v25    # "versionNumber":I
    :cond_2
    :try_start_5
    const-string/jumbo v27, "p"

    #@f7
    move-object/from16 v0, v27

    #@f9
    move-object/from16 v1, v21

    #@fb
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fe
    move-result v27

    #@ff
    if-eqz v27, :cond_5

    #@101
    .line 3760
    const-string/jumbo v27, "pkg"

    #@104
    const/16 v29, 0x0

    #@106
    move-object/from16 v0, v29

    #@108
    move-object/from16 v1, v27

    #@10a
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10d
    move-result-object v15

    #@10e
    .line 3761
    .restart local v15    # "pkg":Ljava/lang/String;
    const-string/jumbo v27, "cl"

    #@111
    const/16 v29, 0x0

    #@113
    move-object/from16 v0, v29

    #@115
    move-object/from16 v1, v27

    #@117
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11a
    move-result-object v4

    #@11b
    .line 3769
    .local v4, "cl":Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    #@11d
    invoke-direct {v5, v15, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@120
    .line 3771
    .local v5, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@122
    move/from16 v1, p3

    #@124
    invoke-direct {v0, v5, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->findProviderLocked(Landroid/content/ComponentName;I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@127
    move-result-object v13

    #@128
    .line 3772
    .local v13, "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v13, :cond_3

    #@12a
    .line 3773
    new-instance v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@12c
    .end local v13    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    const/16 v27, 0x0

    #@12e
    move-object/from16 v0, v27

    #@130
    invoke-direct {v13, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    #@133
    .line 3774
    .restart local v13    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    new-instance v27, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@135
    const/16 v29, -0x1

    #@137
    const/16 v30, 0x0

    #@139
    move-object/from16 v0, v27

    #@13b
    move/from16 v1, v29

    #@13d
    move-object/from16 v2, v30

    #@13f
    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)V

    #@142
    move-object/from16 v0, v27

    #@144
    iput-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@146
    .line 3775
    new-instance v27, Landroid/appwidget/AppWidgetProviderInfo;

    #@148
    invoke-direct/range {v27 .. v27}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    #@14b
    move-object/from16 v0, v27

    #@14d
    iput-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@14f
    .line 3776
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@151
    move-object/from16 v27, v0

    #@153
    move-object/from16 v0, v27

    #@155
    iput-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@157
    .line 3777
    const/16 v27, 0x1

    #@159
    move/from16 v0, v27

    #@15b
    iput-boolean v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    #@15d
    .line 3778
    move-object/from16 v0, p0

    #@15f
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@161
    move-object/from16 v27, v0

    #@163
    invoke-static/range {v27 .. v27}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get7(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    #@166
    move-result-object v27

    #@167
    move-object/from16 v0, v27

    #@169
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16c
    .line 3781
    :cond_3
    const-string/jumbo v27, "BackupRestoreController"

    #@16f
    new-instance v29, Ljava/lang/StringBuilder;

    #@171
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v30, "   provider "

    #@177
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v29

    #@17b
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@17d
    move-object/from16 v30, v0

    #@17f
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v29

    #@183
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@186
    move-result-object v29

    #@187
    move-object/from16 v0, v27

    #@189
    move-object/from16 v1, v29

    #@18b
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@18e
    .line 3783
    move-object/from16 v0, v19

    #@190
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@193
    .line 3860
    .end local v4    # "cl":Ljava/lang/String;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v21    # "tag":Ljava/lang/String;
    :cond_4
    :goto_0
    const/16 v27, 0x1

    #@195
    move/from16 v0, v22

    #@197
    move/from16 v1, v27

    #@199
    if-ne v0, v1, :cond_0

    #@19b
    :try_start_6
    monitor-exit v28
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@19c
    .line 3872
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@1a0
    move-object/from16 v27, v0

    #@1a2
    move-object/from16 v0, v27

    #@1a4
    move/from16 v1, p3

    #@1a6
    invoke-static {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap12(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    #@1a9
    .line 3721
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .end local v19    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v22    # "type":I
    :goto_1
    return-void

    #@1aa
    .line 3784
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v19    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v21    # "tag":Ljava/lang/String;
    .restart local v22    # "type":I
    :cond_5
    :try_start_7
    const-string/jumbo v27, "h"

    #@1ad
    move-object/from16 v0, v27

    #@1af
    move-object/from16 v1, v21

    #@1b1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b4
    move-result v27

    #@1b5
    if-eqz v27, :cond_6

    #@1b7
    .line 3788
    const-string/jumbo v27, "pkg"

    #@1ba
    const/16 v29, 0x0

    #@1bc
    move-object/from16 v0, v29

    #@1be
    move-object/from16 v1, v27

    #@1c0
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c3
    move-result-object v15

    #@1c4
    .line 3790
    .restart local v15    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1c6
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@1c8
    move-object/from16 v27, v0

    #@1ca
    move-object/from16 v0, v27

    #@1cc
    move/from16 v1, p3

    #@1ce
    invoke-static {v0, v15, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap1(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I

    #@1d1
    move-result v23

    #@1d2
    .line 3792
    .local v23, "uid":I
    const-string/jumbo v27, "id"

    #@1d5
    const/16 v29, 0x0

    #@1d7
    move-object/from16 v0, v29

    #@1d9
    move-object/from16 v1, v27

    #@1db
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1de
    move-result-object v27

    #@1df
    const/16 v29, 0x10

    #@1e1
    .line 3791
    move-object/from16 v0, v27

    #@1e3
    move/from16 v1, v29

    #@1e5
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@1e8
    move-result v9

    #@1e9
    .line 3794
    .local v9, "hostId":I
    new-instance v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@1eb
    move/from16 v0, v23

    #@1ed
    invoke-direct {v11, v0, v9, v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    #@1f0
    .line 3795
    .local v11, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    move-object/from16 v0, p0

    #@1f2
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@1f4
    move-object/from16 v27, v0

    #@1f6
    move-object/from16 v0, v27

    #@1f8
    invoke-static {v0, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap0(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@1fb
    move-result-object v7

    #@1fc
    .line 3796
    .local v7, "h":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    move-object/from16 v0, v17

    #@1fe
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@201
    .line 3799
    const-string/jumbo v27, "BackupRestoreController"

    #@204
    new-instance v29, Ljava/lang/StringBuilder;

    #@206
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@209
    const-string/jumbo v30, "   host["

    #@20c
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20f
    move-result-object v29

    #@210
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@213
    move-result v30

    #@214
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@217
    move-result-object v29

    #@218
    .line 3800
    const-string/jumbo v30, "]: {"

    #@21b
    .line 3799
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v29

    #@21f
    .line 3800
    iget-object v0, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@221
    move-object/from16 v30, v0

    #@223
    .line 3799
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@226
    move-result-object v29

    #@227
    .line 3800
    const-string/jumbo v30, "}"

    #@22a
    .line 3799
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22d
    move-result-object v29

    #@22e
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@231
    move-result-object v29

    #@232
    move-object/from16 v0, v27

    #@234
    move-object/from16 v1, v29

    #@236
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@239
    goto/16 :goto_0

    #@23b
    .line 3738
    .end local v7    # "h":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v9    # "hostId":I
    .end local v11    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v21    # "tag":Ljava/lang/String;
    .end local v22    # "type":I
    .end local v23    # "uid":I
    :catchall_0
    move-exception v27

    #@23c
    :try_start_8
    monitor-exit v28

    #@23d
    throw v27
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@23e
    .line 3869
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .end local v19    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    :catch_0
    move-exception v6

    #@23f
    .line 3870
    .local v6, "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v27, "BackupRestoreController"

    #@242
    new-instance v28, Ljava/lang/StringBuilder;

    #@244
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@247
    const-string/jumbo v29, "Unable to restore widget state for "

    #@24a
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24d
    move-result-object v28

    #@24e
    move-object/from16 v0, v28

    #@250
    move-object/from16 v1, p1

    #@252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v28

    #@256
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@259
    move-result-object v28

    #@25a
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@25d
    .line 3872
    move-object/from16 v0, p0

    #@25f
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@261
    move-object/from16 v27, v0

    #@263
    move-object/from16 v0, v27

    #@265
    move/from16 v1, p3

    #@267
    invoke-static {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap12(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    #@26a
    goto/16 :goto_1

    #@26c
    .line 3802
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v19    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v21    # "tag":Ljava/lang/String;
    .restart local v22    # "type":I
    :cond_6
    :try_start_a
    const-string/jumbo v27, "g"

    #@26f
    move-object/from16 v0, v27

    #@271
    move-object/from16 v1, v21

    #@273
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@276
    move-result v27

    #@277
    if-eqz v27, :cond_4

    #@279
    .line 3804
    const-string/jumbo v27, "id"

    #@27c
    const/16 v29, 0x0

    #@27e
    move-object/from16 v0, v29

    #@280
    move-object/from16 v1, v27

    #@282
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@285
    move-result-object v27

    #@286
    const/16 v29, 0x10

    #@288
    .line 3803
    move-object/from16 v0, v27

    #@28a
    move/from16 v1, v29

    #@28c
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@28f
    move-result v18

    #@290
    .line 3806
    .local v18, "restoredId":I
    const-string/jumbo v27, "h"

    #@293
    const/16 v29, 0x0

    #@295
    move-object/from16 v0, v29

    #@297
    move-object/from16 v1, v27

    #@299
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@29c
    move-result-object v27

    #@29d
    const/16 v29, 0x10

    #@29f
    .line 3805
    move-object/from16 v0, v27

    #@2a1
    move/from16 v1, v29

    #@2a3
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@2a6
    move-result v10

    #@2a7
    .line 3807
    .local v10, "hostIndex":I
    move-object/from16 v0, v17

    #@2a9
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2ac
    move-result-object v8

    #@2ad
    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@2af
    .line 3808
    .local v8, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const/4 v13, 0x0

    #@2b0
    .line 3809
    .local v13, "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    const-string/jumbo v27, "p"

    #@2b3
    const/16 v29, 0x0

    #@2b5
    move-object/from16 v0, v29

    #@2b7
    move-object/from16 v1, v27

    #@2b9
    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2bc
    move-result-object v16

    #@2bd
    .line 3810
    .local v16, "prov":Ljava/lang/String;
    if-eqz v16, :cond_7

    #@2bf
    .line 3813
    const/16 v27, 0x10

    #@2c1
    move-object/from16 v0, v16

    #@2c3
    move/from16 v1, v27

    #@2c5
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@2c8
    move-result v26

    #@2c9
    .line 3814
    .local v26, "which":I
    move-object/from16 v0, v19

    #@2cb
    move/from16 v1, v26

    #@2cd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d0
    move-result-object v13

    #@2d1
    .end local v13    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    check-cast v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@2d3
    .line 3820
    .end local v26    # "which":I
    :cond_7
    iget-object v0, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    #@2d5
    move-object/from16 v27, v0

    #@2d7
    move-object/from16 v0, v27

    #@2d9
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    #@2db
    move-object/from16 v27, v0

    #@2dd
    move-object/from16 v0, p0

    #@2df
    move-object/from16 v1, v27

    #@2e1
    move/from16 v2, p3

    #@2e3
    invoke-direct {v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->pruneWidgetStateLocked(Ljava/lang/String;I)V

    #@2e6
    .line 3821
    if-eqz v13, :cond_8

    #@2e8
    .line 3822
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    #@2ea
    move-object/from16 v27, v0

    #@2ec
    move-object/from16 v0, v27

    #@2ee
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    #@2f0
    move-object/from16 v27, v0

    #@2f2
    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@2f5
    move-result-object v27

    #@2f6
    move-object/from16 v0, p0

    #@2f8
    move-object/from16 v1, v27

    #@2fa
    move/from16 v2, p3

    #@2fc
    invoke-direct {v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->pruneWidgetStateLocked(Ljava/lang/String;I)V

    #@2ff
    .line 3827
    :cond_8
    move-object/from16 v0, p0

    #@301
    move/from16 v1, v18

    #@303
    invoke-direct {v0, v1, v8, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->findRestoredWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@306
    move-result-object v12

    #@307
    .line 3828
    .local v12, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v12, :cond_a

    #@309
    .line 3829
    new-instance v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@30b
    .end local v12    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/16 v27, 0x0

    #@30d
    move-object/from16 v0, v27

    #@30f
    invoke-direct {v12, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@312
    .line 3830
    .restart local v12    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    move-object/from16 v0, p0

    #@314
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@316
    move-object/from16 v27, v0

    #@318
    move-object/from16 v0, v27

    #@31a
    move/from16 v1, p3

    #@31c
    invoke-static {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap2(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)I

    #@31f
    move-result v27

    #@320
    move/from16 v0, v27

    #@322
    iput v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@324
    .line 3831
    move/from16 v0, v18

    #@326
    iput v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    #@328
    .line 3832
    move-object/from16 v0, p0

    #@32a
    invoke-direct {v0, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->parseWidgetIdOptions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    #@32d
    move-result-object v27

    #@32e
    move-object/from16 v0, v27

    #@330
    iput-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    #@332
    .line 3833
    iput-object v8, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@334
    .line 3834
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@336
    move-object/from16 v27, v0

    #@338
    move-object/from16 v0, v27

    #@33a
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    #@33c
    move-object/from16 v27, v0

    #@33e
    move-object/from16 v0, v27

    #@340
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@343
    .line 3835
    iput-object v13, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@345
    .line 3836
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@347
    move-object/from16 v27, v0

    #@349
    if-eqz v27, :cond_9

    #@34b
    .line 3837
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@34d
    move-object/from16 v27, v0

    #@34f
    move-object/from16 v0, v27

    #@351
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    #@353
    move-object/from16 v27, v0

    #@355
    move-object/from16 v0, v27

    #@357
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@35a
    .line 3840
    :cond_9
    const-string/jumbo v27, "BackupRestoreController"

    #@35d
    new-instance v29, Ljava/lang/StringBuilder;

    #@35f
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@362
    const-string/jumbo v30, "New restored id "

    #@365
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@368
    move-result-object v29

    #@369
    move-object/from16 v0, v29

    #@36b
    move/from16 v1, v18

    #@36d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@370
    move-result-object v29

    #@371
    .line 3841
    const-string/jumbo v30, " now "

    #@374
    .line 3840
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@377
    move-result-object v29

    #@378
    move-object/from16 v0, v29

    #@37a
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37d
    move-result-object v29

    #@37e
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@381
    move-result-object v29

    #@382
    move-object/from16 v0, v27

    #@384
    move-object/from16 v1, v29

    #@386
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@389
    .line 3843
    move-object/from16 v0, p0

    #@38b
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@38d
    move-object/from16 v27, v0

    #@38f
    move-object/from16 v0, v27

    #@391
    invoke-virtual {v0, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    #@394
    .line 3845
    :cond_a
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@396
    move-object/from16 v27, v0

    #@398
    move-object/from16 v0, v27

    #@39a
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    #@39c
    move-object/from16 v27, v0

    #@39e
    if-eqz v27, :cond_b

    #@3a0
    .line 3846
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@3a2
    move-object/from16 v27, v0

    #@3a4
    .line 3847
    iget v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@3a6
    move/from16 v29, v0

    #@3a8
    .line 3846
    move-object/from16 v0, p0

    #@3aa
    move-object/from16 v1, v27

    #@3ac
    move/from16 v2, v18

    #@3ae
    move/from16 v3, v29

    #@3b0
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->stashProviderRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;II)V

    #@3b3
    .line 3851
    :goto_2
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    #@3b5
    move-object/from16 v27, v0

    #@3b7
    iget v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@3b9
    move/from16 v29, v0

    #@3bb
    move-object/from16 v0, p0

    #@3bd
    move-object/from16 v1, v27

    #@3bf
    move/from16 v2, v18

    #@3c1
    move/from16 v3, v29

    #@3c3
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->stashHostRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;II)V

    #@3c6
    .line 3854
    const-string/jumbo v27, "BackupRestoreController"

    #@3c9
    new-instance v29, Ljava/lang/StringBuilder;

    #@3cb
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@3ce
    const-string/jumbo v30, "   instance: "

    #@3d1
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d4
    move-result-object v29

    #@3d5
    move-object/from16 v0, v29

    #@3d7
    move/from16 v1, v18

    #@3d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3dc
    move-result-object v29

    #@3dd
    .line 3855
    const-string/jumbo v30, " -> "

    #@3e0
    .line 3854
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e3
    move-result-object v29

    #@3e4
    .line 3855
    iget v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    #@3e6
    move/from16 v30, v0

    #@3e8
    .line 3854
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3eb
    move-result-object v29

    #@3ec
    .line 3856
    const-string/jumbo v30, " :: p="

    #@3ef
    .line 3854
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f2
    move-result-object v29

    #@3f3
    .line 3856
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    #@3f5
    move-object/from16 v30, v0

    #@3f7
    .line 3854
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3fa
    move-result-object v29

    #@3fb
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3fe
    move-result-object v29

    #@3ff
    move-object/from16 v0, v27

    #@401
    move-object/from16 v1, v29

    #@403
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@406
    goto/16 :goto_0

    #@408
    .line 3849
    :cond_b
    const-string/jumbo v27, "BackupRestoreController"

    #@40b
    new-instance v29, Ljava/lang/StringBuilder;

    #@40d
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@410
    const-string/jumbo v30, "Missing provider for restored widget "

    #@413
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@416
    move-result-object v29

    #@417
    move-object/from16 v0, v29

    #@419
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41c
    move-result-object v29

    #@41d
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@420
    move-result-object v29

    #@421
    move-object/from16 v0, v27

    #@423
    move-object/from16 v1, v29

    #@425
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@428
    goto :goto_2

    #@429
    .line 3871
    .end local v8    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v10    # "hostIndex":I
    .end local v12    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "prov":Ljava/lang/String;
    .end local v17    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .end local v18    # "restoredId":I
    .end local v19    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v21    # "tag":Ljava/lang/String;
    .end local v22    # "type":I
    :catchall_1
    move-exception v27

    #@42a
    .line 3872
    move-object/from16 v0, p0

    #@42c
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@42e
    move-object/from16 v28, v0

    #@430
    move-object/from16 v0, v28

    #@432
    move/from16 v1, p3

    #@434
    invoke-static {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap12(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    #@437
    .line 3871
    throw v27
.end method
