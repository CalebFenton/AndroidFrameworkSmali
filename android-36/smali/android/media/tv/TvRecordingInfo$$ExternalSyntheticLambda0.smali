.class public final synthetic Landroid/media/tv/TvRecordingInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/TvRecordingInfo$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/tv/TvRecordingInfo$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    check-cast p1, Landroid/media/tv/TvContentRating;

    invoke-static {v0, p1}, Landroid/media/tv/TvRecordingInfo;->lambda$writeToParcel$0(Ljava/util/List;Landroid/media/tv/TvContentRating;)V

    return-void
.end method
