.class public Ljava/lang/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# instance fields
.field protected whitelist test-api inCheck:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist test-api checkAccept(Ljava/lang/String;I)V
    .registers 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 165
    return-void
.end method

.method public whitelist test-api checkAccess(Ljava/lang/Thread;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Thread;

    .line 137
    return-void
.end method

.method public whitelist test-api checkAccess(Ljava/lang/ThreadGroup;)V
    .registers 2
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    .line 139
    return-void
.end method

.method public whitelist test-api checkAwtEventQueueAccess()V
    .registers 1

    .line 191
    return-void
.end method

.method public whitelist test-api checkConnect(Ljava/lang/String;I)V
    .registers 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 159
    return-void
.end method

.method public whitelist test-api checkConnect(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "context"    # Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public whitelist test-api checkCreateClassLoader()V
    .registers 1

    .line 135
    return-void
.end method

.method public whitelist test-api checkDelete(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .line 157
    return-void
.end method

.method public whitelist test-api checkExec(Ljava/lang/String;)V
    .registers 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 143
    return-void
.end method

.method public whitelist test-api checkExit(I)V
    .registers 2
    .param p1, "status"    # I

    .line 141
    return-void
.end method

.method public whitelist test-api checkLink(Ljava/lang/String;)V
    .registers 2
    .param p1, "lib"    # Ljava/lang/String;

    .line 145
    return-void
.end method

.method public whitelist test-api checkListen(I)V
    .registers 2
    .param p1, "port"    # I

    .line 163
    return-void
.end method

.method public whitelist test-api checkMemberAccess(Ljava/lang/Class;I)V
    .registers 3
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public whitelist test-api checkMulticast(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "maddr"    # Ljava/net/InetAddress;

    .line 167
    return-void
.end method

.method public whitelist test-api checkMulticast(Ljava/net/InetAddress;B)V
    .registers 3
    .param p1, "maddr"    # Ljava/net/InetAddress;
    .param p2, "ttl"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    return-void
.end method

.method public whitelist test-api checkPackageAccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 193
    return-void
.end method

.method public whitelist test-api checkPackageDefinition(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 195
    return-void
.end method

.method public whitelist test-api checkPermission(Ljava/security/Permission;)V
    .registers 2
    .param p1, "perm"    # Ljava/security/Permission;

    .line 127
    return-void
.end method

.method public whitelist test-api checkPermission(Ljava/security/Permission;Ljava/lang/Object;)V
    .registers 3
    .param p1, "perm"    # Ljava/security/Permission;
    .param p2, "context"    # Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public whitelist test-api checkPrintJobAccess()V
    .registers 1

    .line 187
    return-void
.end method

.method public whitelist test-api checkPropertiesAccess()V
    .registers 1

    .line 175
    return-void
.end method

.method public whitelist test-api checkPropertyAccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .line 177
    return-void
.end method

.method public whitelist test-api checkRead(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 147
    return-void
.end method

.method public whitelist test-api checkRead(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .line 149
    return-void
.end method

.method public whitelist test-api checkRead(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public whitelist test-api checkSecurityAccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/String;

    .line 205
    return-void
.end method

.method public whitelist test-api checkSetFactory()V
    .registers 1

    .line 197
    return-void
.end method

.method public whitelist test-api checkSystemClipboardAccess()V
    .registers 1

    .line 189
    return-void
.end method

.method public whitelist test-api checkTopLevelWindow(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "window"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api checkWrite(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 153
    return-void
.end method

.method public whitelist test-api checkWrite(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .line 155
    return-void
.end method

.method protected whitelist test-api classDepth(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    const/4 v0, -0x1

    return v0
.end method

.method protected whitelist test-api classLoaderDepth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    const/4 v0, -0x1

    return v0
.end method

.method protected whitelist test-api currentClassLoader()Ljava/lang/ClassLoader;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api currentLoadedClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api getClassContext()[Ljava/lang/Class;
    .registers 2

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getInCheck()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    iget-boolean v0, p0, Ljava/lang/SecurityManager;->inCheck:Z

    return v0
.end method

.method public whitelist test-api getSecurityContext()Ljava/lang/Object;
    .registers 2

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getThreadGroup()Ljava/lang/ThreadGroup;
    .registers 2

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api inClass(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api inClassLoader()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    const/4 v0, 0x0

    return v0
.end method
