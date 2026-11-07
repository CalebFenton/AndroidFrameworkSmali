.class Lcom/android/okhttp/internal/framed/FramedConnection$3;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;->writePingLater(ZIILcom/android/okhttp/internal/framed/Ping;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic blacklist val$payload1:I

.field final synthetic blacklist val$payload2:I

.field final synthetic blacklist val$ping:Lcom/android/okhttp/internal/framed/Ping;

.field final synthetic blacklist val$reply:Z


# direct methods
.method varargs constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/android/okhttp/internal/framed/Ping;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 399
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iput-boolean p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$reply:Z

    iput p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$payload1:I

    iput p6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$payload2:I

    iput-object p7, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$ping:Lcom/android/okhttp/internal/framed/Ping;

    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist execute()V
    .registers 5

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$reply:Z

    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$payload1:I

    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$payload2:I

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$3;->val$ping:Lcom/android/okhttp/internal/framed/Ping;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->writePing(ZIILcom/android/okhttp/internal/framed/Ping;)V
    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$900(Lcom/android/okhttp/internal/framed/FramedConnection;ZIILcom/android/okhttp/internal/framed/Ping;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
