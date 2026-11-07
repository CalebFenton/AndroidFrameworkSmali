.class public abstract Lcom/android/okhttp/internal/framed/FramedConnection$Listener;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# static fields
.field public static final blacklist REFUSE_INCOMING_STREAMS:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 922
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedConnection$Listener$1;

    invoke-direct {v0}, Lcom/android/okhttp/internal/framed/FramedConnection$Listener$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/framed/FramedConnection$Listener;->REFUSE_INCOMING_STREAMS:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSettings(Lcom/android/okhttp/internal/framed/FramedConnection;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract blacklist onStream(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
