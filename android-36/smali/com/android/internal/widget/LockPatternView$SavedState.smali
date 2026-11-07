.class Lcom/android/internal/widget/LockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/LockPatternView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayMode:I

.field private final blacklist mInStealthMode:Z

.field private final blacklist mInputEnabled:Z

.field private final blacklist mSerializedPattern:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1746
    new-instance v0, Lcom/android/internal/widget/LockPatternView$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/widget/LockPatternView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/LockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1713
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1714
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1715
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    .line 1716
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    .line 1717
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    .line 1718
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/widget/LockPatternView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZ)V
    .registers 6
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "serializedPattern"    # Ljava/lang/String;
    .param p3, "displayMode"    # I
    .param p4, "inputEnabled"    # Z
    .param p5, "inStealthMode"    # Z

    .line 1701
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1702
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1703
    iput p3, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    .line 1704
    iput-boolean p4, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    .line 1705
    iput-boolean p5, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    .line 1706
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZLcom/android/internal/widget/LockPatternView-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public blacklist getDisplayMode()I
    .registers 2

    .line 1725
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    return v0
.end method

.method public blacklist getSerializedPattern()Ljava/lang/String;
    .registers 2

    .line 1721
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isInStealthMode()Z
    .registers 2

    .line 1733
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    return v0
.end method

.method public blacklist isInputEnabled()Z
    .registers 2

    .line 1729
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1738
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1739
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1740
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1741
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1742
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1743
    return-void
.end method
