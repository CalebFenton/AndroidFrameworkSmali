.class Landroid/graphics/ImageDecoder$1;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/ImageDecoder;->traceDecoderSource(Landroid/graphics/ImageDecoder;)Ljava/lang/AutoCloseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$resourceTracingEnabled:Z


# direct methods
.method constructor blacklist <init>(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1894
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder$1;->val$resourceTracingEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1897
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder$1;->val$resourceTracingEnabled:Z

    if-eqz v0, :cond_9

    .line 1898
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1900
    :cond_9
    return-void
.end method
