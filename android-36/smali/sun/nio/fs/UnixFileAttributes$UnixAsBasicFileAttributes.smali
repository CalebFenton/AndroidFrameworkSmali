.class Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;
.super Ljava/lang/Object;
.source "UnixFileAttributes.java"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnixAsBasicFileAttributes"
.end annotation


# instance fields
.field private final blacklist attrs:Lsun/nio/fs/UnixFileAttributes;


# direct methods
.method private constructor blacklist <init>(Lsun/nio/fs/UnixFileAttributes;)V
    .registers 2
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->attrs:Lsun/nio/fs/UnixFileAttributes;

    .line 267
    return-void
.end method

.method static blacklist wrap(Lsun/nio/fs/UnixFileAttributes;)Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;
    .registers 2
    .param p0, "attrs"    # Lsun/nio/fs/UnixFileAttributes;

    .line 270
    new-instance v0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;

    invoke-direct {v0, p0}, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;-><init>(Lsun/nio/fs/UnixFileAttributes;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api creationTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .line 287
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api fileKey()Ljava/lang/Object;
    .registers 2

    .line 311
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->fileKey()Lsun/nio/fs/UnixFileKey;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isDirectory()Z
    .registers 2

    .line 295
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isOther()Z
    .registers 2

    .line 303
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isOther()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isRegularFile()Z
    .registers 2

    .line 291
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isRegularFile()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSymbolicLink()Z
    .registers 2

    .line 299
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api lastAccessTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .line 283
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .line 279
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api size()J
    .registers 3

    .line 307
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist unwrap()Lsun/nio/fs/UnixFileAttributes;
    .registers 2

    .line 274
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->attrs:Lsun/nio/fs/UnixFileAttributes;

    return-object v0
.end method
