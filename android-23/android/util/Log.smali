.class public final Landroid/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Log$TerribleFailure;,
        Landroid/util/Log$TerribleFailureHandler;,
        Landroid/util/Log$1;
    }
.end annotation


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final LOG_ID_CRASH:I = 0x4

.field public static final LOG_ID_EVENTS:I = 0x2

.field public static final LOG_ID_MAIN:I = 0x0

.field public static final LOG_ID_RADIO:I = 0x1

.field public static final LOG_ID_SYSTEM:I = 0x3

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static sWtfHandler:Landroid/util/Log$TerribleFailureHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 102
    new-instance v0, Landroid/util/Log$1;

    #@2
    invoke-direct {v0}, Landroid/util/Log$1;-><init>()V

    #@5
    sput-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    #@7
    .line 54
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 139
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x3

    #@2
    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const/16 v1, 0xa

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    const/4 v1, 0x0

    #@1c
    const/4 v2, 0x3

    #@1d
    invoke-static {v1, v2, p0, v0}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@20
    move-result v0

    #@21
    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 232
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x6

    #@2
    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const/16 v1, 0xa

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    const/4 v1, 0x0

    #@1c
    const/4 v2, 0x6

    #@1d
    invoke-static {v1, v2, p0, v0}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@20
    move-result v0

    #@21
    return v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 327
    if-nez p0, :cond_0

    #@2
    .line 328
    const-string/jumbo v3, ""

    #@5
    return-object v3

    #@6
    .line 333
    :cond_0
    move-object v2, p0

    #@7
    .line 334
    .local v2, "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_2

    #@9
    .line 335
    instance-of v3, v2, Ljava/net/UnknownHostException;

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 336
    const-string/jumbo v3, ""

    #@10
    return-object v3

    #@11
    .line 338
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@14
    move-result-object v2

    #@15
    goto :goto_0

    #@16
    .line 341
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    #@18
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    #@1b
    .line 342
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    #@1d
    const/4 v3, 0x0

    #@1e
    const/16 v4, 0x100

    #@20
    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@23
    .line 343
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@26
    .line 344
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    #@29
    .line 345
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    return-object v3
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x4

    #@2
    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const/16 v1, 0xa

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    const/4 v1, 0x0

    #@1c
    const/4 v2, 0x4

    #@1d
    invoke-static {v1, v2, p0, v0}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@20
    move-result v0

    #@21
    return v0
.end method

.method public static native isLoggable(Ljava/lang/String;I)Z
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 357
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1, p2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static native println_native(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static setWtfHandler(Landroid/util/Log$TerribleFailureHandler;)Landroid/util/Log$TerribleFailureHandler;
    .locals 3
    .param p0, "handler"    # Landroid/util/Log$TerribleFailureHandler;

    #@0
    .prologue
    .line 314
    if-nez p0, :cond_0

    #@2
    .line 315
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "handler == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 317
    :cond_0
    sget-object v0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    #@d
    .line 318
    .local v0, "oldHandler":Landroid/util/Log$TerribleFailureHandler;
    sput-object p0, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    #@f
    .line 319
    return-object v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 118
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x2

    #@2
    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const/16 v1, 0xa

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    const/4 v1, 0x0

    #@1c
    const/4 v2, 0x2

    #@1d
    invoke-static {v1, v2, p0, v0}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@20
    move-result v0

    #@21
    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 181
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x5

    #@2
    invoke-static {v0, v1, p0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const/16 v1, 0xa

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    const/4 v1, 0x0

    #@1c
    const/4 v2, 0x5

    #@1d
    invoke-static {v1, v2, p0, v0}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@20
    move-result v0

    #@21
    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 222
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x5

    #@6
    invoke-static {v1, v2, p0, v0}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method static wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I
    .locals 4
    .param p0, "logId"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;
    .param p4, "localStack"    # Z
    .param p5, "system"    # Z

    #@0
    .prologue
    .line 291
    new-instance v1, Landroid/util/Log$TerribleFailure;

    #@2
    invoke-direct {v1, p2, p3}, Landroid/util/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5
    .line 295
    .local v1, "what":Landroid/util/Log$TerribleFailure;
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    const/16 v3, 0xa

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 296
    if-eqz p4, :cond_0

    #@16
    move-object p3, v1

    #@17
    .end local p3    # "tr":Ljava/lang/Throwable;
    :cond_0
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    const/4 v3, 0x6

    #@24
    invoke-static {p0, v3, p1, v2}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@27
    move-result v0

    #@28
    .line 297
    .local v0, "bytes":I
    sget-object v2, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    #@2a
    invoke-interface {v2, p1, v1, p5}, Landroid/util/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    #@2d
    .line 298
    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 256
    const/4 v3, 0x0

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v4, v0

    #@5
    move v5, v0

    #@6
    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    move-object v1, p0

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move v4, v0

    #@5
    move v5, v0

    #@6
    .line 286
    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 275
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    move-object v1, p0

    #@6
    move-object v3, p1

    #@7
    move v4, v0

    #@8
    move v5, v0

    #@9
    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method static wtfQuiet(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "logId"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "system"    # Z

    #@0
    .prologue
    .line 302
    new-instance v0, Landroid/util/Log$TerribleFailure;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p2, v1}, Landroid/util/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6
    .line 303
    .local v0, "what":Landroid/util/Log$TerribleFailure;
    sget-object v1, Landroid/util/Log;->sWtfHandler:Landroid/util/Log$TerribleFailureHandler;

    #@8
    invoke-interface {v1, p1, v0, p3}, Landroid/util/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    #@b
    .line 301
    return-void
.end method

.method public static wtfStack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 265
    const/4 v3, 0x0

    #@2
    const/4 v4, 0x1

    #@3
    move-object v1, p0

    #@4
    move-object v2, p1

    #@5
    move v5, v0

    #@6
    invoke-static/range {v0 .. v5}, Landroid/util/Log;->wtf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZZ)I

    #@9
    move-result v0

    #@a
    return v0
.end method
