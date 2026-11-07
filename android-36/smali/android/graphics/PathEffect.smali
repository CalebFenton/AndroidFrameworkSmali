.class public Landroid/graphics/PathEffect;
.super Ljava/lang/Object;
.source "PathEffect.java"


# instance fields
.field greylist-max-o native_instance:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native greylist-max-o nativeDestructor(J)V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 28
    iget-wide v0, p0, Landroid/graphics/PathEffect;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathEffect;->nativeDestructor(J)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/PathEffect;->native_instance:J

    .line 30
    return-void
.end method
