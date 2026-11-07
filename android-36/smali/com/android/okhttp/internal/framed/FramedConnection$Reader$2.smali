.class Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->settings(ZLcom/android/okhttp/internal/framed/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;


# direct methods
.method varargs constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 738
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist execute()V
    .registers 2

    .line 740
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v0, v0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2000(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    move-result-object v0

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p0}, Lcom/android/okhttp/internal/framed/FramedConnection$Listener;->onSettings(Lcom/android/okhttp/internal/framed/FramedConnection;)V

    return-void
.end method
