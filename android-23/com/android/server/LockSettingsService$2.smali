.class Lcom/android/server/LockSettingsService$2;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/LockSettingsStorage$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;

    #@0
    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public initialize(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 103
    const-string/jumbo v1, "ro.lockscreen.disable.default"

    #@4
    .line 102
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    .line 104
    .local v0, "lockScreenDisable":Z
    if-eqz v0, :cond_0

    #@a
    .line 105
    iget-object v1, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    #@c
    invoke-static {v1}, Lcom/android/server/LockSettingsService;->-get3(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "lockscreen.disabled"

    #@13
    const-string/jumbo v3, "1"

    #@16
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    #@19
    .line 100
    :cond_0
    return-void
.end method
