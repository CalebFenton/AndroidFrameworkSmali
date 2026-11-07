.class public final synthetic Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/ToIntFunction;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/ToIntFunction;

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {v0, p1, p2}, Landroid/media/ThumbnailUtils;->lambda$createAudioThumbnail$2(Ljava/util/function/ToIntFunction;Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
