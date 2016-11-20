.class final Lsun/net/www/MimeTable$1;
.super Ljava/lang/Object;
.source "MimeTable.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/MimeTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 53
    invoke-virtual {p0}, Lsun/net/www/MimeTable$1;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4

    #@0
    .prologue
    .line 55
    const-string/jumbo v0, "content.types.temp.file.template"

    #@3
    .line 56
    const-string/jumbo v1, "/tmp/%s"

    #@6
    .line 55
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 54
    invoke-static {v0}, Lsun/net/www/MimeTable;->-set0(Ljava/lang/String;)Ljava/lang/String;

    #@d
    .line 58
    const/4 v0, 0x6

    #@e
    new-array v0, v0, [Ljava/lang/String;

    #@10
    .line 59
    const-string/jumbo v1, "user.mailcap"

    #@13
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x0

    #@18
    aput-object v1, v0, v2

    #@1a
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "user.home"

    #@22
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "/.mailcap"

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    const/4 v2, 0x1

    #@36
    aput-object v1, v0, v2

    #@38
    .line 61
    const-string/jumbo v1, "/etc/mailcap"

    #@3b
    const/4 v2, 0x2

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 62
    const-string/jumbo v1, "/usr/etc/mailcap"

    #@41
    const/4 v2, 0x3

    #@42
    aput-object v1, v0, v2

    #@44
    .line 63
    const-string/jumbo v1, "/usr/local/etc/mailcap"

    #@47
    const/4 v2, 0x4

    #@48
    aput-object v1, v0, v2

    #@4a
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v2, "hotjava.home"

    #@52
    .line 65
    const-string/jumbo v3, "/usr/local/hotjava"

    #@55
    .line 64
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    .line 66
    const-string/jumbo v2, "/lib/mailcap"

    #@60
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    const/4 v2, 0x5

    #@69
    aput-object v1, v0, v2

    #@6b
    .line 58
    sput-object v0, Lsun/net/www/MimeTable;->mailcapLocations:[Ljava/lang/String;

    #@6d
    .line 68
    const/4 v0, 0x0

    #@6e
    return-object v0
.end method
