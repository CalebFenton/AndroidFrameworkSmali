.class final Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o NEXT_BITS:I = 0x6

.field private static final greylist-max-o ROOT_BITS:I = 0x7

.field private static final greylist-max-o SIMPLE_LENGTH:I = 0x20


# instance fields
.field private greylist-max-o keys:[I

.field private greylist-max-o length:I

.field private greylist-max-o levelBitsList:I

.field private greylist-max-o maxOffsetBits:I

.field private greylist-max-o rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

.field private greylist-max-o values:[Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smputIfCleared([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfCleared([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smstoreDirectly(I)Z
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->storeDirectly(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1142
    const-class v0, Landroid/icu/impl/ICUResourceBundleReader;

    return-void
.end method

.method constructor greylist-max-o <init>(I)V
    .registers 6
    .param p1, "maxOffset"    # I

    .line 1248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    .line 1153
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    .line 1249
    nop

    .line 1250
    const/16 v0, 0x1c

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    .line 1251
    :goto_12
    const v0, 0x7ffffff

    if-gt p1, v0, :cond_20

    .line 1252
    shl-int/lit8 p1, p1, 0x1

    .line 1253
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    goto :goto_12

    .line 1255
    :cond_20
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    add-int/lit8 v0, v0, 0x2

    .line 1257
    .local v0, "keyBits":I
    const/4 v1, 0x7

    if-gt v0, v1, :cond_2a

    .line 1258
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    goto :goto_54

    .line 1259
    :cond_2a
    const/16 v2, 0xa

    if-ge v0, v2, :cond_35

    .line 1260
    add-int/lit8 v1, v0, -0x3

    or-int/lit8 v1, v1, 0x30

    iput v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    goto :goto_54

    .line 1262
    :cond_35
    iput v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    .line 1263
    add-int/lit8 v0, v0, -0x7

    .line 1264
    const/4 v1, 0x4

    .line 1266
    .local v1, "shift":I
    :goto_3a
    const/4 v2, 0x6

    if-gt v0, v2, :cond_45

    .line 1267
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    shl-int v3, v0, v1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    .line 1268
    goto :goto_54

    .line 1269
    :cond_45
    const/16 v3, 0x9

    if-ge v0, v3, :cond_55

    .line 1270
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    add-int/lit8 v3, v0, -0x3

    or-int/lit8 v3, v3, 0x30

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    .line 1271
    nop

    .line 1279
    .end local v1    # "shift":I
    :goto_54
    return-void

    .line 1273
    .restart local v1    # "shift":I
    :cond_55
    iget v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    shl-int/2addr v2, v1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    .line 1274
    add-int/lit8 v0, v0, -0x6

    .line 1275
    add-int/lit8 v1, v1, 0x4

    goto :goto_3a
.end method

.method private greylist-max-o findSimple(I)I
    .registers 5
    .param p1, "key"    # I

    .line 1302
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method private greylist-max-o makeKey(I)I
    .registers 6
    .param p1, "res"    # I

    .line 1293
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    .line 1295
    .local v0, "type":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_15

    .line 1296
    :cond_9
    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    const/4 v1, 0x3

    goto :goto_15

    .line 1297
    :cond_e
    const/16 v1, 0x9

    if-ne v0, v1, :cond_14

    const/4 v1, 0x2

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    nop

    .line 1298
    .local v1, "miniType":I
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-$$Nest$smRES_GET_OFFSET(I)I

    move-result v2

    iget v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    shl-int v3, v1, v3

    or-int/2addr v2, v3

    return v2
.end method

.method private static final greylist-max-o putIfCleared([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;
    .registers 6
    .param p0, "values"    # [Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "size"    # I

    .line 1170
    aget-object v0, p0, p1

    .line 1171
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_7

    .line 1176
    return-object v0

    .line 1178
    :cond_7
    nop

    .line 1179
    move-object v1, v0

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_12

    .line 1181
    return-object v0

    .line 1183
    :cond_12
    invoke-static {}, Landroid/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1184
    move-object v1, p2

    goto :goto_1f

    :cond_1a
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :goto_1f
    aput-object v1, p0, p1

    .line 1185
    return-object p2
.end method

.method private static greylist-max-o storeDirectly(I)Z
    .registers 2
    .param p0, "size"    # I

    .line 1165
    const/16 v0, 0x18

    if-lt p0, v0, :cond_d

    invoke-static {}, Landroid/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method


# virtual methods
.method declared-synchronized greylist-max-o get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "res"    # I

    monitor-enter p0

    .line 1309
    nop

    .line 1311
    :try_start_2
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    const/4 v1, 0x0

    if-ltz v0, :cond_14

    .line 1312
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->findSimple(I)I

    move-result v0

    .line 1313
    .local v0, "index":I
    if-ltz v0, :cond_12

    .line 1314
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_33

    .line 1318
    .end local v0    # "index":I
    .local v1, "value":Ljava/lang/Object;
    goto :goto_23

    .line 1316
    .end local v1    # "value":Ljava/lang/Object;
    .end local p0    # "this":Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;
    .restart local v0    # "index":I
    :cond_12
    monitor-exit p0

    return-object v1

    .line 1319
    .end local v0    # "index":I
    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->makeKey(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_33

    .line 1320
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_22

    .line 1321
    monitor-exit p0

    return-object v1

    .line 1320
    .restart local p0    # "this":Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;
    :cond_22
    move-object v1, v0

    .line 1324
    .end local v0    # "value":Ljava/lang/Object;
    .restart local v1    # "value":Ljava/lang/Object;
    :goto_23
    :try_start_23
    instance-of v0, v1, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2f

    .line 1325
    move-object v0, v1

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_33

    move-object v1, v0

    .line 1327
    .end local p0    # "this":Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;
    :cond_2f
    monitor-exit p0

    return-object v1

    .line 1308
    .end local v1    # "value":Ljava/lang/Object;
    .end local p1    # "res":I
    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_33

    throw p1

    :catchall_33
    move-exception p1

    goto :goto_31
.end method

.method declared-synchronized greylist-max-o putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;
    .registers 11
    .param p1, "res"    # I
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "size"    # I

    monitor-enter p0

    .line 1331
    :try_start_1
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    if-ltz v0, :cond_7c

    .line 1332
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->findSimple(I)I

    move-result v0

    .line 1333
    .local v0, "index":I
    if-ltz v0, :cond_13

    .line 1334
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    invoke-static {v1, v0, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfCleared([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_88

    monitor-exit p0

    return-object v1

    .line 1335
    .end local p0    # "this":Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;
    :cond_13
    :try_start_13
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    const/16 v2, 0x20

    if-ge v1, v2, :cond_53

    .line 1336
    not-int v0, v0

    .line 1337
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    if-ge v0, v1, :cond_36

    .line 1338
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1339
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1341
    :cond_36
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    .line 1342
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    aput p1, v1, v0

    .line 1343
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    invoke-static {p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->storeDirectly(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    move-object v2, p2

    goto :goto_4f

    :cond_4a
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :goto_4f
    aput-object v2, v1, v0
    :try_end_51
    .catchall {:try_start_13 .. :try_end_51} :catchall_88

    .line 1344
    monitor-exit p0

    return-object p2

    .line 1347
    :cond_53
    :try_start_53
    new-instance v1, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    iget v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;-><init>(II)V

    iput-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    .line 1348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5e
    if-ge v1, v2, :cond_74

    .line 1349
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    aget v5, v5, v1

    invoke-direct {p0, v5}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->makeKey(I)I

    move-result v5

    iget-object v6, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    aget-object v6, v6, v1

    invoke-virtual {v3, v5, v6, v4}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    .line 1348
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 1351
    .end local v1    # "i":I
    :cond_74
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    .line 1352
    iput-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    .line 1353
    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    .line 1356
    .end local v0    # "index":I
    :cond_7c
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->makeKey(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_86
    .catchall {:try_start_53 .. :try_end_86} :catchall_88

    monitor-exit p0

    return-object v0

    .line 1330
    .end local p1    # "res":I
    .end local p2    # "item":Ljava/lang/Object;
    .end local p3    # "size":I
    :catchall_88
    move-exception p1

    :try_start_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p1
.end method
