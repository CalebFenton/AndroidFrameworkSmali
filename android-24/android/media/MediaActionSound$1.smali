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
    .line 234
    iput-object p1, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    const/4 v4, 0x0

    #@3
    .line 237
    iget-object v0, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    #@5
    invoke-static {v0}, Landroid/media/MediaActionSound;->-get0(Landroid/media/MediaActionSound;)[Landroid/media/MediaActionSound$SoundState;

    #@8
    move-result-object v3

    #@9
    array-length v5, v3

    #@a
    move v0, v4

    #@b
    :goto_0
    if-ge v0, v5, :cond_2

    #@d
    aget-object v7, v3, v0

    #@f
    .line 238
    .local v7, "sound":Landroid/media/MediaActionSound$SoundState;
    iget v6, v7, Landroid/media/MediaActionSound$SoundState;->id:I

    #@11
    if-eq v6, p2, :cond_0

    #@13
    .line 237
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 241
    :cond_0
    const/4 v1, 0x0

    #@17
    .line 242
    .local v1, "playSoundId":I
    monitor-enter v7

    #@18
    .line 243
    if-eqz p3, :cond_1

    #@1a
    .line 244
    const/4 v0, 0x0

    #@1b
    :try_start_0
    iput v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    #@1d
    .line 245
    const/4 v0, 0x0

    #@1e
    iput v0, v7, Landroid/media/MediaActionSound$SoundState;->id:I

    #@20
    .line 246
    const-string/jumbo v0, "MediaActionSound"

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "OnLoadCompleteListener() error: "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 247
    const-string/jumbo v3, " loading sound: "

    #@36
    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 247
    iget v3, v7, Landroid/media/MediaActionSound$SoundState;->name:I

    #@3c
    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    monitor-exit v7

    #@48
    .line 248
    return-void

    #@49
    .line 250
    :cond_1
    :try_start_1
    iget v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    #@4b
    packed-switch v0, :pswitch_data_0

    #@4e
    .line 259
    const-string/jumbo v0, "MediaActionSound"

    #@51
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v5, "OnLoadCompleteListener() called in wrong state: "

    #@59
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    .line 260
    iget v5, v7, Landroid/media/MediaActionSound$SoundState;->state:I

    #@5f
    .line 259
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    .line 260
    const-string/jumbo v5, " for sound: "

    #@66
    .line 259
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    .line 260
    iget v5, v7, Landroid/media/MediaActionSound$SoundState;->name:I

    #@6c
    .line 259
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    :goto_1
    monitor-exit v7

    #@78
    .line 264
    if-eqz v1, :cond_2

    #@7a
    move-object v0, p1

    #@7b
    move v3, v2

    #@7c
    move v5, v4

    #@7d
    move v6, v2

    #@7e
    .line 265
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    #@81
    .line 236
    .end local v1    # "playSoundId":I
    .end local v7    # "sound":Landroid/media/MediaActionSound$SoundState;
    :cond_2
    return-void

    #@82
    .line 252
    .restart local v1    # "playSoundId":I
    .restart local v7    # "sound":Landroid/media/MediaActionSound$SoundState;
    :pswitch_0
    const/4 v0, 0x3

    #@83
    :try_start_2
    iput v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@85
    goto :goto_1

    #@86
    .line 242
    :catchall_0
    move-exception v0

    #@87
    monitor-exit v7

    #@88
    throw v0

    #@89
    .line 255
    :pswitch_1
    :try_start_3
    iget v1, v7, Landroid/media/MediaActionSound$SoundState;->id:I

    #@8b
    .line 256
    const/4 v0, 0x3

    #@8c
    iput v0, v7, Landroid/media/MediaActionSound$SoundState;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8e
    goto :goto_1

    #@8f
    .line 250
    nop

    #@90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
