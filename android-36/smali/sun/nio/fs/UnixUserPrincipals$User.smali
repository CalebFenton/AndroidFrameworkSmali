.class Lsun/nio/fs/UnixUserPrincipals$User;
.super Ljava/lang/Object;
.source "UnixUserPrincipals.java"

# interfaces
.implements Ljava/nio/file/attribute/UserPrincipal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixUserPrincipals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "User"
.end annotation


# instance fields
.field private final blacklist id:I

.field private final blacklist isGroup:Z

.field private final blacklist name:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(IZLjava/lang/String;)V

    .line 56
    return-void
.end method

.method private constructor blacklist <init>(IZLjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "isGroup"    # Z
    .param p3, "name"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    .line 50
    iput-boolean p2, p0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    .line 51
    iput-object p3, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(IZLjava/lang/String;Lsun/nio/fs/UnixUserPrincipals-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 87
    return v0

    .line 88
    :cond_4
    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$User;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 89
    return v2

    .line 90
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/nio/fs/UnixUserPrincipals$User;

    .line 91
    .local v1, "other":Lsun/nio/fs/UnixUserPrincipals$User;
    iget v3, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    iget v4, v1, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    if-ne v3, v4, :cond_2d

    iget-boolean v3, p0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    iget-boolean v4, v1, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    if-eq v3, v4, :cond_1a

    goto :goto_2d

    .line 96
    :cond_1a
    iget v2, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c

    iget v2, v1, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    if-ne v2, v3, :cond_2c

    .line 97
    iget-object v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    iget-object v2, v1, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 99
    :cond_2c
    return v0

    .line 93
    :cond_2d
    :goto_2d
    return v2
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    return-object v0
.end method

.method blacklist gid()I
    .registers 2

    .line 65
    iget-boolean v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    if-eqz v0, :cond_7

    .line 66
    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    return v0

    .line 67
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 104
    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    goto :goto_e

    :cond_8
    iget-object v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    return v0
.end method

.method blacklist isSpecial()Z
    .registers 3

    .line 71
    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->name:Ljava/lang/String;

    return-object v0
.end method

.method blacklist uid()I
    .registers 2

    .line 59
    iget-boolean v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->isGroup:Z

    if-nez v0, :cond_7

    .line 61
    iget v0, p0, Lsun/nio/fs/UnixUserPrincipals$User;->id:I

    return v0

    .line 60
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
