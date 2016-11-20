.class public final Landroid/view/KeyboardShortcutInfo;
.super Ljava/lang/Object;
.source "KeyboardShortcutInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyboardShortcutInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseCharacter:C

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mKeycode:I

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mModifiers:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 159
    new-instance v0, Landroid/view/KeyboardShortcutInfo$1;

    #@2
    invoke-direct {v0}, Landroid/view/KeyboardShortcutInfo$1;-><init>()V

    #@5
    .line 158
    sput-object v0, Landroid/view/KeyboardShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    #@9
    .line 93
    const/4 v0, 0x0

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@10
    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@12
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    int-to-char v0, v0

    #@17
    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    #@19
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    #@1f
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    #@25
    .line 91
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/KeyboardShortcutInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/KeyboardShortcutInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;CI)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "baseCharacter"    # C
    .param p3, "modifiers"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 83
    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    #@6
    .line 84
    if-eqz p2, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    #@c
    .line 85
    iput-char p2, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    #@e
    .line 86
    iput v1, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    #@10
    .line 87
    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    #@12
    .line 88
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@15
    .line 82
    return-void

    #@16
    :cond_0
    move v0, v1

    #@17
    .line 84
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "keycode"    # I
    .param p3, "modifiers"    # I

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    #@4
    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "keycode"    # I
    .param p4, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 51
    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    #@6
    .line 52
    iput-object p2, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@8
    .line 53
    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    #@a
    .line 54
    if-ltz p3, :cond_0

    #@c
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    #@f
    move-result v1

    #@10
    if-gt p3, v1, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    #@16
    .line 55
    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    #@18
    .line 56
    iput p4, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    #@1a
    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 146
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBaseCharacter()C
    .locals 1

    #@0
    .prologue
    .line 131
    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    #@2
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method public getKeycode()I
    .locals 1

    #@0
    .prologue
    .line 123
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    #@2
    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    #@0
    .prologue
    .line 141
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@5
    .line 152
    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@b
    .line 153
    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 154
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 155
    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 150
    return-void
.end method
