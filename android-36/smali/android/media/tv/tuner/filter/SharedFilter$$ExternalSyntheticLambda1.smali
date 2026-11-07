.class public final synthetic Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/tv/tuner/filter/SharedFilter;

.field public final synthetic blacklist f$1:[Landroid/media/tv/tuner/filter/FilterEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/tv/tuner/filter/SharedFilter;[Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda1;->f$0:Landroid/media/tv/tuner/filter/SharedFilter;

    iput-object p2, p0, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda1;->f$1:[Landroid/media/tv/tuner/filter/FilterEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda1;->f$0:Landroid/media/tv/tuner/filter/SharedFilter;

    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda1;->f$1:[Landroid/media/tv/tuner/filter/FilterEvent;

    invoke-static {v0, v1}, Landroid/media/tv/tuner/filter/SharedFilter;->$r8$lambda$MoT-gdCpVPlnV0lPf3Y8HcDAnkw(Landroid/media/tv/tuner/filter/SharedFilter;[Landroid/media/tv/tuner/filter/FilterEvent;)V

    return-void
.end method
