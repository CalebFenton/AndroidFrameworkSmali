.class public interface abstract Landroid/media/MediaParser$InputReader;
.super Ljava/lang/Object;
.source "MediaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputReader"
.end annotation


# virtual methods
.method public abstract whitelist getLength()J
.end method

.method public abstract whitelist getPosition()J
.end method

.method public abstract whitelist read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
