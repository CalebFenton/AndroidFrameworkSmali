.class Landroid/media/MediaDrm$ListenerArgs;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerArgs"
.end annotation


# instance fields
.field private final blacklist arg1:I

.field private final blacklist arg2:I

.field private final blacklist data:[B

.field private final blacklist expirationTime:J

.field private final blacklist hasNewUsableKey:Z

.field private final blacklist keyStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist sessionId:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetarg1(Landroid/media/MediaDrm$ListenerArgs;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaDrm$ListenerArgs;->arg1:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetarg2(Landroid/media/MediaDrm$ListenerArgs;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaDrm$ListenerArgs;->arg2:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdata(Landroid/media/MediaDrm$ListenerArgs;)[B
    .registers 1

    iget-object p0, p0, Landroid/media/MediaDrm$ListenerArgs;->data:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetexpirationTime(Landroid/media/MediaDrm$ListenerArgs;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/MediaDrm$ListenerArgs;->expirationTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgethasNewUsableKey(Landroid/media/MediaDrm$ListenerArgs;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/MediaDrm$ListenerArgs;->hasNewUsableKey:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetkeyStatusList(Landroid/media/MediaDrm$ListenerArgs;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaDrm$ListenerArgs;->keyStatusList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsessionId(Landroid/media/MediaDrm$ListenerArgs;)[B
    .registers 1

    iget-object p0, p0, Landroid/media/MediaDrm$ListenerArgs;->sessionId:[B

    return-object p0
.end method

.method public constructor blacklist <init>(II[B[BJLjava/util/List;Z)V
    .registers 9
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "sessionId"    # [B
    .param p4, "data"    # [B
    .param p5, "expirationTime"    # J
    .param p8, "hasNewUsableKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B[BJ",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation

    .line 1324
    .local p7, "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1325
    iput p1, p0, Landroid/media/MediaDrm$ListenerArgs;->arg1:I

    .line 1326
    iput p2, p0, Landroid/media/MediaDrm$ListenerArgs;->arg2:I

    .line 1327
    iput-object p3, p0, Landroid/media/MediaDrm$ListenerArgs;->sessionId:[B

    .line 1328
    iput-object p4, p0, Landroid/media/MediaDrm$ListenerArgs;->data:[B

    .line 1329
    iput-wide p5, p0, Landroid/media/MediaDrm$ListenerArgs;->expirationTime:J

    .line 1330
    iput-object p7, p0, Landroid/media/MediaDrm$ListenerArgs;->keyStatusList:Ljava/util/List;

    .line 1331
    iput-boolean p8, p0, Landroid/media/MediaDrm$ListenerArgs;->hasNewUsableKey:Z

    .line 1332
    return-void
.end method
