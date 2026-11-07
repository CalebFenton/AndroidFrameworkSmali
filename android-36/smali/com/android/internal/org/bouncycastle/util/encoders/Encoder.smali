.class public interface abstract Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# virtual methods
.method public abstract blacklist decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist decode([BIILjava/io/OutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist encode([BIILjava/io/OutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getEncodedLength(I)I
.end method

.method public abstract blacklist getMaxDecodedLength(I)I
.end method
