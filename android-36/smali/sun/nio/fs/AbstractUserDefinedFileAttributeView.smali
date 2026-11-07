.class abstract Lsun/nio/fs/AbstractUserDefinedFileAttributeView;
.super Ljava/lang/Object;
.source "AbstractUserDefinedFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/UserDefinedFileAttributeView;
.implements Lsun/nio/fs/DynamicFileAttributeView;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 37
    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist checkAccess(Ljava/lang/String;ZZ)V
    .registers 7
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "checkRead"    # Z
    .param p3, "checkWrite"    # Z

    .line 46
    nop

    .line 47
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 48
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1b

    .line 49
    if-eqz p2, :cond_c

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 51
    :cond_c
    if-eqz p3, :cond_11

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 53
    :cond_11
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "accessUserDefinedAttributes"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 55
    :cond_1b
    return-void
.end method

.method public final whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 59
    const-string v0, "user"

    return-object v0
.end method

.method public final blacklist readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .registers 10
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

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_2a

    aget-object v3, p1, v2

    .line 82
    .local v3, "name":Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 83
    invoke-virtual {p0}, Lsun/nio/fs/AbstractUserDefinedFileAttributeView;->list()Ljava/util/List;

    move-result-object v0

    .line 84
    goto :goto_2a

    .line 86
    :cond_18
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    .line 88
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 87
    .restart local v3    # "name":Ljava/lang/String;
    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 93
    .end local v3    # "name":Ljava/lang/String;
    :cond_2a
    :goto_2a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 95
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lsun/nio/fs/AbstractUserDefinedFileAttributeView;->size(Ljava/lang/String;)I

    move-result v4

    .line 96
    .local v4, "size":I
    new-array v5, v4, [B

    .line 97
    .local v5, "buf":[B
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lsun/nio/fs/AbstractUserDefinedFileAttributeView;->read(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 98
    .local v6, "n":I
    if-ne v6, v4, :cond_51

    move-object v7, v5

    goto :goto_55

    :cond_51
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    .line 99
    .local v7, "value":[B
    :goto_55
    invoke-interface {v1, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "size":I
    .end local v5    # "buf":[B
    .end local v6    # "n":I
    .end local v7    # "value":[B
    goto :goto_33

    .line 101
    :cond_59
    return-object v1
.end method

.method public final blacklist setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    instance-of v0, p2, [B

    if-eqz v0, :cond_c

    .line 68
    move-object v0, p2

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "bb":Ljava/nio/ByteBuffer;
    goto :goto_f

    .line 70
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_c
    move-object v0, p2

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 72
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    :goto_f
    invoke-virtual {p0, p1, v0}, Lsun/nio/fs/AbstractUserDefinedFileAttributeView;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)I

    .line 73
    return-void
.end method
