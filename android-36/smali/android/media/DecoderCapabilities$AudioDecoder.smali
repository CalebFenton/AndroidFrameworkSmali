.class public final enum Landroid/media/DecoderCapabilities$AudioDecoder;
.super Ljava/lang/Enum;
.source "DecoderCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/DecoderCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/media/DecoderCapabilities$AudioDecoder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/media/DecoderCapabilities$AudioDecoder;

.field public static final enum greylist AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;


# direct methods
.method private static synthetic blacklist $values()[Landroid/media/DecoderCapabilities$AudioDecoder;
    .registers 1

    .line 44
    sget-object v0, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    filled-new-array {v0}, [Landroid/media/DecoderCapabilities$AudioDecoder;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 45
    new-instance v0, Landroid/media/DecoderCapabilities$AudioDecoder;

    const-string v1, "AUDIO_DECODER_WMA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/DecoderCapabilities$AudioDecoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 44
    invoke-static {}, Landroid/media/DecoderCapabilities$AudioDecoder;->$values()[Landroid/media/DecoderCapabilities$AudioDecoder;

    move-result-object v0

    sput-object v0, Landroid/media/DecoderCapabilities$AudioDecoder;->$VALUES:[Landroid/media/DecoderCapabilities$AudioDecoder;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/media/DecoderCapabilities$AudioDecoder;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 44
    const-class v0, Landroid/media/DecoderCapabilities$AudioDecoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/DecoderCapabilities$AudioDecoder;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/media/DecoderCapabilities$AudioDecoder;
    .registers 1

    .line 44
    sget-object v0, Landroid/media/DecoderCapabilities$AudioDecoder;->$VALUES:[Landroid/media/DecoderCapabilities$AudioDecoder;

    invoke-virtual {v0}, [Landroid/media/DecoderCapabilities$AudioDecoder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/DecoderCapabilities$AudioDecoder;

    return-object v0
.end method
