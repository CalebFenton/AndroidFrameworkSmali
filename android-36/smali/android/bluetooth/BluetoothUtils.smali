.class public final Landroid/bluetooth/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothUtils$TypeValueEntry;,
        Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;,
        Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;,
        Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringRunnable;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist USER_HANDLE_NULL:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const-class v0, Landroid/bluetooth/BluetoothUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUtils;->TAG:Ljava/lang/String;

    .line 45
    const/16 v0, -0x2710

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUtils;->USER_HANDLE_NULL:Landroid/os/UserHandle;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction<",
            "TS;TR;>;TR;)TR;"
        }
    .end annotation

    .line 399
    .local p0, "service":Ljava/lang/Object;, "TS;"
    .local p1, "function":Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;, "Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction<TS;TR;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TR;"
    invoke-interface {p1, p0, p2}, Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/bluetooth/BluetoothAdapter;",
            "Ljava/util/function/Supplier<",
            "TS;>;",
            "Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction<",
            "TS;TR;>;TR;)TR;"
        }
    .end annotation

    .line 407
    .local p1, "provider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TS;>;"
    .local p2, "function":Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;, "Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction<TS;TR;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 408
    sget-object v0, Landroid/bluetooth/BluetoothUtils;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-object p3

    .line 411
    :cond_e
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 412
    .local v0, "service":Ljava/lang/Object;, "TS;"
    if-nez v0, :cond_1c

    .line 413
    sget-object v1, Landroid/bluetooth/BluetoothUtils;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-object p3

    .line 416
    :cond_1c
    invoke-static {v0, p2, p3}, Landroid/bluetooth/BluetoothUtils;->callService(Ljava/lang/Object;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist callServiceIfEnabled(Landroid/bluetooth/BluetoothAdapter;Ljava/util/function/Supplier;Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;)V
    .registers 6
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/bluetooth/BluetoothAdapter;",
            "Ljava/util/function/Supplier<",
            "TS;>;",
            "Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer<",
            "TS;>;)V"
        }
    .end annotation

    .line 423
    .local p1, "provider":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TS;>;"
    .local p2, "consumer":Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;, "Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer<TS;>;"
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 424
    sget-object v0, Landroid/bluetooth/BluetoothUtils;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void

    .line 427
    :cond_e
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 428
    .local v0, "service":Ljava/lang/Object;, "TS;"
    if-nez v0, :cond_1c

    .line 429
    sget-object v1, Landroid/bluetooth/BluetoothUtils;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void

    .line 432
    :cond_1c
    invoke-interface {p2, v0}, Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;->accept(Ljava/lang/Object;)V

    .line 433
    return-void
.end method

.method public static blacklist executeFromBinder(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 5
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 341
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 343
    .local v0, "identity":J
    :try_start_4
    new-instance v2, Landroid/bluetooth/BluetoothUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/bluetooth/BluetoothUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 345
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    nop

    .line 347
    return-void

    .line 345
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    throw v2
.end method

.method public static blacklist extractBytes([BII)[B
    .registers 7
    .param p0, "rawBytes"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 70
    array-length v0, p0

    sub-int/2addr v0, p1

    .line 71
    .local v0, "remainingLength":I
    if-ge v0, p2, :cond_3d

    .line 72
    sget-object v1, Landroid/bluetooth/BluetoothUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractBytes() remaining length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is less than copying length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", array length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v1, 0x0

    return-object v1

    .line 84
    :cond_3d
    new-array v1, p2, [B

    .line 85
    .local v1, "bytes":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    return-object v1
.end method

.method public static varargs blacklist formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 15
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 242
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_130

    .line 243
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_12c

    .line 244
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 247
    .local v3, "code":C
    const/4 v4, 0x0

    .line 248
    .local v4, "prefixChar":C
    const/4 v5, 0x0

    .line 249
    .local v5, "prefixLen":I
    const/4 v6, 0x2

    .line 250
    .local v6, "consume":I
    :goto_1e
    const/16 v7, 0x30

    const/4 v8, 0x1

    if-gt v7, v3, :cond_42

    const/16 v9, 0x39

    if-gt v3, v9, :cond_42

    .line 251
    if-nez v4, :cond_2f

    .line 252
    if-ne v3, v7, :cond_2c

    goto :goto_2e

    :cond_2c
    const/16 v7, 0x20

    :goto_2e
    move v4, v7

    .line 254
    :cond_2f
    mul-int/lit8 v5, v5, 0xa

    .line 255
    const/16 v7, 0xa

    invoke-static {v3, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/2addr v5, v7

    .line 256
    add-int/lit8 v6, v6, 0x1

    .line 257
    add-int v7, v2, v6

    sub-int/2addr v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    goto :goto_1e

    .line 261
    :cond_42
    const/4 v9, 0x0

    const-string v10, "Too few arguments"

    sparse-switch v3, :sswitch_data_140

    .line 300
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported format code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 281
    :sswitch_61
    array-length v11, p1

    if-eq v1, v11, :cond_be

    .line 284
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "j":I
    .local v10, "j":I
    aget-object v1, p1, v1

    .line 285
    .local v1, "arg":Ljava/lang/Object;
    instance-of v11, v1, Ljava/lang/Integer;

    if-eqz v11, :cond_78

    .line 286
    move-object v11, v1

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, "repl":Ljava/lang/String;
    goto :goto_9b

    .line 287
    .end local v11    # "repl":Ljava/lang/String;
    :cond_78
    instance-of v11, v1, Ljava/lang/Long;

    if-eqz v11, :cond_88

    .line 288
    move-object v11, v1

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "repl":Ljava/lang/String;
    goto :goto_9b

    .line 289
    .end local v11    # "repl":Ljava/lang/String;
    :cond_88
    instance-of v11, v1, Ljava/lang/Byte;

    if-eqz v11, :cond_9d

    .line 290
    move-object v11, v1

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-static {v11}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 295
    .end local v1    # "arg":Ljava/lang/Object;
    .restart local v11    # "repl":Ljava/lang/String;
    :goto_9b
    move v1, v10

    goto :goto_102

    .line 292
    .end local v11    # "repl":Ljava/lang/String;
    .restart local v1    # "arg":Ljava/lang/Object;
    :cond_9d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported hex type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 293
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 282
    .end local v10    # "j":I
    .local v1, "j":I
    :cond_be
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 274
    :sswitch_c4
    array-length v11, p1

    if-eq v1, v11, :cond_d1

    .line 277
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "j":I
    .restart local v10    # "j":I
    aget-object v1, p1, v1

    .line 278
    .local v1, "arg":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 279
    .end local v1    # "arg":Ljava/lang/Object;
    .restart local v11    # "repl":Ljava/lang/String;
    move v1, v10

    goto :goto_102

    .line 275
    .end local v10    # "j":I
    .end local v11    # "repl":Ljava/lang/String;
    .local v1, "j":I
    :cond_d1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 263
    :sswitch_d7
    array-length v11, p1

    if-eq v1, v11, :cond_f9

    .line 266
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "j":I
    .restart local v10    # "j":I
    aget-object v1, p1, v1

    .line 267
    .local v1, "arg":Ljava/lang/Object;
    instance-of v11, v1, Ljava/lang/Boolean;

    if-eqz v11, :cond_ee

    .line 268
    move-object v11, v1

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "repl":Ljava/lang/String;
    goto :goto_f7

    .line 270
    .end local v11    # "repl":Ljava/lang/String;
    :cond_ee
    if-eqz v1, :cond_f2

    move v11, v8

    goto :goto_f3

    :cond_f2
    move v11, v9

    :goto_f3
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    .line 272
    .end local v1    # "arg":Ljava/lang/Object;
    .restart local v11    # "repl":Ljava/lang/String;
    :goto_f7
    move v1, v10

    goto :goto_102

    .line 264
    .end local v10    # "j":I
    .end local v11    # "repl":Ljava/lang/String;
    .local v1, "j":I
    :cond_f9
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 297
    :sswitch_ff
    const-string v11, "%"

    .line 298
    .restart local v11    # "repl":Ljava/lang/String;
    nop

    .line 304
    :goto_102
    add-int v10, v2, v6

    invoke-virtual {v0, v2, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    if-ne v4, v7, :cond_112

    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x2d

    if-ne v7, v10, :cond_112

    goto :goto_113

    :cond_112
    move v8, v9

    .line 308
    .local v8, "prefixInsert":I
    :goto_113
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "k":I
    :goto_117
    if-ge v7, v5, :cond_121

    .line 309
    add-int v9, v2, v8

    invoke-virtual {v0, v9, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 308
    add-int/lit8 v7, v7, 0x1

    goto :goto_117

    .line 311
    .end local v7    # "k":I
    :cond_121
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v2, v7

    .line 312
    .end local v3    # "code":C
    .end local v4    # "prefixChar":C
    .end local v5    # "prefixLen":I
    .end local v6    # "consume":I
    .end local v8    # "prefixInsert":I
    .end local v11    # "repl":Ljava/lang/String;
    goto/16 :goto_7

    .line 313
    :cond_12c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 316
    .end local v2    # "i":I
    :cond_130
    array-length v2, p1

    if-ne v1, v2, :cond_138

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 317
    :cond_138
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Too many arguments"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_140
    .sparse-switch
        0x25 -> :sswitch_ff
        0x62 -> :sswitch_d7
        0x63 -> :sswitch_c4
        0x64 -> :sswitch_c4
        0x66 -> :sswitch_c4
        0x73 -> :sswitch_c4
        0x78 -> :sswitch_61
    .end sparse-switch
.end method

.method public static blacklist inlineStackTrace()Ljava/lang/String;
    .registers 4

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 439
    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/bluetooth/BluetoothUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    .line 440
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static blacklist isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 450
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic blacklist lambda$executeFromBinder$0(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "callback"    # Ljava/lang/Runnable;

    .line 343
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic blacklist lambda$inlineStackTrace$1(Ljava/lang/StringBuilder;Ljava/lang/StackTraceElement;)V
    .registers 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "trace"    # Ljava/lang/StackTraceElement;

    .line 440
    const-string v0, " [at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static blacklist logRemoteException(Ljava/lang/String;Landroid/os/RemoteException;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "ex"    # Landroid/os/RemoteException;

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->inlineStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void
.end method

.method public static blacklist parseLengthTypeValueBytes([B)Ljava/util/List;
    .registers 10
    .param p0, "rawBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothUtils$TypeValueEntry;",
            ">;"
        }
    .end annotation

    .line 99
    if-nez p0, :cond_7

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 102
    :cond_7
    array-length v0, p0

    if-nez v0, :cond_f

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 106
    :cond_f
    const/4 v0, 0x0

    .line 107
    .local v0, "currentPos":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothUtils$TypeValueEntry;>;"
    :goto_15
    array-length v2, p0

    if-ge v0, v2, :cond_a0

    .line 110
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 111
    .local v2, "length":I
    if-nez v2, :cond_20

    .line 112
    goto/16 :goto_a0

    .line 114
    :cond_20
    add-int/lit8 v0, v0, 0x1

    .line 115
    array-length v3, p0

    const-string v4, ", currentPost = "

    if-lt v0, v3, :cond_49

    .line 116
    sget-object v3, Landroid/bluetooth/BluetoothUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseLtv() no type and value after length, rawBytes length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    goto :goto_a0

    .line 125
    :cond_49
    add-int/lit8 v3, v2, -0x1

    .line 127
    .local v3, "dataLength":I
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    .line 128
    .local v5, "type":I
    add-int/lit8 v0, v0, 0x1

    .line 129
    array-length v6, p0

    if-lt v0, v6, :cond_76

    .line 130
    sget-object v6, Landroid/bluetooth/BluetoothUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseLtv() no value after length, rawBytes length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    goto :goto_a0

    .line 138
    :cond_76
    invoke-static {p0, v0, v3}, Landroid/bluetooth/BluetoothUtils;->extractBytes([BII)[B

    move-result-object v4

    .line 139
    .local v4, "value":[B
    if-nez v4, :cond_95

    .line 140
    sget-object v6, Landroid/bluetooth/BluetoothUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to extract bytes, currentPost = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto :goto_a0

    .line 143
    :cond_95
    new-instance v6, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    invoke-direct {v6, v5, v4}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;-><init>(I[B)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/2addr v0, v3

    .line 145
    .end local v2    # "length":I
    .end local v3    # "dataLength":I
    .end local v4    # "value":[B
    .end local v5    # "type":I
    goto/16 :goto_15

    .line 146
    :cond_a0
    :goto_a0
    return-object v1
.end method

.method public static blacklist serializeTypeValue(Ljava/util/List;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothUtils$TypeValueEntry;",
            ">;)[B"
        }
    .end annotation

    .line 157
    .local p0, "typeValueEntries":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothUtils$TypeValueEntry;>;"
    const/4 v0, 0x0

    .line 158
    .local v0, "length":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 160
    .local v2, "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    add-int/lit8 v0, v0, 0x2

    .line 161
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    if-eqz v3, :cond_44

    .line 162
    sget-object v1, Landroid/bluetooth/BluetoothUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serializeTypeValue() type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 165
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is out of range of 0-0xFF"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-object v4

    .line 169
    :cond_44
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v3

    if-nez v3, :cond_52

    .line 170
    sget-object v1, Landroid/bluetooth/BluetoothUtils;->TAG:Ljava/lang/String;

    const-string v3, "serializeTypeValue() value is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-object v4

    .line 173
    :cond_52
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    .line 174
    .local v3, "lengthValue":I
    and-int/lit16 v5, v3, 0xff

    sub-int v5, v3, v5

    if-eqz v5, :cond_83

    .line 175
    sget-object v1, Landroid/bluetooth/BluetoothUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serializeTypeValue() entry length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 178
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not in range of 0 to 254"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-object v4

    .line 182
    :cond_83
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v0, v4

    .line 183
    .end local v2    # "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    .end local v3    # "lengthValue":I
    goto/16 :goto_5

    .line 184
    :cond_8b
    new-array v1, v0, [B

    .line 185
    .local v1, "result":[B
    const/4 v2, 0x0

    .line 186
    .local v2, "currentPos":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_92
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 187
    .local v4, "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 188
    add-int/lit8 v2, v2, 0x1

    .line 189
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 190
    add-int/lit8 v2, v2, 0x1

    .line 191
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v5

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v2, v5

    .line 193
    .end local v4    # "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    goto :goto_92

    .line 194
    :cond_cb
    return-object v1
.end method

.method public static blacklist toAnonymizedAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "address"    # Ljava/lang/String;

    .line 204
    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_b

    goto :goto_25

    .line 207
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XX:XX:XX:XX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 205
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V
    .registers 2
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "str"    # Ljava/lang/String;

    .line 332
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    return-void
.end method
