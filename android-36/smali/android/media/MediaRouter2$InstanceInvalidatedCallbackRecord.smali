.class final Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;
.super Ljava/lang/Record;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceInvalidatedCallbackRecord"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "executor",
        "runnable"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Ljava/util/concurrent/Executor;,
        Ljava/lang/Runnable;
    }
.end annotation


# instance fields
.field private final blacklist executor:Ljava/util/concurrent/Executor;

.field private final blacklist runnable:Ljava/lang/Runnable;


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;

    if-eqz v0, :cond_1c

    check-cast p1, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;

    iget-object v0, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p1, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->runnable:Ljava/lang/Runnable;

    iget-object p1, p1, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->runnable:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->runnable:Ljava/lang/Runnable;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetexecutor(Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrunnable(Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "executor",
            "runnable"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Landroid/media/MediaRouter2-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 141
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist executor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 141
    iget-object v0, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->runnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/app/BroadcastStickyCache$StickyBroadcastFilter$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist runnable()Ljava/lang/Runnable;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 141
    invoke-direct {p0}, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;

    const-string v2, "executor;runnable"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
