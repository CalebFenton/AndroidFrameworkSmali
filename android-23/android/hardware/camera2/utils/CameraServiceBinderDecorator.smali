.class public Landroid/hardware/camera2/utils/CameraServiceBinderDecorator;
.super Landroid/hardware/camera2/utils/CameraBinderDecorator;
.source "CameraServiceBinderDecorator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/CameraServiceBinderDecorator$CameraServiceBinderDecoratorListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraServiceBinderDecorator"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Landroid/hardware/camera2/utils/CameraBinderDecorator;-><init>()V

    #@3
    return-void
.end method

.method public static newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroid/hardware/camera2/utils/CameraServiceBinderDecorator$CameraServiceBinderDecoratorListener;

    #@2
    invoke-direct {v0}, Landroid/hardware/camera2/utils/CameraServiceBinderDecorator$CameraServiceBinderDecoratorListener;-><init>()V

    #@5
    invoke-static {p0, v0}, Landroid/hardware/camera2/utils/Decorator;->newInstance(Ljava/lang/Object;Landroid/hardware/camera2/utils/Decorator$DecoratorListener;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
