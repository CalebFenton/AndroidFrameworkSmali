.class public Lsun/net/ftp/FtpDirEntry;
.super Ljava/lang/Object;
.source "FtpDirEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/ftp/FtpDirEntry$Type;,
        Lsun/net/ftp/FtpDirEntry$Permission;
    }
.end annotation


# instance fields
.field private blacklist created:Ljava/util/Date;

.field private blacklist facts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist group:Ljava/lang/String;

.field private blacklist lastModified:Ljava/util/Date;

.field private final blacklist name:Ljava/lang/String;

.field private blacklist permissions:[[Z

.field private blacklist size:J

.field private blacklist type:Lsun/net/ftp/FtpDirEntry$Type;

.field private blacklist user:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    .line 59
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    .line 60
    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->created:Ljava/util/Date;

    .line 61
    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    .line 62
    sget-object v1, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    iput-object v1, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    .line 63
    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lsun/net/ftp/FtpDirEntry;->facts:Ljava/util/HashMap;

    .line 67
    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    .line 59
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    .line 60
    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->created:Ljava/util/Date;

    .line 61
    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    .line 62
    sget-object v1, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    iput-object v1, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    .line 63
    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->facts:Ljava/util/HashMap;

    .line 76
    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public blacklist addFact(Ljava/lang/String;Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .registers 5
    .param p1, "fact"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->facts:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-object p0
.end method

.method public blacklist canExexcute(Lsun/net/ftp/FtpDirEntry$Permission;)Z
    .registers 4
    .param p1, "p"    # Lsun/net/ftp/FtpDirEntry$Permission;

    .line 244
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    if-eqz v0, :cond_e

    .line 245
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    iget v1, p1, Lsun/net/ftp/FtpDirEntry$Permission;->value:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0

    .line 247
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canRead(Lsun/net/ftp/FtpDirEntry$Permission;)Z
    .registers 5
    .param p1, "p"    # Lsun/net/ftp/FtpDirEntry$Permission;

    .line 218
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 219
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    iget v2, p1, Lsun/net/ftp/FtpDirEntry$Permission;->value:I

    aget-object v0, v0, v2

    aget-boolean v0, v0, v1

    return v0

    .line 221
    :cond_e
    return v1
.end method

.method public blacklist canWrite(Lsun/net/ftp/FtpDirEntry$Permission;)Z
    .registers 4
    .param p1, "p"    # Lsun/net/ftp/FtpDirEntry$Permission;

    .line 231
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    if-eqz v0, :cond_e

    .line 232
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    iget v1, p1, Lsun/net/ftp/FtpDirEntry$Permission;->value:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0

    .line 234
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCreated()Ljava/util/Date;
    .registers 2

    .line 298
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->created:Ljava/util/Date;

    return-object v0
.end method

.method public blacklist getFact(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "fact"    # Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->facts:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGroup()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLastModified()Ljava/util/Date;
    .registers 2

    .line 195
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSize()J
    .registers 3

    .line 143
    iget-wide v0, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    return-wide v0
.end method

.method public blacklist getType()Lsun/net/ftp/FtpDirEntry$Type;
    .registers 2

    .line 170
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    return-object v0
.end method

.method public blacklist getUser()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setCreated(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;
    .registers 2
    .param p1, "created"    # Ljava/util/Date;

    .line 310
    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->created:Ljava/util/Date;

    .line 311
    return-object p0
.end method

.method public blacklist setGroup(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .registers 2
    .param p1, "group"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public blacklist setLastModified(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;
    .registers 2
    .param p1, "lastModified"    # Ljava/util/Date;

    .line 207
    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    .line 208
    return-object p0
.end method

.method public blacklist setPermissions([[Z)Lsun/net/ftp/FtpDirEntry;
    .registers 2
    .param p1, "permissions"    # [[Z

    .line 262
    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    .line 263
    return-object p0
.end method

.method public blacklist setSize(J)Lsun/net/ftp/FtpDirEntry;
    .registers 3
    .param p1, "size"    # J

    .line 154
    iput-wide p1, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    .line 155
    return-object p0
.end method

.method public blacklist setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;
    .registers 2
    .param p1, "type"    # Lsun/net/ftp/FtpDirEntry$Type;

    .line 182
    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    .line 183
    return-object p0
.end method

.method public blacklist setUser(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .registers 2
    .param p1, "user"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 326
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    const-string v1, " / "

    const-string v2, "] ("

    const-string v3, " ["

    if-nez v0, :cond_44

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 329
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
