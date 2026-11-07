.class public Landroid/graphics/SurfaceTexture$OutOfResourcesException;
.super Ljava/lang/Exception;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/SurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutOfResourcesException"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 132
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 135
    return-void
.end method
