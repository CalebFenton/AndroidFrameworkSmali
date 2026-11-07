.class public Landroid/widget/Button;
.super Landroid/widget/TextView;
.source "Button.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist WEAR_MATERIAL3_BUTTON:J = 0x1671debeL

.field private static blacklist sUseWearMaterial3Style:Ljava/lang/Boolean;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 144
    invoke-static {p1}, Landroid/widget/Button;->getButtonDefaultStyleAttr(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Landroid/widget/Button;->getButtonDefaultStyleRes()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 145
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 169
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 193
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 194
    return-void
.end method

.method private static blacklist getButtonDefaultStyleAttr(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 217
    invoke-static {p0}, Landroid/widget/Button;->useWearMaterial3Style(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/widget/Button;->sUseWearMaterial3Style:Ljava/lang/Boolean;

    .line 218
    sget-object v0, Landroid/widget/Button;->sUseWearMaterial3Style:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 219
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_14
    const v0, 0x1010048

    return v0
.end method

.method private static blacklist getButtonDefaultStyleRes()I
    .registers 1

    .line 225
    sget-object v0, Landroid/widget/Button;->sUseWearMaterial3Style:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    sget-object v0, Landroid/widget/Button;->sUseWearMaterial3Style:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 226
    const v0, 0x1030534

    return v0

    .line 228
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist useWearMaterial3Style(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 232
    invoke-static {}, Landroid/widget/flags/Flags;->useWearMaterial3Ui()Z

    move-result v0

    if-eqz v0, :cond_26

    const-wide/32 v0, 0x1671debe

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const v1, 0x1030128

    if-ne v0, v1, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 232
    :goto_27
    return v0
.end method


# virtual methods
.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 198
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 208
    invoke-static {}, Landroid/view/flags/Flags;->enableArrowIconOnHoverWhenClickable()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Landroid/widget/Button;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v0

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Landroid/widget/Button;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 209
    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 211
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0

    .line 213
    :cond_2b
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method
