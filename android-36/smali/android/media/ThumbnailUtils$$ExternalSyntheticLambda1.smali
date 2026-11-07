.class public final synthetic Landroid/media/ThumbnailUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(Ljava/lang/Object;)I
    .registers 2

    .line 0
    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Landroid/media/ThumbnailUtils;->lambda$createAudioThumbnail$1(Ljava/io/File;)I

    move-result p1

    return p1
.end method
