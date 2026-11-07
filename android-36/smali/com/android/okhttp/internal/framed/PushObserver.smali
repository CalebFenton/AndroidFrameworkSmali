.class public interface abstract Lcom/android/okhttp/internal/framed/PushObserver;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final blacklist CANCEL:Lcom/android/okhttp/internal/framed/PushObserver;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Lcom/android/okhttp/internal/framed/PushObserver$1;

    invoke-direct {v0}, Lcom/android/okhttp/internal/framed/PushObserver$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/framed/PushObserver;->CANCEL:Lcom/android/okhttp/internal/framed/PushObserver;

    return-void
.end method


# virtual methods
.method public abstract blacklist onData(ILcom/android/okhttp/okio/BufferedSource;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist onHeaders(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract blacklist onRequest(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract blacklist onReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V
.end method
