.class public Landroid/graphics/Xfermode;
.super Ljava/lang/Object;
.source "Xfermode.java"


# instance fields
.field native_instance:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static native finalizer(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 35
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Xfermode;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Xfermode;->finalizer(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 37
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 33
    return-void

    #@9
    .line 36
    :catchall_0
    move-exception v0

    #@a
    .line 37
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 36
    throw v0
.end method
