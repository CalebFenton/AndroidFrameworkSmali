.class Landroid/app/backup/FullBackup$BackupSchemeId;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/FullBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupSchemeId"
.end annotation


# instance fields
.field final blacklist mBackupDestination:I

.field final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "backupDestination"    # I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    .line 133
    iput p2, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mBackupDestination:I

    .line 134
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 143
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 144
    return v0

    .line 146
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 149
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/backup/FullBackup$BackupSchemeId;

    .line 150
    .local v2, "that":Landroid/app/backup/FullBackup$BackupSchemeId;
    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget v3, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mBackupDestination:I

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/app/backup/FullBackup$BackupSchemeId;->mBackupDestination:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    .line 150
    :goto_33
    return v0

    .line 147
    .end local v2    # "that":Landroid/app/backup/FullBackup$BackupSchemeId;
    :cond_34
    :goto_34
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 138
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    iget v1, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mBackupDestination:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
