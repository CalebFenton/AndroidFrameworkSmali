.class Landroid/util/Log$1;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Landroid/util/Log$TerribleFailureHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "what"    # Landroid/util/Log$TerribleFailure;
    .param p3, "system"    # Z

    .line 134
    invoke-static {p1, p2, p3}, Lcom/android/internal/os/RuntimeInit;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 135
    return-void
.end method
