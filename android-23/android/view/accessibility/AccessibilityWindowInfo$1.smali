.class final Landroid/view/accessibility/AccessibilityWindowInfo$1;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityWindowInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/accessibility/AccessibilityWindowInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 602
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    #@3
    move-result-object v0

    #@4
    .line 603
    .local v0, "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->-wrap0(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/os/Parcel;)V

    #@7
    .line 604
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 601
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/accessibility/AccessibilityWindowInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 609
    new-array v0, p1, [Landroid/view/accessibility/AccessibilityWindowInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 608
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo$1;->newArray(I)[Landroid/view/accessibility/AccessibilityWindowInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
