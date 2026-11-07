.class public interface abstract Lcom/android/internal/util/TraceBuffer$ProtoProvider;
.super Ljava/lang/Object;
.source "TraceBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/TraceBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProtoProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "S:TP;T:TP;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist getBytes(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)[B"
        }
    .end annotation
.end method

.method public abstract blacklist getItemSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)I"
        }
    .end annotation
.end method

.method public abstract blacklist write(Ljava/lang/Object;Ljava/util/Queue;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/util/Queue<",
            "TT;>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
