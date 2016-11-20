.class public Lcom/android/server/AppWidgetBackupBridge;
.super Ljava/lang/Object;
.source "AppWidgetBackupBridge.java"


# static fields
.field private static sAppWidgetService:Lcom/android/server/WidgetBackupProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getWidgetParticipants(I)Ljava/util/List;
    .locals 2
    .param p0, "userId"    # I
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
    const/4 v0, 0x0

    #@1
    .line 35
    sget-object v1, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 36
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    #@7
    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->getWidgetParticipants(I)Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    .line 35
    :cond_0
    return-object v0
.end method

.method public static getWidgetState(Ljava/lang/String;I)[B
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 41
    sget-object v1, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 42
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    #@7
    invoke-interface {v0, p0, p1}, Lcom/android/server/WidgetBackupProvider;->getWidgetState(Ljava/lang/String;I)[B

    #@a
    move-result-object v0

    #@b
    .line 41
    :cond_0
    return-object v0
.end method

.method public static register(Lcom/android/server/WidgetBackupProvider;)V
    .locals 0
    .param p0, "instance"    # Lcom/android/server/WidgetBackupProvider;

    #@0
    .prologue
    .line 31
    sput-object p0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    #@2
    .line 30
    return-void
.end method

.method public static restoreFinished(I)V
    .locals 1
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 59
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 60
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    #@6
    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->restoreFinished(I)V

    #@9
    .line 58
    :cond_0
    return-void
.end method

.method public static restoreStarting(I)V
    .locals 1
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 47
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 48
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    #@6
    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->restoreStarting(I)V

    #@9
    .line 46
    :cond_0
    return-void
.end method

.method public static restoreWidgetState(Ljava/lang/String;[BI)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "restoredState"    # [B
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 53
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 54
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    #@6
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/WidgetBackupProvider;->restoreWidgetState(Ljava/lang/String;[BI)V

    #@9
    .line 52
    :cond_0
    return-void
.end method
