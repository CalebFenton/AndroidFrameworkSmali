.class Ljava/nio/file/FileTreeWalker;
.super Ljava/lang/Object;
.source "FileTreeWalker.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/FileTreeWalker$DirectoryNode;,
        Ljava/nio/file/FileTreeWalker$Event;,
        Ljava/nio/file/FileTreeWalker$EventType;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist closed:Z

.field private final greylist-max-r followLinks:Z

.field private final greylist-max-r linkOptions:[Ljava/nio/file/LinkOption;

.field private final greylist-max-r maxDepth:I

.field private final blacklist stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/nio/file/FileTreeWalker$DirectoryNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 57
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Collection;I)V
    .registers 8
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/FileVisitOption;",
            ">;I)V"
        }
    .end annotation

    .line 177
    .local p1, "options":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/file/FileVisitOption;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "fl":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/FileVisitOption;

    .line 181
    .local v2, "option":Ljava/nio/file/FileVisitOption;
    sget-object v3, Ljava/nio/file/FileTreeWalker$1;->$SwitchMap$java$nio$file$FileVisitOption:[I

    invoke-virtual {v2}, Ljava/nio/file/FileVisitOption;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_50

    .line 184
    new-instance v1, Ljava/lang/AssertionError;

    const-string v3, "Should not get here"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 182
    :pswitch_2e
    const/4 v0, 0x1

    .line 186
    .end local v2    # "option":Ljava/nio/file/FileVisitOption;
    goto :goto_f

    .line 187
    :cond_30
    if-ltz p2, :cond_47

    .line 190
    iput-boolean v0, p0, Ljava/nio/file/FileTreeWalker;->followLinks:Z

    .line 191
    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    goto :goto_42

    .line 192
    :cond_3a
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v3, v2, v1

    move-object v1, v2

    :goto_42
    iput-object v1, p0, Ljava/nio/file/FileTreeWalker;->linkOptions:[Ljava/nio/file/LinkOption;

    .line 193
    iput p2, p0, Ljava/nio/file/FileTreeWalker;->maxDepth:I

    .line 194
    return-void

    .line 188
    :cond_47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'maxDepth\' is negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_2e
    .end packed-switch
.end method

.method private blacklist getAttributes(Ljava/nio/file/Path;Z)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 8
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "canUseCached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    if-eqz p2, :cond_20

    instance-of v0, p1, Lsun/nio/fs/BasicFileAttributesHolder;

    if-eqz v0, :cond_20

    .line 207
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_20

    .line 209
    move-object v0, p1

    check-cast v0, Lsun/nio/fs/BasicFileAttributesHolder;

    invoke-interface {v0}, Lsun/nio/fs/BasicFileAttributesHolder;->get()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    .line 210
    .local v0, "cached":Ljava/nio/file/attribute/BasicFileAttributes;
    if-eqz v0, :cond_20

    iget-boolean v1, p0, Ljava/nio/file/FileTreeWalker;->followLinks:Z

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v1

    if-nez v1, :cond_20

    .line 211
    :cond_1f
    return-object v0

    .line 219
    .end local v0    # "cached":Ljava/nio/file/attribute/BasicFileAttributes;
    :cond_20
    :try_start_20
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    iget-object v1, p0, Ljava/nio/file/FileTreeWalker;->linkOptions:[Ljava/nio/file/LinkOption;

    invoke-static {p1, v0, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_29

    .line 228
    .local v0, "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    goto :goto_3d

    .line 220
    .end local v0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    :catch_29
    move-exception v0

    .line 221
    .local v0, "ioe":Ljava/io/IOException;
    iget-boolean v1, p0, Ljava/nio/file/FileTreeWalker;->followLinks:Z

    if-eqz v1, :cond_3e

    .line 225
    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v4, v2, v3

    invoke-static {p1, v1, v2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    move-object v0, v1

    .line 229
    .local v0, "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    :goto_3d
    return-object v0

    .line 222
    .local v0, "ioe":Ljava/io/IOException;
    :cond_3e
    throw v0
.end method

.method private blacklist visit(Ljava/nio/file/Path;ZZ)Ljava/nio/file/FileTreeWalker$Event;
    .registers 10
    .param p1, "entry"    # Ljava/nio/file/Path;
    .param p2, "ignoreSecurityException"    # Z
    .param p3, "canUseCached"    # Z

    .line 276
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, p3}, Ljava/nio/file/FileTreeWalker;->getAttributes(Ljava/nio/file/Path;Z)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_6d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_5} :catch_68

    .line 283
    .local v1, "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    nop

    .line 286
    iget-object v2, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    .line 287
    .local v2, "depth":I
    iget v3, p0, Ljava/nio/file/FileTreeWalker;->maxDepth:I

    if-ge v2, v3, :cond_60

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_60

    .line 292
    :cond_17
    iget-boolean v3, p0, Ljava/nio/file/FileTreeWalker;->followLinks:Z

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Ljava/nio/file/FileTreeWalker;->wouldLoop(Ljava/nio/file/Path;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 293
    new-instance v0, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v3, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    new-instance v4, Ljava/nio/file/FileSystemLoopException;

    .line 294
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, p1, v4}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/io/IOException;)V

    .line 293
    return-object v0

    .line 298
    :cond_36
    const/4 v3, 0x0

    .line 300
    .local v3, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_37
    invoke-static {p1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3b} :catch_57
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3b} :catch_52

    .line 307
    .end local v3    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .local v0, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    nop

    .line 310
    iget-object v3, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    new-instance v4, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, p1, v5, v0}, Ljava/nio/file/FileTreeWalker$DirectoryNode;-><init>(Ljava/nio/file/Path;Ljava/lang/Object;Ljava/nio/file/DirectoryStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 311
    new-instance v3, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v4, Ljava/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-direct {v3, v4, p1, v1}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    return-object v3

    .line 303
    .end local v0    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v3    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catch_52
    move-exception v4

    .line 304
    .local v4, "se":Ljava/lang/SecurityException;
    if-eqz p2, :cond_56

    .line 305
    return-object v0

    .line 306
    :cond_56
    throw v4

    .line 301
    .end local v4    # "se":Ljava/lang/SecurityException;
    :catch_57
    move-exception v0

    .line 302
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v5, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-direct {v4, v5, p1, v0}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/io/IOException;)V

    return-object v4

    .line 288
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_60
    :goto_60
    new-instance v0, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v3, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-direct {v0, v3, p1, v1}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    return-object v0

    .line 279
    .end local v1    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    .end local v2    # "depth":I
    :catch_68
    move-exception v1

    .line 280
    .local v1, "se":Ljava/lang/SecurityException;
    if-eqz p2, :cond_6c

    .line 281
    return-object v0

    .line 282
    :cond_6c
    throw v1

    .line 277
    .end local v1    # "se":Ljava/lang/SecurityException;
    :catch_6d
    move-exception v0

    .line 278
    .restart local v0    # "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v2, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-direct {v1, v2, p1, v0}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/io/IOException;)V

    return-object v1
.end method

.method private blacklist wouldLoop(Ljava/nio/file/Path;Ljava/lang/Object;)Z
    .registers 8
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "key"    # Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    .line 240
    .local v1, "ancestor":Ljava/nio/file/FileTreeWalker$DirectoryNode;
    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->key()Ljava/lang/Object;

    move-result-object v2

    .line 241
    .local v2, "ancestorKey":Ljava/lang/Object;
    const/4 v3, 0x1

    if-eqz p2, :cond_22

    if-eqz v2, :cond_22

    .line 242
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 244
    return v3

    .line 248
    :cond_22
    :try_start_22
    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->directory()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v4
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2e
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_2a} :catch_2e

    if-eqz v4, :cond_2d

    .line 250
    return v3

    .line 254
    :cond_2d
    goto :goto_2f

    .line 252
    :catch_2e
    move-exception v3

    .line 256
    .end local v1    # "ancestor":Ljava/nio/file/FileTreeWalker$DirectoryNode;
    .end local v2    # "ancestorKey":Ljava/lang/Object;
    :cond_2f
    :goto_2f
    goto :goto_6

    .line 257
    :cond_30
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 419
    iget-boolean v0, p0, Ljava/nio/file/FileTreeWalker;->closed:Z

    if-nez v0, :cond_13

    .line 420
    :goto_4
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 421
    invoke-virtual {p0}, Ljava/nio/file/FileTreeWalker;->pop()V

    goto :goto_4

    .line 423
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/file/FileTreeWalker;->closed:Z

    .line 425
    :cond_13
    return-void
.end method

.method blacklist isOpen()Z
    .registers 2

    .line 411
    iget-boolean v0, p0, Ljava/nio/file/FileTreeWalker;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method blacklist next()Ljava/nio/file/FileTreeWalker$Event;
    .registers 7

    .line 334
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    .line 335
    .local v0, "top":Ljava/nio/file/FileTreeWalker$DirectoryNode;
    if-nez v0, :cond_c

    .line 336
    const/4 v1, 0x0

    return-object v1

    .line 341
    :cond_c
    const/4 v1, 0x0

    .line 342
    .local v1, "entry":Ljava/nio/file/Path;
    const/4 v2, 0x0

    .line 345
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->skipped()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 346
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 348
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    :try_start_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 349
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;
    :try_end_24
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_18 .. :try_end_24} :catch_26

    move-object v1, v4

    .line 353
    :cond_25
    goto :goto_2b

    .line 351
    :catch_26
    move-exception v4

    .line 352
    .local v4, "x":Ljava/nio/file/DirectoryIteratorException;
    invoke-virtual {v4}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v2

    .line 358
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    .end local v4    # "x":Ljava/nio/file/DirectoryIteratorException;
    :cond_2b
    :goto_2b
    if-nez v1, :cond_4e

    .line 360
    :try_start_2d
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->stream()Ljava/nio/file/DirectoryStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_34} :catch_35

    .line 367
    goto :goto_3d

    .line 361
    :catch_35
    move-exception v3

    .line 362
    .local v3, "e":Ljava/io/IOException;
    if-nez v2, :cond_3a

    .line 363
    move-object v2, v3

    goto :goto_3d

    .line 365
    :cond_3a
    invoke-virtual {v2, v3}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 368
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3d
    iget-object v3, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 369
    new-instance v3, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v4, Ljava/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->directory()Ljava/nio/file/Path;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/io/IOException;)V

    return-object v3

    .line 373
    :cond_4e
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v3}, Ljava/nio/file/FileTreeWalker;->visit(Ljava/nio/file/Path;ZZ)Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v1

    .line 377
    .end local v2    # "ioe":Ljava/io/IOException;
    .local v1, "ev":Ljava/nio/file/FileTreeWalker$Event;
    if-eqz v1, :cond_c

    .line 379
    return-object v1
.end method

.method blacklist pop()V
    .registers 3

    .line 389
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 390
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    .line 392
    .local v0, "node":Ljava/nio/file/FileTreeWalker$DirectoryNode;
    :try_start_10
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->stream()Ljava/nio/file/DirectoryStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_18

    goto :goto_19

    .line 393
    :catch_18
    move-exception v1

    :goto_19
    nop

    .line 395
    .end local v0    # "node":Ljava/nio/file/FileTreeWalker$DirectoryNode;
    :cond_1a
    return-void
.end method

.method blacklist skipRemainingSiblings()V
    .registers 2

    .line 402
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 403
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->skip()V

    .line 405
    :cond_13
    return-void
.end method

.method blacklist walk(Ljava/nio/file/Path;)Ljava/nio/file/FileTreeWalker$Event;
    .registers 4
    .param p1, "file"    # Ljava/nio/file/Path;

    .line 319
    iget-boolean v0, p0, Ljava/nio/file/FileTreeWalker;->closed:Z

    if-nez v0, :cond_b

    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/file/FileTreeWalker;->visit(Ljava/nio/file/Path;ZZ)Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v0

    .line 325
    .local v0, "ev":Ljava/nio/file/FileTreeWalker$Event;
    nop

    .line 326
    return-object v0

    .line 320
    .end local v0    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
