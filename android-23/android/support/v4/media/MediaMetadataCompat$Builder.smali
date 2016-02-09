.class public final Landroid/support/v4/media/MediaMetadataCompat$Builder;
.super Ljava/lang/Object;
.source "MediaMetadataCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaMetadataCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 609
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@8
    iput-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    #@a
    .line 608
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2
    .param p1, "source"    # Landroid/support/v4/media/MediaMetadataCompat;

    #@0
    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 620
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->-get1(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/os/Bundle;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@c
    iput-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    #@e
    .line 619
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 3

    #@0
    .prologue
    .line 779
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat;

    #@2
    iget-object v1, p0, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;Landroid/support/v4/media/MediaMetadataCompat;)V

    #@8
    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 763
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->-get0()Landroid/support/v4/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 764
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->-get0()Landroid/support/v4/util/ArrayMap;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/Integer;

    #@14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v0

    #@18
    const/4 v1, 0x2

    #@19
    if-eq v0, v1, :cond_0

    #@1b
    .line 765
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "The "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 766
    const-string/jumbo v2, " key cannot be used to put a Bitmap"

    #@30
    .line 765
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 769
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    #@3e
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@41
    .line 770
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    #@0
    .prologue
    .line 714
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->-get0()Landroid/support/v4/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 715
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->-get0()Landroid/support/v4/util/ArrayMap;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/Integer;

    #@14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "The "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 717
    const-string/jumbo v2, " key cannot be used to put a long"

    #@2f
    .line 716
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 720
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    #@3d
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@40
    .line 721
    return-object p0
.end method

.method public putRating(Ljava/lang/String;Landroid/support/v4/media/RatingCompat;)Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/support/v4/media/RatingCompat;

    #@0
    .prologue
    .line 738
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->-get0()Landroid/support/v4/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 739
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->-get0()Landroid/support/v4/util/ArrayMap;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/Integer;

    #@14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v0

    #@18
    const/4 v1, 0x3

    #@19
    if-eq v0, v1, :cond_0

    #@1b
    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "The "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 741
    const-string/jumbo v2, " key cannot be used to put a Rating"

    #@30
    .line 740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 744
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    #@3e
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@41
    .line 745
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 687
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->-get0()Landroid/support/v4/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 688
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->-get0()Landroid/support/v4/util/ArrayMap;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/Integer;

    #@14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v0

    #@18
    const/4 v1, 0x1

    #@19
    if-eq v0, v1, :cond_0

    #@1b
    .line 689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "The "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 690
    const-string/jumbo v2, " key cannot be used to put a String"

    #@30
    .line 689
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 693
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    #@3e
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@41
    .line 694
    return-object p0
.end method

.method public putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 650
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->-get0()Landroid/support/v4/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 651
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->-get0()Landroid/support/v4/util/ArrayMap;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/Integer;

    #@14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v0

    #@18
    const/4 v1, 0x1

    #@19
    if-eq v0, v1, :cond_0

    #@1b
    .line 652
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "The "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 653
    const-string/jumbo v2, " key cannot be used to put a CharSequence"

    #@30
    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 656
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    #@3e
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@41
    .line 657
    return-object p0
.end method
