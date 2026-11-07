.class final Landroid/inputmethodservice/InputMethodService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$SettingsObserver$ShowImeWithHardKeyboardType;
    }
.end annotation


# instance fields
.field private final greylist-max-o mService:Landroid/inputmethodservice/InputMethodService;

.field private greylist-max-o mShowImeWithHardKeyboard:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mshouldShowImeWithHardKeyboard(Landroid/inputmethodservice/InputMethodService$SettingsObserver;)Z
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->shouldShowImeWithHardKeyboard()Z

    move-result p0

    return p0
.end method

.method private constructor greylist-max-o <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 4
    .param p1, "service"    # Landroid/inputmethodservice/InputMethodService;

    .line 1676
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1670
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    .line 1677
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 1678
    return-void
.end method

.method public static greylist-max-o createAndRegister(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;
    .registers 5
    .param p0, "service"    # Landroid/inputmethodservice/InputMethodService;

    .line 1693
    new-instance v0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$SettingsObserver;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    .line 1695
    .local v0, "observer":Landroid/inputmethodservice/InputMethodService$SettingsObserver;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1696
    const-string v2, "show_ime_with_hard_keyboard"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1695
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1698
    return-object v0
.end method

.method private greylist-max-r shouldShowImeWithHardKeyboard()Z
    .registers 5

    .line 1708
    iget v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 1709
    nop

    .line 1710
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 1709
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "show_ime_with_hard_keyboard"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_17

    .line 1711
    const/4 v0, 0x2

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    iput v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    .line 1713
    :cond_1a
    iget v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    packed-switch v0, :pswitch_data_3c

    .line 1719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected mShowImeWithHardKeyboard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    return v2

    .line 1715
    :pswitch_3a
    return v1

    .line 1717
    :pswitch_3b
    return v2

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3a
    .end packed-switch
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1726
    nop

    .line 1727
    const-string v0, "show_ime_with_hard_keyboard"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1728
    .local v1, "showImeWithHardKeyboardUri":Landroid/net/Uri;
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1729
    nop

    .line 1730
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 1729
    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1d

    .line 1731
    const/4 v0, 0x2

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    iput v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    .line 1736
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$mresetStateForNewConfiguration(Landroid/inputmethodservice/InputMethodService;)V

    .line 1738
    :cond_25
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver{mShowImeWithHardKeyboard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mShowImeWithHardKeyboard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o unregister()V
    .registers 2

    .line 1702
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$SettingsObserver;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1703
    return-void
.end method
