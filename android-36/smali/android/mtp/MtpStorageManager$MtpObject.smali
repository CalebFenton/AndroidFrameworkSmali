.class public Landroid/mtp/MtpStorageManager$MtpObject;
.super Ljava/lang/Object;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtpObject"
.end annotation


# instance fields
.field private greylist-max-o mChildren:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mId:I

.field private greylist-max-o mIsDir:Z

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mObserver:Landroid/os/FileObserver;

.field private greylist-max-o mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

.field private greylist-max-o mParent:Landroid/mtp/MtpStorageManager$MtpObject;

.field private greylist-max-o mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field private blacklist mStorage:Landroid/mtp/MtpStorage;

.field private greylist-max-o mVisited:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;
    .registers 1

    iget-object p0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStorage(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorage;
    .registers 1

    iget-object p0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    .registers 2

    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mexists(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->exists()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getChild(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getChildren()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getObserver()Landroid/os/FileObserver;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getOperation()Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getState()Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isVisited()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetDir(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setDir(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetId(Landroid/mtp/MtpStorageManager$MtpObject;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setId(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetName(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setObserver(Landroid/os/FileObserver;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setOperation(Landroid/mtp/MtpStorageManager$MtpOperation;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setState(Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetVisited(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setVisited(Z)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILandroid/mtp/MtpStorage;Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "storage"    # Landroid/mtp/MtpStorage;
    .param p4, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p5, "isDir"    # Z

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput p2, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    .line 160
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    .line 161
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    .line 162
    iput-object p4, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    .line 165
    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    iput-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 166
    iput-boolean p5, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    .line 167
    sget-object v1, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    iput-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 169
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_2a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_2a
    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    .line 170
    return-void
.end method

.method private greylist-max-o addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V
    .registers 4
    .param p1, "child"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 316
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    return-void
.end method

.method private greylist-max-o copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 8
    .param p1, "recursive"    # Z

    .line 332
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObject;

    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    iget-object v3, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    iget-object v4, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    iget-boolean v5, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpStorageManager$MtpObject;-><init>(Ljava/lang/String;ILandroid/mtp/MtpStorage;Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    .line 333
    .local v0, "copy":Landroid/mtp/MtpStorageManager$MtpObject;
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    iput-boolean v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    .line 334
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    iput-boolean v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    .line 335
    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    iput-object v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 336
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_25

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    iput-object v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    .line 337
    if-eqz p1, :cond_50

    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_50

    .line 338
    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 339
    .local v2, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v3

    .line 340
    .local v3, "childCopy":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {v3, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 341
    invoke-direct {v0, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 342
    .end local v2    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v3    # "childCopy":Landroid/mtp/MtpStorageManager$MtpObject;
    goto :goto_38

    .line 344
    :cond_50
    return-object v0
.end method

.method private greylist-max-o exists()Z
    .registers 2

    .line 328
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o getChild(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 320
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObject;

    return-object v0
.end method

.method private greylist-max-o getChildren()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getObserver()Landroid/os/FileObserver;
    .registers 2

    .line 308
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method private greylist-max-o getOperation()Landroid/mtp/MtpStorageManager$MtpOperation;
    .registers 2

    .line 300
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    return-object v0
.end method

.method private greylist-max-o getState()Landroid/mtp/MtpStorageManager$MtpObjectState;
    .registers 2

    .line 290
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    return-object v0
.end method

.method private blacklist getStorage()Landroid/mtp/MtpStorage;
    .registers 2

    .line 275
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    return-object v0
.end method

.method private blacklist isFileTranscodeSupported()Z
    .registers 8

    .line 231
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 233
    .local v0, "path":Ljava/nio/file/Path;
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    .line 234
    .local v2, "stat":Landroid/system/StructStat;
    iget-wide v3, v2, Landroid/system/StructStat;->st_nlink:J
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_f} :catch_17

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-lez v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1

    .line 235
    .end local v2    # "stat":Landroid/system/StructStat;
    :catch_17
    move-exception v2

    .line 236
    .local v2, "e":Landroid/system/ErrnoException;
    invoke-static {}, Landroid/mtp/MtpStorageManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to stat path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Ignoring transcoding."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v1
.end method

.method private blacklist isTranscodeMtpEnabled()Z
    .registers 3

    .line 222
    const-string/jumbo v0, "sys.fuse.transcode_mtp"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o isVisited()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    return v0
.end method

.method private blacklist maybeApplyTranscodeLengthWorkaround(J)J
    .registers 5
    .param p1, "length"    # J

    .line 212
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->isHostWindows()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isTranscodeMtpEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isFileTranscodeSupported()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 216
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    return-wide v0

    .line 218
    :cond_18
    return-wide p1
.end method

.method private greylist-max-o setDir(Z)V
    .registers 3
    .param p1, "dir"    # Z

    .line 279
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eq p1, v0, :cond_13

    .line 280
    iput-boolean p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    .line 281
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    .line 283
    :cond_13
    return-void
.end method

.method private greylist-max-o setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 260
    iput p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    .line 261
    return-void
.end method

.method private greylist-max-o setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 256
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    .line 257
    return-void
.end method

.method private greylist-max-o setObserver(Landroid/os/FileObserver;)V
    .registers 2
    .param p1, "observer"    # Landroid/os/FileObserver;

    .line 312
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    .line 313
    return-void
.end method

.method private greylist-max-o setOperation(Landroid/mtp/MtpStorageManager$MtpOperation;)V
    .registers 2
    .param p1, "op"    # Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 304
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 305
    return-void
.end method

.method private greylist-max-o setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V
    .registers 4
    .param p1, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 268
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v0

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v1

    if-eq v0, v1, :cond_16

    .line 269
    invoke-direct {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorage()Landroid/mtp/MtpStorage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    .line 271
    :cond_16
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    .line 272
    return-void
.end method

.method private greylist-max-o setState(Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    .registers 4
    .param p1, "state"    # Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 294
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 295
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    if-ne v0, v1, :cond_c

    .line 296
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 297
    :cond_c
    return-void
.end method

.method private greylist-max-o setVisited(Z)V
    .registers 2
    .param p1, "visited"    # Z

    .line 286
    iput-boolean p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    .line 287
    return-void
.end method


# virtual methods
.method public greylist-max-o getFormat()I
    .registers 3

    .line 187
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x3001

    goto :goto_e

    :cond_7
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_e
    return v0
.end method

.method public greylist-max-o getId()I
    .registers 2

    .line 179
    iget v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    return v0
.end method

.method public greylist-max-o getModifiedTime()J
    .registers 5

    .line 195
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getParent()Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    return-object v0
.end method

.method public greylist-max-o getPath()Ljava/nio/file/Path;
    .registers 3

    .line 242
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_1c

    :cond_10
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    :goto_1c
    return-object v0
.end method

.method public greylist-max-o getRoot()Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 2

    .line 203
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_e

    :cond_8
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getRoot()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public greylist-max-o getSize()J
    .registers 3

    .line 207
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_17

    :cond_7
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->maybeApplyTranscodeLengthWorkaround(J)J

    move-result-wide v0

    :goto_17
    return-wide v0
.end method

.method public greylist-max-o getStorageId()I
    .registers 2

    .line 191
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getRoot()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v0

    return v0
.end method

.method public blacklist getVolumeName()Ljava/lang/String;
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getVolumeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o isDir()Z
    .registers 2

    .line 183
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    return v0
.end method

.method public greylist-max-o isRoot()Z
    .registers 2

    .line 246
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
