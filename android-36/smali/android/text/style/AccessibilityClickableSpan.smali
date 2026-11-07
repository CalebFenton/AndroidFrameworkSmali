.class public Landroid/text/style/AccessibilityClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "AccessibilityClickableSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/AccessibilityClickableSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mConnectionId:I

.field private final greylist-max-o mOriginalClickableSpanId:I

.field private greylist-max-o mSourceNodeId:J

.field private greylist-max-o mWindowId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 148
    new-instance v0, Landroid/text/style/AccessibilityClickableSpan$1;

    invoke-direct {v0}, Landroid/text/style/AccessibilityClickableSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/AccessibilityClickableSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 5
    .param p1, "originalClickableSpanId"    # I

    .line 59
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    .line 53
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 54
    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    .line 60
    iput p1, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    .line 61
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    .line 53
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 54
    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    .line 65
    return-void
.end method


# virtual methods
.method public greylist-max-o copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "accessibilityNodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 120
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getConnectionId()I

    move-result v0

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    .line 121
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v0

    iput v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    .line 122
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    .line 123
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 100
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 101
    return-object v1

    .line 103
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 104
    .local v0, "sp":Landroid/text/Spanned;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 105
    .local v2, "os":[Landroid/text/style/ClickableSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    array-length v4, v2

    if-ge v3, v4, :cond_2a

    .line 106
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/text/style/ClickableSpan;->getId()I

    move-result v4

    iget v5, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    if-ne v4, v5, :cond_27

    .line 107
    aget-object v1, v2, v3

    return-object v1

    .line 105
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 110
    .end local v3    # "i":I
    :cond_2a
    return-object v1
.end method

.method public blacklist getOriginalClickableSpanId()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 69
    invoke-virtual {p0}, Landroid/text/style/AccessibilityClickableSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 74
    const/16 v0, 0x19

    return v0
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "unused"    # Landroid/view/View;

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 135
    .local v7, "arguments":Landroid/os/Bundle;
    const-string v0, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    invoke-virtual {v7, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    iget v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2d

    iget-wide v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2d

    iget v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    if-eq v0, v1, :cond_2d

    .line 143
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 144
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/text/style/AccessibilityClickableSpan;->mConnectionId:I

    iget v3, p0, Landroid/text/style/AccessibilityClickableSpan;->mWindowId:I

    iget-wide v4, p0, Landroid/text/style/AccessibilityClickableSpan;->mSourceNodeId:J

    const v6, 0x10201a9

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    .line 146
    return-void

    .line 139
    .end local v1    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ClickableSpan for accessibility service not properly initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/text/style/AccessibilityClickableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 85
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget v0, p0, Landroid/text/style/AccessibilityClickableSpan;->mOriginalClickableSpanId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void
.end method
