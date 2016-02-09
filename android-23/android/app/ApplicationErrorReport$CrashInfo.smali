.class public Landroid/app/ApplicationErrorReport$CrashInfo;
.super Ljava/lang/Object;
.source "ApplicationErrorReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationErrorReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrashInfo"
.end annotation


# instance fields
.field public exceptionClassName:Ljava/lang/String;

.field public exceptionMessage:Ljava/lang/String;

.field public stackTrace:Ljava/lang/String;

.field public throwClassName:Ljava/lang/String;

.field public throwFileName:Ljava/lang/String;

.field public throwLineNumber:I

.field public throwMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    #@9
    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    #@f
    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    #@15
    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    #@1b
    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    #@21
    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    #@27
    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@2d
    .line 382
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 344
    new-instance v3, Ljava/io/StringWriter;

    #@6
    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    #@9
    .line 345
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    #@b
    const/16 v5, 0x100

    #@d
    invoke-direct {v1, v3, v6, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@10
    .line 346
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@13
    .line 347
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    #@16
    .line 348
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    iput-object v5, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@1c
    .line 349
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    iput-object v5, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    #@22
    .line 352
    move-object v2, p1

    #@23
    .line 353
    .local v2, "rootTr":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@26
    move-result-object v5

    #@27
    if-eqz v5, :cond_2

    #@29
    .line 354
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@2c
    move-result-object p1

    #@2d
    .line 355
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@30
    move-result-object v5

    #@31
    if-eqz v5, :cond_1

    #@33
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@36
    move-result-object v5

    #@37
    array-length v5, v5

    #@38
    if-lez v5, :cond_1

    #@3a
    .line 356
    move-object v2, p1

    #@3b
    .line 358
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    .line 359
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@44
    move-result v5

    #@45
    if-lez v5, :cond_0

    #@47
    .line 360
    iput-object v0, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    #@49
    goto :goto_0

    #@4a
    .line 364
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    iput-object v5, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    #@54
    .line 365
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@57
    move-result-object v5

    #@58
    array-length v5, v5

    #@59
    if-lez v5, :cond_3

    #@5b
    .line 366
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@5e
    move-result-object v5

    #@5f
    aget-object v4, v5, v6

    #@61
    .line 367
    .local v4, "trace":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    iput-object v5, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    #@67
    .line 368
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    iput-object v5, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    #@6d
    .line 369
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    iput-object v5, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    #@73
    .line 370
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@76
    move-result v5

    #@77
    iput v5, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    #@79
    .line 343
    .end local v4    # "trace":Ljava/lang/StackTraceElement;
    :goto_1
    return-void

    #@7a
    .line 372
    :cond_3
    const-string/jumbo v5, "unknown"

    #@7d
    iput-object v5, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    #@7f
    .line 373
    const-string/jumbo v5, "unknown"

    #@82
    iput-object v5, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    #@84
    .line 374
    const-string/jumbo v5, "unknown"

    #@87
    iput-object v5, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    #@89
    .line 375
    iput v6, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    #@8b
    goto :goto_1
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "exceptionClassName: "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1d
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const-string/jumbo v1, "exceptionMessage: "

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3a
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    const-string/jumbo v1, "throwFileName: "

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@57
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    const-string/jumbo v1, "throwClassName: "

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@74
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    const-string/jumbo v1, "throwMethodName: "

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v0

    #@8e
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@91
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    const-string/jumbo v1, "throwLineNumber: "

    #@9d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    iget v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    #@a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v0

    #@ab
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@ae
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v0

    #@b7
    const-string/jumbo v1, "stackTrace: "

    #@ba
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v0

    #@be
    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v0

    #@c8
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@cb
    .line 419
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@3
    move-result v0

    #@4
    .line 397
    .local v0, "start":I
    iget-object v2, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    #@6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9
    .line 398
    iget-object v2, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 399
    iget-object v2, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    #@10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 400
    iget-object v2, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    #@15
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 401
    iget-object v2, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    #@1a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 402
    iget v2, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    #@1f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 403
    iget-object v2, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@24
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@2a
    move-result v2

    #@2b
    sub-int v1, v2, v0

    #@2d
    .line 405
    .local v1, "total":I
    const/16 v2, 0x5000

    #@2f
    if-le v1, v2, :cond_0

    #@31
    .line 406
    const-string/jumbo v2, "Error"

    #@34
    new-instance v3, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v4, "ERR: exClass="

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    iget-object v4, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 407
    const-string/jumbo v2, "Error"

    #@50
    new-instance v3, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v4, "ERR: exMsg="

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    iget-object v4, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 408
    const-string/jumbo v2, "Error"

    #@6c
    new-instance v3, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v4, "ERR: file="

    #@74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v3

    #@78
    iget-object v4, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    #@7a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v3

    #@82
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 409
    const-string/jumbo v2, "Error"

    #@88
    new-instance v3, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v4, "ERR: class="

    #@90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v3

    #@94
    iget-object v4, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    #@96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v3

    #@9a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a1
    .line 410
    const-string/jumbo v2, "Error"

    #@a4
    new-instance v3, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v4, "ERR: method="

    #@ac
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v3

    #@b0
    iget-object v4, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    #@b2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v3

    #@b6
    const-string/jumbo v4, " line="

    #@b9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v3

    #@bd
    iget v4, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    #@bf
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v3

    #@c3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v3

    #@c7
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ca
    .line 411
    const-string/jumbo v2, "Error"

    #@cd
    new-instance v3, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v4, "ERR: stack="

    #@d5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v3

    #@d9
    iget-object v4, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@db
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v3

    #@df
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v3

    #@e3
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e6
    .line 412
    const-string/jumbo v2, "Error"

    #@e9
    new-instance v3, Ljava/lang/StringBuilder;

    #@eb
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ee
    const-string/jumbo v4, "ERR: TOTAL BYTES WRITTEN: "

    #@f1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v3

    #@f5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@f8
    move-result v4

    #@f9
    sub-int/2addr v4, v0

    #@fa
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v3

    #@fe
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v3

    #@102
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@105
    .line 395
    :cond_0
    return-void
.end method
