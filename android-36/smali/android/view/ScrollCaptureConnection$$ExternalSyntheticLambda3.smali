.class public final synthetic Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ScrollCaptureConnection;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ScrollCaptureConnection;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda3;->f$0:Landroid/view/ScrollCaptureConnection;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda3;->f$0:Landroid/view/ScrollCaptureConnection;

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/view/ScrollCaptureConnection;->onImageRequestCompleted(Landroid/graphics/Rect;)V

    return-void
.end method
