.class public Lcom/android/internal/util/JournaledFile;
.super Ljava/lang/Object;
.source "JournaledFile.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mReal:Ljava/io/File;

.field mTemp:Ljava/io/File;

.field mWriting:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "real"    # Ljava/io/File;
    .param p2, "temp"    # Ljava/io/File;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    #@5
    .line 38
    iput-object p2, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    #@7
    .line 36
    return-void
.end method


# virtual methods
.method public chooseForRead()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 49
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    #@2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 50
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    #@a
    .line 51
    .local v0, "result":Ljava/io/File;
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    #@c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 52
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    #@14
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@17
    .line 60
    :cond_0
    :goto_0
    return-object v0

    #@18
    .line 54
    .end local v0    # "result":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    #@1a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 55
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    #@22
    .line 56
    .restart local v0    # "result":Ljava/io/File;
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    #@24
    iget-object v2, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    #@26
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@29
    goto :goto_0

    #@2a
    .line 58
    .end local v0    # "result":Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    #@2c
    return-object v1
.end method

.method public chooseForWrite()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 72
    iget-boolean v1, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 73
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "uncommitted write already in progress"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    #@f
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    #@17
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 88
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    #@1c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 89
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    #@24
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@27
    .line 91
    :cond_2
    const/4 v1, 0x1

    #@28
    iput-boolean v1, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    #@2a
    .line 92
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    #@2c
    return-object v1

    #@2d
    .line 83
    :catch_0
    move-exception v0

    #@2e
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public commit()V
    .locals 2

    #@0
    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "no file to commit"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 102
    :cond_0
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    #@10
    .line 103
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    #@12
    iget-object v1, p0, Lcom/android/internal/util/JournaledFile;->mReal:Ljava/io/File;

    #@14
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@17
    .line 98
    return-void
.end method

.method public rollback()V
    .locals 2

    #@0
    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "no file to roll back"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 113
    :cond_0
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/internal/util/JournaledFile;->mWriting:Z

    #@10
    .line 114
    iget-object v0, p0, Lcom/android/internal/util/JournaledFile;->mTemp:Ljava/io/File;

    #@12
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@15
    .line 109
    return-void
.end method
