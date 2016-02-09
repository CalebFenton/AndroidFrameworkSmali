.class public Lorg/apache/commons/logging/impl/LogFactoryImpl;
.super Lorg/apache/commons/logging/LogFactory;
.source "LogFactoryImpl.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALLOW_FLAWED_CONTEXT_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedContext"

.field public static final ALLOW_FLAWED_DISCOVERY_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedDiscovery"

.field public static final ALLOW_FLAWED_HIERARCHY_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedHierarchy"

.field private static final LOGGING_IMPL_JDK14_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Jdk14Logger"

.field private static final LOGGING_IMPL_LOG4J_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Log4JLogger"

.field private static final LOGGING_IMPL_LUMBERJACK_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

.field private static final LOGGING_IMPL_SIMPLE_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.SimpleLog"

.field public static final LOG_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log"

.field protected static final LOG_PROPERTY_OLD:Ljava/lang/String; = "org.apache.commons.logging.log"

.field private static final PKG_IMPL:Ljava/lang/String; = "org.apache.commons.logging.impl."

.field private static final PKG_LEN:I

.field private static final classesToDiscover:[Ljava/lang/String;


# instance fields
.field private allowFlawedContext:Z

.field private allowFlawedDiscovery:Z

.field private allowFlawedHierarchy:Z

.field protected attributes:Ljava/util/Hashtable;

.field private diagnosticPrefix:Ljava/lang/String;

.field protected instances:Ljava/util/Hashtable;

.field private logClassName:Ljava/lang/String;

.field protected logConstructor:Ljava/lang/reflect/Constructor;

.field protected logConstructorSignature:[Ljava/lang/Class;

.field protected logMethod:Ljava/lang/reflect/Method;

.field protected logMethodSignature:[Ljava/lang/Class;

.field private useTCCL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 86
    const-string/jumbo v0, "org.apache.commons.logging.impl."

    #@3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    sput v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->PKG_LEN:I

    #@9
    .line 178
    const/4 v0, 0x4

    #@a
    new-array v0, v0, [Ljava/lang/String;

    #@c
    .line 179
    const-string/jumbo v1, "org.apache.commons.logging.impl.Log4JLogger"

    #@f
    const/4 v2, 0x0

    #@10
    aput-object v1, v0, v2

    #@12
    .line 180
    const-string/jumbo v1, "org.apache.commons.logging.impl.Jdk14Logger"

    #@15
    const/4 v2, 0x1

    #@16
    aput-object v1, v0, v2

    #@18
    .line 181
    const-string/jumbo v1, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 182
    const-string/jumbo v1, "org.apache.commons.logging.impl.SimpleLog"

    #@21
    const/4 v2, 0x3

    #@22
    aput-object v1, v0, v2

    #@24
    .line 178
    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->classesToDiscover:[Ljava/lang/String;

    #@26
    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 96
    invoke-direct {p0}, Lorg/apache/commons/logging/LogFactory;-><init>()V

    #@6
    .line 192
    iput-boolean v2, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    #@8
    .line 203
    new-instance v0, Ljava/util/Hashtable;

    #@a
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@d
    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    #@f
    .line 210
    new-instance v0, Ljava/util/Hashtable;

    #@11
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@14
    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    #@16
    .line 226
    iput-object v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    #@18
    .line 233
    new-array v0, v2, [Ljava/lang/Class;

    #@1a
    const-class v1, Ljava/lang/String;

    #@1c
    aput-object v1, v0, v3

    #@1e
    .line 232
    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructorSignature:[Ljava/lang/Class;

    #@20
    .line 240
    iput-object v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    #@22
    .line 247
    new-array v0, v2, [Ljava/lang/Class;

    #@24
    const-class v1, Lorg/apache/commons/logging/LogFactory;

    #@26
    aput-object v1, v0, v3

    #@28
    .line 246
    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethodSignature:[Ljava/lang/Class;

    #@2a
    .line 97
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->initDiagnostics()V

    #@2d
    .line 98
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_0

    #@33
    .line 99
    const-string/jumbo v0, "Instance created."

    #@36
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@39
    .line 95
    :cond_0
    return-void
.end method

.method private createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;
    .locals 22
    .param p1, "logAdapterClassName"    # Ljava/lang/String;
    .param p2, "logCategory"    # Ljava/lang/String;
    .param p3, "affectState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 968
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@3
    move-result v19

    #@4
    if-eqz v19, :cond_0

    #@6
    .line 969
    new-instance v19, Ljava/lang/StringBuilder;

    #@8
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v20, "Attempting to instantiate \'"

    #@e
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v19

    #@12
    move-object/from16 v0, v19

    #@14
    move-object/from16 v1, p1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v19

    #@1a
    const-string/jumbo v20, "\'"

    #@1d
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v19

    #@21
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v19

    #@25
    move-object/from16 v0, p0

    #@27
    move-object/from16 v1, v19

    #@29
    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@2c
    .line 972
    :cond_0
    const/16 v19, 0x1

    #@2e
    move/from16 v0, v19

    #@30
    new-array v14, v0, [Ljava/lang/Object;

    #@32
    const/16 v19, 0x0

    #@34
    aput-object p2, v14, v19

    #@36
    .line 973
    .local v14, "params":[Ljava/lang/Object;
    const/4 v9, 0x0

    #@37
    .line 974
    .local v9, "logAdapter":Lorg/apache/commons/logging/Log;
    const/4 v4, 0x0

    #@38
    .line 976
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v10, 0x0

    #@39
    .line 977
    .local v10, "logAdapterClass":Ljava/lang/Class;
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBaseClassLoader()Ljava/lang/ClassLoader;

    #@3c
    move-result-object v5

    #@3d
    .line 983
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v10    # "logAdapterClass":Ljava/lang/Class;
    .local v5, "currentCL":Ljava/lang/ClassLoader;
    :goto_0
    new-instance v19, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v20, "Trying to load \'"

    #@45
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v19

    #@49
    move-object/from16 v0, v19

    #@4b
    move-object/from16 v1, p1

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v19

    #@51
    .line 985
    const-string/jumbo v20, "\' from classloader "

    #@54
    .line 983
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v19

    #@58
    .line 986
    invoke-static {v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@5b
    move-result-object v20

    #@5c
    .line 983
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v19

    #@60
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v19

    #@64
    .line 982
    move-object/from16 v0, p0

    #@66
    move-object/from16 v1, v19

    #@68
    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@6b
    .line 988
    :try_start_0
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@6e
    move-result v19

    #@6f
    if-eqz v19, :cond_1

    #@71
    .line 994
    new-instance v19, Ljava/lang/StringBuilder;

    #@73
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const/16 v20, 0x2e

    #@78
    const/16 v21, 0x2f

    #@7a
    move-object/from16 v0, p1

    #@7c
    move/from16 v1, v20

    #@7e
    move/from16 v2, v21

    #@80
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@83
    move-result-object v20

    #@84
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v19

    #@88
    const-string/jumbo v20, ".class"

    #@8b
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v19

    #@8f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v15

    #@93
    .line 995
    .local v15, "resourceName":Ljava/lang/String;
    if-eqz v5, :cond_4

    #@95
    .line 996
    invoke-virtual {v5, v15}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@98
    move-result-object v18

    #@99
    .line 1001
    .local v18, "url":Ljava/net/URL;
    :goto_1
    if-nez v18, :cond_5

    #@9b
    .line 1002
    new-instance v19, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v20, "Class \'"

    #@a3
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v19

    #@a7
    move-object/from16 v0, v19

    #@a9
    move-object/from16 v1, p1

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v19

    #@af
    const-string/jumbo v20, "\' ["

    #@b2
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v19

    #@b6
    move-object/from16 v0, v19

    #@b8
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v19

    #@bc
    const-string/jumbo v20, "] cannot be found."

    #@bf
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v19

    #@c3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v19

    #@c7
    move-object/from16 v0, p0

    #@c9
    move-object/from16 v1, v19

    #@cb
    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    #@ce
    .line 1008
    .end local v15    # "resourceName":Ljava/lang/String;
    .end local v18    # "url":Ljava/net/URL;
    :cond_1
    :goto_2
    const/4 v3, 0x0

    #@cf
    .line 1010
    .local v3, "c":Ljava/lang/Class;
    const/16 v19, 0x1

    #@d1
    :try_start_1
    move-object/from16 v0, p1

    #@d3
    move/from16 v1, v19

    #@d5
    invoke-static {v0, v1, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    #@d8
    move-result-object v3

    #@d9
    .line 1044
    .local v3, "c":Ljava/lang/Class;
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    #@db
    iget-object v0, v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructorSignature:[Ljava/lang/Class;

    #@dd
    move-object/from16 v19, v0

    #@df
    move-object/from16 v0, v19

    #@e1
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@e4
    move-result-object v4

    #@e5
    .line 1045
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v4, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@e8
    move-result-object v12

    #@e9
    .line 1051
    .local v12, "o":Ljava/lang/Object;
    instance-of v0, v12, Lorg/apache/commons/logging/Log;

    #@eb
    move/from16 v19, v0

    #@ed
    if-eqz v19, :cond_6

    #@ef
    .line 1052
    move-object v10, v3

    #@f0
    .line 1053
    .local v10, "logAdapterClass":Ljava/lang/Class;
    move-object v0, v12

    #@f1
    check-cast v0, Lorg/apache/commons/logging/Log;

    #@f3
    move-object v9, v0
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    #@f4
    .line 1118
    .end local v3    # "c":Ljava/lang/Class;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v9    # "logAdapter":Lorg/apache/commons/logging/Log;
    .end local v10    # "logAdapterClass":Ljava/lang/Class;
    .end local v12    # "o":Ljava/lang/Object;
    :cond_2
    :goto_4
    if-eqz v9, :cond_3

    #@f6
    if-eqz p3, :cond_3

    #@f8
    .line 1120
    move-object/from16 v0, p1

    #@fa
    move-object/from16 v1, p0

    #@fc
    iput-object v0, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    #@fe
    .line 1121
    move-object/from16 v0, p0

    #@100
    iput-object v4, v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    #@102
    .line 1125
    :try_start_3
    const-string/jumbo v19, "setLogFactory"

    #@105
    .line 1126
    move-object/from16 v0, p0

    #@107
    iget-object v0, v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethodSignature:[Ljava/lang/Class;

    #@109
    move-object/from16 v20, v0

    #@10b
    .line 1125
    move-object/from16 v0, v19

    #@10d
    move-object/from16 v1, v20

    #@10f
    invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@112
    move-result-object v19

    #@113
    move-object/from16 v0, v19

    #@115
    move-object/from16 v1, p0

    #@117
    iput-object v0, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    #@119
    .line 1127
    new-instance v19, Ljava/lang/StringBuilder;

    #@11b
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@11e
    const-string/jumbo v20, "Found method setLogFactory(LogFactory) in \'"

    #@121
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v19

    #@125
    move-object/from16 v0, v19

    #@127
    move-object/from16 v1, p1

    #@129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v19

    #@12d
    .line 1128
    const-string/jumbo v20, "\'"

    #@130
    .line 1127
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v19

    #@134
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v19

    #@138
    move-object/from16 v0, p0

    #@13a
    move-object/from16 v1, v19

    #@13c
    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    #@13f
    .line 1139
    :goto_5
    new-instance v19, Ljava/lang/StringBuilder;

    #@141
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@144
    const-string/jumbo v20, "Log adapter \'"

    #@147
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v19

    #@14b
    move-object/from16 v0, v19

    #@14d
    move-object/from16 v1, p1

    #@14f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v19

    #@153
    .line 1140
    const-string/jumbo v20, "\' from classloader "

    #@156
    .line 1139
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v19

    #@15a
    .line 1140
    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@15d
    move-result-object v20

    #@15e
    invoke-static/range {v20 .. v20}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@161
    move-result-object v20

    #@162
    .line 1139
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v19

    #@166
    .line 1141
    const-string/jumbo v20, " has been selected for use."

    #@169
    .line 1139
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v19

    #@16d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@170
    move-result-object v19

    #@171
    .line 1138
    move-object/from16 v0, p0

    #@173
    move-object/from16 v1, v19

    #@175
    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@178
    .line 1144
    :cond_3
    return-object v9

    #@179
    .line 998
    .restart local v9    # "logAdapter":Lorg/apache/commons/logging/Log;
    .restart local v15    # "resourceName":Ljava/lang/String;
    :cond_4
    :try_start_4
    new-instance v19, Ljava/lang/StringBuilder;

    #@17b
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@17e
    move-object/from16 v0, v19

    #@180
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v19

    #@184
    const-string/jumbo v20, ".class"

    #@187
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v19

    #@18b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18e
    move-result-object v19

    #@18f
    invoke-static/range {v19 .. v19}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    #@192
    move-result-object v18

    #@193
    .restart local v18    # "url":Ljava/net/URL;
    goto/16 :goto_1

    #@195
    .line 1004
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    #@197
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@19a
    const-string/jumbo v20, "Class \'"

    #@19d
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v19

    #@1a1
    move-object/from16 v0, v19

    #@1a3
    move-object/from16 v1, p1

    #@1a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v19

    #@1a9
    const-string/jumbo v20, "\' was found at \'"

    #@1ac
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v19

    #@1b0
    move-object/from16 v0, v19

    #@1b2
    move-object/from16 v1, v18

    #@1b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v19

    #@1b8
    const-string/jumbo v20, "\'"

    #@1bb
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v19

    #@1bf
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c2
    move-result-object v19

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    move-object/from16 v1, v19

    #@1c7
    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    #@1ca
    goto/16 :goto_2

    #@1cc
    .line 1068
    .end local v15    # "resourceName":Ljava/lang/String;
    .end local v18    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    #@1cd
    .line 1074
    .local v7, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v19, Ljava/lang/StringBuilder;

    #@1cf
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@1d2
    const-string/jumbo v20, ""

    #@1d5
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v19

    #@1d9
    invoke-virtual {v7}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    #@1dc
    move-result-object v20

    #@1dd
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object v19

    #@1e1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e4
    move-result-object v11

    #@1e5
    .line 1076
    .local v11, "msg":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    #@1e7
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@1ea
    const-string/jumbo v20, "The log adapter \'"

    #@1ed
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v19

    #@1f1
    move-object/from16 v0, v19

    #@1f3
    move-object/from16 v1, p1

    #@1f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v19

    #@1f9
    .line 1078
    const-string/jumbo v20, "\' is missing dependencies when loaded via classloader "

    #@1fc
    .line 1076
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ff
    move-result-object v19

    #@200
    .line 1079
    invoke-static {v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@203
    move-result-object v20

    #@204
    .line 1076
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v19

    #@208
    .line 1080
    const-string/jumbo v20, ": "

    #@20b
    .line 1076
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v19

    #@20f
    .line 1081
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@212
    move-result-object v20

    #@213
    .line 1076
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@216
    move-result-object v19

    #@217
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21a
    move-result-object v19

    #@21b
    .line 1075
    move-object/from16 v0, p0

    #@21d
    move-object/from16 v1, v19

    #@21f
    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@222
    goto/16 :goto_4

    #@224
    .line 1011
    .end local v7    # "e":Ljava/lang/NoClassDefFoundError;
    .end local v11    # "msg":Ljava/lang/String;
    .local v3, "c":Ljava/lang/Class;
    :catch_1
    move-exception v13

    #@225
    .line 1015
    .local v13, "originalClassNotFoundException":Ljava/lang/ClassNotFoundException;
    :try_start_5
    new-instance v19, Ljava/lang/StringBuilder;

    #@227
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@22a
    const-string/jumbo v20, ""

    #@22d
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@230
    move-result-object v19

    #@231
    invoke-virtual {v13}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    #@234
    move-result-object v20

    #@235
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@238
    move-result-object v19

    #@239
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23c
    move-result-object v11

    #@23d
    .line 1017
    .restart local v11    # "msg":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    #@23f
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@242
    const-string/jumbo v20, "The log adapter \'"

    #@245
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v19

    #@249
    move-object/from16 v0, v19

    #@24b
    move-object/from16 v1, p1

    #@24d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@250
    move-result-object v19

    #@251
    .line 1019
    const-string/jumbo v20, "\' is not available via classloader "

    #@254
    .line 1017
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    move-result-object v19

    #@258
    .line 1020
    invoke-static {v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@25b
    move-result-object v20

    #@25c
    .line 1017
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25f
    move-result-object v19

    #@260
    .line 1021
    const-string/jumbo v20, ": "

    #@263
    .line 1017
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v19

    #@267
    .line 1022
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@26a
    move-result-object v20

    #@26b
    .line 1017
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v19

    #@26f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@272
    move-result-object v19

    #@273
    .line 1016
    move-object/from16 v0, p0

    #@275
    move-object/from16 v1, v19

    #@277
    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    #@27a
    .line 1031
    :try_start_6
    invoke-static/range {p1 .. p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    #@27d
    move-result-object v3

    #@27e
    .local v3, "c":Ljava/lang/Class;
    goto/16 :goto_3

    #@280
    .line 1032
    .local v3, "c":Ljava/lang/Class;
    :catch_2
    move-exception v16

    #@281
    .line 1034
    .local v16, "secondaryClassNotFoundException":Ljava/lang/ClassNotFoundException;
    :try_start_7
    new-instance v19, Ljava/lang/StringBuilder;

    #@283
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@286
    const-string/jumbo v20, ""

    #@289
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28c
    move-result-object v19

    #@28d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    #@290
    move-result-object v20

    #@291
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@294
    move-result-object v19

    #@295
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@298
    move-result-object v11

    #@299
    .line 1036
    new-instance v19, Ljava/lang/StringBuilder;

    #@29b
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@29e
    const-string/jumbo v20, "The log adapter \'"

    #@2a1
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a4
    move-result-object v19

    #@2a5
    move-object/from16 v0, v19

    #@2a7
    move-object/from16 v1, p1

    #@2a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ac
    move-result-object v19

    #@2ad
    .line 1038
    const-string/jumbo v20, "\' is not available via the LogFactoryImpl class classloader: "

    #@2b0
    .line 1036
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b3
    move-result-object v19

    #@2b4
    .line 1039
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2b7
    move-result-object v20

    #@2b8
    .line 1036
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bb
    move-result-object v19

    #@2bc
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bf
    move-result-object v19

    #@2c0
    .line 1035
    move-object/from16 v0, p0

    #@2c2
    move-object/from16 v1, v19

    #@2c4
    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    #@2c7
    goto/16 :goto_4

    #@2c9
    .line 1083
    .end local v3    # "c":Ljava/lang/Class;
    .end local v11    # "msg":Ljava/lang/String;
    .end local v13    # "originalClassNotFoundException":Ljava/lang/ClassNotFoundException;
    .end local v16    # "secondaryClassNotFoundException":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v6

    #@2ca
    .line 1090
    .local v6, "e":Ljava/lang/ExceptionInInitializerError;
    new-instance v19, Ljava/lang/StringBuilder;

    #@2cc
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@2cf
    const-string/jumbo v20, ""

    #@2d2
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v19

    #@2d6
    invoke-virtual {v6}, Ljava/lang/ExceptionInInitializerError;->getMessage()Ljava/lang/String;

    #@2d9
    move-result-object v20

    #@2da
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2dd
    move-result-object v19

    #@2de
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e1
    move-result-object v11

    #@2e2
    .line 1092
    .restart local v11    # "msg":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    #@2e4
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@2e7
    const-string/jumbo v20, "The log adapter \'"

    #@2ea
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ed
    move-result-object v19

    #@2ee
    move-object/from16 v0, v19

    #@2f0
    move-object/from16 v1, p1

    #@2f2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f5
    move-result-object v19

    #@2f6
    .line 1094
    const-string/jumbo v20, "\' is unable to initialize itself when loaded via classloader "

    #@2f9
    .line 1092
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fc
    move-result-object v19

    #@2fd
    .line 1095
    invoke-static {v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@300
    move-result-object v20

    #@301
    .line 1092
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@304
    move-result-object v19

    #@305
    .line 1096
    const-string/jumbo v20, ": "

    #@308
    .line 1092
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30b
    move-result-object v19

    #@30c
    .line 1097
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@30f
    move-result-object v20

    #@310
    .line 1092
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@313
    move-result-object v19

    #@314
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@317
    move-result-object v19

    #@318
    .line 1091
    move-object/from16 v0, p0

    #@31a
    move-object/from16 v1, v19

    #@31c
    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@31f
    goto/16 :goto_4

    #@321
    .line 1067
    .end local v6    # "e":Ljava/lang/ExceptionInInitializerError;
    .end local v11    # "msg":Ljava/lang/String;
    .local v3, "c":Ljava/lang/Class;
    .restart local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v12    # "o":Ljava/lang/Object;
    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    #@323
    invoke-direct {v0, v5, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->handleFlawedHierarchy(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    :try_end_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    #@326
    .line 1110
    .end local v3    # "c":Ljava/lang/Class;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v12    # "o":Ljava/lang/Object;
    :goto_6
    if-eqz v5, :cond_2

    #@328
    .line 1115
    invoke-virtual {v5}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@32b
    move-result-object v5

    #@32c
    goto/16 :goto_0

    #@32e
    .line 1103
    :catch_4
    move-exception v17

    #@32f
    .line 1107
    .local v17, "t":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    #@331
    move-object/from16 v1, p1

    #@333
    move-object/from16 v2, v17

    #@335
    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->handleFlawedDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Throwable;)V

    #@338
    goto :goto_6

    #@339
    .line 1099
    .end local v17    # "t":Ljava/lang/Throwable;
    :catch_5
    move-exception v8

    #@33a
    .line 1102
    .local v8, "e":Lorg/apache/commons/logging/LogConfigurationException;
    throw v8

    #@33b
    .line 1129
    .end local v8    # "e":Lorg/apache/commons/logging/LogConfigurationException;
    .end local v9    # "logAdapter":Lorg/apache/commons/logging/Log;
    :catch_6
    move-exception v17

    #@33c
    .line 1130
    .restart local v17    # "t":Ljava/lang/Throwable;
    const/16 v19, 0x0

    #@33e
    move-object/from16 v0, v19

    #@340
    move-object/from16 v1, p0

    #@342
    iput-object v0, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    #@344
    .line 1132
    new-instance v19, Ljava/lang/StringBuilder;

    #@346
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@349
    const-string/jumbo v20, "[INFO] \'"

    #@34c
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34f
    move-result-object v19

    #@350
    move-object/from16 v0, v19

    #@352
    move-object/from16 v1, p1

    #@354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@357
    move-result-object v19

    #@358
    .line 1133
    const-string/jumbo v20, "\' from classloader "

    #@35b
    .line 1132
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35e
    move-result-object v19

    #@35f
    .line 1133
    invoke-static {v5}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@362
    move-result-object v20

    #@363
    .line 1132
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@366
    move-result-object v19

    #@367
    .line 1134
    const-string/jumbo v20, " does not declare optional method "

    #@36a
    .line 1132
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36d
    move-result-object v19

    #@36e
    .line 1135
    const-string/jumbo v20, "setLogFactory(LogFactory)"

    #@371
    .line 1132
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@374
    move-result-object v19

    #@375
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@378
    move-result-object v19

    #@379
    .line 1131
    move-object/from16 v0, p0

    #@37b
    move-object/from16 v1, v19

    #@37d
    invoke-virtual {v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@380
    goto/16 :goto_5
.end method

.method private discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 7
    .param p1, "logCategory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 770
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@4
    move-result v4

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 771
    const-string/jumbo v4, "Discovering a Log implementation..."

    #@a
    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@d
    .line 774
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->initConfiguration()V

    #@10
    .line 776
    const/4 v2, 0x0

    #@11
    .line 779
    .local v2, "result":Lorg/apache/commons/logging/Log;
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->findUserSpecifiedLogClassName()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    .line 781
    .local v3, "specifiedLogClassName":Ljava/lang/String;
    if-eqz v3, :cond_4

    #@17
    .line 782
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 783
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "Attempting to load user-specified log class \'"

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 784
    const-string/jumbo v5, "\'..."

    #@30
    .line 783
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@3b
    .line 787
    :cond_1
    invoke-direct {p0, v3, p1, v6}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    #@3e
    move-result-object v2

    #@3f
    .line 790
    .local v2, "result":Lorg/apache/commons/logging/Log;
    if-nez v2, :cond_3

    #@41
    .line 791
    new-instance v1, Ljava/lang/StringBuffer;

    #@43
    const-string/jumbo v4, "User-specified log class \'"

    #@46
    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@49
    .line 792
    .local v1, "messageBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c
    .line 793
    const-string/jumbo v4, "\' cannot be found or is not useable."

    #@4f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@52
    .line 797
    if-eqz v3, :cond_2

    #@54
    .line 798
    const-string/jumbo v4, "org.apache.commons.logging.impl.Log4JLogger"

    #@57
    invoke-direct {p0, v1, v3, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    #@5a
    .line 799
    const-string/jumbo v4, "org.apache.commons.logging.impl.Jdk14Logger"

    #@5d
    invoke-direct {p0, v1, v3, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    #@60
    .line 800
    const-string/jumbo v4, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    #@63
    invoke-direct {p0, v1, v3, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    #@66
    .line 801
    const-string/jumbo v4, "org.apache.commons.logging.impl.SimpleLog"

    #@69
    invoke-direct {p0, v1, v3, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    #@6c
    .line 803
    :cond_2
    new-instance v4, Lorg/apache/commons/logging/LogConfigurationException;

    #@6e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@71
    move-result-object v5

    #@72
    invoke-direct {v4, v5}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    #@75
    throw v4

    #@76
    .line 806
    .end local v1    # "messageBuffer":Ljava/lang/StringBuffer;
    :cond_3
    return-object v2

    #@77
    .line 837
    .local v2, "result":Lorg/apache/commons/logging/Log;
    :cond_4
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@7a
    move-result v4

    #@7b
    if-eqz v4, :cond_5

    #@7d
    .line 839
    const-string/jumbo v4, "No user-specified Log implementation; performing discovery using the standard supported logging implementations..."

    #@80
    .line 838
    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@83
    .line 842
    :cond_5
    const/4 v0, 0x0

    #@84
    .end local v2    # "result":Lorg/apache/commons/logging/Log;
    .local v0, "i":I
    :goto_0
    sget-object v4, Lorg/apache/commons/logging/impl/LogFactoryImpl;->classesToDiscover:[Ljava/lang/String;

    #@86
    array-length v4, v4

    #@87
    if-ge v0, v4, :cond_6

    #@89
    if-nez v2, :cond_6

    #@8b
    .line 843
    sget-object v4, Lorg/apache/commons/logging/impl/LogFactoryImpl;->classesToDiscover:[Ljava/lang/String;

    #@8d
    aget-object v4, v4, v0

    #@8f
    invoke-direct {p0, v4, p1, v6}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    #@92
    move-result-object v2

    #@93
    .line 842
    .local v2, "result":Lorg/apache/commons/logging/Log;
    add-int/lit8 v0, v0, 0x1

    #@95
    goto :goto_0

    #@96
    .line 846
    .end local v2    # "result":Lorg/apache/commons/logging/Log;
    :cond_6
    if-nez v2, :cond_7

    #@98
    .line 847
    new-instance v4, Lorg/apache/commons/logging/LogConfigurationException;

    #@9a
    .line 848
    const-string/jumbo v5, "No suitable Log implementation"

    #@9d
    .line 847
    invoke-direct {v4, v5}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v4

    #@a1
    .line 851
    :cond_7
    return-object v2
.end method

.method private findUserSpecifiedLogClassName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 890
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 891
    const-string/jumbo v2, "Trying to get log class from attribute \'org.apache.commons.logging.Log\'"

    #@9
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@c
    .line 893
    :cond_0
    const-string/jumbo v2, "org.apache.commons.logging.Log"

    #@f
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/lang/String;

    #@15
    .line 895
    .local v1, "specifiedClass":Ljava/lang/String;
    if-nez v1, :cond_2

    #@17
    .line 896
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 897
    const-string/jumbo v2, "Trying to get log class from attribute \'org.apache.commons.logging.log\'"

    #@20
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@23
    .line 900
    :cond_1
    const-string/jumbo v2, "org.apache.commons.logging.log"

    #@26
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    .end local v1    # "specifiedClass":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    #@2c
    .line 903
    .restart local v1    # "specifiedClass":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_4

    #@2e
    .line 904
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_3

    #@34
    .line 905
    const-string/jumbo v2, "Trying to get log class from system property \'org.apache.commons.logging.Log\'"

    #@37
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@3a
    .line 909
    :cond_3
    :try_start_0
    const-string/jumbo v2, "org.apache.commons.logging.Log"

    #@3d
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    move-result-object v1

    #@41
    .line 918
    :cond_4
    :goto_0
    if-nez v1, :cond_6

    #@43
    .line 919
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_5

    #@49
    .line 920
    const-string/jumbo v2, "Trying to get log class from system property \'org.apache.commons.logging.log\'"

    #@4c
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@4f
    .line 924
    :cond_5
    :try_start_1
    const-string/jumbo v2, "org.apache.commons.logging.log"

    #@52
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@55
    move-result-object v1

    #@56
    .line 936
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    #@58
    .line 937
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    .line 940
    :cond_7
    return-object v1

    #@5d
    .line 910
    :catch_0
    move-exception v0

    #@5e
    .line 911
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@61
    move-result v2

    #@62
    if-eqz v2, :cond_4

    #@64
    .line 912
    new-instance v2, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v3, "No access allowed to system property \'org.apache.commons.logging.Log\' - "

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    .line 913
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    .line 912
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@7f
    goto :goto_0

    #@80
    .line 925
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    #@81
    .line 926
    .restart local v0    # "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@84
    move-result v2

    #@85
    if-eqz v2, :cond_6

    #@87
    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v3, "No access allowed to system property \'org.apache.commons.logging.log\' - "

    #@8f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    .line 928
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@96
    move-result-object v3

    #@97
    .line 927
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v2

    #@9b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v2

    #@9f
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@a2
    goto :goto_1
.end method

.method private getBaseClassLoader()Ljava/lang/ClassLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 1167
    const-class v3, Lorg/apache/commons/logging/impl/LogFactoryImpl;

    #@2
    invoke-static {v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    #@5
    move-result-object v2

    #@6
    .line 1169
    .local v2, "thisClassLoader":Ljava/lang/ClassLoader;
    iget-boolean v3, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    #@8
    if-nez v3, :cond_0

    #@a
    .line 1170
    return-object v2

    #@b
    .line 1173
    :cond_0
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@e
    move-result-object v1

    #@f
    .line 1175
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getLowestClassLoader(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    #@12
    move-result-object v0

    #@13
    .line 1178
    .local v0, "baseClassLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_3

    #@15
    .line 1183
    iget-boolean v3, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    #@17
    if-eqz v3, :cond_2

    #@19
    .line 1184
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 1186
    const-string/jumbo v3, "[WARNING] the context classloader is not part of a parent-child relationship with the classloader that loaded LogFactoryImpl."

    #@22
    .line 1185
    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@25
    .line 1193
    :cond_1
    return-object v1

    #@26
    .line 1196
    :cond_2
    new-instance v3, Lorg/apache/commons/logging/LogConfigurationException;

    #@28
    .line 1197
    const-string/jumbo v4, "Bad classloader hierarchy; LogFactoryImpl was loaded via a classloader that is not related to the current context classloader."

    #@2b
    .line 1196
    invoke-direct {v3, v4}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v3

    #@2f
    .line 1203
    :cond_3
    if-eq v0, v1, :cond_4

    #@31
    .line 1209
    iget-boolean v3, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    #@33
    if-eqz v3, :cond_5

    #@35
    .line 1210
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_4

    #@3b
    .line 1212
    const-string/jumbo v3, "Warning: the context classloader is an ancestor of the classloader that loaded LogFactoryImpl; it should be the same or a descendant. The application using commons-logging should ensure the context classloader is used correctly."

    #@3e
    .line 1211
    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@41
    .line 1226
    :cond_4
    return-object v0

    #@42
    .line 1219
    :cond_5
    new-instance v3, Lorg/apache/commons/logging/LogConfigurationException;

    #@44
    .line 1220
    const-string/jumbo v4, "Bad classloader hierarchy; LogFactoryImpl was loaded via a classloader that is not related to the current context classloader."

    #@47
    .line 1219
    invoke-direct {v3, v4}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3
.end method

.method private getBooleanConfiguration(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dflt"    # Z

    #@0
    .prologue
    .line 738
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getConfigurationValue(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 739
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 740
    return p2

    #@7
    .line 741
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@e
    move-result v1

    #@f
    return v1
.end method

.method protected static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 449
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private getConfigurationValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "property"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 692
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 693
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "[ENV] Trying to get configuration for item "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@1e
    .line 696
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    .line 697
    .local v2, "valueObj":Ljava/lang/Object;
    if-eqz v2, :cond_2

    #@24
    .line 698
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v4, "[ENV] Found LogFactory attribute ["

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    const-string/jumbo v4, "] for "

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@4c
    .line 701
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    return-object v3

    #@51
    .line 704
    :cond_2
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@54
    move-result v3

    #@55
    if-eqz v3, :cond_3

    #@57
    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v4, "[ENV] No LogFactory attribute found for "

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@6e
    .line 709
    :cond_3
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    .line 710
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_5

    #@74
    .line 711
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@77
    move-result v3

    #@78
    if-eqz v3, :cond_4

    #@7a
    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v4, "[ENV] Found system property ["

    #@82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    const-string/jumbo v4, "] for "

    #@8d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v3

    #@91
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v3

    #@95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@9c
    .line 714
    :cond_4
    return-object v1

    #@9d
    .line 717
    :cond_5
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@a0
    move-result v3

    #@a1
    if-eqz v3, :cond_6

    #@a3
    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v4, "[ENV] No system property found for property "

    #@ab
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v3

    #@af
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v3

    #@b3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v3

    #@b7
    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@ba
    .line 726
    .end local v1    # "value":Ljava/lang/String;
    :cond_6
    :goto_0
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@bd
    move-result v3

    #@be
    if-eqz v3, :cond_7

    #@c0
    .line 727
    new-instance v3, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v4, "[ENV] No configuration defined for item "

    #@c8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v3

    #@cc
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v3

    #@d0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v3

    #@d4
    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@d7
    .line 730
    :cond_7
    return-object v5

    #@d8
    .line 720
    :catch_0
    move-exception v0

    #@d9
    .line 721
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@dc
    move-result v3

    #@dd
    if-eqz v3, :cond_6

    #@df
    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string/jumbo v4, "[ENV] Security prevented reading system property "

    #@e7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v3

    #@eb
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v3

    #@ef
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v3

    #@f3
    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@f6
    goto :goto_0
.end method

.method protected static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 430
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private getLowestClassLoader(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2
    .param p1, "c1"    # Ljava/lang/ClassLoader;
    .param p2, "c2"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1242
    if-nez p1, :cond_0

    #@3
    .line 1243
    return-object p2

    #@4
    .line 1245
    :cond_0
    if-nez p2, :cond_1

    #@6
    .line 1246
    return-object p1

    #@7
    .line 1251
    :cond_1
    move-object v0, p1

    #@8
    .line 1252
    .local v0, "current":Ljava/lang/ClassLoader;
    :goto_0
    if-eqz v0, :cond_3

    #@a
    .line 1253
    if-ne v0, p2, :cond_2

    #@c
    .line 1254
    return-object p1

    #@d
    .line 1255
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@10
    move-result-object v0

    #@11
    goto :goto_0

    #@12
    .line 1259
    :cond_3
    move-object v0, p2

    #@13
    .line 1260
    :goto_1
    if-eqz v0, :cond_5

    #@15
    .line 1261
    if-ne v0, p1, :cond_4

    #@17
    .line 1262
    return-object p2

    #@18
    .line 1263
    :cond_4
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@1b
    move-result-object v0

    #@1c
    goto :goto_1

    #@1d
    .line 1266
    :cond_5
    return-object v1
.end method

.method private handleFlawedDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "logAdapterClassName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "discoveryFlaw"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1288
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, "Could not instantiate Log \'"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 1290
    const-string/jumbo v1, "\' -- "

    #@19
    .line 1289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 1291
    invoke-virtual {p3}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 1289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 1291
    const-string/jumbo v1, ": "

    #@2c
    .line 1289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 1292
    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 1289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@3f
    .line 1295
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    #@41
    if-nez v0, :cond_1

    #@43
    .line 1296
    new-instance v0, Lorg/apache/commons/logging/LogConfigurationException;

    #@45
    invoke-direct {v0, p3}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@48
    throw v0

    #@49
    .line 1286
    :cond_1
    return-void
.end method

.method private handleFlawedHierarchy(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .locals 9
    .param p1, "badClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "badClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 1330
    const/4 v1, 0x0

    #@1
    .line 1331
    .local v1, "implementsLog":Z
    const-class v7, Lorg/apache/commons/logging/Log;

    #@3
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 1332
    .local v4, "logInterfaceName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    .line 1333
    .local v2, "interfaces":[Ljava/lang/Class;
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v7, v2

    #@d
    if-ge v0, v7, :cond_0

    #@f
    .line 1334
    aget-object v7, v2, v0

    #@11
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@14
    move-result-object v7

    #@15
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v7

    #@19
    if-eqz v7, :cond_3

    #@1b
    .line 1335
    const/4 v1, 0x1

    #@1c
    .line 1340
    :cond_0
    if-eqz v1, :cond_6

    #@1e
    .line 1343
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@21
    move-result v7

    #@22
    if-eqz v7, :cond_1

    #@24
    .line 1345
    :try_start_0
    const-class v7, Lorg/apache/commons/logging/Log;

    #@26
    invoke-static {v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    #@29
    move-result-object v3

    #@2a
    .line 1347
    .local v3, "logInterfaceClassLoader":Ljava/lang/ClassLoader;
    new-instance v7, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v8, "Class \'"

    #@32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    .line 1348
    const-string/jumbo v8, "\' was found in classloader "

    #@41
    .line 1347
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    .line 1349
    invoke-static {p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@48
    move-result-object v8

    #@49
    .line 1347
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v7

    #@4d
    .line 1350
    const-string/jumbo v8, ". It is bound to a Log interface which is not"

    #@50
    .line 1347
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    .line 1351
    const-string/jumbo v8, " the one loaded from classloader "

    #@57
    .line 1347
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    .line 1352
    invoke-static {v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@5e
    move-result-object v8

    #@5f
    .line 1347
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    .line 1346
    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@6a
    .line 1360
    .end local v3    # "logInterfaceClassLoader":Ljava/lang/ClassLoader;
    :cond_1
    :goto_1
    iget-boolean v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedHierarchy:Z

    #@6c
    if-nez v7, :cond_4

    #@6e
    .line 1361
    new-instance v5, Ljava/lang/StringBuffer;

    #@70
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    #@73
    .line 1362
    .local v5, "msg":Ljava/lang/StringBuffer;
    const-string/jumbo v7, "Terminating logging for this context "

    #@76
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@79
    .line 1363
    const-string/jumbo v7, "due to bad log hierarchy. "

    #@7c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7f
    .line 1364
    const-string/jumbo v7, "You have more than one version of \'"

    #@82
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@85
    .line 1365
    const-class v7, Lorg/apache/commons/logging/Log;

    #@87
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8a
    move-result-object v7

    #@8b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8e
    .line 1366
    const-string/jumbo v7, "\' visible."

    #@91
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@94
    .line 1367
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@97
    move-result v7

    #@98
    if-eqz v7, :cond_2

    #@9a
    .line 1368
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@9d
    move-result-object v7

    #@9e
    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@a1
    .line 1370
    :cond_2
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    #@a3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@a6
    move-result-object v8

    #@a7
    invoke-direct {v7, v8}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v7

    #@ab
    .line 1333
    .end local v5    # "msg":Ljava/lang/StringBuffer;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@ad
    goto/16 :goto_0

    #@af
    .line 1353
    :catch_0
    move-exception v6

    #@b0
    .line 1355
    .local v6, "t":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v8, "Error while trying to output diagnostics about bad class \'"

    #@b8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v7

    #@bc
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v7

    #@c0
    .line 1356
    const-string/jumbo v8, "\'"

    #@c3
    .line 1355
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v7

    #@c7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v7

    #@cb
    .line 1354
    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@ce
    goto :goto_1

    #@cf
    .line 1373
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_4
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@d2
    move-result v7

    #@d3
    if-eqz v7, :cond_5

    #@d5
    .line 1374
    new-instance v5, Ljava/lang/StringBuffer;

    #@d7
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    #@da
    .line 1375
    .restart local v5    # "msg":Ljava/lang/StringBuffer;
    const-string/jumbo v7, "Warning: bad log hierarchy. "

    #@dd
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e0
    .line 1376
    const-string/jumbo v7, "You have more than one version of \'"

    #@e3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e6
    .line 1377
    const-class v7, Lorg/apache/commons/logging/Log;

    #@e8
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@eb
    move-result-object v7

    #@ec
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ef
    .line 1378
    const-string/jumbo v7, "\' visible."

    #@f2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f5
    .line 1379
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@f8
    move-result-object v7

    #@f9
    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@fc
    .line 1328
    .end local v5    # "msg":Ljava/lang/StringBuffer;
    :cond_5
    :goto_2
    return-void

    #@fd
    .line 1383
    :cond_6
    iget-boolean v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    #@ff
    if-nez v7, :cond_8

    #@101
    .line 1384
    new-instance v5, Ljava/lang/StringBuffer;

    #@103
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    #@106
    .line 1385
    .restart local v5    # "msg":Ljava/lang/StringBuffer;
    const-string/jumbo v7, "Terminating logging for this context. "

    #@109
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10c
    .line 1386
    const-string/jumbo v7, "Log class \'"

    #@10f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@112
    .line 1387
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@115
    move-result-object v7

    #@116
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@119
    .line 1388
    const-string/jumbo v7, "\' does not implement the Log interface."

    #@11c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11f
    .line 1389
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@122
    move-result v7

    #@123
    if-eqz v7, :cond_7

    #@125
    .line 1390
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@128
    move-result-object v7

    #@129
    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@12c
    .line 1393
    :cond_7
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    #@12e
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@131
    move-result-object v8

    #@132
    invoke-direct {v7, v8}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    #@135
    throw v7

    #@136
    .line 1396
    .end local v5    # "msg":Ljava/lang/StringBuffer;
    :cond_8
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@139
    move-result v7

    #@13a
    if-eqz v7, :cond_5

    #@13c
    .line 1397
    new-instance v5, Ljava/lang/StringBuffer;

    #@13e
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    #@141
    .line 1398
    .restart local v5    # "msg":Ljava/lang/StringBuffer;
    const-string/jumbo v7, "[WARNING] Log class \'"

    #@144
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@147
    .line 1399
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@14a
    move-result-object v7

    #@14b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14e
    .line 1400
    const-string/jumbo v7, "\' does not implement the Log interface."

    #@151
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@154
    .line 1401
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@157
    move-result-object v7

    #@158
    invoke-virtual {p0, v7}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@15b
    goto :goto_2
.end method

.method private informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "messageBuffer"    # Ljava/lang/StringBuffer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "candidate"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 864
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 867
    return-void

    #@8
    .line 873
    :cond_0
    sget v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->PKG_LEN:I

    #@a
    add-int/lit8 v5, v0, 0x5

    #@c
    const/4 v1, 0x1

    #@d
    move-object v0, p2

    #@e
    move-object v3, p3

    #@f
    move v4, v2

    #@10
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 874
    const-string/jumbo v0, " Did you mean \'"

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    .line 875
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f
    .line 876
    const-string/jumbo v0, "\'?"

    #@22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@25
    .line 863
    :cond_1
    return-void
.end method

.method private initConfiguration()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 752
    const-string/jumbo v0, "org.apache.commons.logging.Log.allowFlawedContext"

    #@4
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    #@a
    .line 753
    const-string/jumbo v0, "org.apache.commons.logging.Log.allowFlawedDiscovery"

    #@d
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    #@10
    move-result v0

    #@11
    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    #@13
    .line 754
    const-string/jumbo v0, "org.apache.commons.logging.Log.allowFlawedHierarchy"

    #@16
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    #@19
    move-result v0

    #@1a
    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedHierarchy:Z

    #@1c
    .line 751
    return-void
.end method

.method private initDiagnostics()V
    .locals 6

    #@0
    .prologue
    .line 477
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v2

    #@4
    .line 478
    .local v2, "clazz":Ljava/lang/Class;
    invoke-static {v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 481
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    #@a
    .line 482
    :try_start_0
    const-string/jumbo v1, "BOOTLOADER"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 489
    .local v1, "classLoaderName":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "[LogFactoryImpl@"

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1c
    move-result v5

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    const-string/jumbo v5, " from "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, "] "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    iput-object v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->diagnosticPrefix:Ljava/lang/String;

    #@39
    .line 467
    return-void

    #@3a
    .line 484
    .end local v1    # "classLoaderName":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@3d
    move-result-object v1

    #@3e
    .restart local v1    # "classLoaderName":Ljava/lang/String;
    goto :goto_0

    #@3f
    .line 486
    .end local v1    # "classLoaderName":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@40
    .line 487
    .local v3, "e":Ljava/lang/SecurityException;
    const-string/jumbo v1, "UNKNOWN"

    #@43
    .restart local v1    # "classLoaderName":Ljava/lang/String;
    goto :goto_0
.end method

.method protected static isDiagnosticsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 439
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 652
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Checking for \'"

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, "\'."

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@25
    .line 658
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClass()Ljava/lang/Class;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 659
    const/4 v3, 0x0

    #@2e
    .line 656
    invoke-direct {p0, p2, v2, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    #@31
    move-result-object v1

    #@32
    .line 661
    .local v1, "log":Lorg/apache/commons/logging/Log;
    if-nez v1, :cond_2

    #@34
    .line 662
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_1

    #@3a
    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v3, "Did not find \'"

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    const-string/jumbo v3, "\'."

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@58
    .line 665
    :cond_1
    return v4

    #@59
    .line 667
    :cond_2
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_3

    #@5f
    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v3, "Found \'"

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    const-string/jumbo v3, "\'."

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    #@7d
    .line 670
    :cond_3
    const/4 v2, 0x1

    #@7e
    return v2

    #@7f
    .line 672
    .end local v1    # "log":Lorg/apache/commons/logging/Log;
    :catch_0
    move-exception v0

    #@80
    .line 673
    .local v0, "e":Lorg/apache/commons/logging/LogConfigurationException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@83
    move-result v2

    #@84
    if-eqz v2, :cond_4

    #@86
    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v3, "Logging system \'"

    #@8e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v2

    #@96
    const-string/jumbo v3, "\' is available but not useable."

    #@99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@a4
    .line 676
    :cond_4
    return v4
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 287
    new-instance v2, Ljava/util/Vector;

    #@2
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@5
    .line 288
    .local v2, "names":Ljava/util/Vector;
    iget-object v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@a
    move-result-object v1

    #@b
    .line 289
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 290
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Ljava/lang/String;

    #@17
    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1a
    goto :goto_0

    #@1b
    .line 292
    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@1e
    move-result v4

    #@1f
    new-array v3, v4, [Ljava/lang/String;

    #@21
    .line 293
    .local v3, "results":[Ljava/lang/String;
    const/4 v0, 0x0

    #@22
    .local v0, "i":I
    :goto_1
    array-length v4, v3

    #@23
    if-ge v0, v4, :cond_1

    #@25
    .line 294
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Ljava/lang/String;

    #@2b
    aput-object v4, v3, v0

    #@2d
    .line 293
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 296
    :cond_1
    return-object v3
.end method

.method public getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 336
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/commons/logging/Log;

    #@8
    .line 337
    .local v0, "instance":Lorg/apache/commons/logging/Log;
    if-nez v0, :cond_0

    #@a
    .line 338
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->newInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    #@d
    move-result-object v0

    #@e
    .line 339
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    #@10
    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 341
    :cond_0
    return-object v0
.end method

.method protected getLogClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 515
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 516
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-direct {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    #@f
    .line 519
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    #@11
    return-object v0
.end method

.method protected getLogConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 542
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 543
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-direct {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    #@f
    .line 546
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    #@11
    return-object v0
.end method

.method protected isJdk13LumberjackAvailable()Z
    .locals 2

    #@0
    .prologue
    .line 558
    const-string/jumbo v0, "Jdk13Lumberjack"

    #@3
    .line 559
    const-string/jumbo v1, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    #@6
    .line 557
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected isJdk14Available()Z
    .locals 2

    #@0
    .prologue
    .line 574
    const-string/jumbo v0, "Jdk14"

    #@3
    .line 575
    const-string/jumbo v1, "org.apache.commons.logging.impl.Jdk14Logger"

    #@6
    .line 573
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected isLog4JAvailable()Z
    .locals 2

    #@0
    .prologue
    .line 587
    const-string/jumbo v0, "Log4J"

    #@3
    .line 588
    const-string/jumbo v1, "org.apache.commons.logging.impl.Log4JLogger"

    #@6
    .line 586
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected logDiagnostic(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 501
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->diagnosticPrefix:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logRawDiagnostic(Ljava/lang/String;)V

    #@1c
    .line 500
    :cond_0
    return-void
.end method

.method protected newInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 603
    const/4 v3, 0x0

    #@1
    .line 605
    .local v3, "instance":Lorg/apache/commons/logging/Log;
    :try_start_0
    iget-object v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    #@3
    if-nez v7, :cond_1

    #@5
    .line 606
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    #@8
    move-result-object v3

    #@9
    .line 613
    .local v3, "instance":Lorg/apache/commons/logging/Log;
    :goto_0
    iget-object v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    #@b
    if-eqz v7, :cond_0

    #@d
    .line 614
    const/4 v7, 0x1

    #@e
    new-array v5, v7, [Ljava/lang/Object;

    #@10
    const/4 v7, 0x0

    #@11
    aput-object p0, v5, v7

    #@13
    .line 615
    .local v5, "params":[Ljava/lang/Object;
    iget-object v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    #@15
    invoke-virtual {v7, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 618
    .end local v5    # "params":[Ljava/lang/Object;
    :cond_0
    return-object v3

    #@19
    .line 609
    .local v3, "instance":Lorg/apache/commons/logging/Log;
    :cond_1
    const/4 v7, 0x1

    #@1a
    new-array v5, v7, [Ljava/lang/Object;

    #@1c
    const/4 v7, 0x0

    #@1d
    aput-object p1, v5, v7

    #@1f
    .line 610
    .restart local v5    # "params":[Ljava/lang/Object;
    iget-object v7, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    #@21
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v7

    #@25
    move-object v0, v7

    #@26
    check-cast v0, Lorg/apache/commons/logging/Log;

    #@28
    move-object v3, v0
    :try_end_0
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .local v3, "instance":Lorg/apache/commons/logging/Log;
    goto :goto_0

    #@2a
    .line 636
    .end local v3    # "instance":Lorg/apache/commons/logging/Log;
    .end local v5    # "params":[Ljava/lang/Object;
    :catch_0
    move-exception v6

    #@2b
    .line 639
    .local v6, "t":Ljava/lang/Throwable;
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    #@2d
    invoke-direct {v7, v6}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@30
    throw v7

    #@31
    .line 627
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    #@32
    .line 630
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@35
    move-result-object v1

    #@36
    .line 631
    .local v1, "c":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    #@38
    .line 632
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    #@3a
    invoke-direct {v7, v1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@3d
    throw v7

    #@3e
    .line 634
    :cond_2
    new-instance v7, Lorg/apache/commons/logging/LogConfigurationException;

    #@40
    invoke-direct {v7, v2}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@43
    throw v7

    #@44
    .line 620
    .end local v1    # "c":Ljava/lang/Throwable;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v4

    #@45
    .line 625
    .local v4, "lce":Lorg/apache/commons/logging/LogConfigurationException;
    throw v4
.end method

.method public release()V
    .locals 1

    #@0
    .prologue
    .line 356
    const-string/jumbo v0, "Releasing all known loggers"

    #@3
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@6
    .line 357
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    #@8
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@b
    .line 354
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 367
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 401
    const-string/jumbo v0, "setAttribute: call too late; configuration already performed."

    #@7
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    #@a
    .line 404
    :cond_0
    if-nez p2, :cond_2

    #@c
    .line 405
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 410
    :goto_0
    const-string/jumbo v0, "use_tccl"

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 411
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@25
    move-result v0

    #@26
    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    #@28
    .line 398
    :cond_1
    return-void

    #@29
    .line 407
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    #@2b
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    goto :goto_0
.end method
