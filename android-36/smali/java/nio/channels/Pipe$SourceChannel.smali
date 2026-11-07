.class public abstract Ljava/nio/channels/Pipe$SourceChannel;
.super Ljava/nio/channels/spi/AbstractSelectableChannel;
.source "Pipe.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;
.implements Ljava/nio/channels/ScatteringByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SourceChannel"
.end annotation


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 2
    .param p1, "provider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 70
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 71
    return-void
.end method


# virtual methods
.method public final whitelist test-api validOps()I
    .registers 2

    .line 83
    const/4 v0, 0x1

    return v0
.end method
