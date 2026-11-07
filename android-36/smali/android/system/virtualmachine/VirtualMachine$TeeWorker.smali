.class Landroid/system/virtualmachine/VirtualMachine$TeeWorker;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TeeWorker"
.end annotation


# instance fields
.field private final blacklist mIn:Ljava/io/InputStream;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mOuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Collection;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Collection<",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .line 2444
    .local p3, "outs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/OutputStream;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2445
    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$TeeWorker;->mName:Ljava/lang/String;

    .line 2446
    iput-object p2, p0, Landroid/system/virtualmachine/VirtualMachine$TeeWorker;->mIn:Ljava/io/InputStream;

    .line 2447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$TeeWorker;->mOuts:Ljava/util/List;

    .line 2448
    return-void
.end method

.method private static blacklist asErrnoException(Ljava/lang/Throwable;)Landroid/system/ErrnoException;
    .registers 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 2476
    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_8

    .line 2477
    move-object v0, p0

    check-cast v0, Landroid/system/ErrnoException;

    return-object v0

    .line 2478
    :cond_8
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_15

    .line 2480
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachine$TeeWorker;->asErrnoException(Ljava/lang/Throwable;)Landroid/system/ErrnoException;

    move-result-object v0

    return-object v0

    .line 2482
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist isErrnoError(Ljava/lang/Exception;I)Z
    .registers 4
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "expectedValue"    # I

    .line 2486
    invoke-static {p0}, Landroid/system/virtualmachine/VirtualMachine$TeeWorker;->asErrnoException(Ljava/lang/Throwable;)Landroid/system/ErrnoException;

    move-result-object v0

    .line 2487
    .local v0, "errno":Landroid/system/ErrnoException;
    if-eqz v0, :cond_c

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    if-ne v1, p1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 2452
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 2454
    .local v0, "buffer":[B
    :goto_4
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_37

    .line 2455
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine$TeeWorker;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 2456
    .local v1, "len":I
    if-gez v1, :cond_13

    .line 2457
    goto :goto_37

    .line 2459
    :cond_13
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine$TeeWorker;->mOuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_38

    .line 2461
    .local v3, "out":Ljava/io/OutputStream;
    const/4 v4, 0x0

    :try_start_26
    invoke-virtual {v3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_38

    .line 2467
    goto :goto_33

    .line 2462
    :catch_2a
    move-exception v4

    .line 2464
    .local v4, "e":Ljava/io/IOException;
    :try_start_2b
    sget v5, Landroid/system/OsConstants;->EAGAIN:I

    invoke-static {v4, v5}, Landroid/system/virtualmachine/VirtualMachine$TeeWorker;->isErrnoError(Ljava/lang/Exception;I)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 2468
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    :goto_33
    goto :goto_19

    .line 2465
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    :cond_34
    nop

    .end local v0    # "buffer":[B
    .end local p0    # "this":Landroid/system/virtualmachine/VirtualMachine$TeeWorker;
    throw v4
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_36} :catch_38

    .line 2469
    .end local v1    # "len":I
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local p0    # "this":Landroid/system/virtualmachine/VirtualMachine$TeeWorker;
    :cond_36
    goto :goto_4

    .line 2472
    :cond_37
    :goto_37
    goto :goto_53

    .line 2470
    :catch_38
    move-exception v1

    .line 2471
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tee "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine$TeeWorker;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VirtualMachine"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2473
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_53
    return-void
.end method
