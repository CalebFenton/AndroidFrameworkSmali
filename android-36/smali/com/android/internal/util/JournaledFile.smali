.class public Lcom/android/internal/util/JournaledFile;
.super Ljava/lang/Object;
.source "JournaledFile.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mReal:Ljava/io/File;

.field greylist-max-o mTemp:Ljava/io/File;

.field greylist-max-o mWriting:Z


# direct methods
.method public constructor greylist <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .param p1, "real"    # Ljava/io/File;
    .param p2, "temp"    # Ljava/io/File;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    .line 42
    iput-object p2, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    .line 43
    return-void
.end method


# virtual methods
.method public greylist-max-p chooseForRead()Ljava/io/File;
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 55
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    .line 56
    .local v0, "result":Ljava/io/File;
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 57
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_29

    .line 59
    .end local v0    # "result":Ljava/io/File;
    :cond_18
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 60
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    .line 61
    .restart local v0    # "result":Ljava/io/File;
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 65
    :cond_29
    :goto_29
    return-object v0

    .line 63
    .end local v0    # "result":Ljava/io/File;
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    return-object v0
.end method

.method public greylist-max-p chooseForWrite()Ljava/io/File;
    .registers 3

    .line 78
    iget-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    if-nez v0, :cond_26

    .line 81
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 88
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_12

    .line 91
    goto :goto_13

    .line 89
    :catch_12
    move-exception v0

    .line 94
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 95
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 97
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    .line 98
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    return-object v0

    .line 79
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "uncommitted write already in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-p commit()V
    .registers 3

    .line 106
    iget-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    if-eqz v0, :cond_f

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    .line 110
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 111
    return-void

    .line 107
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no file to commit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-p rollback()V
    .registers 3

    .line 118
    iget-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    if-eqz v0, :cond_d

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    .line 122
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 123
    return-void

    .line 119
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no file to roll back"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
