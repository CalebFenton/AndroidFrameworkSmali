.class public Ljava/util/logging/Level;
.super Ljava/lang/Object;
.source "Level.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/Level$KnownLevel;
    }
.end annotation


# static fields
.field public static final whitelist test-api ALL:Ljava/util/logging/Level;

.field public static final whitelist test-api CONFIG:Ljava/util/logging/Level;

.field public static final whitelist test-api FINE:Ljava/util/logging/Level;

.field public static final whitelist test-api FINER:Ljava/util/logging/Level;

.field public static final whitelist test-api FINEST:Ljava/util/logging/Level;

.field public static final whitelist test-api INFO:Ljava/util/logging/Level;

.field public static final whitelist test-api OFF:Ljava/util/logging/Level;

.field public static final whitelist test-api SEVERE:Ljava/util/logging/Level;

.field public static final whitelist test-api WARNING:Ljava/util/logging/Level;

.field private static final greylist-max-o defaultBundle:Ljava/lang/String; = "sun.util.logging.resources.logging"

.field private static final whitelist serialVersionUID:J = -0x71778eecae8cc96eL


# instance fields
.field private transient greylist-max-o cachedLocale:Ljava/util/Locale;

.field private transient greylist-max-o localizedLevelName:Ljava/lang/String;

.field private final greylist-max-o name:Ljava/lang/String;

.field private final greylist-max-o resourceBundleName:Ljava/lang/String;

.field private final greylist-max-o value:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetname(Ljava/util/logging/Level;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetresourceBundleName(Ljava/util/logging/Level;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalue(Ljava/util/logging/Level;)I
    .registers 1

    iget p0, p0, Ljava/util/logging/Level;->value:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 92
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "OFF"

    const v2, 0x7fffffff

    const-string v3, "sun.util.logging.resources.logging"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    .line 103
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "SEVERE"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 113
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "WARNING"

    const/16 v2, 0x384

    invoke-direct {v0, v1, v2, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 124
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "INFO"

    const/16 v2, 0x320

    invoke-direct {v0, v1, v2, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 136
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "CONFIG"

    const/16 v2, 0x2bc

    invoke-direct {v0, v1, v2, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 157
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "FINE"

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 165
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "FINER"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v2, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 171
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "FINEST"

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v2, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 177
    new-instance v0, Ljava/util/logging/Level;

    const-string v1, "ALL"

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v2, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "resourceBundleName"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 208
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "resourceBundleName"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    if-eqz p1, :cond_1b

    .line 216
    iput-object p1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    .line 217
    iput p2, p0, Ljava/util/logging/Level;->value:I

    .line 218
    iput-object p3, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    if-nez p3, :cond_10

    move-object v1, p1

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    iput-object v1, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;

    .line 220
    iput-object v0, p0, Ljava/util/logging/Level;->cachedLocale:Ljava/util/Locale;

    .line 221
    if-eqz p4, :cond_1a

    .line 222
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->add(Ljava/util/logging/Level;)V

    .line 224
    :cond_1a
    return-void

    .line 214
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/util/logging/Level-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method private greylist-max-o computeLocalizedLevelName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p1, "newLocale"    # Ljava/util/Locale;

    .line 268
    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    .line 269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 268
    invoke-static {v0, p1, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 270
    .local v0, "rb":Ljava/util/ResourceBundle;
    iget-object v1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "localizedName":Ljava/lang/String;
    const-string v2, "sun.util.logging.resources.logging"

    iget-object v3, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 273
    .local v2, "isDefaultBundle":Z
    if-nez v2, :cond_1f

    return-object v1

    .line 278
    :cond_1f
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 281
    .local v3, "rbLocale":Ljava/util/Locale;
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 280
    invoke-virtual {v4, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    iget-object v4, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 281
    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    goto :goto_3c

    .line 282
    :cond_3a
    move-object v4, v3

    goto :goto_3e

    :cond_3c
    :goto_3c
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 288
    .local v4, "locale":Ljava/util/Locale;
    :goto_3e
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    iget-object v5, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    goto :goto_4d

    :cond_49
    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    :goto_4d
    return-object v5
.end method

.method static greylist-max-o findLevel(Ljava/lang/String;)Ljava/util/logging/Level;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 348
    if-eqz p0, :cond_2f

    .line 355
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v0

    .line 356
    .local v0, "level":Ljava/util/logging/Level$KnownLevel;
    if-eqz v0, :cond_b

    .line 357
    iget-object v1, v0, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    return-object v1

    .line 364
    :cond_b
    :try_start_b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 365
    .local v1, "x":I
    invoke-static {v1}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v2

    move-object v0, v2

    .line 366
    if-nez v0, :cond_20

    .line 368
    new-instance v2, Ljava/util/logging/Level;

    invoke-direct {v2, p0, v1}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    .line 369
    .local v2, "levelObject":Ljava/util/logging/Level;
    invoke-static {v1}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v3

    move-object v0, v3

    .line 371
    .end local v2    # "levelObject":Ljava/util/logging/Level;
    :cond_20
    iget-object v2, v0, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_22} :catch_23

    return-object v2

    .line 372
    .end local v1    # "x":I
    :catch_23
    move-exception v1

    .line 377
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByLocalizedLevelName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_2d

    .line 379
    iget-object v1, v0, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    return-object v1

    .line 382
    :cond_2d
    const/4 v1, 0x0

    return-object v1

    .line 349
    .end local v0    # "level":Ljava/util/logging/Level$KnownLevel;
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static declared-synchronized whitelist test-api parse(Ljava/lang/String;)Ljava/util/logging/Level;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-class v0, Ljava/util/logging/Level;

    monitor-enter v0

    .line 450
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 455
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 456
    .local v1, "level":Ljava/util/logging/Level$KnownLevel;
    if-eqz v1, :cond_10

    .line 457
    iget-object v2, v1, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_53

    monitor-exit v0

    return-object v2

    .line 464
    :cond_10
    :try_start_10
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 465
    .local v2, "x":I
    invoke-static {v2}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v3

    move-object v1, v3

    .line 466
    if-nez v1, :cond_25

    .line 468
    new-instance v3, Ljava/util/logging/Level;

    invoke-direct {v3, p0, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    .line 469
    .local v3, "levelObject":Ljava/util/logging/Level;
    invoke-static {v2}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v4

    move-object v1, v4

    .line 471
    .end local v3    # "levelObject":Ljava/util/logging/Level;
    :cond_25
    iget-object v3, v1, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_27} :catch_29
    .catchall {:try_start_10 .. :try_end_27} :catchall_53

    monitor-exit v0

    return-object v3

    .line 472
    .end local v2    # "x":I
    :catch_29
    move-exception v2

    .line 480
    :try_start_2a
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByLocalizedLevelName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v2

    .line 481
    .end local v1    # "level":Ljava/util/logging/Level$KnownLevel;
    .local v2, "level":Ljava/util/logging/Level$KnownLevel;
    if-eqz v2, :cond_34

    .line 482
    iget-object v1, v2, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_53

    monitor-exit v0

    return-object v1

    .line 486
    :cond_34
    :try_start_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad level \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    .end local v2    # "level":Ljava/util/logging/Level$KnownLevel;
    .end local p0    # "name":Ljava/lang/String;
    :catchall_53
    move-exception p0

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_34 .. :try_end_55} :catchall_53

    throw p0
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 6

    .line 410
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->matches(Ljava/util/logging/Level;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v0

    .line 411
    .local v0, "o":Ljava/util/logging/Level$KnownLevel;
    if-eqz v0, :cond_9

    .line 412
    iget-object v1, v0, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    return-object v1

    .line 417
    :cond_9
    new-instance v1, Ljava/util/logging/Level;

    iget-object v2, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    iget v3, p0, Ljava/util/logging/Level;->value:I

    iget-object v4, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 418
    .local v1, "level":Ljava/util/logging/Level;
    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "ox"    # Ljava/lang/Object;

    .line 496
    const/4 v0, 0x0

    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/util/logging/Level;

    .line 497
    .local v1, "lx":Ljava/util/logging/Level;
    iget v2, v1, Ljava/util/logging/Level;->value:I

    iget v3, p0, Ljava/util/logging/Level;->value:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_c

    if-ne v2, v3, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0

    .line 498
    .end local v1    # "lx":Ljava/util/logging/Level;
    :catch_c
    move-exception v1

    .line 499
    .local v1, "ex":Ljava/lang/Exception;
    return v0
.end method

.method final greylist-max-o getCachedLocalizedLevelName()Ljava/lang/String;
    .registers 3

    .line 295
    iget-object v0, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 296
    iget-object v0, p0, Ljava/util/logging/Level;->cachedLocale:Ljava/util/Locale;

    if-eqz v0, :cond_17

    .line 297
    iget-object v0, p0, Ljava/util/logging/Level;->cachedLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 300
    iget-object v0, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;

    return-object v0

    .line 305
    :cond_17
    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 307
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0

    .line 313
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method final greylist-max-o getLevelName()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method final declared-synchronized greylist-max-o getLocalizedLevelName()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 319
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/Level;->getCachedLocalizedLevelName()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1f

    .line 320
    .local v0, "cachedLocalizedName":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 321
    monitor-exit p0

    return-object v0

    .line 326
    :cond_9
    :try_start_9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_1f

    .line 328
    .local v1, "newLocale":Ljava/util/Locale;
    :try_start_d
    invoke-direct {p0, v1}, Ljava/util/logging/Level;->computeLocalizedLevelName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_14
    .catchall {:try_start_d .. :try_end_13} :catchall_1f

    .line 331
    goto :goto_19

    .line 329
    .end local p0    # "this":Ljava/util/logging/Level;
    :catch_14
    move-exception v2

    .line 330
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_15
    iget-object v3, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    iput-object v3, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;

    .line 332
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_19
    iput-object v1, p0, Ljava/util/logging/Level;->cachedLocale:Ljava/util/Locale;

    .line 333
    iget-object v2, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v2

    .line 318
    .end local v0    # "cachedLocalizedName":Ljava/lang/String;
    .end local v1    # "newLocale":Ljava/util/Locale;
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public whitelist test-api getLocalizedName()Ljava/lang/String;
    .registers 2

    .line 255
    invoke-virtual {p0}, Ljava/util/logging/Level;->getLocalizedLevelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getResourceBundleName()Ljava/lang/String;
    .registers 2

    .line 233
    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 509
    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method public final whitelist test-api intValue()I
    .registers 2

    .line 402
    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 392
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method
