.class public Landroid/media/MediaCodec$IncompatibleWithBlockModelException;
.super Ljava/lang/RuntimeException;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IncompatibleWithBlockModelException"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaCodec;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaCodec;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/MediaCodec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2300
    iput-object p1, p0, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;->this$0:Landroid/media/MediaCodec;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaCodec;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/MediaCodec;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2302
    iput-object p1, p0, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;->this$0:Landroid/media/MediaCodec;

    .line 2303
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2304
    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaCodec;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/MediaCodec;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
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

    .line 2306
    iput-object p1, p0, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;->this$0:Landroid/media/MediaCodec;

    .line 2307
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2308
    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaCodec;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/MediaCodec;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2310
    iput-object p1, p0, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;->this$0:Landroid/media/MediaCodec;

    .line 2311
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2312
    return-void
.end method
