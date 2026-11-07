.class Lcom/android/okhttp/internal/framed/FramedConnection$2;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic blacklist val$streamId:I

.field final synthetic blacklist val$unacknowledgedBytesRead:J


# direct methods
.method varargs constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->val$streamId:I

    iput-wide p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->val$unacknowledgedBytesRead:J

    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist execute()V
    .registers 5

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v0, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->val$streamId:I

    iget-wide v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->val$unacknowledgedBytesRead:J

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/internal/framed/FrameWriter;->windowUpdate(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
