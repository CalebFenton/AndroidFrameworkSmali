.class Lsun/nio/fs/UnixFileAttributeViews$Posix;
.super Lsun/nio/fs/UnixFileAttributeViews$Basic;
.source "UnixFileAttributeViews.java"

# interfaces
.implements Ljava/nio/file/attribute/PosixFileAttributeView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileAttributeViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Posix"
.end annotation


# static fields
.field private static final blacklist GROUP_NAME:Ljava/lang/String; = "group"

.field private static final blacklist OWNER_NAME:Ljava/lang/String; = "owner"

.field private static final blacklist PERMISSIONS_NAME:Ljava/lang/String; = "permissions"

.field static final blacklist posixAttributeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 137
    sget-object v0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->basicAttributeNames:Ljava/util/Set;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "permissions"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "owner"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "group"

    aput-object v3, v1, v2

    .line 138
    invoke-static {v0, v1}, Lsun/nio/fs/Util;->newSet(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->posixAttributeNames:Ljava/util/Set;

    .line 137
    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixPath;Z)V
    .registers 3
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p2, "followLinks"    # Z

    .line 141
    invoke-direct {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Basic;-><init>(Lsun/nio/fs/UnixPath;Z)V

    .line 142
    return-void
.end method


# virtual methods
.method final blacklist addRequestedPosixAttributes(Ljava/nio/file/attribute/PosixFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V
    .registers 5
    .param p1, "attrs"    # Ljava/nio/file/attribute/PosixFileAttributes;
    .param p2, "builder"    # Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    .line 192
    invoke-virtual {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->addRequestedBasicAttributes(Ljava/nio/file/attribute/BasicFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    .line 193
    const-string v0, "permissions"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 194
    invoke-interface {p1}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    :cond_12
    const-string v0, "owner"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 196
    invoke-interface {p1}, Ljava/nio/file/attribute/PosixFileAttributes;->owner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    :cond_21
    const-string v0, "group"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 198
    invoke-interface {p1}, Ljava/nio/file/attribute/PosixFileAttributes;->group()Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    :cond_30
    return-void
.end method

.method final blacklist checkReadExtended()V
    .registers 4

    .line 145
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 146
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 147
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 148
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "accessUserInformation"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 150
    :cond_15
    return-void
.end method

.method final blacklist checkWriteExtended()V
    .registers 4

    .line 153
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 154
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 155
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 156
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "accessUserInformation"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 158
    :cond_15
    return-void
.end method

.method public whitelist test-api getOwner()Ljava/nio/file/attribute/UserPrincipal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->owner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 162
    const-string v0, "posix"

    return-object v0
.end method

.method public bridge synthetic whitelist test-api readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .param p1, "requested"    # [Ljava/lang/String;
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

    .line 205
    sget-object v0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->posixAttributeNames:Ljava/util/Set;

    .line 206
    invoke-static {v0, p1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->create(Ljava/util/Set;[Ljava/lang/String;)Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    move-result-object v0

    .line 207
    .local v0, "builder":Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v1

    .line 208
    .local v1, "attrs":Ljava/nio/file/attribute/PosixFileAttributes;
    invoke-virtual {p0, v1, v0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->addRequestedPosixAttributes(Ljava/nio/file/attribute/PosixFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    .line 209
    invoke-virtual {v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->unmodifiableMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public blacklist readAttributes()Lsun/nio/fs/UnixFileAttributes;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->checkReadExtended()V

    .line 216
    :try_start_3
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->followLinks:Z

    invoke-static {v0, v1}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0
    :try_end_b
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_b} :catch_c

    return-object v0

    .line 217
    :catch_c
    move-exception v0

    .line 218
    .local v0, "x":Lsun/nio/fs/UnixException;
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 219
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const-string v0, "permissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 171
    move-object v0, p2

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setPermissions(Ljava/util/Set;)V

    .line 172
    return-void

    .line 174
    :cond_f
    const-string v0, "owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 175
    move-object v0, p2

    check-cast v0, Ljava/nio/file/attribute/UserPrincipal;

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    .line 176
    return-void

    .line 178
    :cond_1e
    const-string v0, "group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 179
    move-object v0, p2

    check-cast v0, Ljava/nio/file/attribute/GroupPrincipal;

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V

    .line 180
    return-void

    .line 182
    :cond_2d
    invoke-super {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Basic;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public whitelist test-api setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V
    .registers 4
    .param p1, "group"    # Ljava/nio/file/attribute/GroupPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    if-eqz p1, :cond_18

    .line 288
    instance-of v0, p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    if-eqz v0, :cond_12

    .line 290
    move-object v0, p1

    check-cast v0, Lsun/nio/fs/UnixUserPrincipals$Group;

    invoke-virtual {v0}, Lsun/nio/fs/UnixUserPrincipals$Group;->gid()I

    move-result v0

    .line 291
    .local v0, "gid":I
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setOwners(II)V

    .line 292
    return-void

    .line 289
    .end local v0    # "gid":I
    :cond_12
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0

    .line 287
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'owner\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist setMode(I)V
    .registers 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->checkWriteExtended()V

    .line 227
    :try_start_3
    iget-boolean v0, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->followLinks:Z

    if-eqz v0, :cond_d

    .line 228
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v0, p1}, Lsun/nio/fs/UnixNativeDispatcher;->chmod(Lsun/nio/fs/UnixPath;I)V

    goto :goto_1b

    .line 230
    :cond_d
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v0
    :try_end_14
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_14} :catch_22

    .line 232
    .local v0, "fd":I
    :try_start_14
    invoke-static {v0, p1}, Lsun/nio/fs/UnixNativeDispatcher;->fchmod(II)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1c

    .line 234
    :try_start_17
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 235
    nop

    .line 239
    .end local v0    # "fd":I
    :goto_1b
    goto :goto_28

    .line 234
    .restart local v0    # "fd":I
    :catchall_1c
    move-exception v1

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 235
    nop

    .end local p0    # "this":Lsun/nio/fs/UnixFileAttributeViews$Posix;
    .end local p1    # "mode":I
    throw v1
    :try_end_22
    .catch Lsun/nio/fs/UnixException; {:try_start_17 .. :try_end_22} :catch_22

    .line 237
    .end local v0    # "fd":I
    .restart local p0    # "this":Lsun/nio/fs/UnixFileAttributeViews$Posix;
    .restart local p1    # "mode":I
    :catch_22
    move-exception v0

    .line 238
    .local v0, "x":Lsun/nio/fs/UnixException;
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 240
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :goto_28
    return-void
.end method

.method public whitelist test-api setOwner(Ljava/nio/file/attribute/UserPrincipal;)V
    .registers 4
    .param p1, "owner"    # Ljava/nio/file/attribute/UserPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    if-eqz p1, :cond_24

    .line 269
    instance-of v0, p1, Lsun/nio/fs/UnixUserPrincipals$User;

    if-eqz v0, :cond_1e

    .line 271
    instance-of v0, p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    if-nez v0, :cond_16

    .line 273
    move-object v0, p1

    check-cast v0, Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-virtual {v0}, Lsun/nio/fs/UnixUserPrincipals$User;->uid()I

    move-result v0

    .line 274
    .local v0, "uid":I
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setOwners(II)V

    .line 275
    return-void

    .line 272
    .end local v0    # "uid":I
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\'owner\' parameter can\'t be a group"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1e
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0

    .line 268
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'owner\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist setOwners(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->checkWriteExtended()V

    .line 246
    :try_start_3
    iget-boolean v0, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->followLinks:Z

    if-eqz v0, :cond_d

    .line 247
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v0, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->chown(Lsun/nio/fs/UnixPath;II)V

    goto :goto_12

    .line 249
    :cond_d
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v0, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->lchown(Lsun/nio/fs/UnixPath;II)V
    :try_end_12
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_12} :catch_13

    .line 253
    :goto_12
    goto :goto_19

    .line 251
    :catch_13
    move-exception v0

    .line 252
    .local v0, "x":Lsun/nio/fs/UnixException;
    iget-object v1, p0, Lsun/nio/fs/UnixFileAttributeViews$Posix;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 254
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :goto_19
    return-void
.end method

.method public whitelist test-api setPermissions(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    .local p1, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-static {p1}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(Ljava/util/Set;)I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setMode(I)V

    .line 261
    return-void
.end method
