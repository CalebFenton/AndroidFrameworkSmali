.class public interface abstract Lcom/android/okhttp/internal/framed/IncomingStreamHandler;
.super Ljava/lang/Object;
.source "IncomingStreamHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/framed/IncomingStreamHandler$1;
    }
.end annotation


# static fields
.field public static final REFUSE_INCOMING_STREAMS:Lcom/android/okhttp/internal/framed/IncomingStreamHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 23
    new-instance v0, Lcom/android/okhttp/internal/framed/IncomingStreamHandler$1;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/internal/framed/IncomingStreamHandler$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/okhttp/internal/framed/IncomingStreamHandler;->REFUSE_INCOMING_STREAMS:Lcom/android/okhttp/internal/framed/IncomingStreamHandler;

    #@7
    .line 22
    return-void
.end method


# virtual methods
.method public abstract receive(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
