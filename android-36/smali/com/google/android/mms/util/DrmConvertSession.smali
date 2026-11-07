.class public Lcom/google/android/mms/util/DrmConvertSession;
.super Ljava/lang/Object;
.source "DrmConvertSession.java"


# static fields
.field public static final blacklist STATUS_FILE_ERROR:I = 0x1ec

.field public static final blacklist STATUS_NOT_ACCEPTABLE:I = 0x196

.field public static final blacklist STATUS_SUCCESS:I = 0xc8

.field public static final blacklist STATUS_UNKNOWN_ERROR:I = 0x1eb

.field private static final blacklist TAG:Ljava/lang/String; = "DrmConvertSession"


# instance fields
.field private blacklist mConvertSessionId:I

.field private blacklist mDrmClient:Landroid/drm/DrmManagerClient;


# direct methods
.method private constructor blacklist <init>(Landroid/drm/DrmManagerClient;I)V
    .registers 3
    .param p1, "drmClient"    # Landroid/drm/DrmManagerClient;
    .param p2, "convertSessionId"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 44
    iput p2, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    .line 45
    return-void
.end method

.method public static greylist open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 56
    const-string v0, "DrmConvertSession"

    const/4 v1, 0x0

    .line 57
    .local v1, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v2, -0x1

    .line 58
    .local v2, "convertSessionId":I
    if-eqz p0, :cond_50

    if-eqz p1, :cond_50

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 60
    :try_start_10
    new-instance v3, Landroid/drm/DrmManagerClient;

    invoke-direct {v3, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_15} :catch_49
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_15} :catch_42

    move-object v1, v3

    .line 62
    :try_start_16
    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    move-result v0
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1a} :catch_23
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_1a} :catch_1c

    .line 68
    .end local v2    # "convertSessionId":I
    .local v0, "convertSessionId":I
    move v2, v0

    goto :goto_4f

    .line 66
    .end local v0    # "convertSessionId":I
    .restart local v2    # "convertSessionId":I
    :catch_1c
    move-exception v3

    .line 67
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_1d
    const-string v4, "Could not access Open DrmFramework."

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 63
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_23
    move-exception v3

    .line 64
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversion of Mimetype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_40} :catch_49
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_40} :catch_42

    .line 68
    nop

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_4f

    .line 72
    :catch_42
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string v4, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 69
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_49
    move-exception v3

    .line 70
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "DrmManagerClient instance could not be created, context is Illegal."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_4f
    nop

    .line 77
    :cond_50
    :goto_50
    if-eqz v1, :cond_5b

    if-gez v2, :cond_55

    goto :goto_5b

    .line 80
    :cond_55
    new-instance v0, Lcom/google/android/mms/util/DrmConvertSession;

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/util/DrmConvertSession;-><init>(Landroid/drm/DrmManagerClient;I)V

    return-object v0

    .line 78
    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public greylist close(Ljava/lang/String;)I
    .registers 11
    .param p1, "filename"    # Ljava/lang/String;

    .line 135
    const-string v0, "."

    const-string v1, "Failed to close File:"

    const-string v2, "DrmConvertSession"

    const/4 v3, 0x0

    .line 136
    .local v3, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    const/16 v4, 0x1eb

    .line 137
    .local v4, "result":I
    iget-object v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-eqz v5, :cond_18c

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    if-ltz v5, :cond_18c

    .line 139
    :try_start_11
    iget-object v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v6, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v5, v6}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v5

    move-object v3, v5

    .line 140
    if-eqz v3, :cond_16f

    iget v5, v3, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_16f

    iget-object v5, v3, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_23} :catch_173

    if-nez v5, :cond_27

    goto/16 :goto_16f

    .line 145
    :cond_27
    const/4 v5, 0x0

    .line 147
    .local v5, "rndAccessFile":Ljava/io/RandomAccessFile;
    :try_start_28
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "rw"

    invoke-direct {v6, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 148
    iget v6, v3, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 149
    iget-object v6, v3, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    invoke-virtual {v5, v6}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_3c} :catch_10b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_3c} :catch_cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_3c} :catch_a0
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_3c} :catch_60
    .catchall {:try_start_28 .. :try_end_3c} :catchall_5d

    .line 150
    const/16 v4, 0xc8

    .line 164
    nop

    .line 166
    :try_start_3f
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_44
    .catch Ljava/lang/IllegalStateException; {:try_start_3f .. :try_end_42} :catch_173

    .line 171
    :goto_42
    goto/16 :goto_172

    .line 167
    :catch_44
    move-exception v6

    .line 168
    .local v6, "e":Ljava/io/IOException;
    const/16 v4, 0x1ec

    .line 169
    :try_start_47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_47 .. :try_end_5c} :catch_173

    goto :goto_9c

    .line 164
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_5d
    move-exception v6

    goto/16 :goto_14c

    .line 160
    :catch_60
    move-exception v6

    .line 161
    .local v6, "e":Ljava/lang/SecurityException;
    :try_start_61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Access to File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was denied denied by SecurityManager."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7d
    .catchall {:try_start_61 .. :try_end_7d} :catchall_5d

    .line 164
    nop

    .end local v6    # "e":Ljava/lang/SecurityException;
    if-eqz v5, :cond_172

    .line 166
    :try_start_80
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84
    .catch Ljava/lang/IllegalStateException; {:try_start_80 .. :try_end_83} :catch_173

    goto :goto_42

    .line 167
    :catch_84
    move-exception v6

    .line 168
    .local v6, "e":Ljava/io/IOException;
    const/16 v4, 0x1ec

    .line 169
    :try_start_87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9c
    invoke-static {v2, v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9f
    .catch Ljava/lang/IllegalStateException; {:try_start_87 .. :try_end_9f} :catch_173

    goto :goto_c8

    .line 157
    .end local v6    # "e":Ljava/io/IOException;
    :catch_a0
    move-exception v6

    .line 158
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const/16 v4, 0x1ec

    .line 159
    :try_start_a3
    const-string v7, "Could not open file in mode: rw"

    invoke-static {v2, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_5d

    .line 164
    nop

    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v5, :cond_172

    .line 166
    :try_start_ab
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af
    .catch Ljava/lang/IllegalStateException; {:try_start_ab .. :try_end_ae} :catch_173

    goto :goto_42

    .line 167
    :catch_af
    move-exception v6

    .line 168
    .local v6, "e":Ljava/io/IOException;
    const/16 v4, 0x1ec

    .line 169
    :try_start_b2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c7
    .catch Ljava/lang/IllegalStateException; {:try_start_b2 .. :try_end_c7} :catch_173

    goto :goto_9c

    .line 171
    :goto_c8
    nop

    .end local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_172

    .line 154
    :catch_cb
    move-exception v6

    .line 155
    .restart local v6    # "e":Ljava/io/IOException;
    const/16 v4, 0x1ec

    .line 156
    :try_start_ce
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not access File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ea
    .catchall {:try_start_ce .. :try_end_ea} :catchall_5d

    .line 164
    nop

    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_172

    .line 166
    :try_start_ed
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f2
    .catch Ljava/lang/IllegalStateException; {:try_start_ed .. :try_end_f0} :catch_173

    goto/16 :goto_42

    .line 167
    :catch_f2
    move-exception v6

    .line 168
    .restart local v6    # "e":Ljava/io/IOException;
    const/16 v4, 0x1ec

    .line 169
    :try_start_f5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_10a
    .catch Ljava/lang/IllegalStateException; {:try_start_f5 .. :try_end_10a} :catch_173

    goto :goto_9c

    .line 151
    .end local v6    # "e":Ljava/io/IOException;
    :catch_10b
    move-exception v6

    .line 152
    .local v6, "e":Ljava/io/FileNotFoundException;
    const/16 v4, 0x1ec

    .line 153
    :try_start_10e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " could not be found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12a
    .catchall {:try_start_10e .. :try_end_12a} :catchall_5d

    .line 164
    nop

    .end local v6    # "e":Ljava/io/FileNotFoundException;
    if-eqz v5, :cond_172

    .line 166
    :try_start_12d
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_130} :catch_132
    .catch Ljava/lang/IllegalStateException; {:try_start_12d .. :try_end_130} :catch_173

    goto/16 :goto_42

    .line 167
    :catch_132
    move-exception v6

    .line 168
    .local v6, "e":Ljava/io/IOException;
    const/16 v4, 0x1ec

    .line 169
    :try_start_135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_14a
    .catch Ljava/lang/IllegalStateException; {:try_start_135 .. :try_end_14a} :catch_173

    goto/16 :goto_9c

    .line 164
    .end local v6    # "e":Ljava/io/IOException;
    :goto_14c
    if-eqz v5, :cond_16d

    .line 166
    :try_start_14e
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_152
    .catch Ljava/lang/IllegalStateException; {:try_start_14e .. :try_end_151} :catch_173

    .line 171
    goto :goto_16d

    .line 167
    :catch_152
    move-exception v7

    .line 168
    .local v7, "e":Ljava/io/IOException;
    const/16 v4, 0x1ec

    .line 169
    :try_start_155
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v7    # "e":Ljava/io/IOException;
    :cond_16d
    :goto_16d
    nop

    .end local v3    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .end local v4    # "result":I
    .end local p0    # "this":Lcom/google/android/mms/util/DrmConvertSession;
    .end local p1    # "filename":Ljava/lang/String;
    throw v6
    :try_end_16f
    .catch Ljava/lang/IllegalStateException; {:try_start_155 .. :try_end_16f} :catch_173

    .line 143
    .end local v5    # "rndAccessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .restart local v4    # "result":I
    .restart local p0    # "this":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local p1    # "filename":Ljava/lang/String;
    :cond_16f
    :goto_16f
    const/16 v0, 0x196

    move v4, v0

    .line 178
    :cond_172
    :goto_172
    goto :goto_18c

    .line 175
    :catch_173
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not close convertsession. Convertsession: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_18c
    :goto_18c
    return v4
.end method

.method public greylist convert([BI)[B
    .registers 9
    .param p1, "inBuffer"    # [B
    .param p2, "size"    # I

    .line 93
    const-string v0, "DrmConvertSession"

    const/4 v1, 0x0

    .line 94
    .local v1, "result":[B
    if-eqz p1, :cond_67

    .line 95
    const/4 v2, 0x0

    .line 97
    .local v2, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :try_start_6
    array-length v3, p1

    if-eq p2, v3, :cond_19

    .line 98
    new-array v3, p2, [B

    .line 99
    .local v3, "buf":[B
    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget-object v4, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v4, v5, v3}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v4

    .line 101
    .end local v2    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .end local v3    # "buf":[B
    .local v4, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    move-object v2, v4

    goto :goto_22

    .line 102
    .end local v4    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .restart local v2    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :cond_19
    iget-object v3, p0, Lcom/google/android/mms/util/DrmConvertSession;->mDrmClient:Landroid/drm/DrmManagerClient;

    iget v4, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v3, v4, p1}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v3

    move-object v2, v3

    .line 105
    :goto_22
    if-eqz v2, :cond_30

    iget v3, v2, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_30

    iget-object v3, v2, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    if-eqz v3, :cond_30

    .line 108
    iget-object v0, v2, Landroid/drm/DrmConvertedStatus;->convertedData:[B
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_2f} :catch_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_2f} :catch_31

    move-object v1, v0

    .line 116
    :cond_30
    :goto_30
    goto :goto_65

    .line 113
    :catch_31
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not convert data. Convertsession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    .line 110
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_4b
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Buffer with data to convert is illegal. Convertsession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/mms/util/DrmConvertSession;->mConvertSessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_30

    .line 117
    .end local v2    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    :goto_65
    nop

    .line 120
    return-object v1

    .line 118
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter inBuffer is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
