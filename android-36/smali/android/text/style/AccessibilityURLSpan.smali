.class public Landroid/text/style/AccessibilityURLSpan;
.super Landroid/text/style/URLSpan;
.source "AccessibilityURLSpan.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field final greylist-max-o mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    .line 45
    new-instance v0, Landroid/text/style/AccessibilityClickableSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AccessibilityClickableSpan;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    .line 46
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/text/style/URLSpan;)V
    .registers 4
    .param p1, "spanToReplace"    # Landroid/text/style/URLSpan;

    .line 38
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/text/style/AccessibilityClickableSpan;

    .line 40
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/AccessibilityClickableSpan;-><init>(I)V

    iput-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    .line 41
    return-void
.end method


# virtual methods
.method public greylist-max-o copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "accessibilityNodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 79
    iget-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/AccessibilityClickableSpan;->copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 80
    return-void
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 50
    invoke-virtual {p0}, Landroid/text/style/AccessibilityURLSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 55
    const/16 v0, 0x1a

    return v0
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "unused"    # Landroid/view/View;

    .line 71
    iget-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/AccessibilityClickableSpan;->onClick(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 60
    invoke-virtual {p0, p1, p2}, Landroid/text/style/AccessibilityURLSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 61
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    invoke-super {p0, p1, p2}, Landroid/text/style/URLSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 66
    iget-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v0, p1, p2}, Landroid/text/style/AccessibilityClickableSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    return-void
.end method
