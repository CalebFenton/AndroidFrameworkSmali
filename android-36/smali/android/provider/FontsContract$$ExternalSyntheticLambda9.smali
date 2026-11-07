.class public final synthetic Landroid/provider/FontsContract$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/provider/FontsContract$FontRequestCallback;

.field public final synthetic blacklist f$1:Landroid/graphics/Typeface;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda9;->f$0:Landroid/provider/FontsContract$FontRequestCallback;

    iput-object p2, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda9;->f$1:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda9;->f$0:Landroid/provider/FontsContract$FontRequestCallback;

    iget-object v1, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda9;->f$1:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/provider/FontsContract;->lambda$requestFonts$11(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    return-void
.end method
