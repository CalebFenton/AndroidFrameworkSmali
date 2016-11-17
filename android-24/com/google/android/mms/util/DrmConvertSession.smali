.class public Lcom/google/android/mms/util/DrmConvertSession;
.super Ljava/lang/Object;
.source "DrmConvertSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmConvertSession"


# instance fields
.field private mConvertSessionId:I

.field private mDrmClient:Landroid/drm/DrmManagerClient;


# direct methods
.method private constructor <init>(Landroid/drm/DrmManagerClient;I)V
    .locals 0
    .param p1, "drmClient"    # Landroid/drm/DrmManagerClient;
    .param p2, "convertSessionId"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    #@5
    .line 37
    iput p2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    #@7
    .line 35
    return-void
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 48
    const/4 v1, 0x0

    #@2
    .line 49
    .local v1, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v0, -0x1

    #@3
    .line 50
    .local v0, "convertSessionId":I
    if-eqz p0, :cond_0

    #@5
    if-eqz p1, :cond_0

    #@7
    const-string/jumbo v5, ""

    #@a
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_2

    #@10
    .line 69
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    #@12
    if-gez v0, :cond_3

    #@14
    .line 70
    :cond_1
    return-object v8

    #@15
    .line 52
    .restart local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    :cond_2
    :try_start_0
    new-instance v2, Landroid/drm/DrmManagerClient;

    #@17
    invoke-direct {v2, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5

    #@1a
    .line 54
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .local v2, "drmClient":Landroid/drm/DrmManagerClient;
    :try_start_1
    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@1d
    move-result v0

    #@1e
    :goto_1
    move-object v1, v2

    #@1f
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    .local v1, "drmClient":Landroid/drm/DrmManagerClient;
    goto :goto_0

    #@20
    .line 58
    .end local v1    # "drmClient":Landroid/drm/DrmManagerClient;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :catch_0
    move-exception v4

    #@21
    .line 59
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string/jumbo v5, "DrmConvertSession"

    #@24
    const-string/jumbo v6, "Could not access Open DrmFramework."

    #@27
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    #@2a
    goto :goto_1

    #@2b
    .line 61
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    #@2c
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    move-object v1, v2

    #@2d
    .line 62
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :goto_2
    const-string/jumbo v5, "DrmConvertSession"

    #@30
    .line 63
    const-string/jumbo v6, "DrmManagerClient instance could not be created, context is Illegal."

    #@33
    .line 62
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    goto :goto_0

    #@37
    .line 55
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :catch_2
    move-exception v3

    #@38
    .line 56
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string/jumbo v5, "DrmConvertSession"

    #@3b
    new-instance v6, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v7, "Conversion of Mimetype: "

    #@43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    .line 57
    const-string/jumbo v7, " is not supported."

    #@4e
    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v6

    #@56
    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    #@59
    goto :goto_1

    #@5a
    .line 64
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v4

    #@5b
    .restart local v4    # "e":Ljava/lang/IllegalStateException;
    move-object v1, v2

    #@5c
    .line 65
    .end local v2    # "drmClient":Landroid/drm/DrmManagerClient;
    :goto_3
    const-string/jumbo v5, "DrmConvertSession"

    #@5f
    const-string/jumbo v6, "DrmManagerClient didn\'t initialize properly."

    #@62
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    goto :goto_0

    #@66
    .line 72
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    new-instance v5, Lcom/google/android/mms/util/DrmConvertSession;

    #@68
    invoke-direct {v5, v1, v0}, Lcom/google/android/mms/util/DrmConvertSession;-><init>(Landroid/drm/DrmManagerClient;I)V

    #@6b
    return-object v5

    #@6c
    .line 61
    .local v1, "drmClient":Landroid/drm/DrmManagerClient;
    :catch_4
    move-exception v3

    #@6d
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    #@6e
    .line 64
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v4

    #@6f
    .restart local v4    # "e":Ljava/lang/IllegalStateException;
    goto :goto_3
.end method


# virtual methods
.method public close(Ljava/lang/String;)I
    .locals 13
    .param p1, "filename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 125
    const/4 v0, 0x0

    #@1
    .line 126
    .local v0, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    const/16 v6, 0x1eb

    #@3
    .line 127
    .local v6, "result":I
    iget-object v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    #@5
    if-eqz v9, :cond_1

    #@7
    iget v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    #@9
    if-ltz v9, :cond_1

    #@b
    .line 129
    :try_start_0
    iget-object v9, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    #@d
    iget v10, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    #@f
    invoke-virtual {v9, v10}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    #@12
    move-result-object v0

    #@13
    .line 130
    .local v0, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    if-eqz v0, :cond_0

    #@15
    .line 131
    iget v9, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    #@17
    const/4 v10, 0x1

    #@18
    if-eq v9, v10, :cond_2

    #@1a
    .line 133
    :cond_0
    const/16 v6, 0x196

    #@1c
    .line 170
    .end local v0    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :cond_1
    :goto_0
    return v6

    #@1d
    .line 132
    .restart local v0    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :cond_2
    iget-object v9, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    #@1f
    if-eqz v9, :cond_0

    #@21
    .line 135
    const/4 v7, 0x0

    #@22
    .line 137
    .local v7, "rndAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v8, Ljava/io/RandomAccessFile;

    #@24
    const-string/jumbo v9, "rw"

    #@27
    invoke-direct {v8, p1, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 138
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .local v8, "rndAccessFile":Ljava/io/RandomAccessFile;
    :try_start_2
    iget v9, v0, Landroid/drm/DrmConvertedStatus;->offset:I

    #@2c
    int-to-long v10, v9

    #@2d
    invoke-virtual {v8, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    #@30
    .line 139
    iget-object v9, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    #@32
    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    .line 140
    const/16 v6, 0xc8

    #@37
    .line 154
    if-eqz v8, :cond_1

    #@39
    .line 156
    :try_start_3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    #@3c
    goto :goto_0

    #@3d
    .line 157
    :catch_0
    move-exception v2

    #@3e
    .line 158
    .local v2, "e":Ljava/io/IOException;
    const/16 v6, 0x1ec

    #@40
    .line 159
    :try_start_4
    const-string/jumbo v9, "DrmConvertSession"

    #@43
    new-instance v10, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v11, "Failed to close File:"

    #@4b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v10

    #@4f
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v10

    #@53
    .line 160
    const-string/jumbo v11, "."

    #@56
    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v10

    #@5a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v10

    #@5e
    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    #@61
    goto :goto_0

    #@62
    .line 165
    .end local v0    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v4

    #@63
    .line 166
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v9, "DrmConvertSession"

    #@66
    new-instance v10, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v11, "Could not close convertsession. Convertsession: "

    #@6e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v10

    #@72
    .line 167
    iget v11, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    #@74
    .line 166
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@77
    move-result-object v10

    #@78
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v10

    #@7c
    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7f
    goto :goto_0

    #@80
    .line 150
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v5

    #@81
    .line 151
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .local v5, "e":Ljava/lang/SecurityException;
    :goto_1
    :try_start_5
    const-string/jumbo v9, "DrmConvertSession"

    #@84
    new-instance v10, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v11, "Access to File: "

    #@8c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v10

    #@90
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v10

    #@94
    .line 152
    const-string/jumbo v11, " was denied denied by SecurityManager."

    #@97
    .line 151
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v10

    #@9b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v10

    #@9f
    invoke-static {v9, v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@a2
    .line 154
    if-eqz v7, :cond_1

    #@a4
    .line 156
    :try_start_6
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    #@a7
    goto/16 :goto_0

    #@a9
    .line 157
    :catch_3
    move-exception v2

    #@aa
    .line 158
    .restart local v2    # "e":Ljava/io/IOException;
    const/16 v6, 0x1ec

    #@ac
    .line 159
    :try_start_7
    const-string/jumbo v9, "DrmConvertSession"

    #@af
    new-instance v10, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v11, "Failed to close File:"

    #@b7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v10

    #@bb
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v10

    #@bf
    .line 160
    const-string/jumbo v11, "."

    #@c2
    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v10

    #@c6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v10

    #@ca
    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1

    #@cd
    goto/16 :goto_0

    #@cf
    .line 147
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/SecurityException;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v3

    #@d0
    .line 148
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    const/16 v6, 0x1ec

    #@d2
    .line 149
    :try_start_8
    const-string/jumbo v9, "DrmConvertSession"

    #@d5
    const-string/jumbo v10, "Could not open file in mode: rw"

    #@d8
    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@db
    .line 154
    if-eqz v7, :cond_1

    #@dd
    .line 156
    :try_start_9
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1

    #@e0
    goto/16 :goto_0

    #@e2
    .line 157
    :catch_5
    move-exception v2

    #@e3
    .line 158
    .restart local v2    # "e":Ljava/io/IOException;
    const/16 v6, 0x1ec

    #@e5
    .line 159
    :try_start_a
    const-string/jumbo v9, "DrmConvertSession"

    #@e8
    new-instance v10, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string/jumbo v11, "Failed to close File:"

    #@f0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v10

    #@f4
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v10

    #@f8
    .line 160
    const-string/jumbo v11, "."

    #@fb
    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v10

    #@ff
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v10

    #@103
    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1

    #@106
    goto/16 :goto_0

    #@108
    .line 144
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v2

    #@109
    .line 145
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    const/16 v6, 0x1ec

    #@10b
    .line 146
    :try_start_b
    const-string/jumbo v9, "DrmConvertSession"

    #@10e
    new-instance v10, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v11, "Could not access File: "

    #@116
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v10

    #@11a
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v10

    #@11e
    const-string/jumbo v11, " ."

    #@121
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v10

    #@125
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v10

    #@129
    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@12c
    .line 154
    if-eqz v7, :cond_1

    #@12e
    .line 156
    :try_start_c
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_1

    #@131
    goto/16 :goto_0

    #@133
    .line 157
    :catch_7
    move-exception v2

    #@134
    .line 158
    const/16 v6, 0x1ec

    #@136
    .line 159
    :try_start_d
    const-string/jumbo v9, "DrmConvertSession"

    #@139
    new-instance v10, Ljava/lang/StringBuilder;

    #@13b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@13e
    const-string/jumbo v11, "Failed to close File:"

    #@141
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v10

    #@145
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v10

    #@149
    .line 160
    const-string/jumbo v11, "."

    #@14c
    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v10

    #@150
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@153
    move-result-object v10

    #@154
    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_1

    #@157
    goto/16 :goto_0

    #@159
    .line 141
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v1

    #@15a
    .line 142
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_4
    const/16 v6, 0x1ec

    #@15c
    .line 143
    :try_start_e
    const-string/jumbo v9, "DrmConvertSession"

    #@15f
    new-instance v10, Ljava/lang/StringBuilder;

    #@161
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@164
    const-string/jumbo v11, "File: "

    #@167
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v10

    #@16b
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v10

    #@16f
    const-string/jumbo v11, " could not be found."

    #@172
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v10

    #@176
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@179
    move-result-object v10

    #@17a
    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@17d
    .line 154
    if-eqz v7, :cond_1

    #@17f
    .line 156
    :try_start_f
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_1

    #@182
    goto/16 :goto_0

    #@184
    .line 157
    :catch_9
    move-exception v2

    #@185
    .line 158
    .restart local v2    # "e":Ljava/io/IOException;
    const/16 v6, 0x1ec

    #@187
    .line 159
    :try_start_10
    const-string/jumbo v9, "DrmConvertSession"

    #@18a
    new-instance v10, Ljava/lang/StringBuilder;

    #@18c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@18f
    const-string/jumbo v11, "Failed to close File:"

    #@192
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v10

    #@196
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v10

    #@19a
    .line 160
    const-string/jumbo v11, "."

    #@19d
    .line 159
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v10

    #@1a1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a4
    move-result-object v10

    #@1a5
    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_1

    #@1a8
    goto/16 :goto_0

    #@1aa
    .line 153
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    #@1ab
    .line 154
    :goto_5
    if-eqz v7, :cond_3

    #@1ad
    .line 156
    :try_start_11
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_1

    #@1b0
    .line 153
    :cond_3
    :goto_6
    :try_start_12
    throw v9

    #@1b1
    .line 157
    :catch_a
    move-exception v2

    #@1b2
    .line 158
    .restart local v2    # "e":Ljava/io/IOException;
    const/16 v6, 0x1ec

    #@1b4
    .line 159
    const-string/jumbo v10, "DrmConvertSession"

    #@1b7
    new-instance v11, Ljava/lang/StringBuilder;

    #@1b9
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@1bc
    const-string/jumbo v12, "Failed to close File:"

    #@1bf
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v11

    #@1c3
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v11

    #@1c7
    .line 160
    const-string/jumbo v12, "."

    #@1ca
    .line 159
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v11

    #@1ce
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d1
    move-result-object v11

    #@1d2
    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_1

    #@1d5
    goto :goto_6

    #@1d6
    .line 153
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v9

    #@1d7
    move-object v7, v8

    #@1d8
    .end local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .local v7, "rndAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_5

    #@1d9
    .line 141
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v1

    #@1da
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v7, v8

    #@1db
    .end local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_4

    #@1dd
    .line 144
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_c
    move-exception v2

    #@1de
    .restart local v2    # "e":Ljava/io/IOException;
    move-object v7, v8

    #@1df
    .end local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    #@1e1
    .line 147
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_d
    move-exception v3

    #@1e2
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    move-object v7, v8

    #@1e3
    .end local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_2

    #@1e5
    .line 150
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    :catch_e
    move-exception v5

    #@1e6
    .restart local v5    # "e":Ljava/lang/SecurityException;
    move-object v7, v8

    #@1e7
    .end local v8    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "rndAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_1
.end method

.method public convert([BI)[B
    .locals 8
    .param p1, "inBuffer"    # [B
    .param p2, "size"    # I

    #@0
    .prologue
    .line 84
    const/4 v4, 0x0

    #@1
    .line 85
    .local v4, "result":[B
    if-eqz p1, :cond_2

    #@3
    .line 86
    const/4 v1, 0x0

    #@4
    .line 88
    .local v1, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :try_start_0
    array-length v5, p1

    #@5
    if-eq p2, v5, :cond_1

    #@7
    .line 89
    new-array v0, p2, [B

    #@9
    .line 90
    .local v0, "buf":[B
    const/4 v5, 0x0

    #@a
    const/4 v6, 0x0

    #@b
    invoke-static {p1, v5, v0, v6, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 91
    iget-object v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    #@10
    iget v6, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    #@12
    invoke-virtual {v5, v6, v0}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    #@15
    move-result-object v1

    #@16
    .line 96
    .end local v0    # "buf":[B
    .local v1, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :goto_0
    if-eqz v1, :cond_0

    #@18
    .line 97
    iget v5, v1, Landroid/drm/DrmConvertedStatus;->statusCode:I

    #@1a
    const/4 v6, 0x1

    #@1b
    if-ne v5, v6, :cond_0

    #@1d
    .line 98
    iget-object v5, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    #@1f
    if-eqz v5, :cond_0

    #@21
    .line 99
    iget-object v4, v1, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    #@23
    .line 111
    .end local v1    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .end local v4    # "result":[B
    :cond_0
    :goto_1
    return-object v4

    #@24
    .line 93
    .local v1, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .restart local v4    # "result":[B
    :cond_1
    iget-object v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    #@26
    iget v6, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    #@28
    invoke-virtual {v5, v6, p1}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    move-result-object v1

    #@2c
    .local v1, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    goto :goto_0

    #@2d
    .line 104
    .end local v1    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :catch_0
    move-exception v3

    #@2e
    .line 105
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v5, "DrmConvertSession"

    #@31
    new-instance v6, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v7, "Could not convert data. Convertsession: "

    #@39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    .line 106
    iget v7, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    #@3f
    .line 105
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    goto :goto_1

    #@4b
    .line 101
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    #@4c
    .line 102
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "DrmConvertSession"

    #@4f
    new-instance v6, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v7, "Buffer with data to convert is illegal. Convertsession: "

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    .line 103
    iget v7, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    #@5d
    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    goto :goto_1

    #@69
    .line 109
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@6b
    const-string/jumbo v6, "Parameter inBuffer is null"

    #@6e
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@71
    throw v5
.end method
