.class public final Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;
.super Ljava/lang/Object;
.source "StaticUtil.java"


# static fields
.field private static IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

.field private static emergencyMemory:[B

.field private static final outOfMemoryHandlers:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    new-instance v0, Ljava/util/Vector;

    #@2
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@5
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    #@7
    .line 58
    const/4 v0, 0x1

    #@8
    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

    #@a
    .line 62
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->allocateEmergencyMemory()V

    #@d
    .line 63
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    return-void
.end method

.method private static allocateEmergencyMemory()V
    .locals 1

    #@0
    .prologue
    .line 79
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->emergencyMemory:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 86
    :goto_0
    return-void

    #@5
    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    #@8
    const/16 v0, 0x1000

    #@a
    .line 82
    :try_start_0
    new-array v0, v0, [B

    #@c
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->emergencyMemory:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    goto :goto_0

    #@f
    .line 84
    :catch_0
    move-exception v0

    #@10
    goto :goto_0
.end method

.method private static getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    .locals 1

    #@0
    .prologue
    .line 121
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static handleOutOfMemory()V
    .locals 1

    #@0
    .prologue
    .line 429
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->handleOutOfMemory(Z)V

    #@4
    .line 430
    return-void
.end method

.method private static handleOutOfMemory(Z)V
    .locals 4
    .param p0, "warning"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 433
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->emergencyMemory:[B

    #@3
    .line 437
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5
    if-nez p0, :cond_0

    #@7
    const-string/jumbo v2, "OutOfMemory"

    #@a
    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d
    const/4 v0, 0x0

    #@e
    .line 438
    .local v0, "i":I
    :goto_1
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    #@10
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@13
    move-result v2

    #@14
    if-lt v0, v2, :cond_1

    #@16
    .line 452
    return-void

    #@17
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v2, "LowOnMemory"

    #@1a
    goto :goto_0

    #@1b
    .line 439
    .restart local v0    # "i":I
    :cond_1
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    #@1d
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;

    #@23
    .line 441
    .local v1, "outOfMemoryHandler":Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;
    invoke-interface {v1, p0}, Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;->handleOutOfMemory(Z)V

    #@26
    .line 438
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_1
.end method

.method public static readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;
    .locals 3
    .param p0, "preference"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 271
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@4
    move-result-object v1

    #@5
    invoke-interface {v1, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    #@8
    move-result-object v0

    #@9
    .line 273
    .local v0, "data":[B
    if-eqz v0, :cond_0

    #@b
    .line 277
    new-instance v1, Ljava/io/DataInputStream;

    #@d
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@f
    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@12
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@15
    return-object v1

    #@16
    .line 274
    :cond_0
    return-object v2
.end method

.method private static readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 7
    .param p0, "preference"    # Ljava/lang/String;
    .param p1, "type"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 236
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;

    #@4
    move-result-object v1

    #@5
    .line 237
    .local v1, "input":Ljava/io/DataInput;
    if-eqz v1, :cond_0

    #@7
    .line 242
    packed-switch p1, :pswitch_data_0

    #@a
    .line 252
    :try_start_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Bad class: "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    const-string/jumbo v4, " for "

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    :catch_0
    move-exception v0

    #@30
    .line 256
    .local v0, "e":Ljava/io/IOException;
    return-object v6

    #@31
    .line 238
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-object v6

    #@32
    .line 244
    :pswitch_0
    new-instance v2, Ljava/lang/Boolean;

    #@34
    invoke-interface {v1}, Ljava/io/DataInput;->readBoolean()Z

    #@37
    move-result v3

    #@38
    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    #@3b
    return-object v2

    #@3c
    .line 246
    :pswitch_1
    new-instance v2, Ljava/lang/Integer;

    #@3e
    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    #@41
    move-result v3

    #@42
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@45
    return-object v2

    #@46
    .line 248
    :pswitch_2
    new-instance v2, Ljava/lang/Long;

    #@48
    invoke-interface {v1}, Ljava/io/DataInput;->readLong()J

    #@4b
    move-result-wide v4

    #@4c
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@4f
    return-object v2

    #@50
    .line 250
    :pswitch_3
    invoke-interface {v1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    move-result-object v2

    #@54
    return-object v2

    #@55
    .line 242
    nop

    #@56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static readPreferenceAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "preference"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x3

    #@1
    .line 186
    invoke-static {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Ljava/lang/String;

    #@7
    return-object v0
.end method

.method public static registerOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V
    .locals 1
    .param p0, "handler"    # Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;

    #@0
    .prologue
    .line 397
    sget-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 400
    :goto_0
    return-void

    #@5
    .line 398
    :cond_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    #@7
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@a
    goto :goto_0
.end method

.method public static removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V
    .locals 1
    .param p0, "handler"    # Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;

    #@0
    .prologue
    .line 408
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    #@5
    .line 409
    return-void
.end method

.method private static savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p0, "preference"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 151
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@8
    move-result-object v3

    #@9
    .line 152
    .local v3, "store":Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    if-eqz p1, :cond_0

    #@b
    .line 157
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@d
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@10
    .line 158
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    #@12
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@15
    .line 162
    .local v1, "dataOut":Ljava/io/DataOutput;
    :try_start_0
    instance-of v4, p1, Ljava/lang/Boolean;

    #@17
    if-nez v4, :cond_1

    #@19
    .line 164
    instance-of v4, p1, Ljava/lang/String;

    #@1b
    if-nez v4, :cond_2

    #@1d
    .line 166
    instance-of v4, p1, Ljava/lang/Integer;

    #@1f
    if-nez v4, :cond_3

    #@21
    .line 168
    instance-of v4, p1, Ljava/lang/Long;

    #@23
    if-nez v4, :cond_4

    #@25
    .line 171
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance v5, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v6, "Bad type: "

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    const-string/jumbo v6, " for "

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 178
    .end local p1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v2

    #@4f
    .line 177
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v5, "Writing: "

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-static {v4, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@66
    .line 179
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    #@67
    .line 153
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dataOut":Ljava/io/DataOutput;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    invoke-interface {v3, p0, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    #@6a
    .line 154
    return-void

    #@6b
    .line 163
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "dataOut":Ljava/io/DataOutput;
    :cond_1
    :try_start_1
    check-cast p1, Ljava/lang/Boolean;

    #@6d
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@70
    move-result v4

    #@71
    invoke-interface {v1, v4}, Ljava/io/DataOutput;->writeBoolean(Z)V

    #@74
    .line 175
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@77
    move-result-object v4

    #@78
    invoke-interface {v3, p0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    #@7b
    goto :goto_0

    #@7c
    .line 165
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    check-cast p1, Ljava/lang/String;

    #@7e
    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {v1, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    #@81
    goto :goto_1

    #@82
    .line 167
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    check-cast p1, Ljava/lang/Integer;

    #@84
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@87
    move-result v4

    #@88
    invoke-interface {v1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    #@8b
    goto :goto_1

    #@8c
    .line 169
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    check-cast p1, Ljava/lang/Long;

    #@8e
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@91
    move-result-wide v4

    #@92
    invoke-interface {v1, v4, v5}, Ljava/io/DataOutput;->writeLong(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@95
    goto :goto_1
.end method

.method public static savePreferenceAsString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "preference"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 125
    invoke-static {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V

    #@3
    .line 126
    return-void
.end method
