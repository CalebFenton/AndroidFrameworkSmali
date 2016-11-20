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
.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic val$streamId:I

.field final synthetic val$unacknowledgedBytesRead:J


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;
    .param p4, "val$streamId"    # I
    .param p5, "val$unacknowledgedBytesRead"    # J

    #@0
    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->val$streamId:I

    #@4
    iput-wide p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->val$unacknowledgedBytesRead:J

    #@6
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@9
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    #@0
    .prologue
    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    iget-object v1, v1, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    #@4
    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->val$streamId:I

    #@6
    iget-wide v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$2;->val$unacknowledgedBytesRead:J

    #@8
    invoke-interface {v1, v2, v4, v5}, Lcom/android/okhttp/internal/framed/FrameWriter;->windowUpdate(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 361
    :goto_0
    return-void

    #@c
    .line 364
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method
