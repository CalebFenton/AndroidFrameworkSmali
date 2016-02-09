.class Lcom/android/server/backup/BackupManagerService$FileMetadata;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileMetadata"
.end annotation


# instance fields
.field domain:Ljava/lang/String;

.field installerPackageName:Ljava/lang/String;

.field mode:J

.field mtime:J

.field packageName:Ljava/lang/String;

.field path:Ljava/lang/String;

.field size:J

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v2, 0x2c

    #@2
    .line 4597
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const/16 v1, 0x80

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 4598
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "FileMetadata{"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 4599
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 4600
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 4601
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    const/16 v1, 0x3a

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 4602
    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    #@33
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@36
    .line 4603
    const/16 v1, 0x7d

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    .line 4604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    return-object v1
.end method
