.class abstract Landroid/service/voice/HotwordAudioStream$BaseBuilder;
.super Ljava/lang/Object;
.source "HotwordAudioStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordAudioStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseBuilder"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setInitialAudio([B)Landroid/service/voice/HotwordAudioStream$Builder;
    .registers 7
    .param p1, "value"    # [B

    .line 170
    const-string/jumbo v0, "value should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    move-object v0, p0

    check-cast v0, Landroid/service/voice/HotwordAudioStream$Builder;

    .line 173
    .local v0, "builder":Landroid/service/voice/HotwordAudioStream$Builder;
    invoke-static {v0}, Landroid/service/voice/HotwordAudioStream$Builder;->-$$Nest$fgetmBuilderFieldsSet(Landroid/service/voice/HotwordAudioStream$Builder;)J

    move-result-wide v1

    const-wide/16 v3, 0x10

    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/service/voice/HotwordAudioStream$Builder;->-$$Nest$fputmBuilderFieldsSet(Landroid/service/voice/HotwordAudioStream$Builder;J)V

    .line 174
    invoke-static {v0, p1}, Landroid/service/voice/HotwordAudioStream$Builder;->-$$Nest$fputmInitialAudio(Landroid/service/voice/HotwordAudioStream$Builder;[B)V

    .line 175
    return-object v0
.end method
