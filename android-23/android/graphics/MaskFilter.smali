.class public Landroid/graphics/MaskFilter;
.super Ljava/lang/Object;
.source "MaskFilter.java"


# instance fields
.field native_instance:J


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static native nativeDestructor(J)V
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
    .line 27
    iget-wide v0, p0, Landroid/graphics/MaskFilter;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/MaskFilter;->nativeDestructor(J)V

    #@5
    .line 26
    return-void
.end method
