.class public Lcom/android/server/LockGuard;
.super Ljava/lang/Object;
.source "LockGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockGuard$LockInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockGuard"

.field private static sKnown:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LockGuard$LockInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    invoke-direct {v0, v1, v2}, Landroid/util/ArrayMap;-><init>(IZ)V

    #@7
    sput-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    #@9
    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 139
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v4

    #@7
    if-ge v0, v4, :cond_1

    #@9
    .line 140
    sget-object v4, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    .line 141
    .local v3, "lock":Ljava/lang/Object;
    sget-object v4, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    #@11
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/LockGuard$LockInfo;

    #@17
    .line 142
    .local v1, "info":Lcom/android/server/LockGuard$LockInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "Lock "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-static {v3}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    const-string/jumbo v5, ":"

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 143
    const/4 v2, 0x0

    #@3a
    .local v2, "j":I
    :goto_1
    iget-object v4, v1, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    #@3c
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    #@3f
    move-result v4

    #@40
    if-ge v2, v4, :cond_0

    #@42
    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v5, "  Child "

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    iget-object v5, v1, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    #@50
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@53
    move-result-object v5

    #@54
    invoke-static {v5}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@63
    .line 143
    add-int/lit8 v2, v2, 0x1

    #@65
    goto :goto_1

    #@66
    .line 146
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@69
    .line 139
    add-int/lit8 v0, v0, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 138
    .end local v1    # "info":Lcom/android/server/LockGuard$LockInfo;
    .end local v2    # "j":I
    .end local v3    # "lock":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private static findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;
    .locals 4
    .param p0, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 71
    sget-object v1, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/LockGuard$LockInfo;

    #@9
    .line 72
    .local v0, "info":Lcom/android/server/LockGuard$LockInfo;
    if-nez v0, :cond_0

    #@b
    .line 73
    new-instance v0, Lcom/android/server/LockGuard$LockInfo;

    #@d
    .end local v0    # "info":Lcom/android/server/LockGuard$LockInfo;
    invoke-direct {v0, v2}, Lcom/android/server/LockGuard$LockInfo;-><init>(Lcom/android/server/LockGuard$LockInfo;)V

    #@10
    .line 74
    .restart local v0    # "info":Lcom/android/server/LockGuard$LockInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "0x"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1f
    move-result v2

    #@20
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, " ["

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 75
    new-instance v2, Ljava/lang/Throwable;

    #@31
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@34
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@37
    move-result-object v2

    #@38
    const/4 v3, 0x2

    #@39
    aget-object v2, v2, v3

    #@3b
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 75
    const-string/jumbo v2, "]"

    #@46
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    iput-object v1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    #@50
    .line 76
    sget-object v1, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    #@52
    invoke-virtual {v1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 78
    :cond_0
    return-object v0
.end method

.method public static guard(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 88
    if-eqz p0, :cond_0

    #@2
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_1

    #@8
    :cond_0
    return-object p0

    #@9
    .line 91
    :cond_1
    const/4 v4, 0x0

    #@a
    .line 92
    .local v4, "triggered":Z
    invoke-static {p0}, Lcom/android/server/LockGuard;->findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;

    #@d
    move-result-object v2

    #@e
    .line 93
    .local v2, "info":Lcom/android/server/LockGuard$LockInfo;
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    iget-object v5, v2, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    #@11
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    #@14
    move-result v5

    #@15
    if-ge v1, v5, :cond_4

    #@17
    .line 94
    iget-object v5, v2, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    #@19
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 95
    .local v0, "child":Ljava/lang/Object;
    if-nez v0, :cond_3

    #@1f
    .line 93
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 97
    :cond_3
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_2

    #@28
    .line 98
    const-string/jumbo v5, "LockGuard"

    #@2b
    new-instance v6, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v7, "Calling thread "

    #@33
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    const-string/jumbo v7, " is holding "

    #@46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    .line 99
    invoke-static {v0}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    .line 99
    const-string/jumbo v7, " while trying to acquire "

    #@55
    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    .line 100
    invoke-static {p0}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    .line 100
    new-instance v7, Ljava/lang/Throwable;

    #@67
    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    #@6a
    .line 98
    invoke-static {v5, v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    .line 101
    const/4 v4, 0x1

    #@6e
    goto :goto_1

    #@6f
    .line 105
    .end local v0    # "child":Ljava/lang/Object;
    :cond_4
    if-nez v4, :cond_7

    #@71
    .line 108
    const/4 v1, 0x0

    #@72
    :goto_2
    sget-object v5, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    #@74
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@77
    move-result v5

    #@78
    if-ge v1, v5, :cond_7

    #@7a
    .line 109
    sget-object v5, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    #@7c
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@7f
    move-result-object v3

    #@80
    .line 110
    .local v3, "test":Ljava/lang/Object;
    if-eqz v3, :cond_5

    #@82
    if-ne v3, p0, :cond_6

    #@84
    .line 108
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@86
    goto :goto_2

    #@87
    .line 112
    :cond_6
    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@8a
    move-result v5

    #@8b
    if-eqz v5, :cond_5

    #@8d
    .line 113
    sget-object v5, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    #@8f
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@92
    move-result-object v5

    #@93
    check-cast v5, Lcom/android/server/LockGuard$LockInfo;

    #@95
    iget-object v5, v5, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    #@97
    invoke-virtual {v5, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@9a
    goto :goto_3

    #@9b
    .line 118
    .end local v3    # "test":Ljava/lang/Object;
    :cond_7
    return-object p0
.end method

.method public static installLock(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "lock"    # Ljava/lang/Object;
    .param p1, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/server/LockGuard;->findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;

    #@3
    move-result-object v0

    #@4
    .line 126
    .local v0, "info":Lcom/android/server/LockGuard$LockInfo;
    iput-object p1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    #@6
    .line 124
    return-void
.end method

.method private static lockToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 130
    sget-object v1, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/LockGuard$LockInfo;

    #@8
    .line 131
    .local v0, "info":Lcom/android/server/LockGuard$LockInfo;
    if-eqz v0, :cond_0

    #@a
    .line 132
    iget-object v1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    #@c
    return-object v1

    #@d
    .line 134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "0x"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1c
    move-result v2

    #@1d
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method
