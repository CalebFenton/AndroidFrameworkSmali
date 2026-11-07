.class public final synthetic Lcom/android/ims/ImsManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/ImsManager;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/ImsManager;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/ims/ImsManager;

    iput p2, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/ims/ImsManager;

    iget v1, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda7;->f$1:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->$r8$lambda$mlH5IIQgbvcwDC4PnlHsI-OYVLY(Lcom/android/ims/ImsManager;I)V

    return-void
.end method
