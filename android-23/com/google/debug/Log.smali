.class public Landroid_maps_conflict_avoidance/com/google/debug/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final LEVEL_NAMES:[Ljava/lang/String;

.field private static final logger:Landroid_maps_conflict_avoidance/com/google/debug/Logger;

.field private static final timers:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 65
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/debug/Log;->timers:Ljava/util/Hashtable;

    #@7
    const/16 v0, 0x9

    #@9
    .line 98
    new-array v0, v0, [Ljava/lang/String;

    #@b
    const/4 v1, 0x0

    #@c
    const-string/jumbo v2, "ALL"

    #@f
    aput-object v2, v0, v1

    #@11
    const/4 v1, 0x1

    #@12
    const-string/jumbo v2, "FINEST"

    #@15
    aput-object v2, v0, v1

    #@17
    const/4 v1, 0x2

    #@18
    const-string/jumbo v2, "FINER"

    #@1b
    aput-object v2, v0, v1

    #@1d
    const/4 v1, 0x3

    #@1e
    const-string/jumbo v2, "FINE"

    #@21
    aput-object v2, v0, v1

    #@23
    const/4 v1, 0x4

    #@24
    const-string/jumbo v2, "CONFIG"

    #@27
    aput-object v2, v0, v1

    #@29
    const/4 v1, 0x5

    #@2a
    const-string/jumbo v2, "INFO"

    #@2d
    aput-object v2, v0, v1

    #@2f
    const/4 v1, 0x6

    #@30
    const-string/jumbo v2, "WARNING"

    #@33
    aput-object v2, v0, v1

    #@35
    const/4 v1, 0x7

    #@36
    const-string/jumbo v2, "SEVERE"

    #@39
    aput-object v2, v0, v1

    #@3b
    const/16 v1, 0x8

    #@3d
    const-string/jumbo v2, "NONE"

    #@40
    aput-object v2, v0, v1

    #@42
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/debug/Log;->LEVEL_NAMES:[Ljava/lang/String;

    #@44
    .line 101
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/debug/Log;->logger()Ljava/lang/Class;

    #@47
    move-result-object v0

    #@48
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/debug/DebugUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/debug/Logger;

    #@4e
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/debug/Log;->logger:Landroid_maps_conflict_avoidance/com/google/debug/Logger;

    #@50
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    .line 348
    invoke-static {p0, p1, v1, v1, v0}, Landroid_maps_conflict_avoidance/com/google/debug/Log;->xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V

    #@5
    .line 349
    return-void
.end method

.method private static logger()Ljava/lang/Class;
    .locals 5

    #@0
    .prologue
    const-string/jumbo v1, "android_maps_conflict_avoidance.com.google.debug.StdoutLogger"

    #@3
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "android_maps_conflict_avoidance.com.google.debug.StdoutLogger"

    #@6
    .line 132
    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/debug/DebugUtil;->isAntPropertyExpanded(Ljava/lang/String;)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    const-string/jumbo v3, "LOGGER"

    #@f
    .line 137
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 138
    .local v2, "sysName":Ljava/lang/String;
    if-nez v2, :cond_1

    #@15
    .line 143
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@17
    const-string/jumbo v4, "WARNING: Missing logger class - using default logger com.google.debug.StdoutLogger"

    #@1a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 144
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1f
    const-string/jumbo v4, "         For Ant: Specify the logger class using the LOGGER property"

    #@22
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@25
    .line 145
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@27
    const-string/jumbo v4, "         For Bolide: Specify the logger class using constant injection"

    #@2a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d
    .line 146
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2f
    const-string/jumbo v4, "         For J2SE:  Specify the logger class via the LOGGER system property"

    #@32
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@35
    .line 147
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@37
    const-string/jumbo v4, "         See JavaDoc or source of com.google.debug.Log."

    #@3a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d
    const-string/jumbo v3, "android_maps_conflict_avoidance.com.google.debug.StdoutLogger"

    #@40
    .line 149
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@43
    move-result-object v3

    #@44
    return-object v3

    #@45
    .end local v2    # "sysName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "android_maps_conflict_avoidance.com.google.debug.StdoutLogger"

    #@48
    .line 134
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@4b
    move-result-object v3

    #@4c
    return-object v3

    #@4d
    .line 139
    .restart local v2    # "sysName":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    move-result-object v3

    #@51
    return-object v3

    #@52
    .line 149
    .end local v2    # "sysName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@53
    .line 151
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/Error;

    #@55
    const-string/jumbo v4, "Missing logger class com.google.debug.StdoutLogger"

    #@58
    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@5b
    throw v3
.end method

.method public static xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "logLevel"    # I
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "methodName"    # Ljava/lang/String;
    .param p5, "lineNumber"    # I

    #@0
    .prologue
    .line 372
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/debug/Log;->logger:Landroid_maps_conflict_avoidance/com/google/debug/Logger;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move-object v4, p3

    #@6
    move-object v5, p4

    #@7
    move v6, p5

    #@8
    invoke-interface/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/debug/Logger;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V

    #@b
    .line 373
    return-void
.end method

.method public static xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I

    #@0
    .prologue
    const/4 v2, 0x5

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v3, p2

    #@4
    move-object v4, p3

    #@5
    move v5, p4

    #@6
    .line 366
    invoke-static/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/debug/Log;->xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V

    #@9
    .line 367
    return-void
.end method
