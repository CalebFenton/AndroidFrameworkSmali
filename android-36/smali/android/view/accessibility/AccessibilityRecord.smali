.class public Landroid/view/accessibility/AccessibilityRecord;
.super Ljava/lang/Object;
.source "AccessibilityRecord.java"


# static fields
.field protected static final greylist-max-o DEBUG_CONCISE_TOSTRING:Z = false

.field private static final greylist-max-o GET_SOURCE_PREFETCH_FLAGS:I = 0x7

.field private static final blacklist PROPERTY_ACCESSIBILITY_DATA_SENSITIVE:I = 0x400

.field private static final greylist-max-o PROPERTY_CHECKED:I = 0x1

.field private static final greylist-max-o PROPERTY_ENABLED:I = 0x2

.field private static final greylist-max-o PROPERTY_FULL_SCREEN:I = 0x80

.field private static final greylist-max-o PROPERTY_IMPORTANT_FOR_ACCESSIBILITY:I = 0x200

.field private static final greylist-max-o PROPERTY_PASSWORD:I = 0x4

.field private static final greylist-max-o PROPERTY_SCROLLABLE:I = 0x100

.field private static final greylist-max-o UNDEFINED:I = -0x1


# instance fields
.field greylist-max-o mAddedCount:I

.field greylist-max-o mBeforeText:Ljava/lang/CharSequence;

.field greylist-max-o mBooleanProperties:I

.field greylist-max-o mClassName:Ljava/lang/CharSequence;

.field greylist-max-o mConnectionId:I

.field greylist-max-o mContentDescription:Ljava/lang/CharSequence;

.field greylist-max-o mCurrentItemIndex:I

.field greylist-max-o mFromIndex:I

.field greylist-max-o mItemCount:I

.field greylist-max-o mMaxScrollX:I

.field greylist-max-o mMaxScrollY:I

.field greylist-max-o mParcelableData:Landroid/os/Parcelable;

.field greylist-max-o mRemovedCount:I

.field greylist-max-o mScrollDeltaX:I

.field greylist-max-o mScrollDeltaY:I

.field greylist-max-o mScrollX:I

.field greylist-max-o mScrollY:I

.field greylist mSealed:Z

.field blacklist mSourceDisplayId:I

.field greylist mSourceNodeId:J

.field greylist-max-o mSourceWindowId:I

.field final greylist-max-o mText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mToIndex:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 5

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 86
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 87
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 88
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 89
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 90
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 92
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 93
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 94
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 95
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 97
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 98
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 99
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 101
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 102
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    .line 111
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 117
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/accessibility/AccessibilityRecord;)V
    .registers 6
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 86
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 87
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 88
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 89
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 90
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 92
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 93
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 94
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 95
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 97
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 98
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 99
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 101
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 102
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    .line 111
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 126
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 127
    return-void
.end method

.method private greylist-max-o append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .registers 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # I

    .line 1007
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1008
    return-void
.end method

.method private greylist-max-o append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/Object;

    .line 1012
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1013
    return-void
.end method

.method private greylist-max-o appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "propName"    # Ljava/lang/String;

    .line 1016
    const-string v0, "; "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o appendUnless(ZILjava/lang/StringBuilder;)V
    .registers 6
    .param p1, "defValue"    # Z
    .param p2, "prop"    # I
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .line 984
    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    .line 986
    .local v0, "value":Z
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityRecord;->singleBooleanPropertyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 987
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 988
    return-void
.end method

.method private greylist-max-o getBooleanProperty(I)Z
    .registers 3
    .param p1, "property"    # I

    .line 831
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static whitelist obtain()Landroid/view/accessibility/AccessibilityRecord;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 872
    new-instance v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;
    .registers 2
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 858
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    .line 859
    .local v0, "clone":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 860
    return-object v0
.end method

.method private greylist-max-o setBooleanProperty(IZ)V
    .registers 5
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .line 841
    if-eqz p2, :cond_8

    .line 842
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    goto :goto_e

    .line 844
    :cond_8
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 846
    :goto_e
    return-void
.end method

.method private static greylist-max-o singleBooleanPropertyToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "prop"    # I

    .line 991
    sparse-switch p0, :sswitch_data_1e

    .line 1001
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1000
    :sswitch_8
    const-string v0, "AccessibilityDataSensitive"

    return-object v0

    .line 998
    :sswitch_b
    const-string v0, "ImportantForAccessibility"

    return-object v0

    .line 996
    :sswitch_e
    const-string v0, "Scrollable"

    return-object v0

    .line 995
    :sswitch_11
    const-string v0, "FullScreen"

    return-object v0

    .line 994
    :sswitch_14
    const-string v0, "Password"

    return-object v0

    .line 993
    :sswitch_17
    const-string v0, "Enabled"

    return-object v0

    .line 992
    :sswitch_1a
    const-string v0, "Checked"

    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_17
        0x4 -> :sswitch_14
        0x80 -> :sswitch_11
        0x100 -> :sswitch_e
        0x200 -> :sswitch_b
        0x400 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method greylist-max-o appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 950
    const-string v0, " [ ClassName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 952
    const-string v0, "Text"

    invoke-direct {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 954
    const-string v0, "ContentDescription"

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 955
    const-string v0, "ItemCount"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 956
    const-string v0, "CurrentItemIndex"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 958
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 959
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 960
    invoke-direct {p0, v2, v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 961
    const/16 v0, 0x80

    invoke-direct {p0, v2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 962
    const/16 v0, 0x100

    invoke-direct {p0, v2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 963
    const/16 v0, 0x200

    invoke-direct {p0, v2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 964
    const/16 v0, 0x400

    invoke-direct {p0, v2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 966
    const-string v0, "BeforeText"

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 967
    const-string v0, "FromIndex"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 968
    const-string v0, "ToIndex"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 969
    const-string v0, "ScrollX"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 970
    const-string v0, "ScrollY"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 971
    const-string v0, "MaxScrollX"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 972
    const-string v0, "MaxScrollY"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 973
    const-string v0, "ScrollDeltaX"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 974
    const-string v0, "ScrollDeltaY"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 975
    const-string v0, "AddedCount"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 976
    const-string v0, "RemovedCount"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 977
    const-string v0, "ParcelableData"

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 978
    const-string v0, "DisplayId"

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 979
    const-string v0, " ]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    return-object p1
.end method

.method greylist-max-o clear()V
    .registers 5

    .line 919
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 920
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 921
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 922
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 923
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 924
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 925
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 926
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 927
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 928
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 929
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 930
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 931
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 932
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 933
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 934
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 935
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 936
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 937
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 938
    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 939
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 940
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    .line 941
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 942
    return-void
.end method

.method greylist-max-o enforceNotSealed()V
    .registers 3

    .line 818
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 822
    return-void

    .line 819
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o enforceSealed()V
    .registers 3

    .line 806
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 810
    return-void

    .line 807
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAddedCount()I
    .registers 2

    .line 623
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    return v0
.end method

.method public whitelist getBeforeText()Ljava/lang/CharSequence;
    .registers 2

    .line 696
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 665
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 718
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getCurrentItemIndex()I
    .registers 2

    .line 436
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    return v0
.end method

.method public whitelist getDisplayId()I
    .registers 2

    .line 233
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    return v0
.end method

.method public whitelist getFromIndex()I
    .registers 2

    .line 460
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    return v0
.end method

.method public whitelist getItemCount()I
    .registers 2

    .line 415
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    return v0
.end method

.method public whitelist getMaxScrollX()I
    .registers 2

    .line 585
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    return v0
.end method

.method public whitelist getMaxScrollY()I
    .registers 2

    .line 604
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    return v0
.end method

.method public whitelist getParcelableData()Landroid/os/Parcelable;
    .registers 2

    .line 740
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    return-object v0
.end method

.method public whitelist getRemovedCount()I
    .registers 2

    .line 644
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    return v0
.end method

.method public whitelist getScrollDeltaX()I
    .registers 2

    .line 544
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    return v0
.end method

.method public whitelist getScrollDeltaY()I
    .registers 2

    .line 565
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    return v0
.end method

.method public whitelist getScrollX()I
    .registers 2

    .line 505
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    return v0
.end method

.method public whitelist getScrollY()I
    .registers 2

    .line 524
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    return v0
.end method

.method public whitelist getSource()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 190
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getSource(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSource(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 12
    .param p1, "prefetchingStrategy"    # I

    .line 203
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceSealed()V

    .line 204
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    if-eq v0, v1, :cond_2b

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 206
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_19

    move v8, p1

    goto :goto_2c

    .line 210
    :cond_19
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    .line 211
    .local v2, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v3, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v8, p1

    .end local p1    # "prefetchingStrategy":I
    .local v8, "prefetchingStrategy":I
    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 204
    .end local v2    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local v8    # "prefetchingStrategy":I
    .restart local p1    # "prefetchingStrategy":I
    :cond_2b
    move v8, p1

    .line 208
    .end local p1    # "prefetchingStrategy":I
    .restart local v8    # "prefetchingStrategy":I
    :goto_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist getSourceNodeId()J
    .registers 3

    .line 764
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    return-wide v0
.end method

.method public whitelist getText()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 687
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getToIndex()I
    .registers 2

    .line 485
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    return v0
.end method

.method public whitelist getWindowId()I
    .registers 2

    .line 253
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    return v0
.end method

.method greylist-max-o init(Landroid/view/accessibility/AccessibilityRecord;)V
    .registers 4
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 890
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 891
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 892
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 893
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 894
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 895
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 896
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 897
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 898
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 899
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 900
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 901
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 902
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 903
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 904
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 905
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 906
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 907
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 908
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 909
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 910
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 911
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    .line 912
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 913
    return-void
.end method

.method blacklist isAccessibilityDataSensitive()Z
    .registers 2

    .line 397
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isChecked()Z
    .registers 2

    .line 262
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 283
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFullScreen()Z
    .registers 2

    .line 325
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isImportantForAccessibility()Z
    .registers 2

    .line 375
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isPassword()Z
    .registers 2

    .line 304
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isScrollable()Z
    .registers 2

    .line 346
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o isSealed()Z
    .registers 2

    .line 797
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    return v0
.end method

.method public whitelist recycle()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 882
    return-void
.end method

.method blacklist setAccessibilityDataSensitive(Z)V
    .registers 3
    .param p1, "accessibilityDataSensitive"    # Z

    .line 405
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 406
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 407
    return-void
.end method

.method public whitelist setAddedCount(I)V
    .registers 2
    .param p1, "addedCount"    # I

    .line 634
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 635
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 636
    return-void
.end method

.method public whitelist setBeforeText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "beforeText"    # Ljava/lang/CharSequence;

    .line 707
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 708
    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_10

    .line 709
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 710
    return-void
.end method

.method public whitelist setChecked(Z)V
    .registers 3
    .param p1, "isChecked"    # Z

    .line 273
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 274
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 275
    return-void
.end method

.method public whitelist setClassName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "className"    # Ljava/lang/CharSequence;

    .line 676
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 677
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 678
    return-void
.end method

.method public greylist-max-o setConnectionId(I)V
    .registers 2
    .param p1, "connectionId"    # I

    .line 776
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 777
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 778
    return-void
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 729
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 730
    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_10

    .line 731
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 732
    return-void
.end method

.method public whitelist setCurrentItemIndex(I)V
    .registers 2
    .param p1, "currentItemIndex"    # I

    .line 447
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 448
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 449
    return-void
.end method

.method public blacklist setDisplayId(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 224
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceDisplayId:I

    .line 225
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z

    .line 294
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 295
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 296
    return-void
.end method

.method public whitelist setFromIndex(I)V
    .registers 2
    .param p1, "fromIndex"    # I

    .line 474
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 475
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 476
    return-void
.end method

.method public whitelist setFullScreen(Z)V
    .registers 3
    .param p1, "isFullScreen"    # Z

    .line 336
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 337
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 338
    return-void
.end method

.method public greylist-max-o setImportantForAccessibility(Z)V
    .registers 3
    .param p1, "importantForAccessibility"    # Z

    .line 388
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 389
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 390
    return-void
.end method

.method public whitelist setItemCount(I)V
    .registers 2
    .param p1, "itemCount"    # I

    .line 426
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 427
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 428
    return-void
.end method

.method public whitelist setMaxScrollX(I)V
    .registers 2
    .param p1, "maxScrollX"    # I

    .line 594
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 595
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 596
    return-void
.end method

.method public whitelist setMaxScrollY(I)V
    .registers 2
    .param p1, "maxScrollY"    # I

    .line 613
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 614
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 615
    return-void
.end method

.method public whitelist setParcelableData(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "parcelableData"    # Landroid/os/Parcelable;

    .line 751
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 752
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 753
    return-void
.end method

.method public whitelist setPassword(Z)V
    .registers 3
    .param p1, "isPassword"    # Z

    .line 315
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 316
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 317
    return-void
.end method

.method public whitelist setRemovedCount(I)V
    .registers 2
    .param p1, "removedCount"    # I

    .line 655
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 656
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 657
    return-void
.end method

.method public whitelist setScrollDeltaX(I)V
    .registers 2
    .param p1, "scrollDeltaX"    # I

    .line 554
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 555
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 556
    return-void
.end method

.method public whitelist setScrollDeltaY(I)V
    .registers 2
    .param p1, "scrollDeltaY"    # I

    .line 575
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 576
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 577
    return-void
.end method

.method public whitelist setScrollX(I)V
    .registers 2
    .param p1, "scrollX"    # I

    .line 514
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 515
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 516
    return-void
.end method

.method public whitelist setScrollY(I)V
    .registers 2
    .param p1, "scrollY"    # I

    .line 533
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 534
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 535
    return-void
.end method

.method public whitelist setScrollable(Z)V
    .registers 3
    .param p1, "scrollable"    # Z

    .line 357
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 358
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 359
    return-void
.end method

.method public greylist-max-o setSealed(Z)V
    .registers 2
    .param p1, "sealed"    # Z

    .line 788
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 789
    return-void
.end method

.method public whitelist setSource(Landroid/view/View;)V
    .registers 3
    .param p1, "source"    # Landroid/view/View;

    .line 137
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 138
    return-void
.end method

.method public whitelist setSource(Landroid/view/View;I)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 155
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 156
    const/4 v0, 0x1

    .line 157
    .local v0, "important":Z
    const v1, 0x7fffffff

    .line 158
    .local v1, "rootViewId":I
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 159
    if-eqz p1, :cond_24

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v1

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v2

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 163
    nop

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityDataSensitive()Z

    move-result v2

    .line 163
    const/16 v3, 0x400

    invoke-direct {p0, v3, v2}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 166
    :cond_24
    const/16 v2, 0x200

    invoke-direct {p0, v2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 167
    invoke-static {v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 168
    return-void
.end method

.method public greylist-max-o setSourceNodeId(J)V
    .registers 3
    .param p1, "sourceNodeId"    # J

    .line 177
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 178
    return-void
.end method

.method public whitelist setToIndex(I)V
    .registers 2
    .param p1, "toIndex"    # I

    .line 495
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 496
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 497
    return-void
.end method

.method public greylist-max-o setWindowId(I)V
    .registers 2
    .param p1, "windowId"    # I

    .line 244
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 245
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
