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
.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

.field final synthetic val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;
    .param p4, "val$streamId"    # I
    .param p5, "val$errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    #@0
    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    iput p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->val$streamId:I

    #@4
    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    #@6
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@9
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    #@0
    .prologue
    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->val$streamId:I

    #@4
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$1;->val$errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    #@6
    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 346
    :goto_0
    return-void

    #@a
    .line 349
    :catch_0
    move-exception v0

    #@b
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method
