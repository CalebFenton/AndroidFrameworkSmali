.class public Lsun/net/ftp/FtpDirEntry;
.super Ljava/lang/Object;
.source "FtpDirEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/ftp/FtpDirEntry$Permission;,
        Lsun/net/ftp/FtpDirEntry$Type;
    }
.end annotation


# instance fields
.field private created:Ljava/util/Date;

.field private facts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private group:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private final name:Ljava/lang/String;

.field private permissions:[[Z

.field private size:J

.field private type:Lsun/net/ftp/FtpDirEntry$Type;

.field private user:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    #@6
    .line 58
    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    #@8
    .line 59
    const-wide/16 v0, -0x1

    #@a
    iput-wide v0, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    #@c
    .line 60
    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->created:Ljava/util/Date;

    #@e
    .line 61
    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    #@10
    .line 62
    sget-object v0, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    #@12
    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    #@14
    .line 63
    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    #@16
    .line 64
    new-instance v0, Ljava/util/HashMap;

    #@18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b
    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->facts:Ljava/util/HashMap;

    #@1d
    .line 67
    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    #@1f
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    #@6
    .line 58
    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    #@8
    .line 59
    const-wide/16 v0, -0x1

    #@a
    iput-wide v0, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    #@c
    .line 60
    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->created:Ljava/util/Date;

    #@e
    .line 61
    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    #@10
    .line 62
    sget-object v0, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    #@12
    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    #@14
    .line 63
    iput-object v2, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    #@16
    .line 64
    new-instance v0, Ljava/util/HashMap;

    #@18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1b
    iput-object v0, p0, Lsun/net/ftp/FtpDirEntry;->facts:Ljava/util/HashMap;

    #@1d
    .line 76
    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    #@1f
    .line 75
    return-void
.end method


# virtual methods
.method public addFact(Ljava/lang/String;Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .locals 2
    .param p1, "fact"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->facts:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 277
    return-object p0
.end method

.method public canExexcute(Lsun/net/ftp/FtpDirEntry$Permission;)Z
    .locals 2
    .param p1, "p"    # Lsun/net/ftp/FtpDirEntry$Permission;

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 245
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    #@6
    iget v1, p1, Lsun/net/ftp/FtpDirEntry$Permission;->value:I

    #@8
    aget-object v0, v0, v1

    #@a
    const/4 v1, 0x2

    #@b
    aget-boolean v0, v0, v1

    #@d
    return v0

    #@e
    .line 247
    :cond_0
    const/4 v0, 0x0

    #@f
    return v0
.end method

.method public canRead(Lsun/net/ftp/FtpDirEntry$Permission;)Z
    .locals 3
    .param p1, "p"    # Lsun/net/ftp/FtpDirEntry$Permission;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 218
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 219
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    #@7
    iget v1, p1, Lsun/net/ftp/FtpDirEntry$Permission;->value:I

    #@9
    aget-object v0, v0, v1

    #@b
    aget-boolean v0, v0, v2

    #@d
    return v0

    #@e
    .line 221
    :cond_0
    return v2
.end method

.method public canWrite(Lsun/net/ftp/FtpDirEntry$Permission;)Z
    .locals 2
    .param p1, "p"    # Lsun/net/ftp/FtpDirEntry$Permission;

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 232
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    #@6
    iget v1, p1, Lsun/net/ftp/FtpDirEntry$Permission;->value:I

    #@8
    aget-object v0, v0, v1

    #@a
    const/4 v1, 0x1

    #@b
    aget-boolean v0, v0, v1

    #@d
    return v0

    #@e
    .line 234
    :cond_0
    const/4 v0, 0x0

    #@f
    return v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->created:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getFact(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fact"    # Ljava/lang/String;

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->facts:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSize()J
    .locals 2

    #@0
    .prologue
    .line 143
    iget-wide v0, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    #@2
    return-wide v0
.end method

.method public getType()Lsun/net/ftp/FtpDirEntry$Type;
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    #@2
    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setCreated(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;
    .locals 0
    .param p1, "created"    # Ljava/util/Date;

    #@0
    .prologue
    .line 310
    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->created:Ljava/util/Date;

    #@2
    .line 311
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    #@0
    .prologue
    .line 132
    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    #@2
    .line 133
    return-object p0
.end method

.method public setLastModified(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;
    .locals 0
    .param p1, "lastModified"    # Ljava/util/Date;

    #@0
    .prologue
    .line 207
    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    #@2
    .line 208
    return-object p0
.end method

.method public setPermissions([[Z)Lsun/net/ftp/FtpDirEntry;
    .locals 0
    .param p1, "permissions"    # [[Z

    #@0
    .prologue
    .line 262
    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->permissions:[[Z

    #@2
    .line 263
    return-object p0
.end method

.method public setSize(J)Lsun/net/ftp/FtpDirEntry;
    .locals 1
    .param p1, "size"    # J

    #@0
    .prologue
    .line 154
    iput-wide p1, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    #@2
    .line 155
    return-object p0
.end method

.method public setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;
    .locals 0
    .param p1, "type"    # Lsun/net/ftp/FtpDirEntry$Type;

    #@0
    .prologue
    .line 182
    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    #@2
    .line 183
    return-object p0
.end method

.method public setUser(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    #@2
    .line 109
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, " ["

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, "] ("

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v1, " / "

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    const-string/jumbo v1, ") "

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    iget-wide v2, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    #@3f
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0

    #@48
    .line 329
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->name:Ljava/lang/String;

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    const-string/jumbo v1, " ["

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->type:Lsun/net/ftp/FtpDirEntry$Type;

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    const-string/jumbo v1, "] ("

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->user:Ljava/lang/String;

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    const-string/jumbo v1, " / "

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    iget-object v1, p0, Lsun/net/ftp/FtpDirEntry;->group:Ljava/lang/String;

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    const-string/jumbo v1, ") {"

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    iget-wide v2, p0, Lsun/net/ftp/FtpDirEntry;->size:J

    #@83
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@86
    move-result-object v0

    #@87
    const-string/jumbo v1, "} "

    #@8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    #@91
    move-result-object v1

    #@92
    iget-object v2, p0, Lsun/net/ftp/FtpDirEntry;->lastModified:Ljava/util/Date;

    #@94
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@97
    move-result-object v1

    #@98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v0

    #@a0
    return-object v0
.end method
