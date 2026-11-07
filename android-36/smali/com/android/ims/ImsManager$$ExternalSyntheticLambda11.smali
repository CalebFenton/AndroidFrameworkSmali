.class public final synthetic Lcom/android/ims/ImsManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/ImsManager;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/ImsManager;ZI)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/ims/ImsManager;

    iput-boolean p2, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda11;->f$1:Z

    iput p3, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda11;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda11;->f$0:Lcom/android/ims/ImsManager;

    iget-boolean v1, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda11;->f$1:Z

    iget v2, p0, Lcom/android/ims/ImsManager$$ExternalSyntheticLambda11;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/ims/ImsManager;->$r8$lambda$573FYspCxHwkdwJI7GJeCryZsR0(Lcom/android/ims/ImsManager;ZI)V

    return-void
.end method
