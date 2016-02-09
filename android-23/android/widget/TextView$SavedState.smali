.class public Landroid/widget/TextView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/TextView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field editorState:Landroid/os/ParcelableParcel;

.field error:Ljava/lang/CharSequence;

.field frozenWithFocus:Z

.field selEnd:I

.field selStart:I

.field text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 9873
    new-instance v0, Landroid/widget/TextView$SavedState$1;

    #@2
    invoke-direct {v0}, Landroid/widget/TextView$SavedState$1;-><init>()V

    #@5
    .line 9872
    sput-object v0, Landroid/widget/TextView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 9825
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 9884
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    #@4
    .line 9885
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/widget/TextView$SavedState;->selStart:I

    #@a
    .line 9886
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroid/widget/TextView$SavedState;->selEnd:I

    #@10
    .line 9887
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    const/4 v0, 0x1

    #@17
    :cond_0
    iput-boolean v0, p0, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    #@19
    .line 9888
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/lang/CharSequence;

    #@21
    iput-object v0, p0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    #@23
    .line 9890
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 9891
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Ljava/lang/CharSequence;

    #@31
    iput-object v0, p0, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    #@33
    .line 9894
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 9895
    sget-object v0, Landroid/os/ParcelableParcel;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@3b
    invoke-interface {v0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Landroid/os/ParcelableParcel;

    #@41
    iput-object v0, p0, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    #@43
    .line 9883
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/TextView$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 9834
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    #@3
    .line 9833
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 9862
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "TextView.SavedState{"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    .line 9863
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v2

    #@10
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 9862
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 9864
    const-string/jumbo v2, " start="

    #@1b
    .line 9862
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 9864
    iget v2, p0, Landroid/widget/TextView$SavedState;->selStart:I

    #@21
    .line 9862
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 9864
    const-string/jumbo v2, " end="

    #@28
    .line 9862
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 9864
    iget v2, p0, Landroid/widget/TextView$SavedState;->selEnd:I

    #@2e
    .line 9862
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 9865
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    #@38
    if-eqz v1, :cond_0

    #@3a
    .line 9866
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    const-string/jumbo v2, " text="

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    iget-object v2, p0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    .line 9868
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    const-string/jumbo v2, "}"

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 9839
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 9840
    iget v0, p0, Landroid/widget/TextView$SavedState;->selStart:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 9841
    iget v0, p0, Landroid/widget/TextView$SavedState;->selEnd:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 9842
    iget-boolean v0, p0, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    move v0, v1

    #@14
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 9843
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    #@19
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@1c
    .line 9845
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    #@1e
    if-nez v0, :cond_1

    #@20
    .line 9846
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 9852
    :goto_1
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    #@25
    if-nez v0, :cond_2

    #@27
    .line 9853
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 9838
    :goto_2
    return-void

    #@2b
    :cond_0
    move v0, v2

    #@2c
    .line 9842
    goto :goto_0

    #@2d
    .line 9848
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 9849
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    #@32
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@35
    goto :goto_1

    #@36
    .line 9855
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 9856
    iget-object v0, p0, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    #@3b
    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelableParcel;->writeToParcel(Landroid/os/Parcel;I)V

    #@3e
    goto :goto_2
.end method
