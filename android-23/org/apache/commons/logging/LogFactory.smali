.class public abstract Lorg/apache/commons/logging/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DIAGNOSTICS_DEST_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.diagnostics.dest"

.field public static final FACTORY_DEFAULT:Ljava/lang/String; = "org.apache.commons.logging.impl.LogFactoryImpl"

.field public static final FACTORY_PROPERTIES:Ljava/lang/String; = "commons-logging.properties"

.field public static final FACTORY_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.LogFactory"

.field public static final HASHTABLE_IMPLEMENTATION_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.LogFactory.HashtableImpl"

.field public static final PRIORITY_KEY:Ljava/lang/String; = "priority"

.field protected static final SERVICE_ID:Ljava/lang/String; = "META-INF/services/org.apache.commons.logging.LogFactory"

.field public static final TCCL_KEY:Ljava/lang/String; = "use_tccl"

.field private static final WEAK_HASHTABLE_CLASSNAME:Ljava/lang/String; = "org.apache.commons.logging.impl.WeakHashtable"

.field private static diagnosticPrefix:Ljava/lang/String;

.field private static diagnosticsStream:Ljava/io/PrintStream;

.field protected static factories:Ljava/util/Hashtable;

.field protected static nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

.field private static thisClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 128
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    #@3
    .line 289
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    #@5
    .line 305
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    #@7
    .line 1737
    const-class v0, Lorg/apache/commons/logging/LogFactory;

    #@9
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    #@c
    move-result-object v0

    #@d
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    #@f
    .line 1738
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->initDiagnostics()V

    #@12
    .line 1739
    const-class v0, Lorg/apache/commons/logging/LogFactory;

    #@14
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logClassLoaderEnvironment(Ljava/lang/Class;)V

    #@17
    .line 1740
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->createFactoryStore()Ljava/util/Hashtable;

    #@1a
    move-result-object v0

    #@1b
    sput-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    #@1d
    .line 1741
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 1742
    const-string/jumbo v0, "BOOTSTRAP COMPLETED"

    #@26
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@29
    .line 56
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static cacheFactory(Ljava/lang/ClassLoader;Lorg/apache/commons/logging/LogFactory;)V
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "factory"    # Lorg/apache/commons/logging/LogFactory;

    #@0
    .prologue
    .line 944
    if-eqz p1, :cond_0

    #@2
    .line 945
    if-nez p0, :cond_1

    #@4
    .line 946
    sput-object p1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    #@6
    .line 939
    :cond_0
    :goto_0
    return-void

    #@7
    .line 948
    :cond_1
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    #@9
    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    goto :goto_0
.end method

.method protected static createFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 10
    .param p0, "factoryClass"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1067
    const/4 v6, 0x0

    #@1
    .line 1069
    .local v6, "logFactoryClass":Ljava/lang/Class;
    if-eqz p1, :cond_8

    #@3
    .line 1075
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v6

    #@7
    .line 1076
    .local v6, "logFactoryClass":Ljava/lang/Class;
    const-class v8, Lorg/apache/commons/logging/LogFactory;

    #@9
    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@c
    move-result v8

    #@d
    if-eqz v8, :cond_1

    #@f
    .line 1077
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@12
    move-result v8

    #@13
    if-eqz v8, :cond_0

    #@15
    .line 1079
    new-instance v8, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v9, "Loaded class "

    #@1d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v8

    #@21
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@24
    move-result-object v9

    #@25
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v8

    #@29
    .line 1080
    const-string/jumbo v9, " from classloader "

    #@2c
    .line 1079
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v8

    #@30
    .line 1080
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@33
    move-result-object v9

    #@34
    .line 1079
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v8

    #@3c
    .line 1078
    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@3f
    .line 1104
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@42
    move-result-object v8

    #@43
    check-cast v8, Lorg/apache/commons/logging/LogFactory;

    #@45
    return-object v8

    #@46
    .line 1094
    :cond_1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@49
    move-result v8

    #@4a
    if-eqz v8, :cond_0

    #@4c
    .line 1096
    new-instance v8, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v9, "Factory class "

    #@54
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5b
    move-result-object v9

    #@5c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    .line 1097
    const-string/jumbo v9, " loaded from classloader "

    #@63
    .line 1096
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v8

    #@67
    .line 1097
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@6a
    move-result-object v9

    #@6b
    invoke-static {v9}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@6e
    move-result-object v9

    #@6f
    .line 1096
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v8

    #@73
    .line 1098
    const-string/jumbo v9, " does not extend \'"

    #@76
    .line 1096
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v8

    #@7a
    .line 1098
    const-class v9, Lorg/apache/commons/logging/LogFactory;

    #@7c
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7f
    move-result-object v9

    #@80
    .line 1096
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v8

    #@84
    .line 1099
    const-string/jumbo v9, "\' as loaded by this classloader."

    #@87
    .line 1096
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v8

    #@8b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v8

    #@8f
    .line 1095
    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@92
    .line 1100
    const-string/jumbo v8, "[BAD CL TREE] "

    #@95
    invoke-static {v8, p1}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@98
    goto :goto_0

    #@99
    .line 1106
    .end local v6    # "logFactoryClass":Ljava/lang/Class;
    :catch_0
    move-exception v4

    #@9a
    .line 1107
    .local v4, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_1
    sget-object v8, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    #@9c
    if-ne p1, v8, :cond_8

    #@9e
    .line 1109
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@a1
    move-result v8

    #@a2
    if-eqz v8, :cond_2

    #@a4
    .line 1111
    new-instance v8, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v9, "Unable to locate any class called \'"

    #@ac
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v8

    #@b0
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v8

    #@b4
    .line 1112
    const-string/jumbo v9, "\' via classloader "

    #@b7
    .line 1111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v8

    #@bb
    .line 1112
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@be
    move-result-object v9

    #@bf
    .line 1111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v8

    #@c3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v8

    #@c7
    .line 1110
    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@ca
    .line 1114
    :cond_2
    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@cb
    .line 1207
    .end local v4    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    #@cc
    .line 1209
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@cf
    move-result v8

    #@d0
    if-eqz v8, :cond_3

    #@d2
    .line 1210
    const-string/jumbo v8, "Unable to create LogFactory instance."

    #@d5
    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@d8
    .line 1212
    :cond_3
    if-eqz v6, :cond_4

    #@da
    .line 1213
    const-class v8, Lorg/apache/commons/logging/LogFactory;

    #@dc
    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@df
    move-result v8

    #@e0
    if-eqz v8, :cond_a

    #@e2
    .line 1220
    :cond_4
    new-instance v8, Lorg/apache/commons/logging/LogConfigurationException;

    #@e4
    invoke-direct {v8, v1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    #@e7
    return-object v8

    #@e8
    .line 1130
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    #@e9
    .line 1131
    .local v0, "e":Ljava/lang/ClassCastException;
    :try_start_2
    sget-object v8, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    #@eb
    if-ne p1, v8, :cond_8

    #@ed
    .line 1137
    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->implementsLogFactory(Ljava/lang/Class;)Z

    #@f0
    move-result v5

    #@f1
    .line 1145
    .local v5, "implementsLogFactory":Z
    new-instance v8, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v9, "The application has specified that a custom LogFactory implementation should be used but Class \'"

    #@f9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v8

    #@fd
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v8

    #@101
    .line 1146
    const-string/jumbo v9, "\' cannot be converted to \'"

    #@104
    .line 1145
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v8

    #@108
    .line 1147
    const-class v9, Lorg/apache/commons/logging/LogFactory;

    #@10a
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@10d
    move-result-object v9

    #@10e
    .line 1145
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v8

    #@112
    .line 1147
    const-string/jumbo v9, "\'. "

    #@115
    .line 1145
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v8

    #@119
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v7

    #@11d
    .line 1148
    .local v7, "msg":Ljava/lang/String;
    if-eqz v5, :cond_6

    #@11f
    .line 1149
    new-instance v8, Ljava/lang/StringBuilder;

    #@121
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@124
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v8

    #@128
    const-string/jumbo v9, "The conflict is caused by the presence of multiple LogFactory classes in incompatible classloaders. "

    #@12b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v8

    #@12f
    .line 1150
    const-string/jumbo v9, "Background can be found in http://jakarta.apache.org/commons/logging/tech.html. "

    #@132
    .line 1149
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v8

    #@136
    .line 1151
    const-string/jumbo v9, "If you have not explicitly specified a custom LogFactory then it is likely that "

    #@139
    .line 1149
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v8

    #@13d
    .line 1152
    const-string/jumbo v9, "the container has set one without your knowledge. "

    #@140
    .line 1149
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v8

    #@144
    .line 1153
    const-string/jumbo v9, "In this case, consider using the commons-logging-adapters.jar file or "

    #@147
    .line 1149
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v8

    #@14b
    .line 1154
    const-string/jumbo v9, "specifying the standard LogFactory from the command line. "

    #@14e
    .line 1149
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v8

    #@152
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v7

    #@156
    .line 1158
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@158
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@15b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v8

    #@15f
    const-string/jumbo v9, "Help can be found @http://jakarta.apache.org/commons/logging/troubleshooting.html."

    #@162
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v8

    #@166
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@169
    move-result-object v7

    #@16a
    .line 1160
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@16d
    move-result v8

    #@16e
    if-eqz v8, :cond_5

    #@170
    .line 1161
    invoke-static {v7}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@173
    .line 1164
    :cond_5
    new-instance v3, Ljava/lang/ClassCastException;

    #@175
    invoke-direct {v3, v7}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    #@178
    .line 1165
    .local v3, "ex":Ljava/lang/ClassCastException;
    throw v3

    #@179
    .line 1156
    .end local v3    # "ex":Ljava/lang/ClassCastException;
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    #@17b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@17e
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v8

    #@182
    const-string/jumbo v9, "Please check the custom implementation. "

    #@185
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v8

    #@189
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18c
    move-result-object v7

    #@18d
    goto :goto_1

    #@18e
    .line 1117
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v5    # "implementsLogFactory":Z
    .end local v7    # "msg":Ljava/lang/String;
    :catch_3
    move-exception v2

    #@18f
    .line 1118
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    sget-object v8, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    #@191
    if-ne p1, v8, :cond_8

    #@193
    .line 1120
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@196
    move-result v8

    #@197
    if-eqz v8, :cond_7

    #@199
    .line 1122
    new-instance v8, Ljava/lang/StringBuilder;

    #@19b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@19e
    const-string/jumbo v9, "Class \'"

    #@1a1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v8

    #@1a5
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v8

    #@1a9
    const-string/jumbo v9, "\' cannot be loaded"

    #@1ac
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v8

    #@1b0
    .line 1123
    const-string/jumbo v9, " via classloader "

    #@1b3
    .line 1122
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v8

    #@1b7
    .line 1123
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@1ba
    move-result-object v9

    #@1bb
    .line 1122
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v8

    #@1bf
    .line 1124
    const-string/jumbo v9, " - it depends on some other class that cannot"

    #@1c2
    .line 1122
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c5
    move-result-object v8

    #@1c6
    .line 1125
    const-string/jumbo v9, " be found."

    #@1c9
    .line 1122
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v8

    #@1cd
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d0
    move-result-object v8

    #@1d1
    .line 1121
    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@1d4
    .line 1127
    :cond_7
    throw v2

    #@1d5
    .line 1199
    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    :cond_8
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@1d8
    move-result v8

    #@1d9
    if-eqz v8, :cond_9

    #@1db
    .line 1201
    new-instance v8, Ljava/lang/StringBuilder;

    #@1dd
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1e0
    const-string/jumbo v9, "Unable to load factory class via classloader "

    #@1e3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v8

    #@1e7
    .line 1202
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@1ea
    move-result-object v9

    #@1eb
    .line 1201
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v8

    #@1ef
    .line 1203
    const-string/jumbo v9, " - trying the classloader associated with this LogFactory."

    #@1f2
    .line 1201
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v8

    #@1f6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f9
    move-result-object v8

    #@1fa
    .line 1200
    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@1fd
    .line 1205
    :cond_9
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@200
    move-result-object v6

    #@201
    .line 1206
    .restart local v6    # "logFactoryClass":Ljava/lang/Class;
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@204
    move-result-object v8

    #@205
    check-cast v8, Lorg/apache/commons/logging/LogFactory;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@207
    return-object v8

    #@208
    .line 1215
    .end local v6    # "logFactoryClass":Ljava/lang/Class;
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_a
    new-instance v8, Lorg/apache/commons/logging/LogConfigurationException;

    #@20a
    .line 1216
    const-string/jumbo v9, "The chosen LogFactory implementation does not extend LogFactory. Please check your configuration."

    #@20d
    .line 1215
    invoke-direct {v8, v9, v1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@210
    return-object v8
.end method

.method private static final createFactoryStore()Ljava/util/Hashtable;
    .locals 7

    #@0
    .prologue
    .line 323
    const/4 v2, 0x0

    #@1
    .line 325
    .local v2, "result":Ljava/util/Hashtable;
    const-string/jumbo v5, "org.apache.commons.logging.LogFactory.HashtableImpl"

    #@4
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 326
    .local v3, "storeImplementationClass":Ljava/lang/String;
    if-nez v3, :cond_0

    #@a
    .line 327
    const-string/jumbo v3, "org.apache.commons.logging.impl.WeakHashtable"

    #@d
    .line 330
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@10
    move-result-object v1

    #@11
    .line 331
    .local v1, "implementationClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@14
    move-result-object v5

    #@15
    move-object v0, v5

    #@16
    check-cast v0, Ljava/util/Hashtable;

    #@18
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 347
    .end local v1    # "implementationClass":Ljava/lang/Class;
    .end local v2    # "result":Ljava/util/Hashtable;
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    #@1b
    .line 348
    new-instance v2, Ljava/util/Hashtable;

    #@1d
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@20
    .line 350
    :cond_2
    return-object v2

    #@21
    .line 333
    .restart local v2    # "result":Ljava/util/Hashtable;
    :catch_0
    move-exception v4

    #@22
    .line 335
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "org.apache.commons.logging.impl.WeakHashtable"

    #@25
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v5

    #@29
    if-nez v5, :cond_1

    #@2b
    .line 337
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_3

    #@31
    .line 339
    const-string/jumbo v5, "[ERROR] LogFactory: Load of custom hashtable failed"

    #@34
    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@37
    goto :goto_0

    #@38
    .line 343
    :cond_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3a
    const-string/jumbo v6, "[ERROR] LogFactory: Load of custom hashtable failed"

    #@3d
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    goto :goto_0
.end method

.method protected static directGetContextClassLoader()Ljava/lang/ClassLoader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 836
    const/4 v1, 0x0

    #@1
    .line 840
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    const-class v7, Ljava/lang/Thread;

    #@3
    const-string/jumbo v8, "getContextClassLoader"

    #@6
    .line 841
    const/4 v6, 0x0

    #@7
    check-cast v6, [Ljava/lang/Class;

    #@9
    .line 840
    invoke-virtual {v7, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    #@c
    move-result-object v5

    #@d
    .line 845
    .local v5, "method":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@10
    move-result-object v7

    #@11
    .line 846
    const/4 v6, 0x0

    #@12
    check-cast v6, [Ljava/lang/Object;

    #@14
    .line 845
    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v6

    #@18
    move-object v0, v6

    #@19
    check-cast v0, Ljava/lang/ClassLoader;

    #@1b
    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    #@1c
    .line 895
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v1

    #@1d
    .line 850
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    #@1e
    .line 867
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@21
    move-result-object v6

    #@22
    instance-of v6, v6, Ljava/lang/SecurityException;

    #@24
    if-nez v6, :cond_0

    #@26
    .line 872
    new-instance v6, Lorg/apache/commons/logging/LogConfigurationException;

    #@28
    .line 873
    const-string/jumbo v7, "Unexpected InvocationTargetException"

    #@2b
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@2e
    move-result-object v8

    #@2f
    .line 872
    invoke-direct {v6, v7, v8}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@32
    throw v6
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    #@33
    .line 876
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    #@34
    .line 878
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-class v6, Lorg/apache/commons/logging/LogFactory;

    #@36
    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    #@39
    move-result-object v1

    #@3a
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    #@3b
    .line 847
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v2

    #@3c
    .line 848
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    new-instance v6, Lorg/apache/commons/logging/LogConfigurationException;

    #@3e
    .line 849
    const-string/jumbo v7, "Unexpected IllegalAccessException"

    #@41
    .line 848
    invoke-direct {v6, v7, v2}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@44
    throw v6
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method private static getCachedFactory(Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .locals 2
    .param p0, "contextClassLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 914
    const/4 v0, 0x0

    #@1
    .line 916
    .local v0, "factory":Lorg/apache/commons/logging/LogFactory;
    if-nez p0, :cond_0

    #@3
    .line 921
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    #@5
    .line 926
    .local v0, "factory":Lorg/apache/commons/logging/LogFactory;
    :goto_0
    return-object v0

    #@6
    .line 923
    .local v0, "factory":Lorg/apache/commons/logging/LogFactory;
    :cond_0
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    #@8
    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    .end local v0    # "factory":Lorg/apache/commons/logging/LogFactory;
    check-cast v0, Lorg/apache/commons/logging/LogFactory;

    #@e
    .local v0, "factory":Lorg/apache/commons/logging/LogFactory;
    goto :goto_0
.end method

.method protected static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 3
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 771
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 772
    :catch_0
    move-exception v0

    #@6
    .line 773
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Unable to get classloader for class \'"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 776
    const-string/jumbo v2, "\' due to security restrictions - "

    #@1f
    .line 775
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 776
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 775
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 774
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@32
    .line 778
    :cond_0
    throw v0
.end method

.method private static final getConfigurationFile(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;
    .locals 14
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1409
    const/4 v8, 0x0

    #@2
    .line 1410
    .local v8, "props":Ljava/util/Properties;
    const-wide/16 v6, 0x0

    #@4
    .line 1411
    .local v6, "priority":D
    const/4 v9, 0x0

    #@5
    .line 1413
    .local v9, "propsUrl":Ljava/net/URL;
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/commons/logging/LogFactory;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;

    #@8
    move-result-object v11

    #@9
    .line 1415
    .local v11, "urls":Ljava/util/Enumeration;
    if-nez v11, :cond_0

    #@b
    .line 1416
    return-object v12

    #@c
    .line 1419
    .end local v8    # "props":Ljava/util/Properties;
    .end local v9    # "propsUrl":Ljava/net/URL;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@f
    move-result v12

    #@10
    if-eqz v12, :cond_2

    #@12
    .line 1420
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@15
    move-result-object v10

    #@16
    check-cast v10, Ljava/net/URL;

    #@18
    .line 1422
    .local v10, "url":Ljava/net/URL;
    invoke-static {v10}, Lorg/apache/commons/logging/LogFactory;->getProperties(Ljava/net/URL;)Ljava/util/Properties;

    #@1b
    move-result-object v4

    #@1c
    .line 1423
    .local v4, "newProps":Ljava/util/Properties;
    if-eqz v4, :cond_0

    #@1e
    .line 1424
    if-nez v8, :cond_4

    #@20
    .line 1425
    move-object v9, v10

    #@21
    .line 1426
    .local v9, "propsUrl":Ljava/net/URL;
    move-object v8, v4

    #@22
    .line 1427
    .local v8, "props":Ljava/util/Properties;
    const-string/jumbo v12, "priority"

    #@25
    invoke-virtual {v8, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 1428
    .local v5, "priorityStr":Ljava/lang/String;
    const-wide/16 v6, 0x0

    #@2b
    .line 1429
    if-eqz v5, :cond_1

    #@2d
    .line 1430
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@30
    move-result-wide v6

    #@31
    .line 1433
    :cond_1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@34
    move-result v12

    #@35
    if-eqz v12, :cond_0

    #@37
    .line 1435
    new-instance v12, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v13, "[LOOKUP] Properties file found at \'"

    #@3f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v12

    #@43
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v12

    #@47
    const-string/jumbo v13, "\'"

    #@4a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v12

    #@4e
    .line 1436
    const-string/jumbo v13, " with priority "

    #@51
    .line 1435
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v12

    #@55
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@58
    move-result-object v12

    #@59
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v12

    #@5d
    .line 1434
    invoke-static {v12}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    goto :goto_0

    #@61
    .line 1470
    .end local v4    # "newProps":Ljava/util/Properties;
    .end local v5    # "priorityStr":Ljava/lang/String;
    .end local v8    # "props":Ljava/util/Properties;
    .end local v9    # "propsUrl":Ljava/net/URL;
    .end local v10    # "url":Ljava/net/URL;
    .end local v11    # "urls":Ljava/util/Enumeration;
    :catch_0
    move-exception v0

    #@62
    .line 1471
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@65
    move-result v12

    #@66
    if-eqz v12, :cond_2

    #@68
    .line 1472
    const-string/jumbo v12, "SecurityException thrown while trying to find/read config files."

    #@6b
    invoke-static {v12}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@6e
    .line 1476
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@71
    move-result v12

    #@72
    if-eqz v12, :cond_3

    #@74
    .line 1477
    if-nez v8, :cond_8

    #@76
    .line 1479
    new-instance v12, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v13, "[LOOKUP] No properties file of name \'"

    #@7e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v12

    #@82
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v12

    #@86
    .line 1480
    const-string/jumbo v13, "\' found."

    #@89
    .line 1479
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v12

    #@8d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v12

    #@91
    .line 1478
    invoke-static {v12}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@94
    .line 1488
    :cond_3
    :goto_1
    return-object v8

    #@95
    .line 1439
    .restart local v4    # "newProps":Ljava/util/Properties;
    .restart local v10    # "url":Ljava/net/URL;
    .restart local v11    # "urls":Ljava/util/Enumeration;
    :cond_4
    :try_start_1
    const-string/jumbo v12, "priority"

    #@98
    invoke-virtual {v4, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    .line 1440
    .local v1, "newPriorityStr":Ljava/lang/String;
    const-wide/16 v2, 0x0

    #@9e
    .line 1441
    .local v2, "newPriority":D
    if-eqz v1, :cond_5

    #@a0
    .line 1442
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@a3
    move-result-wide v2

    #@a4
    .line 1445
    :cond_5
    cmpl-double v12, v2, v6

    #@a6
    if-lez v12, :cond_7

    #@a8
    .line 1446
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@ab
    move-result v12

    #@ac
    if-eqz v12, :cond_6

    #@ae
    .line 1448
    new-instance v12, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v13, "[LOOKUP] Properties file at \'"

    #@b6
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v12

    #@ba
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v12

    #@be
    const-string/jumbo v13, "\'"

    #@c1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v12

    #@c5
    .line 1449
    const-string/jumbo v13, " with priority "

    #@c8
    .line 1448
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v12

    #@cc
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v12

    #@d0
    .line 1450
    const-string/jumbo v13, " overrides file at \'"

    #@d3
    .line 1448
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v12

    #@d7
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v12

    #@db
    .line 1450
    const-string/jumbo v13, "\'"

    #@de
    .line 1448
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v12

    #@e2
    .line 1451
    const-string/jumbo v13, " with priority "

    #@e5
    .line 1448
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v12

    #@e9
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v12

    #@ed
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v12

    #@f1
    .line 1447
    invoke-static {v12}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@f4
    .line 1454
    :cond_6
    move-object v9, v10

    #@f5
    .line 1455
    .restart local v9    # "propsUrl":Ljava/net/URL;
    move-object v8, v4

    #@f6
    .line 1456
    .restart local v8    # "props":Ljava/util/Properties;
    move-wide v6, v2

    #@f7
    goto/16 :goto_0

    #@f9
    .line 1458
    .end local v8    # "props":Ljava/util/Properties;
    .end local v9    # "propsUrl":Ljava/net/URL;
    :cond_7
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@fc
    move-result v12

    #@fd
    if-eqz v12, :cond_0

    #@ff
    .line 1460
    new-instance v12, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v13, "[LOOKUP] Properties file at \'"

    #@107
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v12

    #@10b
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v12

    #@10f
    const-string/jumbo v13, "\'"

    #@112
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v12

    #@116
    .line 1461
    const-string/jumbo v13, " with priority "

    #@119
    .line 1460
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v12

    #@11d
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@120
    move-result-object v12

    #@121
    .line 1462
    const-string/jumbo v13, " does not override file at \'"

    #@124
    .line 1460
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v12

    #@128
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v12

    #@12c
    .line 1462
    const-string/jumbo v13, "\'"

    #@12f
    .line 1460
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v12

    #@133
    .line 1463
    const-string/jumbo v13, " with priority "

    #@136
    .line 1460
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v12

    #@13a
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v12

    #@13e
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@141
    move-result-object v12

    #@142
    .line 1459
    invoke-static {v12}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@145
    goto/16 :goto_0

    #@147
    .line 1483
    .end local v1    # "newPriorityStr":Ljava/lang/String;
    .end local v2    # "newPriority":D
    .end local v4    # "newProps":Ljava/util/Properties;
    .end local v10    # "url":Ljava/net/URL;
    .end local v11    # "urls":Ljava/util/Enumeration;
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    #@149
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    const-string/jumbo v13, "[LOOKUP] Properties file of name \'"

    #@14f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v12

    #@153
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v12

    #@157
    .line 1484
    const-string/jumbo v13, "\' found at \'"

    #@15a
    .line 1483
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v12

    #@15e
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v12

    #@162
    .line 1484
    const/16 v13, 0x22

    #@164
    .line 1483
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@167
    move-result-object v12

    #@168
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v12

    #@16c
    .line 1482
    invoke-static {v12}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@16f
    goto/16 :goto_1
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
    .line 804
    new-instance v0, Lorg/apache/commons/logging/LogFactory$1;

    #@2
    invoke-direct {v0}, Lorg/apache/commons/logging/LogFactory$1;-><init>()V

    #@5
    .line 803
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/ClassLoader;

    #@b
    return-object v0
.end method

.method public static getFactory()Lorg/apache/commons/logging/LogFactory;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 388
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v3

    #@4
    .line 390
    .local v3, "contextClassLoader":Ljava/lang/ClassLoader;
    if-nez v3, :cond_0

    #@6
    .line 394
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@9
    move-result v18

    #@a
    if-eqz v18, :cond_0

    #@c
    .line 395
    const-string/jumbo v18, "Context classloader is null."

    #@f
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@12
    .line 400
    :cond_0
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->getCachedFactory(Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    #@15
    move-result-object v8

    #@16
    .line 401
    .local v8, "factory":Lorg/apache/commons/logging/LogFactory;
    if-eqz v8, :cond_1

    #@18
    .line 402
    return-object v8

    #@19
    .line 405
    :cond_1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@1c
    move-result v18

    #@1d
    if-eqz v18, :cond_2

    #@1f
    .line 407
    new-instance v18, Ljava/lang/StringBuilder;

    #@21
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v19, "[LOOKUP] LogFactory implementation requested for the first time for context classloader "

    #@27
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v18

    #@2b
    .line 408
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v19

    #@2f
    .line 407
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v18

    #@33
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v18

    #@37
    .line 406
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@3a
    .line 409
    const-string/jumbo v18, "[LOOKUP] "

    #@3d
    move-object/from16 v0, v18

    #@3f
    invoke-static {v0, v3}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@42
    .line 422
    :cond_2
    const-string/jumbo v18, "commons-logging.properties"

    #@45
    move-object/from16 v0, v18

    #@47
    invoke-static {v3, v0}, Lorg/apache/commons/logging/LogFactory;->getConfigurationFile(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;

    #@4a
    move-result-object v14

    #@4b
    .line 426
    .local v14, "props":Ljava/util/Properties;
    move-object v2, v3

    #@4c
    .line 427
    .local v2, "baseClassLoader":Ljava/lang/ClassLoader;
    if-eqz v14, :cond_3

    #@4e
    .line 428
    const-string/jumbo v18, "use_tccl"

    #@51
    move-object/from16 v0, v18

    #@53
    invoke-virtual {v14, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@56
    move-result-object v16

    #@57
    .line 429
    .local v16, "useTCCLStr":Ljava/lang/String;
    if-eqz v16, :cond_3

    #@59
    .line 432
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@5c
    move-result-object v18

    #@5d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    #@60
    move-result v18

    #@61
    if-nez v18, :cond_3

    #@63
    .line 440
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    #@65
    .line 447
    .end local v16    # "useTCCLStr":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@68
    move-result v18

    #@69
    if-eqz v18, :cond_4

    #@6b
    .line 449
    const-string/jumbo v18, "[LOOKUP] Looking for system property [org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    #@6e
    .line 448
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@71
    .line 454
    :cond_4
    :try_start_0
    const-string/jumbo v18, "org.apache.commons.logging.LogFactory"

    #@74
    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@77
    move-result-object v9

    #@78
    .line 455
    .local v9, "factoryClass":Ljava/lang/String;
    if-eqz v9, :cond_e

    #@7a
    .line 456
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@7d
    move-result v18

    #@7e
    if-eqz v18, :cond_5

    #@80
    .line 458
    new-instance v18, Ljava/lang/StringBuilder;

    #@82
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v19, "[LOOKUP] Creating an instance of LogFactory class \'"

    #@88
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v18

    #@8c
    move-object/from16 v0, v18

    #@8e
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v18

    #@92
    .line 459
    const-string/jumbo v19, "\' as specified by system property "

    #@95
    .line 458
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v18

    #@99
    .line 459
    const-string/jumbo v19, "org.apache.commons.logging.LogFactory"

    #@9c
    .line 458
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v18

    #@a0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v18

    #@a4
    .line 457
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@a7
    .line 462
    :cond_5
    invoke-static {v9, v2, v3}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    #@aa
    move-result-object v8

    #@ab
    .line 502
    .end local v9    # "factoryClass":Ljava/lang/String;
    :cond_6
    :goto_0
    if-nez v8, :cond_8

    #@ad
    .line 503
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@b0
    move-result v18

    #@b1
    if-eqz v18, :cond_7

    #@b3
    .line 505
    const-string/jumbo v18, "[LOOKUP] Looking for a resource file of name [META-INF/services/org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    #@b6
    .line 504
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@b9
    .line 510
    :cond_7
    :try_start_1
    const-string/jumbo v18, "META-INF/services/org.apache.commons.logging.LogFactory"

    #@bc
    .line 509
    move-object/from16 v0, v18

    #@be
    invoke-static {v3, v0}, Lorg/apache/commons/logging/LogFactory;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    #@c1
    move-result-object v11

    #@c2
    .line 512
    .local v11, "is":Ljava/io/InputStream;
    if-eqz v11, :cond_12

    #@c4
    .line 517
    :try_start_2
    new-instance v15, Ljava/io/BufferedReader;

    #@c6
    new-instance v18, Ljava/io/InputStreamReader;

    #@c8
    const-string/jumbo v19, "UTF-8"

    #@cb
    move-object/from16 v0, v18

    #@cd
    move-object/from16 v1, v19

    #@cf
    invoke-direct {v0, v11, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@d2
    move-object/from16 v0, v18

    #@d4
    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    #@d7
    .line 522
    .local v15, "rd":Ljava/io/BufferedReader;
    :goto_1
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@da
    move-result-object v10

    #@db
    .line 523
    .local v10, "factoryClassName":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    #@de
    .line 525
    if-eqz v10, :cond_8

    #@e0
    .line 526
    const-string/jumbo v18, ""

    #@e3
    move-object/from16 v0, v18

    #@e5
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    #@e8
    move-result v18

    #@e9
    if-eqz v18, :cond_10

    #@eb
    .line 562
    .end local v10    # "factoryClassName":Ljava/lang/String;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v15    # "rd":Ljava/io/BufferedReader;
    :cond_8
    :goto_2
    if-nez v8, :cond_b

    #@ed
    .line 563
    if-eqz v14, :cond_14

    #@ef
    .line 564
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@f2
    move-result v18

    #@f3
    if-eqz v18, :cond_9

    #@f5
    .line 566
    const-string/jumbo v18, "[LOOKUP] Looking in properties file for entry with key \'org.apache.commons.logging.LogFactory\' to define the LogFactory subclass to use..."

    #@f8
    .line 565
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@fb
    .line 570
    :cond_9
    const-string/jumbo v18, "org.apache.commons.logging.LogFactory"

    #@fe
    move-object/from16 v0, v18

    #@100
    invoke-virtual {v14, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@103
    move-result-object v9

    #@104
    .line 571
    .restart local v9    # "factoryClass":Ljava/lang/String;
    if-eqz v9, :cond_13

    #@106
    .line 572
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@109
    move-result v18

    #@10a
    if-eqz v18, :cond_a

    #@10c
    .line 574
    new-instance v18, Ljava/lang/StringBuilder;

    #@10e
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@111
    const-string/jumbo v19, "[LOOKUP] Properties file specifies LogFactory subclass \'"

    #@114
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v18

    #@118
    move-object/from16 v0, v18

    #@11a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v18

    #@11e
    .line 575
    const-string/jumbo v19, "\'"

    #@121
    .line 574
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v18

    #@125
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v18

    #@129
    .line 573
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@12c
    .line 577
    :cond_a
    invoke-static {v9, v2, v3}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    #@12f
    move-result-object v8

    #@130
    .line 598
    .end local v9    # "factoryClass":Ljava/lang/String;
    :cond_b
    :goto_3
    if-nez v8, :cond_d

    #@132
    .line 599
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@135
    move-result v18

    #@136
    if-eqz v18, :cond_c

    #@138
    .line 601
    const-string/jumbo v18, "[LOOKUP] Loading the default LogFactory implementation \'org.apache.commons.logging.impl.LogFactoryImpl\' via the same classloader that loaded this LogFactory class (ie not looking in the context classloader)."

    #@13b
    .line 600
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@13e
    .line 615
    :cond_c
    const-string/jumbo v18, "org.apache.commons.logging.impl.LogFactoryImpl"

    #@141
    sget-object v19, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    #@143
    move-object/from16 v0, v18

    #@145
    move-object/from16 v1, v19

    #@147
    invoke-static {v0, v1, v3}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    #@14a
    move-result-object v8

    #@14b
    .line 618
    :cond_d
    if-eqz v8, :cond_15

    #@14d
    .line 622
    invoke-static {v3, v8}, Lorg/apache/commons/logging/LogFactory;->cacheFactory(Ljava/lang/ClassLoader;Lorg/apache/commons/logging/LogFactory;)V

    #@150
    .line 624
    if-eqz v14, :cond_15

    #@152
    .line 625
    invoke-virtual {v14}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    #@155
    move-result-object v13

    #@156
    .line 626
    .local v13, "names":Ljava/util/Enumeration;
    :goto_4
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@159
    move-result v18

    #@15a
    if-eqz v18, :cond_15

    #@15c
    .line 627
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@15f
    move-result-object v12

    #@160
    check-cast v12, Ljava/lang/String;

    #@162
    .line 628
    .local v12, "name":Ljava/lang/String;
    invoke-virtual {v14, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@165
    move-result-object v17

    #@166
    .line 629
    .local v17, "value":Ljava/lang/String;
    move-object/from16 v0, v17

    #@168
    invoke-virtual {v8, v12, v0}, Lorg/apache/commons/logging/LogFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@16b
    goto :goto_4

    #@16c
    .line 464
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "names":Ljava/util/Enumeration;
    .end local v17    # "value":Ljava/lang/String;
    .restart local v9    # "factoryClass":Ljava/lang/String;
    :cond_e
    :try_start_4
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@16f
    move-result v18

    #@170
    if-eqz v18, :cond_6

    #@172
    .line 466
    const-string/jumbo v18, "[LOOKUP] No system property [org.apache.commons.logging.LogFactory] defined."

    #@175
    .line 465
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    #@178
    goto/16 :goto_0

    #@17a
    .line 470
    .end local v9    # "factoryClass":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@17b
    .line 471
    .local v6, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@17e
    move-result v18

    #@17f
    if-eqz v18, :cond_6

    #@181
    .line 473
    new-instance v18, Ljava/lang/StringBuilder;

    #@183
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@186
    const-string/jumbo v19, "[LOOKUP] A security exception occurred while trying to create an instance of the custom factory class: ["

    #@189
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v18

    #@18d
    .line 475
    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@190
    move-result-object v19

    #@191
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@194
    move-result-object v19

    #@195
    .line 473
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@198
    move-result-object v18

    #@199
    .line 476
    const-string/jumbo v19, "]. Trying alternative implementations..."

    #@19c
    .line 473
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v18

    #@1a0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a3
    move-result-object v18

    #@1a4
    .line 472
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@1a7
    goto/16 :goto_0

    #@1a9
    .line 479
    .end local v6    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v5

    #@1aa
    .line 485
    .local v5, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@1ad
    move-result v18

    #@1ae
    if-eqz v18, :cond_f

    #@1b0
    .line 487
    new-instance v18, Ljava/lang/StringBuilder;

    #@1b2
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1b5
    const-string/jumbo v19, "[LOOKUP] An exception occurred while trying to create an instance of the custom factory class: ["

    #@1b8
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v18

    #@1bc
    .line 489
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@1bf
    move-result-object v19

    #@1c0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1c3
    move-result-object v19

    #@1c4
    .line 487
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v18

    #@1c8
    .line 490
    const-string/jumbo v19, "] as specified by a system property."

    #@1cb
    .line 487
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v18

    #@1cf
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d2
    move-result-object v18

    #@1d3
    .line 486
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@1d6
    .line 492
    :cond_f
    throw v5

    #@1d7
    .line 518
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    #@1d8
    .line 519
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_5
    new-instance v15, Ljava/io/BufferedReader;

    #@1da
    new-instance v18, Ljava/io/InputStreamReader;

    #@1dc
    move-object/from16 v0, v18

    #@1de
    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@1e1
    move-object/from16 v0, v18

    #@1e3
    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@1e6
    .restart local v15    # "rd":Ljava/io/BufferedReader;
    goto/16 :goto_1

    #@1e8
    .line 527
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v10    # "factoryClassName":Ljava/lang/String;
    :cond_10
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@1eb
    move-result v18

    #@1ec
    if-eqz v18, :cond_11

    #@1ee
    .line 529
    new-instance v18, Ljava/lang/StringBuilder;

    #@1f0
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1f3
    const-string/jumbo v19, "[LOOKUP]  Creating an instance of LogFactory class "

    #@1f6
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object v18

    #@1fa
    move-object/from16 v0, v18

    #@1fc
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ff
    move-result-object v18

    #@200
    .line 530
    const-string/jumbo v19, " as specified by file \'"

    #@203
    .line 529
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@206
    move-result-object v18

    #@207
    .line 530
    const-string/jumbo v19, "META-INF/services/org.apache.commons.logging.LogFactory"

    #@20a
    .line 529
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v18

    #@20e
    .line 531
    const-string/jumbo v19, "\' which was present in the path of the context"

    #@211
    .line 529
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    move-result-object v18

    #@215
    .line 532
    const-string/jumbo v19, " classloader."

    #@218
    .line 529
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v18

    #@21c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21f
    move-result-object v18

    #@220
    .line 528
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@223
    .line 534
    :cond_11
    invoke-static {v10, v2, v3}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    #@226
    move-result-object v8

    #@227
    goto/16 :goto_2

    #@229
    .line 538
    .end local v10    # "factoryClassName":Ljava/lang/String;
    .end local v15    # "rd":Ljava/io/BufferedReader;
    :cond_12
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@22c
    move-result v18

    #@22d
    if-eqz v18, :cond_8

    #@22f
    .line 540
    const-string/jumbo v18, "[LOOKUP] No resource file with name \'META-INF/services/org.apache.commons.logging.LogFactory\' found."

    #@232
    .line 539
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    #@235
    goto/16 :goto_2

    #@237
    .line 544
    .end local v11    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v7

    #@238
    .line 548
    .local v7, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@23b
    move-result v18

    #@23c
    if-eqz v18, :cond_8

    #@23e
    .line 550
    new-instance v18, Ljava/lang/StringBuilder;

    #@240
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@243
    const-string/jumbo v19, "[LOOKUP] A security exception occurred while trying to create an instance of the custom factory class: ["

    #@246
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@249
    move-result-object v18

    #@24a
    .line 552
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@24d
    move-result-object v19

    #@24e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@251
    move-result-object v19

    #@252
    .line 550
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v18

    #@256
    .line 553
    const-string/jumbo v19, "]. Trying alternative implementations..."

    #@259
    .line 550
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v18

    #@25d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@260
    move-result-object v18

    #@261
    .line 549
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@264
    goto/16 :goto_2

    #@266
    .line 581
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v9    # "factoryClass":Ljava/lang/String;
    :cond_13
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@269
    move-result v18

    #@26a
    if-eqz v18, :cond_b

    #@26c
    .line 583
    const-string/jumbo v18, "[LOOKUP] Properties file has no entry specifying LogFactory subclass."

    #@26f
    .line 582
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@272
    goto/16 :goto_3

    #@274
    .line 587
    .end local v9    # "factoryClass":Ljava/lang/String;
    :cond_14
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@277
    move-result v18

    #@278
    if-eqz v18, :cond_b

    #@27a
    .line 589
    const-string/jumbo v18, "[LOOKUP] No properties file available to determine LogFactory subclass from.."

    #@27d
    .line 588
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@280
    goto/16 :goto_3

    #@282
    .line 634
    :cond_15
    return-object v8
.end method

.method public static getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 651
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 675
    new-instance v0, Lorg/apache/commons/logging/impl/Jdk14Logger;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method private static getProperties(Ljava/net/URL;)Ljava/util/Properties;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 1365
    new-instance v0, Lorg/apache/commons/logging/LogFactory$5;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/commons/logging/LogFactory$5;-><init>(Ljava/net/URL;)V

    #@5
    .line 1384
    .local v0, "action":Ljava/security/PrivilegedAction;
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Ljava/util/Properties;

    #@b
    return-object v1
.end method

.method private static getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1300
    new-instance v0, Lorg/apache/commons/logging/LogFactory$3;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$3;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    #@5
    .line 1299
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/io/InputStream;

    #@b
    return-object v0
.end method

.method private static getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1328
    new-instance v0, Lorg/apache/commons/logging/LogFactory$4;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$4;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    #@5
    .line 1351
    .local v0, "action":Ljava/security/PrivilegedAction;
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .line 1352
    .local v1, "result":Ljava/lang/Object;
    check-cast v1, Ljava/util/Enumeration;

    #@b
    .end local v1    # "result":Ljava/lang/Object;
    return-object v1
.end method

.method private static implementsLogFactory(Ljava/lang/Class;)Z
    .locals 8
    .param p0, "logFactoryClass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1237
    const/4 v4, 0x0

    #@1
    .line 1238
    .local v4, "implementsLogFactory":Z
    if-eqz p0, :cond_0

    #@3
    .line 1240
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@6
    move-result-object v5

    #@7
    .line 1241
    .local v5, "logFactoryClassLoader":Ljava/lang/ClassLoader;
    if-nez v5, :cond_1

    #@9
    .line 1242
    const-string/jumbo v6, "[CUSTOM LOG FACTORY] was loaded by the boot classloader"

    #@c
    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@f
    .line 1287
    .end local v4    # "implementsLogFactory":Z
    .end local v5    # "logFactoryClassLoader":Ljava/lang/ClassLoader;
    :cond_0
    :goto_0
    return v4

    #@10
    .line 1244
    .restart local v4    # "implementsLogFactory":Z
    .restart local v5    # "logFactoryClassLoader":Ljava/lang/ClassLoader;
    :cond_1
    const-string/jumbo v6, "[CUSTOM LOG FACTORY] "

    #@13
    invoke-static {v6, v5}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@16
    .line 1246
    const-string/jumbo v6, "org.apache.commons.logging.LogFactory"

    #@19
    const/4 v7, 0x0

    #@1a
    invoke-static {v6, v7, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@1d
    move-result-object v3

    #@1e
    .line 1247
    .local v3, "factoryFromCustomLoader":Ljava/lang/Class;
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@21
    move-result v4

    #@22
    .line 1248
    .local v4, "implementsLogFactory":Z
    if-eqz v4, :cond_2

    #@24
    .line 1249
    new-instance v6, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v7, "[CUSTOM LOG FACTORY] "

    #@2c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    .line 1250
    const-string/jumbo v7, " implements LogFactory but was loaded by an incompatible classloader."

    #@3b
    .line 1249
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    #@46
    goto :goto_0

    #@47
    .line 1256
    .end local v3    # "factoryFromCustomLoader":Ljava/lang/Class;
    .end local v4    # "implementsLogFactory":Z
    .end local v5    # "logFactoryClassLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v2

    #@48
    .line 1262
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v7, "[CUSTOM LOG FACTORY] SecurityException thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    .line 1264
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    .line 1262
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@63
    goto :goto_0

    #@64
    .line 1252
    .end local v2    # "e":Ljava/lang/SecurityException;
    .restart local v3    # "factoryFromCustomLoader":Ljava/lang/Class;
    .restart local v4    # "implementsLogFactory":Z
    .restart local v5    # "logFactoryClassLoader":Ljava/lang/ClassLoader;
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v7, "[CUSTOM LOG FACTORY] "

    #@6c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v6

    #@78
    .line 1253
    const-string/jumbo v7, " does not implement LogFactory."

    #@7b
    .line 1252
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v6

    #@7f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v6

    #@83
    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    #@86
    goto :goto_0

    #@87
    .line 1265
    .end local v3    # "factoryFromCustomLoader":Ljava/lang/Class;
    .end local v4    # "implementsLogFactory":Z
    .end local v5    # "logFactoryClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v1

    #@88
    .line 1272
    .local v1, "e":Ljava/lang/LinkageError;
    new-instance v6, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v7, "[CUSTOM LOG FACTORY] LinkageError thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    #@90
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    .line 1274
    invoke-virtual {v1}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    #@97
    move-result-object v7

    #@98
    .line 1272
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v6

    #@9c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v6

    #@a0
    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@a3
    goto/16 :goto_0

    #@a5
    .line 1275
    .end local v1    # "e":Ljava/lang/LinkageError;
    :catch_2
    move-exception v0

    #@a6
    .line 1283
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v6, "[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by classloader which loaded the custom LogFactory implementation. Is the custom factory in the right classloader?"

    #@a9
    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@ac
    goto/16 :goto_0
.end method

.method private static initDiagnostics()V
    .locals 9

    #@0
    .prologue
    .line 1500
    :try_start_0
    const-string/jumbo v7, "org.apache.commons.logging.diagnostics.dest"

    #@3
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v2

    #@7
    .line 1501
    .local v2, "dest":Ljava/lang/String;
    if-nez v2, :cond_0

    #@9
    .line 1502
    return-void

    #@a
    .line 1504
    .end local v2    # "dest":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@b
    .line 1507
    .local v5, "ex":Ljava/lang/SecurityException;
    return-void

    #@c
    .line 1510
    .end local v5    # "ex":Ljava/lang/SecurityException;
    .restart local v2    # "dest":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "STDOUT"

    #@f
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v7

    #@13
    if-eqz v7, :cond_1

    #@15
    .line 1511
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@17
    sput-object v7, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    #@19
    .line 1536
    :goto_0
    :try_start_1
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    #@1b
    .line 1537
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    sget-object v7, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    #@1d
    if-nez v7, :cond_3

    #@1f
    .line 1538
    const-string/jumbo v1, "BOOTLOADER"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    #@22
    .line 1545
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .local v1, "classLoaderName":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v8, "[LogFactory from "

    #@2a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    const-string/jumbo v8, "] "

    #@35
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    sput-object v7, Lorg/apache/commons/logging/LogFactory;->diagnosticPrefix:Ljava/lang/String;

    #@3f
    .line 1497
    return-void

    #@40
    .line 1512
    .end local v1    # "classLoaderName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "STDERR"

    #@43
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v7

    #@47
    if-eqz v7, :cond_2

    #@49
    .line 1513
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4b
    sput-object v7, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    #@4d
    goto :goto_0

    #@4e
    .line 1517
    :cond_2
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    #@50
    const/4 v7, 0x1

    #@51
    invoke-direct {v6, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    #@54
    .line 1518
    .local v6, "fos":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/PrintStream;

    #@56
    invoke-direct {v7, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@59
    sput-object v7, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@5b
    goto :goto_0

    #@5c
    .line 1519
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    #@5d
    .line 1521
    .local v4, "ex":Ljava/io/IOException;
    return-void

    #@5e
    .line 1540
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_3
    :try_start_3
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    #@61
    move-result-object v1

    #@62
    .restart local v1    # "classLoaderName":Ljava/lang/String;
    goto :goto_1

    #@63
    .line 1542
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "classLoaderName":Ljava/lang/String;
    :catch_2
    move-exception v3

    #@64
    .line 1543
    .local v3, "e":Ljava/lang/SecurityException;
    const-string/jumbo v1, "UNKNOWN"

    #@67
    .restart local v1    # "classLoaderName":Ljava/lang/String;
    goto :goto_1
.end method

.method protected static isDiagnosticsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1558
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private static logClassLoaderEnvironment(Ljava/lang/Class;)V
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1618
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@3
    move-result v3

    #@4
    if-nez v3, :cond_0

    #@6
    .line 1619
    return-void

    #@7
    .line 1623
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "[ENV] Extension directories (java.ext.dir): "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    const-string/jumbo v4, "java.ext.dir"

    #@16
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@25
    .line 1624
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "[ENV] Application classpath (java.class.path): "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    const-string/jumbo v4, "java.class.path"

    #@34
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 1629
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .line 1633
    .local v1, "className":Ljava/lang/String;
    :try_start_1
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@4a
    move-result-object v0

    #@4b
    .line 1642
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    new-instance v3, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v4, "[ENV] Class "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    const-string/jumbo v4, " was loaded via classloader "

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    .line 1643
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    .line 1642
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    .line 1641
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@71
    .line 1644
    new-instance v3, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v4, "[ENV] Ancestry of classloader which loaded "

    #@79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    const-string/jumbo v4, " is "

    #@84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    invoke-static {v3, v0}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@8f
    .line 1617
    return-void

    #@90
    .line 1625
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "className":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@91
    .line 1626
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v3, "[ENV] Security setting prevent interrogation of system classpaths."

    #@94
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@97
    goto :goto_0

    #@98
    .line 1634
    .end local v2    # "ex":Ljava/lang/SecurityException;
    .restart local v1    # "className":Ljava/lang/String;
    :catch_1
    move-exception v2

    #@99
    .line 1637
    .restart local v2    # "ex":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v4, "[ENV] Security forbids determining the classloader for "

    #@a1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v3

    #@a5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v3

    #@a9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v3

    #@ad
    .line 1636
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@b0
    .line 1638
    return-void
.end method

.method private static final logDiagnostic(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1580
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1581
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    #@6
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->diagnosticPrefix:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@b
    .line 1582
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    #@d
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 1583
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    #@12
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    #@15
    .line 1579
    :cond_0
    return-void
.end method

.method private static logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1655
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 1656
    return-void

    #@7
    .line 1659
    :cond_0
    if-eqz p1, :cond_1

    #@9
    .line 1660
    invoke-virtual {p1}, Ljava/lang/ClassLoader;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 1661
    .local v1, "classLoaderString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    const-string/jumbo v5, " == \'"

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    const-string/jumbo v5, "\'"

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@37
    .line 1665
    .end local v1    # "classLoaderString":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    move-result-object v3

    #@3b
    .line 1671
    .local v3, "systemClassLoader":Ljava/lang/ClassLoader;
    if-eqz p1, :cond_4

    #@3d
    .line 1672
    new-instance v0, Ljava/lang/StringBuffer;

    #@3f
    new-instance v4, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    const-string/jumbo v5, "ClassLoader tree:"

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@56
    .line 1674
    .local v0, "buf":Ljava/lang/StringBuffer;
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5d
    .line 1675
    if-ne p1, v3, :cond_3

    #@5f
    .line 1676
    const-string/jumbo v4, " (SYSTEM) "

    #@62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@65
    .line 1680
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@68
    move-result-object p1

    #@69
    .line 1686
    const-string/jumbo v4, " --> "

    #@6c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6f
    .line 1687
    if-nez p1, :cond_2

    #@71
    .line 1688
    const-string/jumbo v4, "BOOT"

    #@74
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@77
    .line 1692
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@7a
    move-result-object v4

    #@7b
    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@7e
    .line 1654
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_4
    return-void

    #@7f
    .line 1666
    .end local v3    # "systemClassLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v2

    #@80
    .line 1668
    .local v2, "ex":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    const-string/jumbo v5, "Security forbids determining the system classloader."

    #@8c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v4

    #@94
    .line 1667
    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@97
    .line 1669
    return-void

    #@98
    .line 1681
    .end local v2    # "ex":Ljava/lang/SecurityException;
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v3    # "systemClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v2

    #@99
    .line 1682
    .restart local v2    # "ex":Ljava/lang/SecurityException;
    const-string/jumbo v4, " --> SECRET"

    #@9c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9f
    goto :goto_0
.end method

.method protected static final logRawDiagnostic(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1594
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1595
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    #@6
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9
    .line 1596
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    #@b
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    #@e
    .line 1593
    :cond_0
    return-void
.end method

.method protected static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .locals 1
    .param p0, "factoryClass"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1047
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method protected static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .locals 4
    .param p0, "factoryClass"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "contextClassLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    #@0
    .prologue
    .line 1007
    new-instance v2, Lorg/apache/commons/logging/LogFactory$2;

    #@2
    invoke-direct {v2, p0, p1}, Lorg/apache/commons/logging/LogFactory$2;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@5
    .line 1006
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .line 1013
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/commons/logging/LogConfigurationException;

    #@b
    if-eqz v2, :cond_1

    #@d
    move-object v0, v1

    #@e
    .line 1014
    check-cast v0, Lorg/apache/commons/logging/LogConfigurationException;

    #@10
    .line 1015
    .local v0, "ex":Lorg/apache/commons/logging/LogConfigurationException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 1017
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "An error occurred while loading the factory class:"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 1018
    invoke-virtual {v0}, Lorg/apache/commons/logging/LogConfigurationException;->getMessage()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    .line 1017
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 1016
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@31
    .line 1020
    :cond_0
    throw v0

    #@32
    .line 1022
    .end local v0    # "ex":Lorg/apache/commons/logging/LogConfigurationException;
    :cond_1
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_2

    #@38
    .line 1024
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v3, "Created object "

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    .line 1025
    const-string/jumbo v3, " to manage classloader "

    #@4f
    .line 1024
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    .line 1025
    invoke-static {p2}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    .line 1024
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    .line 1023
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@62
    .line 1027
    :cond_2
    check-cast v1, Lorg/apache/commons/logging/LogFactory;

    #@64
    .end local v1    # "result":Ljava/lang/Object;
    return-object v1
.end method

.method public static objectId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1709
    if-nez p0, :cond_0

    #@2
    .line 1710
    const-string/jumbo v0, "null"

    #@5
    return-object v0

    #@6
    .line 1712
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, "@"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@21
    move-result v1

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public static release(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 694
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Releasing factory for classloader "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@21
    .line 697
    :cond_0
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    #@23
    monitor-enter v2

    #@24
    .line 698
    if-nez p0, :cond_2

    #@26
    .line 699
    :try_start_0
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 700
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    #@2c
    invoke-virtual {v1}, Lorg/apache/commons/logging/LogFactory;->release()V

    #@2f
    .line 701
    const/4 v1, 0x0

    #@30
    sput-object v1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    :cond_1
    :goto_0
    monitor-exit v2

    #@33
    .line 692
    return-void

    #@34
    .line 704
    :cond_2
    :try_start_1
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    #@36
    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Lorg/apache/commons/logging/LogFactory;

    #@3c
    .line 705
    .local v0, "factory":Lorg/apache/commons/logging/LogFactory;
    if-eqz v0, :cond_1

    #@3e
    .line 706
    invoke-virtual {v0}, Lorg/apache/commons/logging/LogFactory;->release()V

    #@41
    .line 707
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    #@43
    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 697
    .end local v0    # "factory":Lorg/apache/commons/logging/LogFactory;
    :catchall_0
    move-exception v1

    #@48
    monitor-exit v2

    #@49
    throw v1
.end method

.method public static releaseAll()V
    .locals 4

    #@0
    .prologue
    .line 725
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 726
    const-string/jumbo v2, "Releasing factory for all classloaders."

    #@9
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    #@c
    .line 728
    :cond_0
    sget-object v3, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    #@e
    monitor-enter v3

    #@f
    .line 729
    :try_start_0
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    #@11
    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@14
    move-result-object v1

    #@15
    .line 730
    .local v1, "elements":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 731
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lorg/apache/commons/logging/LogFactory;

    #@21
    .line 732
    .local v0, "element":Lorg/apache/commons/logging/LogFactory;
    invoke-virtual {v0}, Lorg/apache/commons/logging/LogFactory;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 728
    .end local v0    # "element":Lorg/apache/commons/logging/LogFactory;
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2

    #@28
    .line 734
    :cond_1
    :try_start_1
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    #@2a
    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    #@2d
    .line 736
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    #@2f
    if-eqz v2, :cond_2

    #@31
    .line 737
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    #@33
    invoke-virtual {v2}, Lorg/apache/commons/logging/LogFactory;->release()V

    #@36
    .line 738
    const/4 v2, 0x0

    #@37
    sput-object v2, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    :cond_2
    monitor-exit v3

    #@3a
    .line 723
    return-void
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAttributeNames()[Ljava/lang/String;
.end method

.method public abstract getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation
.end method

.method public abstract getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method
