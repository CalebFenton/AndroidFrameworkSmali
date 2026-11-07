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
.field final synthetic blacklist this$0:Landroid/media/MediaActionSound;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaActionSound;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/MediaActionSound;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 267
    iput-object p1, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 16
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .line 270
    iget-object v0, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    invoke-static {v0}, Landroid/media/MediaActionSound;->-$$Nest$fgetmSounds(Landroid/media/MediaActionSound;)[Landroid/media/MediaActionSound$SoundState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_9a

    aget-object v4, v0, v3

    .line 271
    .local v4, "sound":Landroid/media/MediaActionSound$SoundState;
    iget v5, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    if-eq v5, p2, :cond_15

    .line 272
    nop

    .line 270
    .end local v4    # "sound":Landroid/media/MediaActionSound$SoundState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 274
    .restart local v4    # "sound":Landroid/media/MediaActionSound$SoundState;
    :cond_15
    const/4 v1, 0x0

    .line 275
    .local v1, "playSoundId":I
    monitor-enter v4

    .line 276
    if-eqz p3, :cond_46

    .line 277
    :try_start_19
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 278
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    .line 279
    const-string v0, "MediaActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnLoadCompleteListener() error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loading sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Landroid/media/MediaActionSound$SoundState;->name:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_43

    return-void

    .line 296
    :catchall_43
    move-exception v0

    move-object v5, p1

    goto :goto_96

    .line 283
    :cond_46
    :try_start_46
    iget v0, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_9c

    .line 292
    const-string v0, "MediaActionSound"
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_94

    goto :goto_59

    .line 288
    :pswitch_4f
    :try_start_4f
    iget v0, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    move v1, v0

    .line 289
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 290
    move v6, v1

    goto :goto_7e

    .line 285
    :pswitch_56
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->state:I
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_43

    .line 286
    goto :goto_7d

    .line 292
    :goto_59
    :try_start_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnLoadCompleteListener() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Landroid/media/MediaActionSound$SoundState;->name:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_59 .. :try_end_7d} :catchall_94

    .line 296
    :goto_7d
    move v6, v1

    .end local v1    # "playSoundId":I
    .local v6, "playSoundId":I
    :goto_7e
    :try_start_7e
    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_90

    .line 297
    if-eqz v6, :cond_8e

    .line 298
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v5, p1

    .end local p1    # "soundPool":Landroid/media/SoundPool;
    .local v5, "soundPool":Landroid/media/SoundPool;
    invoke-virtual/range {v5 .. v11}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_9b

    .line 297
    .end local v5    # "soundPool":Landroid/media/SoundPool;
    .restart local p1    # "soundPool":Landroid/media/SoundPool;
    :cond_8e
    move-object v5, p1

    .end local p1    # "soundPool":Landroid/media/SoundPool;
    .restart local v5    # "soundPool":Landroid/media/SoundPool;
    goto :goto_9b

    .line 296
    .end local v5    # "soundPool":Landroid/media/SoundPool;
    .restart local p1    # "soundPool":Landroid/media/SoundPool;
    :catchall_90
    move-exception v0

    move-object v5, p1

    move v1, v6

    .end local p1    # "soundPool":Landroid/media/SoundPool;
    .restart local v5    # "soundPool":Landroid/media/SoundPool;
    goto :goto_96

    .end local v5    # "soundPool":Landroid/media/SoundPool;
    .end local v6    # "playSoundId":I
    .restart local v1    # "playSoundId":I
    .restart local p1    # "soundPool":Landroid/media/SoundPool;
    :catchall_94
    move-exception v0

    move-object v5, p1

    .end local p1    # "soundPool":Landroid/media/SoundPool;
    .restart local v5    # "soundPool":Landroid/media/SoundPool;
    :goto_96
    :try_start_96
    monitor-exit v4
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_98

    throw v0

    :catchall_98
    move-exception v0

    goto :goto_96

    .line 270
    .end local v1    # "playSoundId":I
    .end local v4    # "sound":Landroid/media/MediaActionSound$SoundState;
    .end local v5    # "soundPool":Landroid/media/SoundPool;
    .restart local p1    # "soundPool":Landroid/media/SoundPool;
    :cond_9a
    move-object v5, p1

    .line 302
    .end local p1    # "soundPool":Landroid/media/SoundPool;
    .restart local v5    # "soundPool":Landroid/media/SoundPool;
    :goto_9b
    return-void

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_56
        :pswitch_4f
    .end packed-switch
.end method
