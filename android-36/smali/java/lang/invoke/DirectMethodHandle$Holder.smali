.class final Ljava/lang/invoke/DirectMethodHandle$Holder;
.super Ljava/lang/Object;
.source "DirectMethodHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/DirectMethodHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Holder"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getBoolean(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)Z
    .registers 5
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 249
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 251
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v2

    return v2
.end method

.method static blacklist getBoolean(Ljava/lang/invoke/MethodHandleImpl;)Z
    .registers 5
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 465
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 466
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 467
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v3

    return v3
.end method

.method static blacklist getBooleanVolatile(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)Z
    .registers 5
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 255
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 257
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getBooleanVolatile(Ljava/lang/Object;J)Z

    move-result v2

    return v2
.end method

.method static blacklist getBooleanVolatile(Ljava/lang/invoke/MethodHandleImpl;)Z
    .registers 5
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 471
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 472
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 473
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getBooleanVolatile(Ljava/lang/Object;J)Z

    move-result v3

    return v3
.end method

.method static blacklist getByte(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)B
    .registers 5
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 261
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 263
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    return v2
.end method

.method static blacklist getByte(Ljava/lang/invoke/MethodHandleImpl;)B
    .registers 5
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 477
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 478
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 479
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v3

    return v3
.end method

.method static blacklist getByteVolatile(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)B
    .registers 5
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 267
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 269
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getByteVolatile(Ljava/lang/Object;J)B

    move-result v2

    return v2
.end method

.method static blacklist getByteVolatile(Ljava/lang/invoke/MethodHandleImpl;)B
    .registers 5
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 483
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 484
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 485
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getByteVolatile(Ljava/lang/Object;J)B

    move-result v3

    return v3
.end method

.method static blacklist getChar(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)C
    .registers 5
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 273
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 275
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v2

    return v2
.end method

.method static blacklist getChar(Ljava/lang/invoke/MethodHandleImpl;)C
    .registers 5
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 489
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 490
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 491
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v3

    return v3
.end method

.method static blacklist getCharVolatile(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)C
    .registers 5
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 279
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 281
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getCharVolatile(Ljava/lang/Object;J)C

    move-result v2

    return v2
.end method

.method static blacklist getCharVolatile(Ljava/lang/invoke/MethodHandleImpl;)C
    .registers 5
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 495
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 496
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 497
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getCharVolatile(Ljava/lang/Object;J)C

    move-result v3

    return v3
.end method

.method static blacklist getDouble(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)D
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 321
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 323
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v2

    return-wide v2
.end method

.method static blacklist getDouble(Ljava/lang/invoke/MethodHandleImpl;)D
    .registers 6
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 537
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 538
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 539
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v3

    return-wide v3
.end method

.method static blacklist getDoubleVolatile(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)D
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 327
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 329
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getDoubleVolatile(Ljava/lang/Object;J)D

    move-result-wide v2

    return-wide v2
.end method

.method static blacklist getDoubleVolatile(Ljava/lang/invoke/MethodHandleImpl;)D
    .registers 6
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 543
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 544
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 545
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getDoubleVolatile(Ljava/lang/Object;J)D

    move-result-wide v3

    return-wide v3
.end method

.method static blacklist getFloat(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)F
    .registers 5
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 333
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 335
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v2

    return v2
.end method

.method static blacklist getFloat(Ljava/lang/invoke/MethodHandleImpl;)F
    .registers 5
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 549
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 550
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 551
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v3

    return v3
.end method

.method static blacklist getFloatVolatile(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)F
    .registers 5
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 339
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 341
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getFloatVolatile(Ljava/lang/Object;J)F

    move-result v2

    return v2
.end method

.method static blacklist getFloatVolatile(Ljava/lang/invoke/MethodHandleImpl;)F
    .registers 5
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 555
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 556
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 557
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getFloatVolatile(Ljava/lang/Object;J)F

    move-result v3

    return v3
.end method

.method static blacklist getInt(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)I
    .registers 5
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 297
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 299
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    return v2
.end method

.method static blacklist getInt(Ljava/lang/invoke/MethodHandleImpl;)I
    .registers 5
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 513
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 514
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 515
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    return v3
.end method

.method static blacklist getIntVolatile(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)I
    .registers 5
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 303
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 305
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v2

    return v2
.end method

.method static blacklist getIntVolatile(Ljava/lang/invoke/MethodHandleImpl;)I
    .registers 5
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 519
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 520
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 521
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v3

    return v3
.end method

.method static blacklist getLong(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)J
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 309
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 311
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    return-wide v2
.end method

.method static blacklist getLong(Ljava/lang/invoke/MethodHandleImpl;)J
    .registers 6
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 525
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 526
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 527
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    return-wide v3
.end method

.method static blacklist getLongVolatile(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)J
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 315
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 317
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v2

    return-wide v2
.end method

.method static blacklist getLongVolatile(Ljava/lang/invoke/MethodHandleImpl;)J
    .registers 6
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 531
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 532
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 533
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v3

    return-wide v3
.end method

.method static blacklist getReference(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)Ljava/lang/Object;
    .registers 5
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 345
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 347
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getReference(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method static blacklist getReference(Ljava/lang/invoke/MethodHandleImpl;)Ljava/lang/Object;
    .registers 5
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 561
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 562
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 563
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getReference(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method static blacklist getReferenceVolatile(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)Ljava/lang/Object;
    .registers 5
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 351
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 353
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getReferenceVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method static blacklist getReferenceVolatile(Ljava/lang/invoke/MethodHandleImpl;)Ljava/lang/Object;
    .registers 5
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 567
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 568
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 569
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getReferenceVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method static blacklist getShort(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)S
    .registers 5
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 285
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 287
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v2

    return v2
.end method

.method static blacklist getShort(Ljava/lang/invoke/MethodHandleImpl;)S
    .registers 5
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 501
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 502
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 503
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v3

    return v3
.end method

.method static blacklist getShortVolatile(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)S
    .registers 5
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 291
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 293
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Ljdk/internal/misc/Unsafe;->getShortVolatile(Ljava/lang/Object;J)S

    move-result v2

    return v2
.end method

.method static blacklist getShortVolatile(Ljava/lang/invoke/MethodHandleImpl;)S
    .registers 5
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 507
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 508
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 509
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2}, Ljdk/internal/misc/Unsafe;->getShortVolatile(Ljava/lang/Object;J)S

    move-result v3

    return v3
.end method

.method static blacklist putBoolean(Ljava/lang/Object;ZLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # Z
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 141
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 143
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1, p1}, Ljdk/internal/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 144
    return-void
.end method

.method static blacklist putBoolean(ZLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "value"    # Z
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 357
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 358
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 359
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2, p0}, Ljdk/internal/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 360
    return-void
.end method

.method static blacklist putBooleanVolatile(Ljava/lang/Object;ZLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # Z
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 147
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 149
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1, p1}, Ljdk/internal/misc/Unsafe;->putBooleanVolatile(Ljava/lang/Object;JZ)V

    .line 150
    return-void
.end method

.method static blacklist putBooleanVolatile(ZLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "value"    # Z
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 363
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 364
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 365
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2, p0}, Ljdk/internal/misc/Unsafe;->putBooleanVolatile(Ljava/lang/Object;JZ)V

    .line 366
    return-void
.end method

.method static blacklist putByte(BLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "value"    # B
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 369
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 370
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 371
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2, p0}, Ljdk/internal/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 372
    return-void
.end method

.method static blacklist putByte(Ljava/lang/Object;BLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # B
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 153
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 155
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1, p1}, Ljdk/internal/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 156
    return-void
.end method

.method static blacklist putByteVolatile(BLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "value"    # B
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 375
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 376
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 377
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2, p0}, Ljdk/internal/misc/Unsafe;->putByteVolatile(Ljava/lang/Object;JB)V

    .line 378
    return-void
.end method

.method static blacklist putByteVolatile(Ljava/lang/Object;BLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # B
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 159
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 161
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1, p1}, Ljdk/internal/misc/Unsafe;->putByteVolatile(Ljava/lang/Object;JB)V

    .line 162
    return-void
.end method

.method static blacklist putChar(CLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "value"    # C
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 381
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 382
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 383
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2, p0}, Ljdk/internal/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    .line 384
    return-void
.end method

.method static blacklist putChar(Ljava/lang/Object;CLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # C
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 165
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 167
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1, p1}, Ljdk/internal/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    .line 168
    return-void
.end method

.method static blacklist putCharVolatile(CLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "value"    # C
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 387
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 388
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 389
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2, p0}, Ljdk/internal/misc/Unsafe;->putCharVolatile(Ljava/lang/Object;JC)V

    .line 390
    return-void
.end method

.method static blacklist putCharVolatile(Ljava/lang/Object;CLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # C
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 171
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 173
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1, p1}, Ljdk/internal/misc/Unsafe;->putCharVolatile(Ljava/lang/Object;JC)V

    .line 174
    return-void
.end method

.method static blacklist putDouble(DLjava/lang/invoke/MethodHandleImpl;)V
    .registers 9
    .param p0, "value"    # D
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 429
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 430
    .local v1, "base":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v2

    .line 431
    .local v2, "offset":J
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    move-wide v4, p0

    .end local p0    # "value":D
    .local v4, "value":D
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 432
    return-void
.end method

.method static blacklist putDouble(Ljava/lang/Object;DLjava/lang/invoke/MethodHandleImpl;)V
    .registers 10
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # D
    .param p3, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 213
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {p3}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v2

    .line 215
    .local v2, "offset":J
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    move-object v1, p0

    move-wide v4, p1

    .end local p0    # "base":Ljava/lang/Object;
    .end local p1    # "value":D
    .local v1, "base":Ljava/lang/Object;
    .local v4, "value":D
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 216
    return-void
.end method

.method static blacklist putDoubleVolatile(DLjava/lang/invoke/MethodHandleImpl;)V
    .registers 9
    .param p0, "value"    # D
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 435
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 436
    .local v1, "base":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v2

    .line 437
    .local v2, "offset":J
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    move-wide v4, p0

    .end local p0    # "value":D
    .local v4, "value":D
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->putDoubleVolatile(Ljava/lang/Object;JD)V

    .line 438
    return-void
.end method

.method static blacklist putDoubleVolatile(Ljava/lang/Object;DLjava/lang/invoke/MethodHandleImpl;)V
    .registers 10
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # D
    .param p3, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 219
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {p3}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v2

    .line 221
    .local v2, "offset":J
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    move-object v1, p0

    move-wide v4, p1

    .end local p0    # "base":Ljava/lang/Object;
    .end local p1    # "value":D
    .local v1, "base":Ljava/lang/Object;
    .local v4, "value":D
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->putDoubleVolatile(Ljava/lang/Object;JD)V

    .line 222
    return-void
.end method

.method static blacklist putFloat(FLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "value"    # F
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 441
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 442
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 443
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2, p0}, Ljdk/internal/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 444
    return-void
.end method

.method static blacklist putFloat(Ljava/lang/Object;FLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # F
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 225
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 227
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1, p1}, Ljdk/internal/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 228
    return-void
.end method

.method static blacklist putFloatVolatile(FLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "value"    # F
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 447
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 448
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 449
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2, p0}, Ljdk/internal/misc/Unsafe;->putFloatVolatile(Ljava/lang/Object;JF)V

    .line 450
    return-void
.end method

.method static blacklist putFloatVolatile(Ljava/lang/Object;FLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # F
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 231
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 233
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1, p1}, Ljdk/internal/misc/Unsafe;->putFloatVolatile(Ljava/lang/Object;JF)V

    .line 234
    return-void
.end method

.method static blacklist putInt(ILjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "value"    # I
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 405
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 406
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 407
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2, p0}, Ljdk/internal/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 408
    return-void
.end method

.method static blacklist putInt(Ljava/lang/Object;ILjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # I
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 189
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 191
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1, p1}, Ljdk/internal/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 192
    return-void
.end method

.method static blacklist putIntVolatile(ILjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "value"    # I
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 411
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 412
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 413
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2, p0}, Ljdk/internal/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 414
    return-void
.end method

.method static blacklist putIntVolatile(Ljava/lang/Object;ILjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # I
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 195
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 197
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1, p1}, Ljdk/internal/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 198
    return-void
.end method

.method static blacklist putLong(JLjava/lang/invoke/MethodHandleImpl;)V
    .registers 9
    .param p0, "value"    # J
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 417
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 418
    .local v1, "base":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v2

    .line 419
    .local v2, "offset":J
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    move-wide v4, p0

    .end local p0    # "value":J
    .local v4, "value":J
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 420
    return-void
.end method

.method static blacklist putLong(Ljava/lang/Object;JLjava/lang/invoke/MethodHandleImpl;)V
    .registers 10
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # J
    .param p3, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 201
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {p3}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v2

    .line 203
    .local v2, "offset":J
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    move-object v1, p0

    move-wide v4, p1

    .end local p0    # "base":Ljava/lang/Object;
    .end local p1    # "value":J
    .local v1, "base":Ljava/lang/Object;
    .local v4, "value":J
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 204
    return-void
.end method

.method static blacklist putLongVolatile(JLjava/lang/invoke/MethodHandleImpl;)V
    .registers 9
    .param p0, "value"    # J
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 423
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 424
    .local v1, "base":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v2

    .line 425
    .local v2, "offset":J
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    move-wide v4, p0

    .end local p0    # "value":J
    .local v4, "value":J
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 426
    return-void
.end method

.method static blacklist putLongVolatile(Ljava/lang/Object;JLjava/lang/invoke/MethodHandleImpl;)V
    .registers 10
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # J
    .param p3, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 207
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {p3}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v2

    .line 209
    .local v2, "offset":J
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    move-object v1, p0

    move-wide v4, p1

    .end local p0    # "base":Ljava/lang/Object;
    .end local p1    # "value":J
    .local v1, "base":Ljava/lang/Object;
    .local v4, "value":J
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 210
    return-void
.end method

.method static blacklist putReference(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 237
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 239
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1, p1}, Ljdk/internal/misc/Unsafe;->putReference(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 240
    return-void
.end method

.method static blacklist putReference(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 453
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 455
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2, p0}, Ljdk/internal/misc/Unsafe;->putReference(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 456
    return-void
.end method

.method static blacklist putReferenceVolatile(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 243
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 245
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1, p1}, Ljdk/internal/misc/Unsafe;->putReferenceVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 246
    return-void
.end method

.method static blacklist putReferenceVolatile(Ljava/lang/Object;Ljava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 459
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 460
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 461
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2, p0}, Ljdk/internal/misc/Unsafe;->putReferenceVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 462
    return-void
.end method

.method static blacklist putShort(Ljava/lang/Object;SLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # S
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 177
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 179
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1, p1}, Ljdk/internal/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 180
    return-void
.end method

.method static blacklist putShort(SLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "value"    # S
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 393
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 394
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 395
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2, p0}, Ljdk/internal/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 396
    return-void
.end method

.method static blacklist putShortVolatile(Ljava/lang/Object;SLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "base"    # Ljava/lang/Object;
    .param p1, "value"    # S
    .param p2, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 183
    invoke-static {p0}, Ljava/lang/invoke/DirectMethodHandle;->checkBase(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p2}, Ljava/lang/invoke/DirectMethodHandle;->fieldOffset(Ljava/lang/Object;)J

    move-result-wide v0

    .line 185
    .local v0, "offset":J
    sget-object v2, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1, p1}, Ljdk/internal/misc/Unsafe;->putShortVolatile(Ljava/lang/Object;JS)V

    .line 186
    return-void
.end method

.method static blacklist putShortVolatile(SLjava/lang/invoke/MethodHandleImpl;)V
    .registers 6
    .param p0, "value"    # S
    .param p1, "mh"    # Ljava/lang/invoke/MethodHandleImpl;

    .line 399
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticBase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 400
    .local v0, "base":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/invoke/DirectMethodHandle;->staticOffset(Ljava/lang/Object;)J

    move-result-wide v1

    .line 401
    .local v1, "offset":J
    sget-object v3, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0, v1, v2, p0}, Ljdk/internal/misc/Unsafe;->putShortVolatile(Ljava/lang/Object;JS)V

    .line 402
    return-void
.end method
