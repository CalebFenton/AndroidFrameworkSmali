.class Lsun/nio/fs/UnixUserPrincipals;
.super Ljava/lang/Object;
.source "UnixUserPrincipals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixUserPrincipals$User;,
        Lsun/nio/fs/UnixUserPrincipals$Group;
    }
.end annotation


# static fields
.field static final blacklist SPECIAL_EVERYONE:Lsun/nio/fs/UnixUserPrincipals$User;

.field static final blacklist SPECIAL_GROUP:Lsun/nio/fs/UnixUserPrincipals$User;

.field static final blacklist SPECIAL_OWNER:Lsun/nio/fs/UnixUserPrincipals$User;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const-string v0, "OWNER@"

    invoke-static {v0}, Lsun/nio/fs/UnixUserPrincipals;->createSpecial(Ljava/lang/String;)Lsun/nio/fs/UnixUserPrincipals$User;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_OWNER:Lsun/nio/fs/UnixUserPrincipals$User;

    .line 40
    const-string v0, "GROUP@"

    invoke-static {v0}, Lsun/nio/fs/UnixUserPrincipals;->createSpecial(Ljava/lang/String;)Lsun/nio/fs/UnixUserPrincipals$User;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_GROUP:Lsun/nio/fs/UnixUserPrincipals$User;

    .line 41
    const-string v0, "EVERYONE@"

    invoke-static {v0}, Lsun/nio/fs/UnixUserPrincipals;->createSpecial(Ljava/lang/String;)Lsun/nio/fs/UnixUserPrincipals$User;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_EVERYONE:Lsun/nio/fs/UnixUserPrincipals$User;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createSpecial(Ljava/lang/String;)Lsun/nio/fs/UnixUserPrincipals$User;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    new-instance v0, Lsun/nio/fs/UnixUserPrincipals$User;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static blacklist fromGid(I)Lsun/nio/fs/UnixUserPrincipals$Group;
    .registers 3
    .param p0, "gid"    # I

    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "name":Ljava/lang/String;
    :try_start_1
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->getgrgid(I)[B

    move-result-object v1

    invoke-static {v1}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_9} :catch_a

    .line 132
    .end local v0    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    goto :goto_10

    .line 130
    .end local v1    # "name":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    :catch_a
    move-exception v1

    .line 131
    .local v1, "x":Lsun/nio/fs/UnixException;
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 133
    .end local v0    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    :goto_10
    new-instance v0, Lsun/nio/fs/UnixUserPrincipals$Group;

    invoke-direct {v0, p0, v1}, Lsun/nio/fs/UnixUserPrincipals$Group;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static blacklist fromUid(I)Lsun/nio/fs/UnixUserPrincipals$User;
    .registers 3
    .param p0, "uid"    # I

    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, "name":Ljava/lang/String;
    :try_start_1
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->getpwuid(I)[B

    move-result-object v1

    invoke-static {v1}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_9} :catch_a

    .line 121
    .end local v0    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    goto :goto_10

    .line 119
    .end local v1    # "name":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    :catch_a
    move-exception v1

    .line 120
    .local v1, "x":Lsun/nio/fs/UnixException;
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 122
    .end local v0    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    :goto_10
    new-instance v0, Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-direct {v0, p0, v1}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static blacklist lookupGroup(Ljava/lang/String;)Ljava/nio/file/attribute/GroupPrincipal;
    .registers 3
    .param p0, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lsun/nio/fs/UnixUserPrincipals;->lookupName(Ljava/lang/String;Z)I

    move-result v0

    .line 179
    .local v0, "gid":I
    new-instance v1, Lsun/nio/fs/UnixUserPrincipals$Group;

    invoke-direct {v1, v0, p0}, Lsun/nio/fs/UnixUserPrincipals$Group;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private static blacklist lookupName(Ljava/lang/String;Z)I
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "isGroup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 141
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 142
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "lookupUserInformation"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 144
    :cond_10
    const/4 v1, -0x1

    .line 146
    .local v1, "id":I
    if-eqz p1, :cond_18

    :try_start_13
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->getgrnam(Ljava/lang/String;)I

    move-result v2

    goto :goto_1c

    :cond_18
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->getpwnam(Ljava/lang/String;)I

    move-result v2
    :try_end_1c
    .catch Lsun/nio/fs/UnixException; {:try_start_13 .. :try_end_1c} :catch_2e

    .line 149
    .end local v1    # "id":I
    .local v2, "id":I
    :goto_1c
    nop

    .line 150
    const/4 v1, -0x1

    if-ne v2, v1, :cond_2d

    .line 153
    :try_start_20
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_24} :catch_26

    move v2, v1

    .line 156
    goto :goto_2d

    .line 154
    :catch_26
    move-exception v1

    .line 155
    .local v1, "ignore":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/nio/file/attribute/UserPrincipalNotFoundException;

    invoke-direct {v3, p0}, Ljava/nio/file/attribute/UserPrincipalNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    .end local v1    # "ignore":Ljava/lang/NumberFormatException;
    :cond_2d
    :goto_2d
    return v2

    .line 147
    .end local v2    # "id":I
    .local v1, "id":I
    :catch_2e
    move-exception v2

    .line 148
    .local v2, "x":Lsun/nio/fs/UnixException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static blacklist lookupUser(Ljava/lang/String;)Ljava/nio/file/attribute/UserPrincipal;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    sget-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_OWNER:Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-virtual {v0}, Lsun/nio/fs/UnixUserPrincipals$User;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 165
    sget-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_OWNER:Lsun/nio/fs/UnixUserPrincipals$User;

    return-object v0

    .line 166
    :cond_f
    sget-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_GROUP:Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-virtual {v0}, Lsun/nio/fs/UnixUserPrincipals$User;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 167
    sget-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_GROUP:Lsun/nio/fs/UnixUserPrincipals$User;

    return-object v0

    .line 168
    :cond_1e
    sget-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_EVERYONE:Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-virtual {v0}, Lsun/nio/fs/UnixUserPrincipals$User;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 169
    sget-object v0, Lsun/nio/fs/UnixUserPrincipals;->SPECIAL_EVERYONE:Lsun/nio/fs/UnixUserPrincipals$User;

    return-object v0

    .line 170
    :cond_2d
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/nio/fs/UnixUserPrincipals;->lookupName(Ljava/lang/String;Z)I

    move-result v0

    .line 171
    .local v0, "uid":I
    new-instance v1, Lsun/nio/fs/UnixUserPrincipals$User;

    invoke-direct {v1, v0, p0}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(ILjava/lang/String;)V

    return-object v1
.end method
