.class public final synthetic Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/tv/tuner/Tuner;

.field public final synthetic blacklist f$1:[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/tv/tuner/Tuner;[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda17;->f$0:Landroid/media/tv/tuner/Tuner;

    iput-object p2, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda17;->f$1:[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda17;->f$0:Landroid/media/tv/tuner/Tuner;

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda17;->f$1:[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

    invoke-static {v0, v1}, Landroid/media/tv/tuner/Tuner;->$r8$lambda$KGZwtHNzLMH1twiG5SiaoiJ12qs(Landroid/media/tv/tuner/Tuner;[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

    return-void
.end method
