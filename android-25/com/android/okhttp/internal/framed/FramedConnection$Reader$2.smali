.class Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->ackSettingsLater(Lcom/android/okhttp/internal/framed/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

.field final synthetic val$peerSettings:Lcom/android/okhttp/internal/framed/Settings;


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/framed/Settings;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/okhttp/internal/framed/FramedConnection$Reader;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;
    .param p4, "val$peerSettings"    # Lcom/android/okhttp/internal/framed/Settings;

    #@0
    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    #@2
    iput-object p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;->val$peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    #@4
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@7
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    #@0
    .prologue
    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    #@2
    iget-object v1, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@4
    iget-object v1, v1, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    #@6
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;->val$peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    #@8
    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/framed/FrameWriter;->ackSettings(Lcom/android/okhttp/internal/framed/Settings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 718
    :goto_0
    return-void

    #@c
    .line 721
    :catch_0
    move-exception v0

    #@d
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method
