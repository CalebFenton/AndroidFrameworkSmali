.class public Ljava/lang/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# instance fields
.field protected inCheck:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public checkAccept(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 155
    return-void
.end method

.method public checkAccess(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 127
    return-void
.end method

.method public checkAccess(Ljava/lang/ThreadGroup;)V
    .locals 0
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    #@0
    .prologue
    .line 129
    return-void
.end method

.method public checkAwtEventQueueAccess()V
    .locals 0

    #@0
    .prologue
    .line 177
    return-void
.end method

.method public checkConnect(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 149
    return-void
.end method

.method public checkConnect(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "context"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 151
    return-void
.end method

.method public checkCreateClassLoader()V
    .locals 0

    #@0
    .prologue
    .line 123
    return-void
.end method

.method public checkDelete(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    #@0
    .prologue
    .line 147
    return-void
.end method

.method public checkExec(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 133
    return-void
.end method

.method public checkExit(I)V
    .locals 0
    .param p1, "status"    # I

    #@0
    .prologue
    .line 131
    return-void
.end method

.method public checkLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "lib"    # Ljava/lang/String;

    #@0
    .prologue
    .line 135
    return-void
.end method

.method public checkListen(I)V
    .locals 0
    .param p1, "port"    # I

    #@0
    .prologue
    .line 153
    return-void
.end method

.method public checkMemberAccess(Ljava/lang/Class;I)V
    .locals 0
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 185
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public checkMulticast(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "maddr"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 157
    return-void
.end method

.method public checkMulticast(Ljava/net/InetAddress;B)V
    .locals 0
    .param p1, "maddr"    # Ljava/net/InetAddress;
    .param p2, "ttl"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 163
    return-void
.end method

.method public checkPackageAccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 179
    return-void
.end method

.method public checkPackageDefinition(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 181
    return-void
.end method

.method public checkPermission(Ljava/security/Permission;)V
    .locals 0
    .param p1, "perm"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 115
    return-void
.end method

.method public checkPermission(Ljava/security/Permission;Ljava/lang/Object;)V
    .locals 0
    .param p1, "perm"    # Ljava/security/Permission;
    .param p2, "context"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 119
    return-void
.end method

.method public checkPrintJobAccess()V
    .locals 0

    #@0
    .prologue
    .line 173
    return-void
.end method

.method public checkPropertiesAccess()V
    .locals 0

    #@0
    .prologue
    .line 165
    return-void
.end method

.method public checkPropertyAccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 167
    return-void
.end method

.method public checkRead(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 137
    return-void
.end method

.method public checkRead(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    #@0
    .prologue
    .line 139
    return-void
.end method

.method public checkRead(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 141
    return-void
.end method

.method public checkSecurityAccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 187
    return-void
.end method

.method public checkSetFactory()V
    .locals 0

    #@0
    .prologue
    .line 183
    return-void
.end method

.method public checkSystemClipboardAccess()V
    .locals 0

    #@0
    .prologue
    .line 175
    return-void
.end method

.method public checkTopLevelWindow(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "window"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 170
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public checkWrite(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 143
    return-void
.end method

.method public checkWrite(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    #@0
    .prologue
    .line 145
    return-void
.end method

.method protected classDepth(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 83
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method protected classLoaderDepth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 92
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method protected currentClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 67
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected currentLoadedClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 75
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected getClassContext()[Ljava/lang/Class;
    .locals 1

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getInCheck()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 50
    iget-boolean v0, p0, Ljava/lang/SecurityManager;->inCheck:Z

    #@2
    return v0
.end method

.method public getSecurityContext()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 112
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getThreadGroup()Ljava/lang/ThreadGroup;
    .locals 1

    #@0
    .prologue
    .line 193
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected inClass(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 100
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected inClassLoader()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 108
    const/4 v0, 0x0

    #@1
    return v0
.end method
