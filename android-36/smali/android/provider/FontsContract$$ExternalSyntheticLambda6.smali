.class public final synthetic Landroid/provider/FontsContract$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/provider/FontsContract$FontRequestCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda6;->f$0:Landroid/provider/FontsContract$FontRequestCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda6;->f$0:Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$requestFonts$8(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method
