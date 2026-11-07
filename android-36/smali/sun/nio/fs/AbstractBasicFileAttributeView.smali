.class abstract Lsun/nio/fs/AbstractBasicFileAttributeView;
.super Ljava/lang/Object;
.source "AbstractBasicFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributeView;
.implements Lsun/nio/fs/DynamicFileAttributeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
    }
.end annotation


# static fields
.field private static final blacklist CREATION_TIME_NAME:Ljava/lang/String; = "creationTime"

.field private static final blacklist FILE_KEY_NAME:Ljava/lang/String; = "fileKey"

.field private static final blacklist IS_DIRECTORY_NAME:Ljava/lang/String; = "isDirectory"

.field private static final blacklist IS_OTHER_NAME:Ljava/lang/String; = "isOther"

.field private static final blacklist IS_REGULAR_FILE_NAME:Ljava/lang/String; = "isRegularFile"

.field private static final blacklist IS_SYMBOLIC_LINK_NAME:Ljava/lang/String; = "isSymbolicLink"

.field private static final blacklist LAST_ACCESS_TIME_NAME:Ljava/lang/String; = "lastAccessTime"

.field private static final blacklist LAST_MODIFIED_TIME_NAME:Ljava/lang/String; = "lastModifiedTime"

.field private static final blacklist SIZE_NAME:Ljava/lang/String; = "size"

.field static final blacklist basicAttributeNames:Ljava/util/Set;
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
    .registers 3

    .line 50
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "creationTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lastAccessTime"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lastModifiedTime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fileKey"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "isDirectory"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "isRegularFile"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "isSymbolicLink"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "isOther"

    aput-object v2, v0, v1

    .line 51
    invoke-static {v0}, Lsun/nio/fs/Util;->newSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/AbstractBasicFileAttributeView;->basicAttributeNames:Ljava/util/Set;

    .line 50
    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final blacklist addRequestedBasicAttributes(Ljava/nio/file/attribute/BasicFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V
    .registers 6
    .param p1, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .param p2, "builder"    # Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    .line 142
    const-string v0, "size"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 143
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    :cond_13
    const-string v0, "creationTime"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 145
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    :cond_22
    const-string v0, "lastAccessTime"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 147
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    :cond_31
    const-string v0, "lastModifiedTime"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 149
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    :cond_40
    const-string v0, "fileKey"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 151
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_4f
    const-string v0, "isDirectory"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 153
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    :cond_62
    const-string v0, "isRegularFile"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 155
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    :cond_75
    const-string v0, "isSymbolicLink"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 157
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_88
    const-string v0, "isOther"

    invoke-virtual {p2, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 159
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isOther()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    :cond_9b
    return-void
.end method

.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 65
    const-string v0, "basic"

    return-object v0
.end method

.method public blacklist readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .registers 4
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

    .line 166
    sget-object v0, Lsun/nio/fs/AbstractBasicFileAttributeView;->basicAttributeNames:Ljava/util/Set;

    .line 167
    invoke-static {v0, p1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->create(Ljava/util/Set;[Ljava/lang/String;)Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    move-result-object v0

    .line 168
    .local v0, "builder":Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
    invoke-virtual {p0}, Lsun/nio/fs/AbstractBasicFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView;->addRequestedBasicAttributes(Ljava/nio/file/attribute/BasicFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    .line 169
    invoke-virtual {v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->unmodifiableMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
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

    .line 72
    const-string v0, "lastModifiedTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 73
    move-object v0, p2

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    invoke-virtual {p0, v0, v1, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    .line 74
    return-void

    .line 76
    :cond_10
    const-string v0, "lastAccessTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 77
    move-object v0, p2

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    invoke-virtual {p0, v1, v0, v1}, Lsun/nio/fs/AbstractBasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    .line 78
    return-void

    .line 80
    :cond_1f
    const-string v0, "creationTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 81
    move-object v0, p2

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    invoke-virtual {p0, v1, v1, v0}, Lsun/nio/fs/AbstractBasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    .line 82
    return-void

    .line 84
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lsun/nio/fs/AbstractBasicFileAttributeView;->name()Ljava/lang/String;

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
