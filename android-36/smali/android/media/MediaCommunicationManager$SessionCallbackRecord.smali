.class final Landroid/media/MediaCommunicationManager$SessionCallbackRecord;
.super Ljava/lang/Object;
.source "MediaCommunicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCommunicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionCallbackRecord"
.end annotation


# instance fields
.field public final blacklist callback:Landroid/media/MediaCommunicationManager$SessionCallback;

.field public final blacklist executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/media/MediaCommunicationManager$SessionCallback;)V
    .registers 3

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;->executor:Ljava/util/concurrent/Executor;

    .line 323
    iput-object p2, p0, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;->callback:Landroid/media/MediaCommunicationManager$SessionCallback;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 336
    :cond_4
    instance-of v0, p1, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 339
    :cond_a
    iget-object p0, p0, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;->callback:Landroid/media/MediaCommunicationManager$SessionCallback;

    check-cast p1, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;

    iget-object p1, p1, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;->callback:Landroid/media/MediaCommunicationManager$SessionCallback;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 328
    iget-object p0, p0, Landroid/media/MediaCommunicationManager$SessionCallbackRecord;->callback:Landroid/media/MediaCommunicationManager$SessionCallback;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
