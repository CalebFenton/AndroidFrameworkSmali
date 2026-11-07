.class public final Landroid/media/AudioFocusRequest;
.super Ljava/lang/Object;
.source "AudioFocusRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFocusRequest$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;

.field public static final greylist-max-o KEY_ACCESSIBILITY_FORCE_FOCUS_DUCKING:Ljava/lang/String; = "a11y_force_ducking"


# instance fields
.field private final greylist-max-o mAttr:Landroid/media/AudioAttributes;

.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mFocusGain:I

.field private final greylist-max-o mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final greylist-max-o mListenerHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttr(Landroid/media/AudioFocusRequest;)Landroid/media/AudioAttributes;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusGain(Landroid/media/AudioFocusRequest;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusListener(Landroid/media/AudioFocusRequest;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerHandler(Landroid/media/AudioFocusRequest;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFOCUS_DEFAULT_ATTR()Landroid/media/AudioAttributes;
    .registers 1

    sget-object v0, Landroid/media/AudioFocusRequest;->FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 222
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/media/AudioFocusRequest;->FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;

    .line 222
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;II)V
    .registers 6
    .param p1, "listener"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "attr"    # Landroid/media/AudioAttributes;
    .param p4, "focusGain"    # I
    .param p5, "flags"    # I

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 237
    iput-object p2, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    .line 238
    iput p4, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    .line 239
    iput-object p3, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    .line 240
    iput p5, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    .line 241
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;IILandroid/media/AudioFocusRequest-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/media/AudioFocusRequest;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;II)V

    return-void
.end method

.method static final greylist-max-o isValidFocusGain(I)Z
    .registers 2
    .param p0, "focusGain"    # I

    .line 250
    packed-switch p0, :pswitch_data_8

    .line 257
    const/4 v0, 0x0

    return v0

    .line 255
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist acceptsDelayedFocusGain()Z
    .registers 3

    .line 318
    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 288
    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method greylist-max-o getFlags()I
    .registers 2

    .line 335
    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    return v0
.end method

.method public whitelist getFocusGain()I
    .registers 2

    .line 299
    iget v0, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    return v0
.end method

.method public blacklist getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 2

    .line 268
    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method public greylist-max-o getOnAudioFocusChangeListenerHandler()Landroid/os/Handler;
    .registers 2

    .line 279
    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public whitelist locksFocus()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 330
    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist willPauseWhenDucked()Z
    .registers 3

    .line 308
    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
