.class public final Landroid/view/accessibility/AccessibilityWindowAttributes;
.super Ljava/lang/Object;
.source "AccessibilityWindowAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityWindowAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLocales:Landroid/os/LocaleList;

.field private final blacklist mWindowTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowAttributes$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowAttributes$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    .line 46
    const/4 v0, 0x0

    const-class v1, Landroid/os/LocaleList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    .line 47
    .local v0, "inLocales":Landroid/os/LocaleList;
    if-eqz v0, :cond_17

    .line 48
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    goto :goto_1d

    .line 50
    :cond_17
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    .line 52
    :goto_1d
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/accessibility/AccessibilityWindowAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/WindowManager$LayoutParams;Landroid/os/LocaleList;)V
    .registers 4
    .param p1, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "locales"    # Landroid/os/LocaleList;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowAttributes;->populateWindowTitle(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    .line 41
    iput-object p2, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    .line 42
    return-void
.end method

.method private blacklist populateWindowTitle(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 59
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 62
    .local v0, "windowTitle":Ljava/lang/CharSequence;
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_12

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7cf

    if-gt v1, v2, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v4

    .line 67
    .local v1, "isPanelWindow":Z
    :goto_13
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7f0

    if-ne v2, v5, :cond_1a

    goto :goto_1b

    :cond_1a
    move v3, v4

    .line 70
    .local v3, "isAccessibilityOverlay":Z
    :goto_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    if-nez v1, :cond_25

    if-eqz v3, :cond_36

    .line 72
    :cond_25
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    goto :goto_35

    .line 73
    :cond_31
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_35
    move-object v0, v2

    .line 75
    :cond_36
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 85
    :cond_4
    instance-of v1, p1, Landroid/view/accessibility/AccessibilityWindowAttributes;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 87
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowAttributes;

    .line 89
    .local v1, "that":Landroid/view/accessibility/AccessibilityWindowAttributes;
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    iget-object v4, v1, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public blacklist getLocales()Landroid/os/LocaleList;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public blacklist getWindowTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 95
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessibilityWindowAttributes{mAccessibilityWindowTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLocales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 120
    return-void
.end method
