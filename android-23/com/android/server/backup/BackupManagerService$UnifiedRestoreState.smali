.class final enum Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
.super Ljava/lang/Enum;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UnifiedRestoreState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field public static final enum FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field public static final enum INITIAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field public static final enum RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field public static final enum RESTORE_FULL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field public static final enum RESTORE_KEYVALUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field public static final enum RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 7221
    new-instance v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@7
    const-string/jumbo v1, "INITIAL"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@f
    .line 7222
    new-instance v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@11
    const-string/jumbo v1, "RUNNING_QUEUE"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@19
    .line 7223
    new-instance v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@1b
    const-string/jumbo v1, "RESTORE_KEYVALUE"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@23
    .line 7224
    new-instance v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@25
    const-string/jumbo v1, "RESTORE_FULL"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2d
    .line 7225
    new-instance v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2f
    const-string/jumbo v1, "RESTORE_FINISHED"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@37
    .line 7226
    new-instance v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@39
    const-string/jumbo v1, "FINAL"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@42
    .line 7220
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@45
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->$VALUES:[Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 7220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7220
    const-class v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    .locals 1

    #@0
    .prologue
    .line 7220
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->$VALUES:[Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    #@2
    return-object v0
.end method
