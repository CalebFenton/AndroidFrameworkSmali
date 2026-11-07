.class public final synthetic Landroid/view/TextureView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/TextureView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/TextureView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/TextureView$$ExternalSyntheticLambda1;->f$0:Landroid/view/TextureView;

    return-void
.end method


# virtual methods
.method public final blacklist onSetFrameRate(Landroid/graphics/SurfaceTexture;FII)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/view/TextureView$$ExternalSyntheticLambda1;->f$0:Landroid/view/TextureView;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/TextureView;->$r8$lambda$d3tcMwV0AnKXZcuYOVpi0DBIGRs(Landroid/view/TextureView;Landroid/graphics/SurfaceTexture;FII)V

    return-void
.end method
