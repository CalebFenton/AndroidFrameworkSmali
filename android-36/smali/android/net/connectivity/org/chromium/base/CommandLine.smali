.class public abstract Landroid/net/connectivity/org/chromium/base/CommandLine;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/CommandLine$NativeCommandLine;,
        Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;,
        Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist SWITCH_PREFIX:Ljava/lang/String; = "--"

.field private static final blacklist SWITCH_TERMINATOR:Ljava/lang/String; = "--"

.field private static final blacklist SWITCH_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final blacklist TAG:Ljava/lang/String; = "CommandLine"

.field private static final blacklist sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/net/connectivity/org/chromium/base/CommandLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    nop

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/CommandLine-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/CommandLine;-><init>()V

    return-void
.end method

.method public static blacklist enableNativeProxy()V
    .registers 6

    .line 215
    sget-object v0, Landroid/net/connectivity/org/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;

    .line 216
    .local v0, "prev":Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    new-array v2, v1, [Ljava/lang/String;

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->getCommandLineArguments()[Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "args":[Ljava/lang/String;
    :goto_12
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CommandLineJni;->get()Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/net/connectivity/org/chromium/base/CommandLine$Natives;->init([Ljava/lang/String;)V

    .line 218
    sget-object v3, Landroid/net/connectivity/org/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Landroid/net/connectivity/org/chromium/base/CommandLine$NativeCommandLine;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/net/connectivity/org/chromium/base/CommandLine$NativeCommandLine;-><init>(Landroid/net/connectivity/org/chromium/base/CommandLine-IA;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 219
    const-string v3, "Switched to native command-line"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "CommandLine"

    invoke-static {v4, v3, v1}, Landroid/net/connectivity/org/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method public static blacklist getInstance()Landroid/net/connectivity/org/chromium/base/CommandLine;
    .registers 1

    .line 114
    sget-object v0, Landroid/net/connectivity/org/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/CommandLine;

    .line 115
    .local v0, "commandLine":Landroid/net/connectivity/org/chromium/base/CommandLine;
    nop

    .line 116
    return-object v0
.end method

.method public static blacklist getJavaSwitchesForTesting()[Ljava/lang/String;
    .registers 2

    .line 224
    sget-object v0, Landroid/net/connectivity/org/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/CommandLine;

    .line 225
    .local v0, "commandLine":Landroid/net/connectivity/org/chromium/base/CommandLine;
    if-eqz v0, :cond_12

    .line 226
    move-object v1, v0

    check-cast v1, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;->getCommandLineArguments()[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 228
    :cond_12
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static blacklist init([Ljava/lang/String;)V
    .registers 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 126
    nop

    .line 127
    sget-object v0, Landroid/net/connectivity/org/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;

    invoke-direct {v1, p0}, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public static blacklist initFromFile(Ljava/lang/String;)V
    .registers 6
    .param p0, "file"    # Ljava/lang/String;

    .line 136
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/CommandLine;->readFileAsUtf8(Ljava/lang/String;)[C

    move-result-object v0

    .line 137
    .local v0, "buffer":[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/CommandLine;->tokenizeQuotedArguments([C)[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "tokenized":[Ljava/lang/String;
    :goto_c
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/CommandLine;->init([Ljava/lang/String;)V

    .line 141
    if-eqz v1, :cond_1c

    .line 142
    const-string v2, "COMMAND-LINE FLAGS: %s (from %s)"

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CommandLine"

    invoke-static {v4, v2, v3, p0}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    :cond_1c
    return-void
.end method

.method public static blacklist isInitialized()Z
    .registers 1

    .line 109
    sget-object v0, Landroid/net/connectivity/org/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isNativeImplementationForTesting()Z
    .registers 1

    .line 100
    sget-object v0, Landroid/net/connectivity/org/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/net/connectivity/org/chromium/base/CommandLine$NativeCommandLine;

    return v0
.end method

.method static synthetic blacklist lambda$resetForTesting$0(Landroid/net/connectivity/org/chromium/base/CommandLine;)V
    .registers 2
    .param p0, "origCommandLine"    # Landroid/net/connectivity/org/chromium/base/CommandLine;

    .line 150
    sget-object v0, Landroid/net/connectivity/org/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private static blacklist readFileAsUtf8(Ljava/lang/String;)[C
    .registers 6
    .param p0, "fileName"    # Ljava/lang/String;

    .line 236
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "f":Ljava/io/File;
    :try_start_5
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_28

    .line 238
    .local v1, "reader":Ljava/io/FileReader;
    :try_start_a
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [C

    .line 239
    .local v2, "buffer":[C
    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 241
    .local v3, "charsRead":I
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v4
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_1e

    .line 242
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_28

    .line 241
    return-object v4

    .line 237
    .end local v2    # "buffer":[C
    .end local v3    # "charsRead":I
    :catchall_1e
    move-exception v2

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception v3

    :try_start_24
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "f":Ljava/io/File;
    .end local p0    # "fileName":Ljava/lang/String;
    :goto_27
    throw v2
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_28

    .line 242
    .end local v1    # "reader":Ljava/io/FileReader;
    .restart local v0    # "f":Ljava/io/File;
    .restart local p0    # "fileName":Ljava/lang/String;
    :catch_28
    move-exception v1

    .line 243
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static blacklist resetForTesting(Z)V
    .registers 4
    .param p0, "initialize"    # Z

    .line 148
    sget-object v0, Landroid/net/connectivity/org/chromium/base/CommandLine;->sCommandLine:Ljava/util/concurrent/atomic/AtomicReference;

    .line 149
    const/4 v1, 0x0

    if-eqz p0, :cond_b

    new-instance v2, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;

    invoke-direct {v2, v1}, Landroid/net/connectivity/org/chromium/base/CommandLine$JavaCommandLine;-><init>([Ljava/lang/String;)V

    move-object v1, v2

    :cond_b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/base/CommandLine;

    .line 150
    .local v0, "origCommandLine":Landroid/net/connectivity/org/chromium/base/CommandLine;
    new-instance v1, Landroid/net/connectivity/org/chromium/base/CommandLine$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/net/connectivity/org/chromium/base/CommandLine$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/CommandLine;)V

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method static blacklist tokenizeQuotedArguments([C)[Ljava/lang/String;
    .registers 13
    .param p0, "buffer"    # [C

    .line 165
    array-length v0, p0

    const v1, 0x18000

    if-gt v0, v1, :cond_8c

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 172
    .local v1, "arg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 173
    .local v2, "noQuote":C
    const/16 v3, 0x27

    .line 174
    .local v3, "singleQuote":C
    const/16 v4, 0x22

    .line 175
    .local v4, "doubleQuote":C
    const/4 v5, 0x0

    .line 176
    .local v5, "currentQuote":C
    array-length v6, p0

    const/4 v7, 0x0

    move v8, v7

    :goto_15
    if-ge v8, v6, :cond_6d

    aget-char v9, p0, v8

    .line 178
    .local v9, "c":C
    if-nez v5, :cond_23

    const/16 v10, 0x27

    if-eq v9, v10, :cond_25

    const/16 v10, 0x22

    if-eq v9, v10, :cond_25

    :cond_23
    if-ne v9, v5, :cond_4c

    .line 180
    :cond_25
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_45

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_45

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1, v10, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_6a

    .line 184
    :cond_45
    if-nez v5, :cond_49

    move v10, v9

    goto :goto_4a

    :cond_49
    move v10, v7

    :goto_4a
    move v5, v10

    .end local v5    # "currentQuote":C
    .local v10, "currentQuote":C
    goto :goto_6a

    .line 186
    .end local v10    # "currentQuote":C
    .restart local v5    # "currentQuote":C
    :cond_4c
    if-nez v5, :cond_5f

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_5f

    .line 187
    if-eqz v1, :cond_6a

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    const/4 v1, 0x0

    goto :goto_6a

    .line 192
    :cond_5f
    if-nez v1, :cond_67

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v10

    .line 193
    :cond_67
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .end local v9    # "c":C
    :cond_6a
    :goto_6a
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 196
    :cond_6d
    if-eqz v1, :cond_7f

    .line 197
    if-eqz v5, :cond_78

    .line 198
    const-string v6, "CommandLine"

    const-string v7, "Unterminated quoted string: %s"

    invoke-static {v6, v7, v1}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    :cond_78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_7f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6

    .line 167
    .end local v0    # "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "arg":Ljava/lang/StringBuilder;
    .end local v2    # "noQuote":C
    .end local v3    # "singleQuote":C
    .end local v4    # "doubleQuote":C
    .end local v5    # "currentQuote":C
    :cond_8c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flags file too big: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract blacklist appendSwitch(Ljava/lang/String;)V
.end method

.method public abstract blacklist appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist appendSwitchesAndArguments([Ljava/lang/String;)V
.end method

.method public abstract blacklist getSwitchValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public blacklist getSwitchValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "switchString"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 55
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, p2

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public abstract blacklist getSwitches()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist hasSwitch(Ljava/lang/String;)Z
.end method

.method public abstract blacklist removeSwitch(Ljava/lang/String;)V
.end method
