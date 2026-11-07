.class public final Landroid/view/accessibility/AccessibilityNodeInfo$Selection;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Selection"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$Selection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

.field private final blacklist mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6065
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 6005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6006
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    .line 6007
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    .line 6008
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/accessibility/AccessibilityNodeInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)V
    .registers 3
    .param p1, "start"    # Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
    .param p2, "end"    # Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    .line 6000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6001
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    .line 6002
    iput-object p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    .line 6003
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 6058
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 6026
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 6027
    return v0

    .line 6030
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    .line 6031
    return v1

    .line 6034
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 6035
    return v0

    .line 6038
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    .line 6039
    .local v2, "rhs":Landroid/view/accessibility/AccessibilityNodeInfo$Selection;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    move v0, v1

    :cond_33
    return v0
.end method

.method public blacklist getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
    .registers 2

    .line 6021
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-object v0
.end method

.method public blacklist getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
    .registers 2

    .line 6014
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 6044
    const/16 v0, 0x11

    .line 6045
    .local v0, "prime":I
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6051
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6052
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6053
    return-void
.end method
