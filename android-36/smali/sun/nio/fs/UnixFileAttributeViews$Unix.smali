.class Lsun/nio/fs/UnixFileAttributeViews$Unix;
.super Lsun/nio/fs/UnixFileAttributeViews$Posix;
.source "UnixFileAttributeViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileAttributeViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Unix"
.end annotation


# static fields
.field private static final blacklist CTIME_NAME:Ljava/lang/String; = "ctime"

.field private static final blacklist DEV_NAME:Ljava/lang/String; = "dev"

.field private static final blacklist GID_NAME:Ljava/lang/String; = "gid"

.field private static final blacklist INO_NAME:Ljava/lang/String; = "ino"

.field private static final blacklist MODE_NAME:Ljava/lang/String; = "mode"

.field private static final blacklist NLINK_NAME:Ljava/lang/String; = "nlink"

.field private static final blacklist RDEV_NAME:Ljava/lang/String; = "rdev"

.field private static final blacklist UID_NAME:Ljava/lang/String; = "uid"

.field static final blacklist unixAttributeNames:Ljava/util/Set;
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

    .line 306
    sget-object v0, Lsun/nio/fs/UnixFileAttributeViews$Unix;->posixAttributeNames:Ljava/util/Set;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mode"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ino"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "dev"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "rdev"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "nlink"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "uid"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "gid"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ctime"

    aput-object v3, v1, v2

    .line 307
    invoke-static {v0, v1}, Lsun/nio/fs/Util;->newSet(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixFileAttributeViews$Unix;->unixAttributeNames:Ljava/util/Set;

    .line 306
    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixPath;Z)V
    .registers 3
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p2, "followLinks"    # Z

    .line 312
    invoke-direct {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;-><init>(Lsun/nio/fs/UnixPath;Z)V

    .line 313
    return-void
.end method


# virtual methods
.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 317
    const-string v0, "unix"

    return-object v0
.end method

.method public blacklist readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .registers 7
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

    .line 343
    sget-object v0, Lsun/nio/fs/UnixFileAttributeViews$Unix;->unixAttributeNames:Ljava/util/Set;

    .line 344
    invoke-static {v0, p1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->create(Ljava/util/Set;[Ljava/lang/String;)Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    move-result-object v0

    .line 345
    .local v0, "builder":Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->readAttributes()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v1

    .line 346
    .local v1, "attrs":Lsun/nio/fs/UnixFileAttributes;
    invoke-virtual {p0, v1, v0}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->addRequestedPosixAttributes(Ljava/nio/file/attribute/PosixFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    .line 347
    const-string v2, "mode"

    invoke-virtual {v0, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 348
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    :cond_20
    const-string v2, "ino"

    invoke-virtual {v0, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 350
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->ino()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    :cond_33
    const-string v2, "dev"

    invoke-virtual {v0, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 352
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->dev()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    :cond_46
    const-string v2, "rdev"

    invoke-virtual {v0, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 354
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->rdev()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    :cond_59
    const-string v2, "nlink"

    invoke-virtual {v0, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 356
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->nlink()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    :cond_6c
    const-string v2, "uid"

    invoke-virtual {v0, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 358
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    :cond_7f
    const-string v2, "gid"

    invoke-virtual {v0, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 360
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    :cond_92
    const-string v2, "ctime"

    invoke-virtual {v0, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 362
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->ctime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    :cond_a1
    invoke-virtual {v0}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->unmodifiableMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public blacklist setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 325
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->setMode(I)V

    .line 326
    return-void

    .line 328
    :cond_13
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_27

    .line 329
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->setOwners(II)V

    .line 330
    return-void

    .line 332
    :cond_27
    const-string v0, "gid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 333
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lsun/nio/fs/UnixFileAttributeViews$Unix;->setOwners(II)V

    .line 334
    return-void

    .line 336
    :cond_3a
    invoke-super {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Posix;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    return-void
.end method
