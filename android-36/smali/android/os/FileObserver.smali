.class public abstract Landroid/os/FileObserver;
.super Ljava/lang/Object;
.source "FileObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileObserver$ObserverThread;,
        Landroid/os/FileObserver$NotifyEventType;
    }
.end annotation


# static fields
.field public static final whitelist ACCESS:I = 0x1

.field public static final whitelist ALL_EVENTS:I = 0xfff

.field public static final whitelist ATTRIB:I = 0x4

.field public static final whitelist CLOSE_NOWRITE:I = 0x10

.field public static final whitelist CLOSE_WRITE:I = 0x8

.field public static final whitelist CREATE:I = 0x100

.field public static final whitelist DELETE:I = 0x200

.field public static final whitelist DELETE_SELF:I = 0x400

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "FileObserver"

.field public static final whitelist MODIFY:I = 0x2

.field public static final whitelist MOVED_FROM:I = 0x40

.field public static final whitelist MOVED_TO:I = 0x80

.field public static final whitelist MOVE_SELF:I = 0x800

.field public static final whitelist OPEN:I = 0x20

.field private static greylist s_observerThread:Landroid/os/FileObserver$ObserverThread;


# instance fields
.field private blacklist mDescriptors:[I

.field private final blacklist mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMask:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 184
    new-instance v0, Landroid/os/FileObserver$ObserverThread;

    invoke-direct {v0}, Landroid/os/FileObserver$ObserverThread;-><init>()V

    sput-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    .line 185
    sget-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    invoke-virtual {v0}, Landroid/os/FileObserver$ObserverThread;->start()V

    .line 186
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .line 207
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/FileObserver;-><init>(Ljava/util/List;)V

    .line 208
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/File;I)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mask"    # I

    .line 243
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/os/FileObserver;-><init>(Ljava/util/List;I)V

    .line 244
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/FileObserver;-><init>(Ljava/io/File;)V

    .line 201
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    .line 232
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/16 v0, 0xfff

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/util/List;I)V

    .line 217
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;I)V
    .registers 3
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;I)V"
        }
    .end annotation

    .line 253
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Landroid/os/FileObserver;->mFiles:Ljava/util/List;

    .line 255
    iput p2, p0, Landroid/os/FileObserver;->mMask:I

    .line 256
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 1

    .line 259
    invoke-virtual {p0}, Landroid/os/FileObserver;->stopWatching()V

    .line 260
    return-void
.end method

.method public abstract whitelist onEvent(ILjava/lang/String;)V
.end method

.method public whitelist startWatching()V
    .registers 4

    .line 268
    iget-object v0, p0, Landroid/os/FileObserver;->mDescriptors:[I

    if-nez v0, :cond_10

    .line 269
    sget-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    iget-object v1, p0, Landroid/os/FileObserver;->mFiles:Ljava/util/List;

    iget v2, p0, Landroid/os/FileObserver;->mMask:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/os/FileObserver$ObserverThread;->startWatching(Ljava/util/List;ILandroid/os/FileObserver;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/FileObserver;->mDescriptors:[I

    .line 271
    :cond_10
    return-void
.end method

.method public whitelist stopWatching()V
    .registers 3

    .line 279
    iget-object v0, p0, Landroid/os/FileObserver;->mDescriptors:[I

    if-eqz v0, :cond_e

    .line 280
    sget-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    iget-object v1, p0, Landroid/os/FileObserver;->mDescriptors:[I

    invoke-virtual {v0, v1}, Landroid/os/FileObserver$ObserverThread;->stopWatching([I)V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/FileObserver;->mDescriptors:[I

    .line 283
    :cond_e
    return-void
.end method
