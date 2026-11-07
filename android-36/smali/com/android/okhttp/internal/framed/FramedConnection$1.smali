.class Lcom/android/okhttp/internal/framed/FramedConnection$1;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic blacklist val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

.field final synthetic blacklist val$streamId:I


# direct methods
.method varargs constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 6
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

    .line 351
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->val$streamId:I

    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist execute()V
    .registers 3

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->val$streamId:I

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1, p0}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
