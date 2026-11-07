.class public Landroid/os/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemProperties$Handle;
    }
.end annotation


# static fields
.field public static final greylist PROP_NAME_MAX:I = 0x7fffffff

.field public static final greylist-max-o PROP_VALUE_MAX:I = 0x5b

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SystemProperties"

.field private static final greylist-max-o TRACK_KEY_ACCESS:Z = false

.field private static final greylist sChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sRoReads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnative_get(J)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_get(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_get_boolean(JZ)Z
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->native_get_boolean(JZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_get_int(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->native_get_int(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_get_long(JJ)J
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/os/SystemProperties;->native_get_long(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Landroid/os/SystemProperties;->sRoReads:Ljava/util/HashMap;

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    return-void
.end method

.method public static greylist addChangeCallback(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "callback"    # Ljava/lang/Runnable;

    .line 249
    sget-object v0, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 250
    :try_start_3
    sget-object v1, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 251
    invoke-static {}, Landroid/os/SystemProperties;->native_add_change_callback()V

    .line 253
    :cond_e
    sget-object v1, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private static greylist-max-o callChangeCallbacks()V
    .registers 7

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    sget-object v1, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 277
    :try_start_4
    sget-object v2, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_e

    .line 278
    monitor-exit v1

    return-void

    .line 280
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 281
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_41

    .line 282
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 284
    .local v1, "token":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    :try_start_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_3c

    if-ge v3, v4, :cond_37

    .line 286
    :try_start_22
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2c

    .line 291
    goto :goto_34

    .line 287
    :catchall_2c
    move-exception v4

    .line 290
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_2d
    const-string v5, "SystemProperties"

    const-string v6, "Exception in SystemProperties change callback"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3c

    .line 284
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 294
    .end local v3    # "i":I
    :cond_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 295
    nop

    .line 296
    return-void

    .line 294
    :catchall_3c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 295
    throw v3

    .line 281
    .end local v1    # "token":J
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v2
.end method

.method public static blacklist clearChangeCallbacksForTest()V
    .registers 2

    .line 303
    sget-object v0, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 304
    :try_start_3
    sget-object v1, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 305
    monitor-exit v0

    .line 306
    return-void

    .line 305
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static varargs blacklist digestOf([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "keys"    # [Ljava/lang/String;

    .line 325
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 327
    :try_start_3
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 328
    .local v0, "digest":Ljava/security/MessageDigest;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_3c

    aget-object v3, p0, v2

    .line 329
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "item":Ljava/lang/String;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 328
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "item":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 332
    :cond_3c
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1
    :try_end_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_48} :catch_49

    return-object v1

    .line 333
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_49
    move-exception v0

    .line 334
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist find(Ljava/lang/String;)Landroid/os/SystemProperties$Handle;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 349
    invoke-static {p0}, Landroid/os/SystemProperties;->native_find(Ljava/lang/String;)J

    move-result-wide v0

    .line 350
    .local v0, "nativeHandle":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    .line 351
    return-object v3

    .line 353
    :cond_c
    new-instance v2, Landroid/os/SystemProperties$Handle;

    invoke-direct {v2, v0, v1, v3}, Landroid/os/SystemProperties$Handle;-><init>(JLandroid/os/SystemProperties-IA;)V

    return-object v2
.end method

.method public static whitelist get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 151
    invoke-static {p0}, Landroid/os/SystemProperties;->native_get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 167
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getBoolean(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 217
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_get_boolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist getInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 182
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_get_int(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getLong(Ljava/lang/String;J)J
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 197
    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->native_get_long(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native greylist-max-p native_add_change_callback()V
.end method

.method private static native blacklist native_find(Ljava/lang/String;)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_get(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static greylist native_get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 105
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->native_get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native greylist-max-p native_get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_get_boolean(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-p native_get_boolean(Ljava/lang/String;Z)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_get_int(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-p native_get_int(Ljava/lang/String;I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_get_long(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist native_get_long(Ljava/lang/String;J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o native_report_sysprop_change()V
.end method

.method private static native greylist-max-p native_set(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static greylist-max-o onKeyAccess(Ljava/lang/String;)V
    .registers 1
    .param p0, "key"    # Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static greylist-max-r removeChangeCallback(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "callback"    # Ljava/lang/Runnable;

    .line 265
    sget-object v0, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 266
    :try_start_3
    sget-object v1, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 267
    sget-object v1, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 269
    :cond_10
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static greylist reportSyspropChanged()V
    .registers 0

    .line 314
    invoke-static {}, Landroid/os/SystemProperties;->native_report_sysprop_change()V

    .line 315
    return-void
.end method

.method public static greylist set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 231
    if-eqz p1, :cond_45

    const-string/jumbo v0, "ro."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x5b

    if-gt v0, v1, :cond_17

    goto :goto_45

    .line 233
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value of system property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is longer than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_45
    :goto_45
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method
