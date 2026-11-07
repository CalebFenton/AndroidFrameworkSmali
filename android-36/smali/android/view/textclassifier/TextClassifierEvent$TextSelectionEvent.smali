.class public final Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;
.super Landroid/view/textclassifier/TextClassifierEvent;
.source "TextClassifierEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextSelectionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mRelativeSuggestedWordEndIndex:I

.field final blacklist mRelativeSuggestedWordStartIndex:I

.field final blacklist mRelativeWordEndIndex:I

.field final blacklist mRelativeWordStartIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 762
    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 790
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent-IA;)V

    .line 791
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordStartIndex:I

    .line 792
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordEndIndex:I

    .line 793
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordStartIndex:I

    .line 794
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordEndIndex:I

    .line 795
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;

    .line 782
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent-IA;)V

    .line 783
    iget v0, p1, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeWordStartIndex:I

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordStartIndex:I

    .line 784
    iget v0, p1, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeWordEndIndex:I

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordEndIndex:I

    .line 785
    iget v0, p1, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeSuggestedWordStartIndex:I

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordStartIndex:I

    .line 786
    iget v0, p1, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;->mRelativeSuggestedWordEndIndex:I

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordEndIndex:I

    .line 787
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist getRelativeSuggestedWordEndIndex()I
    .registers 2

    .line 832
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordEndIndex:I

    return v0
.end method

.method public whitelist getRelativeSuggestedWordStartIndex()I
    .registers 2

    .line 824
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordStartIndex:I

    return v0
.end method

.method public whitelist getRelativeWordEndIndex()I
    .registers 2

    .line 817
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordEndIndex:I

    return v0
.end method

.method public whitelist getRelativeWordStartIndex()I
    .registers 2

    .line 810
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordStartIndex:I

    return v0
.end method

.method blacklist toString(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .line 837
    const-string v0, ", getRelativeWordStartIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordStartIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 838
    const-string v0, ", getRelativeWordEndIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordEndIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 839
    const-string v0, ", getRelativeSuggestedWordStartIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordStartIndex:I

    .line 840
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 841
    const-string v0, ", getRelativeSuggestedWordEndIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordEndIndex:I

    .line 842
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 843
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 799
    invoke-super {p0, p1, p2}, Landroid/view/textclassifier/TextClassifierEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 800
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordStartIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeWordEndIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordStartIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->mRelativeSuggestedWordEndIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    return-void
.end method
