.class public final Landroid/view/KeyboardShortcutInfo;
.super Ljava/lang/Object;
.source "KeyboardShortcutInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mBaseCharacter:C

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private final greylist-max-o mKeycode:I

.field private final greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private final greylist-max-o mModifiers:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 185
    new-instance v0, Landroid/view/KeyboardShortcutInfo$1;

    invoke-direct {v0}, Landroid/view/KeyboardShortcutInfo$1;-><init>()V

    sput-object v0, Landroid/view/KeyboardShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 111
    const/4 v0, 0x0

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    .line 115
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/KeyboardShortcutInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/KeyboardShortcutInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;CI)V
    .registers 5
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "baseCharacter"    # C
    .param p3, "modifiers"    # I

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;CI)V

    .line 85
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;II)V
    .registers 5
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "keycode"    # I
    .param p3, "modifiers"    # I

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;CI)V
    .registers 7
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "baseCharacter"    # C
    .param p4, "modifiers"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 102
    const/4 v0, 0x0

    if-eqz p3, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    move v1, v0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 103
    iput-char p3, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 104
    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 105
    iput p4, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    .line 106
    iput-object p2, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 107
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V
    .registers 7
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "keycode"    # I
    .param p4, "modifiers"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    .line 53
    iput-object p2, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 54
    const/4 v0, 0x0

    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    .line 55
    if-ltz p3, :cond_13

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    if-gt p3, v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 56
    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    .line 57
    iput p4, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    .line 58
    return-void
.end method


# virtual methods
.method public blacklist clearIcon()V
    .registers 2

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    .line 142
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBaseCharacter()C
    .registers 2

    .line 158
    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    return v0
.end method

.method public greylist-max-o getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getKeycode()I
    .registers 2

    .line 150
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    return v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getModifiers()I
    .registers 2

    .line 168
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 178
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 180
    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    return-void
.end method
