.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "ScriptC.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist RENDERSCRIPT_SCRIPTC_DEPRECATION_CHANGE_ID:J = 0x11b42966L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor whitelist <init>(ILandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .line 56
    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 57
    return-void
.end method

.method protected constructor whitelist <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 67
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 8
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceID"    # I

    .line 77
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 78
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide v2

    .line 79
    .local v2, "id":J
    cmp-long v0, v2, v0

    if-eqz v0, :cond_11

    .line 82
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/ScriptC;->setID(J)V

    .line 83
    return-void

    .line 80
    :cond_11
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Loading of ScriptC script failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor whitelist <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .registers 11
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "bitcode32"    # [B
    .param p4, "bitcode64"    # [B

    .line 91
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 92
    const-wide/16 v2, 0x0

    .line 93
    .local v2, "id":J
    sget v4, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_11

    .line 94
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v2

    goto :goto_15

    .line 96
    :cond_11
    invoke-static {p1, p2, p4}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v2

    .line 98
    :goto_15
    cmp-long v0, v2, v0

    if-eqz v0, :cond_1d

    .line 101
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/ScriptC;->setID(J)V

    .line 102
    return-void

    .line 99
    :cond_1d
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Loading of ScriptC script failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized greylist-max-o internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .registers 11
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # I

    const-class v0, Landroid/renderscript/ScriptC;

    monitor-enter v0

    .line 128
    :try_start_3
    invoke-static {}, Landroid/renderscript/ScriptC;->throwExceptionIfScriptCUnsupported()V

    .line 131
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_4a

    .line 134
    .local v1, "is":Ljava/io/InputStream;
    const/16 v2, 0x400

    :try_start_c
    new-array v2, v2, [B

    .line 135
    .local v2, "pgm":[B
    const/4 v3, 0x0

    .line 137
    .local v3, "pgmLength":I
    :goto_f
    array-length v4, v2

    sub-int/2addr v4, v3

    .line 138
    .local v4, "bytesLeft":I
    if-nez v4, :cond_21

    .line 139
    array-length v5, v2

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    .line 140
    .local v5, "buf2":[B
    array-length v6, v2

    const/4 v7, 0x0

    invoke-static {v2, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    move-object v2, v5

    .line 142
    array-length v6, v2

    sub-int v4, v6, v3

    .line 144
    .end local v5    # "buf2":[B
    :cond_21
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_3d

    .line 145
    .local v5, "bytesRead":I
    if-gtz v5, :cond_3b

    .line 146
    nop

    .line 151
    .end local v4    # "bytesLeft":I
    .end local v5    # "bytesRead":I
    :try_start_28
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_43
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4a

    .line 152
    nop

    .line 155
    nop

    .line 157
    :try_start_2d
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "resName":Ljava/lang/String;
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide v5
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_4a

    monitor-exit v0

    return-wide v5

    .line 148
    .local v4, "bytesLeft":I
    .restart local v5    # "bytesRead":I
    :cond_3b
    add-int/2addr v3, v5

    .line 149
    .end local v4    # "bytesLeft":I
    .end local v5    # "bytesRead":I
    goto :goto_f

    .line 151
    .end local v2    # "pgm":[B
    .end local v3    # "pgmLength":I
    :catchall_3d
    move-exception v2

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 152
    nop

    .end local v1    # "is":Ljava/io/InputStream;
    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "resourceID":I
    throw v2
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_4a

    .line 153
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "resources":Landroid/content/res/Resources;
    .restart local p2    # "resourceID":I
    :catch_43
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    :try_start_44
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v3}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v3

    .line 127
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "resources":Landroid/content/res/Resources;
    .end local p2    # "resourceID":I
    :catchall_4a
    move-exception p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method private static declared-synchronized greylist-max-o internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J
    .registers 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "bitcode"    # [B

    const-class v0, Landroid/renderscript/ScriptC;

    monitor-enter v0

    .line 165
    :try_start_3
    invoke-static {}, Landroid/renderscript/ScriptC;->throwExceptionIfScriptCUnsupported()V

    .line 166
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-wide v1

    .line 164
    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "resName":Ljava/lang/String;
    .end local p2    # "bitcode":[B
    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method private static blacklist throwExceptionIfScriptCUnsupported()V
    .registers 3

    .line 110
    :try_start_0
    const-string v0, "RS"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_1d

    .line 114
    nop

    .line 117
    const-string v0, "ScriptC scripts are not supported when targeting an API Level >= 36. Please refer to https://developer.android.com/guide/topics/renderscript/migration-guide for proposed alternatives."

    .line 121
    .local v0, "message":Ljava/lang/String;
    const-string v1, "ScriptC"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-wide/32 v1, 0x11b42966

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_17

    .line 125
    return-void

    .line 123
    :cond_17
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    .end local v0    # "message":Ljava/lang/String;
    :catch_1d
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "This device does not have an ABI that supports ScriptC."

    .line 113
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
