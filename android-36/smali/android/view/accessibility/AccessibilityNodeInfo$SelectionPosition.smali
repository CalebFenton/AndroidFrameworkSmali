.class public final Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
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
    name = "SelectionPosition"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mConnectionId:I

.field private final blacklist mOffset:I

.field private final blacklist mSourceNodeId:J

.field private blacklist mWindowId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$msetConnectionId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->setConnectionId(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetWindowId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->setWindowId(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$musesNode(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->usesNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 5968
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JI)V
    .registers 4
    .param p1, "sourceNodeId"    # J
    .param p3, "offset"    # I

    .line 5868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5869
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    .line 5870
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    .line 5871
    return-void
.end method

.method synthetic constructor blacklist <init>(JILandroid/view/accessibility/AccessibilityNodeInfo-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(JI)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 5873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5874
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    .line 5875
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    .line 5876
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/accessibility/AccessibilityNodeInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;I)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .line 5848
    nop

    .line 5850
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 5849
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    .line 5848
    invoke-direct {p0, v0, v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(JI)V

    .line 5852
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;II)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .param p3, "offset"    # I

    .line 5865
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(JI)V

    .line 5866
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .registers 5
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "offset"    # I

    .line 5836
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$fgetmSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(JI)V

    .line 5837
    return-void
.end method

.method private blacklist setConnectionId(I)V
    .registers 2
    .param p1, "connectionId"    # I

    .line 5883
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mConnectionId:I

    .line 5884
    return-void
.end method

.method private blacklist setWindowId(I)V
    .registers 2
    .param p1, "windowId"    # I

    .line 5879
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mWindowId:I

    .line 5880
    return-void
.end method

.method private blacklist usesNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 6
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 5908
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$fgetmSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mConnectionId:I

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$fgetmConnectionId(Landroid/view/accessibility/AccessibilityNodeInfo;)I

    move-result v1

    if-ne v0, v1, :cond_1c

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mWindowId:I

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$fgetmWindowId(Landroid/view/accessibility/AccessibilityNodeInfo;)I

    move-result v1

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 5961
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 5915
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5916
    return v0

    .line 5919
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    .line 5920
    return v1

    .line 5923
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 5924
    return v0

    .line 5927
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    .line 5928
    .local v2, "rhs":Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->getOffset()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->getOffset()I

    move-result v4

    if-eq v3, v4, :cond_21

    .line 5929
    return v0

    .line 5932
    :cond_21
    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    iget-wide v5, v2, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    move v0, v1

    :cond_2a
    return v0
.end method

.method public blacklist getNode()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 5

    .line 5894
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$smgetNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOffset()I
    .registers 2

    .line 5904
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 5937
    const-wide/16 v0, 0x36d

    .line 5938
    .local v0, "prime":J
    const-wide/16 v2, 0x1

    .line 5940
    .local v2, "result":J
    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    if-eqz v4, :cond_c

    .line 5941
    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 5944
    :cond_c
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_17

    .line 5945
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    mul-long/2addr v2, v4

    .line 5948
    :cond_17
    const-wide/16 v4, 0x36d

    mul-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    return v4
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 5954
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5955
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5956
    return-void
.end method
