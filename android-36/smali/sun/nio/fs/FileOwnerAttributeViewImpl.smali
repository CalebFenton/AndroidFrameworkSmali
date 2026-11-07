.class final Lsun/nio/fs/FileOwnerAttributeViewImpl;
.super Ljava/lang/Object;
.source "FileOwnerAttributeViewImpl.java"

# interfaces
.implements Ljava/nio/file/attribute/FileOwnerAttributeView;
.implements Lsun/nio/fs/DynamicFileAttributeView;


# static fields
.field private static final blacklist OWNER_NAME:Ljava/lang/String; = "owner"


# instance fields
.field private final blacklist isPosixView:Z

.field private final blacklist view:Ljava/nio/file/attribute/FileAttributeView;


# direct methods
.method constructor blacklist <init>(Ljava/nio/file/attribute/AclFileAttributeView;)V
    .registers 3
    .param p1, "view"    # Ljava/nio/file/attribute/AclFileAttributeView;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->view:Ljava/nio/file/attribute/FileAttributeView;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->isPosixView:Z

    .line 53
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/file/attribute/PosixFileAttributeView;)V
    .registers 3
    .param p1, "view"    # Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->view:Ljava/nio/file/attribute/FileAttributeView;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->isPosixView:Z

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist test-api getOwner()Ljava/nio/file/attribute/UserPrincipal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->isPosixView:Z

    if-eqz v0, :cond_11

    .line 89
    iget-object v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->view:Ljava/nio/file/attribute/FileAttributeView;

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->owner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0

    .line 91
    :cond_11
    iget-object v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->view:Ljava/nio/file/attribute/FileAttributeView;

    check-cast v0, Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-interface {v0}, Ljava/nio/file/attribute/AclFileAttributeView;->getOwner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, "owner"

    return-object v0
.end method

.method public blacklist readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .param p1, "attributes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_53

    aget-object v3, p1, v2

    .line 76
    .local v3, "attribute":Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "owner"

    if-nez v4, :cond_49

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_49

    .line 79
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lsun/nio/fs/FileOwnerAttributeViewImpl;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' not recognized"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_49
    :goto_49
    invoke-virtual {p0}, Lsun/nio/fs/FileOwnerAttributeViewImpl;->getOwner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v3    # "attribute":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 83
    :cond_53
    return-object v0
.end method

.method public blacklist setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const-string v0, "owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 65
    move-object v0, p2

    check-cast v0, Ljava/nio/file/attribute/UserPrincipal;

    invoke-virtual {p0, v0}, Lsun/nio/fs/FileOwnerAttributeViewImpl;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    .line 70
    return-void

    .line 67
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsun/nio/fs/FileOwnerAttributeViewImpl;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not recognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setOwner(Ljava/nio/file/attribute/UserPrincipal;)V
    .registers 3
    .param p1, "owner"    # Ljava/nio/file/attribute/UserPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->isPosixView:Z

    if-eqz v0, :cond_c

    .line 100
    iget-object v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->view:Ljava/nio/file/attribute/FileAttributeView;

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    goto :goto_13

    .line 102
    :cond_c
    iget-object v0, p0, Lsun/nio/fs/FileOwnerAttributeViewImpl;->view:Ljava/nio/file/attribute/FileAttributeView;

    check-cast v0, Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/AclFileAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    .line 104
    :goto_13
    return-void
.end method
