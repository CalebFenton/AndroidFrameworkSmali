.class Landroid/media/MediaActionSound$1;
.super Ljava/lang/Object;
.source "MediaActionSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaActionSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaActionSound;


# direct methods
.method constructor <init>(Landroid/media/MediaActionSound;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaActionSound;

    #@0
    .prologue
    .line 176
    iput-object p1, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/high16 v2, 0x3f800000    # 1.0f

    #@3
    .line 179
    if-nez p3, :cond_1

    #@5
    .line 180
    iget-object v0, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    #@7
    invoke-static {v0}, Landroid/media/MediaActionSound;->-get0(Landroid/media/MediaActionSound;)I

    #@a
    move-result v0

    #@b
    if-ne v0, p2, :cond_0

    #@d
    move-object v0, p1

    #@e
    move v1, p2

    #@f
    move v3, v2

    #@10
    move v5, v4

    #@11
    move v6, v2

    #@12
    .line 181
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    #@15
    .line 182
    iget-object v0, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    #@17
    const/4 v1, -0x1

    #@18
    invoke-static {v0, v1}, Landroid/media/MediaActionSound;->-set0(Landroid/media/MediaActionSound;I)I

    #@1b
    .line 178
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 185
    :cond_1
    const-string/jumbo v0, "MediaActionSound"

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, "Unable to load sound for playback (status: "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 186
    const-string/jumbo v2, ")"

    #@32
    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    goto :goto_0
.end method
