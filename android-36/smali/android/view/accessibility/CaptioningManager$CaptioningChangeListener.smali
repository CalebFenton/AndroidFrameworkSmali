.class public abstract Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CaptioningChangeListener"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onEnabledChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 635
    return-void
.end method

.method public whitelist onFontScaleChanged(F)V
    .registers 2
    .param p1, "fontScale"    # F

    .line 659
    return-void
.end method

.method public whitelist onLocaleChanged(Ljava/util/Locale;)V
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 651
    return-void
.end method

.method public whitelist onSystemAudioCaptioningChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 667
    return-void
.end method

.method public whitelist onSystemAudioCaptioningUiChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 674
    return-void
.end method

.method public whitelist onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 2
    .param p1, "userStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 643
    return-void
.end method
