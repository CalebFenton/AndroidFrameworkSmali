.class public final synthetic Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist parse(Lcom/android/modules/utils/TypedXmlPullParser;I)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Landroid/os/vibrator/persistence/VibrationXmlParser;->$r8$lambda$CboBSd8Io_UpVlYlm872u5okLwk(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method
