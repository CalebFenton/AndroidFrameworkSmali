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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/widget/LockPatternView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayMode:I

.field private final mInStealthMode:Z

.field private final mInputEnabled:Z

.field private final mSerializedPattern:Ljava/lang/String;

.field private final mTactileFeedbackEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1285
    new-instance v0, Lcom/android/internal/widget/LockPatternView$SavedState$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/widget/LockPatternView$SavedState$1;-><init>()V

    #@5
    .line 1284
    sput-object v0, Lcom/android/internal/widget/LockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1220
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1245
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    #@4
    .line 1246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    #@a
    .line 1247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    #@10
    .line 1248
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/Boolean;

    #@16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@19
    move-result v0

    #@1a
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    #@1c
    .line 1249
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/Boolean;

    #@22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@25
    move-result v0

    #@26
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    #@28
    .line 1250
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Ljava/lang/Boolean;

    #@2e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@31
    move-result v0

    #@32
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    #@34
    .line 1244
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/widget/LockPatternView$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "serializedPattern"    # Ljava/lang/String;
    .param p3, "displayMode"    # I
    .param p4, "inputEnabled"    # Z
    .param p5, "inStealthMode"    # Z
    .param p6, "tactileFeedbackEnabled"    # Z

    #@0
    .prologue
    .line 1233
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 1234
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    #@5
    .line 1235
    iput p3, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    #@7
    .line 1236
    iput-boolean p4, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    #@9
    .line 1237
    iput-boolean p5, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    #@b
    .line 1238
    iput-boolean p6, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    #@d
    .line 1232
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/internal/widget/LockPatternView$SavedState;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "serializedPattern"    # Ljava/lang/String;
    .param p3, "displayMode"    # I
    .param p4, "inputEnabled"    # Z
    .param p5, "inStealthMode"    # Z
    .param p6, "tactileFeedbackEnabled"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V

    #@3
    return-void
.end method


# virtual methods
.method public getDisplayMode()I
    .locals 1

    #@0
    .prologue
    .line 1258
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    #@2
    return v0
.end method

.method public getSerializedPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isInStealthMode()Z
    .locals 1

    #@0
    .prologue
    .line 1266
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    #@2
    return v0
.end method

.method public isInputEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1262
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    #@2
    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1270
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1275
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 1276
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@8
    .line 1277
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mDisplayMode:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 1278
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInputEnabled:Z

    #@f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@16
    .line 1279
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mInStealthMode:Z

    #@18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@1f
    .line 1280
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    #@21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@28
    .line 1274
    return-void
.end method
