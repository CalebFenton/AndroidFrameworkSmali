.class Lsun/nio/fs/LinuxDosFileAttributeView$1;
.super Ljava/lang/Object;
.source "LinuxDosFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/DosFileAttributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/LinuxDosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$attrs:Lsun/nio/fs/UnixFileAttributes;

.field final synthetic blacklist val$dosAttribute:I


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/LinuxDosFileAttributeView;Lsun/nio/fs/UnixFileAttributes;I)V
    .registers 4
    .param p1, "this$0"    # Lsun/nio/fs/LinuxDosFileAttributeView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p2, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    iput p3, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$dosAttribute:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api creationTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .line 136
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api fileKey()Ljava/lang/Object;
    .registers 2

    .line 160
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->fileKey()Lsun/nio/fs/UnixFileKey;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isArchive()Z
    .registers 2

    .line 172
    iget v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$dosAttribute:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isDirectory()Z
    .registers 2

    .line 144
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isHidden()Z
    .registers 2

    .line 168
    iget v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$dosAttribute:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isOther()Z
    .registers 2

    .line 152
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isOther()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isReadOnly()Z
    .registers 3

    .line 164
    iget v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$dosAttribute:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist test-api isRegularFile()Z
    .registers 2

    .line 140
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isRegularFile()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSymbolicLink()Z
    .registers 2

    .line 148
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSystem()Z
    .registers 2

    .line 176
    iget v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$dosAttribute:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api lastAccessTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .line 132
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .line 128
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api size()J
    .registers 3

    .line 156
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method
