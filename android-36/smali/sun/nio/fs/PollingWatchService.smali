.class Lsun/nio/fs/PollingWatchService;
.super Lsun/nio/fs/AbstractWatchService;
.source "PollingWatchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/PollingWatchService$PollingWatchKey;,
        Lsun/nio/fs/PollingWatchService$CacheEntry;
    }
.end annotation


# instance fields
.field private final blacklist map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lsun/nio/fs/PollingWatchService$PollingWatchKey;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmap(Lsun/nio/fs/PollingWatchService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetscheduledExecutor(Lsun/nio/fs/PollingWatchService;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    iget-object p0, p0, Lsun/nio/fs/PollingWatchService;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoPrivilegedRegister(Lsun/nio/fs/PollingWatchService;Ljava/nio/file/Path;Ljava/util/Set;Lcom/sun/nio/file/SensitivityWatchEventModifier;)Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lsun/nio/fs/PollingWatchService;->doPrivilegedRegister(Ljava/nio/file/Path;Ljava/util/Set;Lcom/sun/nio/file/SensitivityWatchEventModifier;)Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lsun/nio/fs/AbstractWatchService;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    .line 57
    new-instance v0, Lsun/nio/fs/PollingWatchService$1;

    invoke-direct {v0, p0}, Lsun/nio/fs/PollingWatchService$1;-><init>(Lsun/nio/fs/PollingWatchService;)V

    .line 58
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/PollingWatchService;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    return-void
.end method

.method private blacklist doPrivilegedRegister(Ljava/nio/file/Path;Ljava/util/Set;Lcom/sun/nio/file/SensitivityWatchEventModifier;)Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    .registers 11
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p3, "sensivity"    # Lcom/sun/nio/file/SensitivityWatchEventModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;>;",
            "Lcom/sun/nio/file/SensitivityWatchEventModifier;",
            ")",
            "Lsun/nio/fs/PollingWatchService$PollingWatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    .local p2, "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    .line 148
    .local v0, "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 151
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v1

    .line 152
    .local v1, "fileKey":Ljava/lang/Object;
    if-eqz v1, :cond_53

    .line 156
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService;->closeLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 157
    :try_start_1a
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 161
    iget-object v3, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    monitor-enter v3
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_50

    .line 162
    :try_start_23
    iget-object v4, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    .line 163
    .local v4, "watchKey":Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    if-nez v4, :cond_39

    .line 165
    new-instance v5, Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    invoke-direct {v5, p0, p1, p0, v1}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;-><init>(Lsun/nio/fs/PollingWatchService;Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService;Ljava/lang/Object;)V

    move-object v4, v5

    .line 166
    iget-object v5, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 169
    :cond_39
    invoke-virtual {v4}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->disable()V

    .line 171
    :goto_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_47

    .line 172
    :try_start_3d
    invoke-virtual {p3}, Lcom/sun/nio/file/SensitivityWatchEventModifier;->sensitivityValueInSeconds()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v4, p2, v5, v6}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->enable(Ljava/util/Set;J)V

    .line 173
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_50

    return-object v4

    .line 171
    .end local v4    # "watchKey":Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    :catchall_47
    move-exception v4

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    .end local v0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    .end local v1    # "fileKey":Ljava/lang/Object;
    .end local p0    # "this":Lsun/nio/fs/PollingWatchService;
    .end local p1    # "path":Ljava/nio/file/Path;
    .end local p2    # "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    .end local p3    # "sensivity":Lcom/sun/nio/file/SensitivityWatchEventModifier;
    :try_start_49
    throw v4

    .line 158
    .restart local v0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    .restart local v1    # "fileKey":Ljava/lang/Object;
    .restart local p0    # "this":Lsun/nio/fs/PollingWatchService;
    .restart local p1    # "path":Ljava/nio/file/Path;
    .restart local p2    # "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    .restart local p3    # "sensivity":Lcom/sun/nio/file/SensitivityWatchEventModifier;
    :cond_4a
    new-instance v3, Ljava/nio/file/ClosedWatchServiceException;

    invoke-direct {v3}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    .end local v0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    .end local v1    # "fileKey":Ljava/lang/Object;
    .end local p0    # "this":Lsun/nio/fs/PollingWatchService;
    .end local p1    # "path":Ljava/nio/file/Path;
    .end local p2    # "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    .end local p3    # "sensivity":Lcom/sun/nio/file/SensitivityWatchEventModifier;
    throw v3

    .line 174
    .restart local v0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    .restart local v1    # "fileKey":Ljava/lang/Object;
    .restart local p0    # "this":Lsun/nio/fs/PollingWatchService;
    .restart local p1    # "path":Ljava/nio/file/Path;
    .restart local p2    # "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    .restart local p3    # "sensivity":Lcom/sun/nio/file/SensitivityWatchEventModifier;
    :catchall_50
    move-exception v3

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_50

    throw v3

    .line 153
    :cond_53
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "File keys must be supported"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 149
    .end local v1    # "fileKey":Ljava/lang/Object;
    :cond_5b
    new-instance v1, Ljava/nio/file/NotDirectoryException;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method blacklist implClose()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    monitor-enter v0

    .line 181
    :try_start_3
    iget-object v1, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 182
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lsun/nio/fs/PollingWatchService$PollingWatchKey;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    .line 183
    .local v3, "watchKey":Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    invoke-virtual {v3}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->disable()V

    .line 184
    invoke-virtual {v3}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->invalidate()V

    .line 185
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lsun/nio/fs/PollingWatchService$PollingWatchKey;>;"
    .end local v3    # "watchKey":Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    goto :goto_d

    .line 186
    :cond_26
    iget-object v1, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 187
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_35

    .line 188
    new-instance v0, Lsun/nio/fs/PollingWatchService$3;

    invoke-direct {v0, p0}, Lsun/nio/fs/PollingWatchService$3;-><init>(Lsun/nio/fs/PollingWatchService;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 195
    return-void

    .line 187
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method varargs blacklist register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .registers 10
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p3, "modifiers"    # [Ljava/nio/file/WatchEvent$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    .local p2, "events":[Ljava/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 79
    .local v0, "eventSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/WatchEvent$Kind<*>;>;"
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_3a

    aget-object v4, p2, v3

    .line 81
    .local v4, "event":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    if-eq v4, v5, :cond_33

    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-eq v4, v5, :cond_33

    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    if-ne v4, v5, :cond_1a

    goto :goto_33

    .line 90
    :cond_1a
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-ne v4, v5, :cond_1f

    .line 91
    goto :goto_37

    .line 95
    :cond_1f
    if-nez v4, :cond_29

    .line 96
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "An element in event set is \'null\'"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_29
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-interface {v4}, Ljava/nio/file/WatchEvent$Kind;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_33
    :goto_33
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    nop

    .line 79
    .end local v4    # "event":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 99
    :cond_3a
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_93

    .line 103
    sget-object v1, Lcom/sun/nio/file/SensitivityWatchEventModifier;->MEDIUM:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    .line 104
    .local v1, "sensivity":Lcom/sun/nio/file/SensitivityWatchEventModifier;
    array-length v3, p3

    if-lez v3, :cond_65

    .line 105
    array-length v3, p3

    :goto_46
    if-ge v2, v3, :cond_65

    aget-object v4, p3, v2

    .line 106
    .local v4, "modifier":Ljava/nio/file/WatchEvent$Modifier;
    if-eqz v4, :cond_5f

    .line 108
    instance-of v5, v4, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    if-eqz v5, :cond_57

    .line 109
    move-object v1, v4

    check-cast v1, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    .line 110
    nop

    .line 105
    .end local v4    # "modifier":Ljava/nio/file/WatchEvent$Modifier;
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 112
    .restart local v4    # "modifier":Ljava/nio/file/WatchEvent$Modifier;
    :cond_57
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Modifier not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_5f
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 117
    .end local v4    # "modifier":Ljava/nio/file/WatchEvent$Modifier;
    :cond_65
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 123
    move-object v2, v1

    .line 124
    .local v2, "s":Lcom/sun/nio/file/SensitivityWatchEventModifier;
    :try_start_6c
    new-instance v3, Lsun/nio/fs/PollingWatchService$2;

    invoke-direct {v3, p0, p1, v0, v2}, Lsun/nio/fs/PollingWatchService$2;-><init>(Lsun/nio/fs/PollingWatchService;Ljava/nio/file/Path;Ljava/util/Set;Lcom/sun/nio/file/SensitivityWatchEventModifier;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/WatchKey;
    :try_end_77
    .catch Ljava/security/PrivilegedActionException; {:try_start_6c .. :try_end_77} :catch_78

    return-object v3

    .line 131
    .end local v2    # "s":Lcom/sun/nio/file/SensitivityWatchEventModifier;
    :catch_78
    move-exception v2

    .line 132
    .local v2, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v2}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 133
    .local v3, "cause":Ljava/lang/Throwable;
    if-eqz v3, :cond_87

    instance-of v4, v3, Ljava/io/IOException;

    if-eqz v4, :cond_87

    .line 134
    move-object v4, v3

    check-cast v4, Ljava/io/IOException;

    throw v4

    .line 135
    :cond_87
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 118
    .end local v2    # "pae":Ljava/security/PrivilegedActionException;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :cond_8d
    new-instance v2, Ljava/nio/file/ClosedWatchServiceException;

    invoke-direct {v2}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    throw v2

    .line 100
    .end local v1    # "sensivity":Lcom/sun/nio/file/SensitivityWatchEventModifier;
    :cond_93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No events to register"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
