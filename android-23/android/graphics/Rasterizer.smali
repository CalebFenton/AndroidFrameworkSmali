.class public Landroid/graphics/Rasterizer;
.super Ljava/lang/Object;
.source "Rasterizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field native_instance:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
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
    .line 28
    iget-wide v0, p0, Landroid/graphics/Rasterizer;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Rasterizer;->finalizer(J)V

    #@5
    .line 27
    return-void
.end method
