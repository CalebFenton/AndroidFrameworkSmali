.class public final Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
.super Ljava/lang/Object;
.source "IServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/hidl/manager/V1_0/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceDebugInfo"
.end annotation


# instance fields
.field public blacklist arch:I

.field public blacklist clientPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist instanceName:Ljava/lang/String;

.field public blacklist interfaceName:Ljava/lang/String;

.field public blacklist pid:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    .line 175
    iput v0, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 245
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 246
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    .line 247
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 246
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 250
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 252
    new-instance v5, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    invoke-direct {v5}, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;-><init>()V

    .line 253
    .local v5, "_hidl_vec_element":Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    mul-int/lit8 v6, v3, 0x40

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 254
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v5    # "_hidl_vec_element":Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 258
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "_hidl_index_0":I
    .end local p0    # "childBlob":Landroid/os/HwBlob;
    :cond_37
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 304
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 305
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 306
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 307
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 308
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 309
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    mul-int/lit8 v5, v3, 0x40

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 308
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 311
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 314
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 315
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 179
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 180
    return v0

    .line 182
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 183
    return v1

    .line 185
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    if-eq v2, v3, :cond_11

    .line 186
    return v1

    .line 188
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 189
    .local v2, "other":Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    iget-object v3, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    iget-object v4, v2, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 190
    return v1

    .line 192
    :cond_1f
    iget-object v3, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    iget-object v4, v2, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 193
    return v1

    .line 195
    :cond_2a
    iget v3, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    iget v4, v2, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    if-eq v3, v4, :cond_31

    .line 196
    return v1

    .line 198
    :cond_31
    iget-object v3, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 199
    return v1

    .line 201
    :cond_3c
    iget v3, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    iget v4, v2, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    if-eq v3, v4, :cond_43

    .line 202
    return v1

    .line 204
    :cond_43
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 209
    iget-object v0, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 210
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 211
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    .line 213
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    .line 214
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 209
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 26
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 265
    iget-object v4, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 266
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v6, v4

    .line 267
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    add-long v4, p3, v2

    add-long v10, v4, v2

    .line 265
    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 270
    const-wide/16 v4, 0x10

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 272
    iget-object v6, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 273
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v14, v6

    .line 274
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v4, p3, v4

    add-long v18, v4, v2

    .line 272
    const/16 v20, 0x0

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 277
    const-wide/16 v4, 0x20

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 279
    const-wide/16 v4, 0x28

    add-long v6, p3, v4

    const-wide/16 v8, 0x8

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 280
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x4

    int-to-long v14, v7

    .line 281
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v4, p3, v4

    add-long v18, v4, v2

    .line 280
    const/16 v20, 0x1

    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 284
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 285
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_75
    if-ge v3, v6, :cond_8b

    .line 286
    const/4 v4, 0x0

    .line 287
    .local v4, "_hidl_vec_element":I
    mul-int/lit8 v5, v3, 0x4

    int-to-long v7, v5

    invoke-virtual {v2, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 288
    iget-object v5, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v4    # "_hidl_vec_element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    .line 291
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v6    # "_hidl_vec_size":I
    :cond_8b
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    .line 292
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 236
    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 237
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 238
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ".interfaceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ", .instanceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v1, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, ", .pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, ", .clientPids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v1, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, ", .arch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget v1, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    invoke-static {v1}, Landroid/internal/hidl/base/V1_0/DebugInfo$Architecture;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 319
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-object v4, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 320
    const-wide/16 v2, 0x10

    add-long/2addr v2, p2

    iget-object v4, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 321
    const-wide/16 v2, 0x20

    add-long/2addr v2, p2

    iget v4, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 323
    iget-object v2, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 324
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x28

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 325
    add-long v5, p2, v3

    const-wide/16 v7, 0xc

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 326
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x4

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 327
    .local v5, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_3a
    if-ge v6, v2, :cond_51

    .line 328
    mul-int/lit8 v7, v6, 0x4

    int-to-long v7, v7

    iget-object v9, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 327
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    .line 330
    .end local v6    # "_hidl_index_0":I
    :cond_51
    add-long/2addr v3, p2

    add-long/2addr v3, v0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 332
    .end local v2    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget v2, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 333
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 295
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 296
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 297
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 298
    return-void
.end method
