.class Lsun/nio/fs/UnixFileSystem$1;
.super Ljava/lang/Object;
.source "UnixFileSystem.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/UnixFileSystem;->getRootDirectories()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/nio/fs/UnixFileSystem;

.field final synthetic blacklist val$allowedList:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystem;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Lsun/nio/fs/UnixFileSystem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lsun/nio/fs/UnixFileSystem$1;->this$0:Lsun/nio/fs/UnixFileSystem;

    iput-object p2, p0, Lsun/nio/fs/UnixFileSystem$1;->val$allowedList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 158
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 159
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 160
    iget-object v1, p0, Lsun/nio/fs/UnixFileSystem$1;->this$0:Lsun/nio/fs/UnixFileSystem;

    invoke-static {v1}, Lsun/nio/fs/UnixFileSystem;->-$$Nest$fgetrootDirectory(Lsun/nio/fs/UnixFileSystem;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 161
    :cond_13
    iget-object v1, p0, Lsun/nio/fs/UnixFileSystem$1;->val$allowedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v1

    .line 162
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :catch_1a
    move-exception v0

    .line 163
    .local v0, "x":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 164
    .local v1, "disallowed":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method
