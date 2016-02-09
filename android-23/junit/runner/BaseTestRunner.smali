.class public abstract Ljunit/runner/BaseTestRunner;
.super Ljava/lang/Object;
.source "BaseTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# static fields
.field public static final SUITE_METHODNAME:Ljava/lang/String; = "suite"

.field private static fPreferences:Ljava/util/Properties;

.field static fgFilterStack:Z

.field static fgMaxMessageLength:I


# instance fields
.field fLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 31
    const/16 v0, 0x1f4

    #@2
    sput v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    #@4
    .line 32
    const/4 v0, 0x1

    #@5
    sput-boolean v0, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    #@7
    .line 337
    const-string/jumbo v0, "maxmessage"

    #@a
    sget v1, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    #@c
    invoke-static {v0, v1}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;I)I

    #@f
    move-result v0

    #@10
    sput v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    #@12
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    #@6
    .line 27
    return-void
.end method

.method static filterLine(Ljava/lang/String;)Z
    .locals 6
    .param p0, "line"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 319
    const/16 v2, 0x8

    #@4
    new-array v1, v2, [Ljava/lang/String;

    #@6
    .line 320
    const-string/jumbo v2, "junit.framework.TestCase"

    #@9
    aput-object v2, v1, v4

    #@b
    .line 321
    const-string/jumbo v2, "junit.framework.TestResult"

    #@e
    aput-object v2, v1, v5

    #@10
    .line 322
    const-string/jumbo v2, "junit.framework.TestSuite"

    #@13
    const/4 v3, 0x2

    #@14
    aput-object v2, v1, v3

    #@16
    .line 323
    const-string/jumbo v2, "junit.framework.Assert."

    #@19
    const/4 v3, 0x3

    #@1a
    aput-object v2, v1, v3

    #@1c
    .line 324
    const-string/jumbo v2, "junit.swingui.TestRunner"

    #@1f
    const/4 v3, 0x4

    #@20
    aput-object v2, v1, v3

    #@22
    .line 325
    const-string/jumbo v2, "junit.awtui.TestRunner"

    #@25
    const/4 v3, 0x5

    #@26
    aput-object v2, v1, v3

    #@28
    .line 326
    const-string/jumbo v2, "junit.textui.TestRunner"

    #@2b
    const/4 v3, 0x6

    #@2c
    aput-object v2, v1, v3

    #@2e
    .line 327
    const-string/jumbo v2, "java.lang.reflect.Method.invoke("

    #@31
    const/4 v3, 0x7

    #@32
    aput-object v2, v1, v3

    #@34
    .line 329
    .local v1, "patterns":[Ljava/lang/String;
    const/4 v0, 0x0

    #@35
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@36
    if-ge v0, v2, :cond_1

    #@38
    .line 330
    aget-object v2, v1, v0

    #@3a
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@3d
    move-result v2

    #@3e
    if-lez v2, :cond_0

    #@40
    .line 331
    return v5

    #@41
    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_0

    #@44
    .line 333
    :cond_1
    return v4
.end method

.method public static getFilteredTrace(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "stack"    # Ljava/lang/String;

    #@0
    .prologue
    .line 291
    invoke-static {}, Ljunit/runner/BaseTestRunner;->showStackRaw()Z

    #@3
    move-result v6

    #@4
    if-eqz v6, :cond_0

    #@6
    .line 292
    return-object p0

    #@7
    .line 294
    :cond_0
    new-instance v5, Ljava/io/StringWriter;

    #@9
    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    #@c
    .line 295
    .local v5, "sw":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    #@e
    invoke-direct {v3, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@11
    .line 296
    .local v3, "pw":Ljava/io/PrintWriter;
    new-instance v4, Ljava/io/StringReader;

    #@13
    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@16
    .line 299
    .local v4, "sr":Ljava/io/StringReader;
    new-instance v1, Ljava/io/BufferedReader;

    #@18
    const/16 v6, 0x3e8

    #@1a
    invoke-direct {v1, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    #@1d
    .line 304
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@23
    .line 305
    invoke-static {v2}, Ljunit/runner/BaseTestRunner;->filterLine(Ljava/lang/String;)Z

    #@26
    move-result v6

    #@27
    if-nez v6, :cond_1

    #@29
    .line 306
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    goto :goto_0

    #@2d
    .line 308
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@2e
    .line 309
    .local v0, "IOException":Ljava/lang/Exception;
    return-object p0

    #@2f
    .line 311
    .end local v0    # "IOException":Ljava/lang/Exception;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    return-object v6
.end method

.method public static getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 272
    new-instance v1, Ljava/io/StringWriter;

    #@2
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    #@5
    .line 273
    .local v1, "stringWriter":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    #@7
    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@a
    .line 274
    .local v3, "writer":Ljava/io/PrintWriter;
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@d
    .line 275
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    #@10
    move-result-object v0

    #@11
    .line 276
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 277
    .local v2, "trace":Ljava/lang/String;
    invoke-static {v2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    return-object v4
.end method

.method public static getPreference(Ljava/lang/String;I)I
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "dflt"    # I

    #@0
    .prologue
    .line 257
    invoke-static {p0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 258
    .local v2, "value":Ljava/lang/String;
    move v0, p1

    #@5
    .line 259
    .local v0, "intValue":I
    if-nez v2, :cond_0

    #@7
    .line 260
    return v0

    #@8
    .line 262
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v0

    #@c
    .line 265
    :goto_0
    return v0

    #@d
    .line 263
    :catch_0
    move-exception v1

    #@e
    .local v1, "ne":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 253
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected static getPreferences()Ljava/util/Properties;
    .locals 3

    #@0
    .prologue
    .line 47
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 48
    new-instance v0, Ljava/util/Properties;

    #@6
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@9
    sput-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    #@b
    .line 49
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    #@d
    const-string/jumbo v1, "loading"

    #@10
    const-string/jumbo v2, "true"

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 50
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    #@18
    const-string/jumbo v1, "filterstack"

    #@1b
    const-string/jumbo v2, "true"

    #@1e
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 51
    invoke-static {}, Ljunit/runner/BaseTestRunner;->readPreferences()V

    #@24
    .line 53
    :cond_0
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    #@26
    return-object v0
.end method

.method private static getPreferencesFile()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 233
    const-string/jumbo v1, "user.home"

    #@3
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 234
    .local v0, "home":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    #@9
    const-string/jumbo v2, "junit.properties"

    #@c
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    return-object v1
.end method

.method public static inVAJava()Z
    .locals 1

    #@0
    .prologue
    .line 283
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method private static readPreferences()V
    .locals 6

    #@0
    .prologue
    .line 238
    const/4 v2, 0x0

    #@1
    .line 240
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    #@3
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferencesFile()Ljava/io/File;

    #@6
    move-result-object v4

    #@7
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 241
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/util/Properties;

    #@c
    .end local v2    # "is":Ljava/io/InputStream;
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    #@f
    move-result-object v5

    #@10
    invoke-direct {v4, v5}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    #@13
    invoke-static {v4}, Ljunit/runner/BaseTestRunner;->setPreferences(Ljava/util/Properties;)V

    #@16
    .line 242
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@1d
    move-object v2, v3

    #@1e
    .line 237
    .end local v3    # "is":Ljava/io/InputStream;
    .local v0, "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 243
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@20
    .line 245
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz v2, :cond_0

    #@22
    .line 246
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@25
    goto :goto_0

    #@26
    .line 247
    :catch_1
    move-exception v1

    #@27
    .local v1, "e1":Ljava/io/IOException;
    goto :goto_0

    #@28
    .line 243
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v0

    #@29
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@2a
    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static savePreferences()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    new-instance v0, Ljava/io/FileOutputStream;

    #@2
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferencesFile()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@9
    .line 59
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, ""

    #@10
    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 61
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    #@16
    .line 56
    return-void

    #@17
    .line 60
    :catchall_0
    move-exception v1

    #@18
    .line 61
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    #@1b
    .line 60
    throw v1
.end method

.method protected static setPreferences(Ljava/util/Properties;)V
    .locals 0
    .param p0, "preferences"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 43
    sput-object p0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    #@2
    .line 42
    return-void
.end method

.method protected static showStackRaw()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 315
    const-string/jumbo v1, "filterstack"

    #@4
    invoke-static {v1}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const-string/jumbo v2, "true"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    sget-boolean v1, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    #@13
    if-nez v1, :cond_1

    #@15
    :cond_0
    :goto_0
    return v0

    #@16
    :cond_1
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method public static truncate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
    sget v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    sget v1, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    #@b
    if-le v0, v1, :cond_0

    #@d
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    sget v1, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    #@14
    const/4 v2, 0x0

    #@15
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string/jumbo v1, "..."

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object p0

    #@28
    .line 195
    :cond_0
    return-object p0
.end method


# virtual methods
.method public declared-synchronized addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 75
    const/4 v0, 0x1

    #@2
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Ljunit/runner/BaseTestRunner;->testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 74
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 79
    const/4 v0, 0x2

    #@2
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Ljunit/runner/BaseTestRunner;->testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 78
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method protected clearStatus()V
    .locals 0

    #@0
    .prologue
    .line 225
    return-void
.end method

.method public elapsedTimeAsString(J)Ljava/lang/String;
    .locals 7
    .param p1, "runTime"    # J

    #@0
    .prologue
    .line 147
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    #@3
    move-result-object v0

    #@4
    long-to-double v2, p1

    #@5
    const-wide v4, 0x408f400000000000L    # 1000.0

    #@a
    div-double/2addr v2, v4

    #@b
    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public declared-synchronized endTest(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 71
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->testEnded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 70
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public extractClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 184
    const-string/jumbo v0, "Default package for"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 185
    const-string/jumbo v0, "."

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 186
    :cond_0
    return-object p1
.end method

.method public getLoader()Ljunit/runner/TestSuiteLoader;
    .locals 1

    #@0
    .prologue
    .line 211
    new-instance v0, Ljunit/runner/StandardTestSuiteLoader;

    #@2
    invoke-direct {v0}, Ljunit/runner/StandardTestSuiteLoader;-><init>()V

    #@5
    return-object v0
.end method

.method public getTest(Ljava/lang/String;)Ljunit/framework/Test;
    .locals 11
    .param p1, "suiteClassName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v8

    #@5
    if-gtz v8, :cond_0

    #@7
    .line 96
    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    #@a
    .line 97
    return-object v10

    #@b
    .line 99
    :cond_0
    const/4 v7, 0x0

    #@c
    .line 101
    .local v7, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljunit/runner/BaseTestRunner;->loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v7

    #@10
    .line 112
    .local v7, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    #@11
    .line 114
    .local v5, "suiteMethod":Ljava/lang/reflect/Method;
    :try_start_1
    const-string/jumbo v8, "suite"

    #@14
    const/4 v9, 0x0

    #@15
    new-array v9, v9, [Ljava/lang/Class;

    #@17
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    #@1a
    move-result-object v5

    #@1b
    .line 120
    .local v5, "suiteMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    #@1e
    move-result v8

    #@1f
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@22
    move-result v8

    #@23
    if-nez v8, :cond_2

    #@25
    .line 121
    const-string/jumbo v8, "Suite() method must be static"

    #@28
    invoke-virtual {p0, v8}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    #@2b
    .line 122
    return-object v10

    #@2c
    .line 108
    .end local v5    # "suiteMethod":Ljava/lang/reflect/Method;
    .local v7, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    #@2d
    .line 109
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v9, "Error: "

    #@35
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v8

    #@39
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@3c
    move-result-object v9

    #@3d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    invoke-virtual {p0, v8}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    #@48
    .line 110
    return-object v10

    #@49
    .line 102
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@4a
    .line 103
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    .line 104
    .local v0, "clazz":Ljava/lang/String;
    if-nez v0, :cond_1

    #@50
    .line 105
    move-object v0, p1

    #@51
    .line 106
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v9, "Class not found \""

    #@59
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v8

    #@5d
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v8

    #@61
    const-string/jumbo v9, "\""

    #@64
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v8

    #@68
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v8

    #@6c
    invoke-virtual {p0, v8}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    #@6f
    .line 107
    return-object v10

    #@70
    .line 115
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .local v5, "suiteMethod":Ljava/lang/reflect/Method;
    .local v7, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v2

    #@71
    .line 117
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    #@74
    .line 118
    new-instance v8, Ljunit/framework/TestSuite;

    #@76
    invoke-direct {v8, v7}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    #@79
    return-object v8

    #@7a
    .line 124
    .end local v2    # "e":Ljava/lang/Exception;
    .local v5, "suiteMethod":Ljava/lang/reflect/Method;
    :cond_2
    const/4 v6, 0x0

    #@7b
    .line 126
    .local v6, "test":Ljunit/framework/Test;
    const/4 v8, 0x0

    #@7c
    :try_start_2
    new-array v8, v8, [Ljava/lang/Class;

    #@7e
    const/4 v9, 0x0

    #@7f
    invoke-virtual {v5, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    move-result-object v6

    #@83
    .end local v6    # "test":Ljunit/framework/Test;
    check-cast v6, Ljunit/framework/Test;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    #@85
    .line 127
    .local v6, "test":Ljunit/framework/Test;
    if-nez v6, :cond_3

    #@87
    .line 128
    return-object v6

    #@88
    .line 134
    .end local v6    # "test":Ljunit/framework/Test;
    :catch_3
    move-exception v3

    #@89
    .line 135
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v9, "Failed to invoke suite():"

    #@91
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v8

    #@95
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    #@98
    move-result-object v9

    #@99
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v8

    #@9d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v8

    #@a1
    invoke-virtual {p0, v8}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    #@a4
    .line 136
    return-object v10

    #@a5
    .line 130
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v4

    #@a6
    .line 131
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v8, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v9, "Failed to invoke suite():"

    #@ae
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v8

    #@b2
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@b5
    move-result-object v9

    #@b6
    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@b9
    move-result-object v9

    #@ba
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v8

    #@be
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v8

    #@c2
    invoke-virtual {p0, v8}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    #@c5
    .line 132
    return-object v10

    #@c6
    .line 139
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v6    # "test":Ljunit/framework/Test;
    :cond_3
    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    #@c9
    .line 140
    return-object v6
.end method

.method protected loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "suiteClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected processArguments([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 155
    const/4 v1, 0x0

    #@2
    .line 156
    .local v1, "suiteName":Ljava/lang/String;
    const/4 v0, 0x0

    #@3
    .end local v1    # "suiteName":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@4
    if-ge v0, v2, :cond_4

    #@6
    .line 157
    aget-object v2, p1, v0

    #@8
    const-string/jumbo v3, "-noloading"

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 158
    invoke-virtual {p0, v4}, Ljunit/runner/BaseTestRunner;->setLoading(Z)V

    #@14
    .line 156
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 159
    :cond_0
    aget-object v2, p1, v0

    #@19
    const-string/jumbo v3, "-nofilterstack"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 160
    sput-boolean v4, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    #@24
    goto :goto_1

    #@25
    .line 161
    :cond_1
    aget-object v2, p1, v0

    #@27
    const-string/jumbo v3, "-c"

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_3

    #@30
    .line 162
    array-length v2, p1

    #@31
    add-int/lit8 v3, v0, 0x1

    #@33
    if-le v2, v3, :cond_2

    #@35
    .line 163
    add-int/lit8 v2, v0, 0x1

    #@37
    aget-object v2, p1, v2

    #@39
    invoke-virtual {p0, v2}, Ljunit/runner/BaseTestRunner;->extractClassName(Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 166
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 165
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@42
    const-string/jumbo v3, "Missing Test class name"

    #@45
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    goto :goto_2

    #@49
    .line 168
    :cond_3
    aget-object v1, p1, v0

    #@4b
    .local v1, "suiteName":Ljava/lang/String;
    goto :goto_1

    #@4c
    .line 171
    .end local v1    # "suiteName":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method protected abstract runFailed(Ljava/lang/String;)V
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 178
    iput-boolean p1, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    #@2
    .line 177
    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 66
    return-void
.end method

.method public declared-synchronized startTest(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 39
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->testStarted(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 38
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public abstract testEnded(Ljava/lang/String;)V
.end method

.method public abstract testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
.end method

.method public abstract testStarted(Ljava/lang/String;)V
.end method

.method protected useReloadingTestSuiteLoader()Z
    .locals 2

    #@0
    .prologue
    .line 229
    const-string/jumbo v0, "loading"

    #@3
    invoke-static {v0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    const-string/jumbo v1, "true"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    iget-boolean v0, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method
