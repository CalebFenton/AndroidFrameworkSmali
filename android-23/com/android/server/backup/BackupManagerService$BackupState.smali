.class final enum Lcom/android/server/backup/BackupManagerService$BackupState;
.super Ljava/lang/Enum;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BackupState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/backup/BackupManagerService$BackupState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/backup/BackupManagerService$BackupState;

.field public static final enum FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

.field public static final enum INITIAL:Lcom/android/server/backup/BackupManagerService$BackupState;

.field public static final enum RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 2387
    new-instance v0, Lcom/android/server/backup/BackupManagerService$BackupState;

    #@5
    const-string/jumbo v1, "INITIAL"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$BackupState;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@d
    .line 2388
    new-instance v0, Lcom/android/server/backup/BackupManagerService$BackupState;

    #@f
    const-string/jumbo v1, "RUNNING_QUEUE"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/server/backup/BackupManagerService$BackupState;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@17
    .line 2389
    new-instance v0, Lcom/android/server/backup/BackupManagerService$BackupState;

    #@19
    const-string/jumbo v1, "FINAL"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/server/backup/BackupManagerService$BackupState;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@21
    .line 2386
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/server/backup/BackupManagerService$BackupState;

    #@24
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->$VALUES:[Lcom/android/server/backup/BackupManagerService$BackupState;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 2386
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/backup/BackupManagerService$BackupState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2386
    const-class v0, Lcom/android/server/backup/BackupManagerService$BackupState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/backup/BackupManagerService$BackupState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/backup/BackupManagerService$BackupState;
    .locals 1

    #@0
    .prologue
    .line 2386
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->$VALUES:[Lcom/android/server/backup/BackupManagerService$BackupState;

    #@2
    return-object v0
.end method
