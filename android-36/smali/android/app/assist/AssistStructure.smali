.class public Landroid/app/assist/AssistStructure;
.super Ljava/lang/Object;
.source "AssistStructure.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/assist/AssistStructure$WindowNode;,
        Landroid/app/assist/AssistStructure$ViewNode;,
        Landroid/app/assist/AssistStructure$ParcelTransferReader;,
        Landroid/app/assist/AssistStructure$SendChannel;,
        Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;,
        Landroid/app/assist/AssistStructure$HtmlInfoNode;,
        Landroid/app/assist/AssistStructure$ViewNodeBuilder;,
        Landroid/app/assist/AssistStructure$AutofillOverlay;,
        Landroid/app/assist/AssistStructure$ViewNodeParcelable;,
        Landroid/app/assist/AssistStructure$ViewNodeText;,
        Landroid/app/assist/AssistStructure$ParcelTransferWriter;,
        Landroid/app/assist/AssistStructure$ViewStackEntry;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/assist/AssistStructure;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG_PARCEL:Z = false

.field private static final greylist-max-o DEBUG_PARCEL_CHILDREN:Z = false

.field private static final greylist-max-o DEBUG_PARCEL_TREE:Z = false

.field private static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.AssistStructure"

.field private static final blacklist INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AssistStructure"

.field private static final greylist-max-o TRANSACTION_XFER:I = 0x2

.field private static final greylist-max-o VALIDATE_VIEW_TOKEN:I = 0x22222222

.field private static final greylist-max-o VALIDATE_WINDOW_TOKEN:I = 0x11111111


# instance fields
.field private greylist-max-o mAcquisitionEndTime:J

.field private greylist-max-o mAcquisitionStartTime:J

.field private greylist-max-o mActivityComponent:Landroid/content/ComponentName;

.field private blacklist mAutofillFlags:I

.field private greylist-max-o mFlags:I

.field private greylist-max-o mHaveData:Z

.field private greylist-max-o mIsHomeActivity:Z

.field private final greylist-max-o mPendingAsyncChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/assist/AssistStructure$ViewNodeBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReceiveChannel:Landroid/os/IBinder;

.field private greylist-max-o mSanitizeOnWrite:Z

.field private greylist-max-o mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

.field private blacklist mTaskId:I

.field private greylist-max-o mTmpRect:Landroid/graphics/Rect;

.field private final greylist-max-o mWindowNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/assist/AssistStructure$WindowNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAcquisitionEndTime(Landroid/app/assist/AssistStructure;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/assist/AssistStructure;->mAcquisitionEndTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAcquisitionStartTime(Landroid/app/assist/AssistStructure;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/assist/AssistStructure;->mAcquisitionStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutofillFlags(Landroid/app/assist/AssistStructure;)I
    .registers 1

    iget p0, p0, Landroid/app/assist/AssistStructure;->mAutofillFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/app/assist/AssistStructure;)I
    .registers 1

    iget p0, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingAsyncChildren(Landroid/app/assist/AssistStructure;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSanitizeOnWrite(Landroid/app/assist/AssistStructure;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTmpRect(Landroid/app/assist/AssistStructure;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowNodes(Landroid/app/assist/AssistStructure;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAcquisitionEndTime(Landroid/app/assist/AssistStructure;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/assist/AssistStructure;->mAcquisitionEndTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAcquisitionStartTime(Landroid/app/assist/AssistStructure;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/assist/AssistStructure;->mAcquisitionStartTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutofillFlags(Landroid/app/assist/AssistStructure;I)V
    .registers 2

    iput p1, p0, Landroid/app/assist/AssistStructure;->mAutofillFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/app/assist/AssistStructure;I)V
    .registers 2

    iput p1, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2825
    new-instance v0, Landroid/app/assist/AssistStructure$1;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$1;-><init>()V

    sput-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2838
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    .line 2840
    sget-object v0, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EmailSubject"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2841
    sget-object v0, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PostalAddress"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2842
    sget-object v0, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PersonName"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2843
    sget-object v0, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Password"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2844
    sget-object v0, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VisiblePassword"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2845
    sget-object v0, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "URI"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2846
    sget-object v0, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    const/16 v1, 0xd0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WebEmailAddress"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2847
    sget-object v0, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WebPassword"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2848
    sget-object v0, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LongMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2849
    sget-object v0, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ShortMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    sget-object v0, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MultiLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2851
    sget-object v0, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    const/high16 v1, 0x40000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ImeMultiLine"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2852
    sget-object v0, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    const/16 v1, 0xb0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Filter"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2853
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 2525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    .line 2526
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    .line 2527
    iput v0, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    .line 2528
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/Activity;ZI)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "forAutoFill"    # Z
    .param p3, "flags"    # I

    .line 2510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    .line 2511
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    .line 2512
    iput p3, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    .line 2513
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    .line 2514
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2513
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2515
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_69

    .line 2516
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 2517
    .local v2, "root":Landroid/view/ViewRootImpl;
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5c

    .line 2518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping window with dettached view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AssistStructure"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    goto :goto_66

    .line 2521
    :cond_5c
    iget-object v3, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    new-instance v4, Landroid/app/assist/AssistStructure$WindowNode;

    invoke-direct {v4, p0, v2, p2, p3}, Landroid/app/assist/AssistStructure$WindowNode;-><init>(Landroid/app/assist/AssistStructure;Landroid/view/ViewRootImpl;ZI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2515
    .end local v2    # "root":Landroid/view/ViewRootImpl;
    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 2523
    .end local v1    # "i":I
    :cond_69
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    .line 2532
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure;->mTaskId:I

    .line 2533
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    .line 2534
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    move v0, v2

    :cond_2f
    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mIsHomeActivity:Z

    .line 2535
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    .line 2536
    return-void
.end method

.method private static blacklist getInputTypeString(I)Ljava/lang/String;
    .registers 7
    .param p0, "inputType"    # I

    .line 2856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2857
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2858
    const-string v1, "(class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p0, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2859
    sget-object v1, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2860
    .local v2, "variation":I
    and-int v3, v2, p0

    if-ne v3, v2, :cond_4c

    .line 2861
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/assist/AssistStructure;->INPUT_TYPE_VARIATIONS:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2863
    .end local v2    # "variation":I
    :cond_4c
    goto :goto_23

    .line 2864
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public greylist-max-o clearSendChannel()V
    .registers 3

    .line 2797
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    if-eqz v0, :cond_9

    .line 2798
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/assist/AssistStructure$SendChannel;->mAssistStructure:Landroid/app/assist/AssistStructure;

    .line 2800
    :cond_9
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2804
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o dump(Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;Z)V
    .registers 27
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "node"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p3, "showSensitive"    # Z

    .line 2570
    move-object/from16 v0, p1

    move/from16 v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "View ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTop()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2571
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2570
    const-string v5, "AssistStructure"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getId()I

    move-result v2

    .line 2573
    .local v2, "id":I
    if-eqz v2, :cond_a2

    .line 2574
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2575
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  ID: #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object v7

    .line 2577
    .local v7, "entry":Ljava/lang/String;
    if-eqz v7, :cond_9b

    .line 2578
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getIdType()Ljava/lang/String;

    move-result-object v8

    .line 2579
    .local v8, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getIdPackage()Ljava/lang/String;

    move-result-object v9

    .line 2580
    .local v9, "pkg":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_9b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "entry":Ljava/lang/String;
    :cond_a2
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getScrollX()I

    move-result v4

    .line 2586
    .local v4, "scrollX":I
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getScrollY()I

    move-result v6

    .line 2587
    .local v6, "scrollY":I
    if-nez v4, :cond_ae

    if-eqz v6, :cond_d0

    .line 2588
    :cond_ae
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Scroll: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    :cond_d0
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTransformation()Landroid/graphics/Matrix;

    move-result-object v3

    .line 2591
    .local v3, "matrix":Landroid/graphics/Matrix;
    if-eqz v3, :cond_f0

    .line 2592
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Transformation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    :cond_f0
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getElevation()F

    move-result v7

    .line 2595
    .local v7, "elevation":F
    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-eqz v9, :cond_113

    .line 2596
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  Elevation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    :cond_113
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAlpha()F

    move-result v9

    .line 2599
    .local v9, "alpha":F
    cmpl-float v8, v9, v8

    if-eqz v8, :cond_135

    .line 2600
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "  Alpha: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    :cond_135
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    .line 2603
    .local v8, "contentDescription":Ljava/lang/CharSequence;
    if-eqz v8, :cond_155

    .line 2604
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  Content description: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    :cond_155
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    .line 2607
    .local v10, "text":Ljava/lang/CharSequence;
    const-string v11, "  Resource id: "

    if-eqz v10, :cond_25d

    .line 2608
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->isSanitized()Z

    move-result v12

    if-nez v12, :cond_184

    if-eqz v1, :cond_166

    goto :goto_184

    .line 2609
    :cond_166
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "REDACTED["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " chars]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_188

    .line 2608
    :cond_184
    :goto_184
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2609
    :goto_188
    nop

    .line 2610
    .local v12, "safeText":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  Text (sel "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextSelectionStart()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2611
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextSelectionEnd()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2610
    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  Text size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextSize()F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , style: #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2613
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextStyle()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2612
    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  Text color fg: #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextColor()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", bg: #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2615
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextBackgroundColor()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2614
    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  Input type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getInputType()I

    move-result v14

    invoke-static {v14}, Landroid/app/assist/AssistStructure;->getInputTypeString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getTextIdEntry()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    .end local v12    # "safeText":Ljava/lang/String;
    :cond_25d
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v12

    .line 2620
    .local v12, "webDomain":Ljava/lang/String;
    if-eqz v12, :cond_27d

    .line 2621
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  Web domain: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    :cond_27d
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getHtmlInfo()Landroid/view/ViewStructure$HtmlInfo;

    move-result-object v13

    .line 2624
    .local v13, "htmlInfo":Landroid/view/ViewStructure$HtmlInfo;
    if-eqz v13, :cond_2af

    .line 2625
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  HtmlInfo: tag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Landroid/view/ViewStructure$HtmlInfo;->getTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", attr="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2626
    invoke-virtual {v13}, Landroid/view/ViewStructure$HtmlInfo;->getAttributes()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2625
    invoke-static {v5, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :cond_2af
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v14

    .line 2630
    .local v14, "localeList":Landroid/os/LocaleList;
    if-eqz v14, :cond_2d2

    .line 2631
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v2

    .end local v2    # "id":I
    .local v16, "id":I
    const-string v2, "  LocaleList: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d4

    .line 2630
    .end local v16    # "id":I
    .restart local v2    # "id":I
    :cond_2d2
    move/from16 v16, v2

    .line 2633
    .end local v2    # "id":I
    .restart local v16    # "id":I
    :goto_2d4
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getReceiveContentMimeTypes()[Ljava/lang/String;

    move-result-object v2

    .line 2634
    .local v2, "mimeTypes":[Ljava/lang/String;
    if-eqz v2, :cond_2fb

    .line 2635
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v17, v2

    .end local v2    # "mimeTypes":[Ljava/lang/String;
    .local v17, "mimeTypes":[Ljava/lang/String;
    const-string v2, "  MIME types: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2fd

    .line 2634
    .end local v17    # "mimeTypes":[Ljava/lang/String;
    .restart local v2    # "mimeTypes":[Ljava/lang/String;
    :cond_2fb
    move-object/from16 v17, v2

    .line 2637
    .end local v2    # "mimeTypes":[Ljava/lang/String;
    .restart local v17    # "mimeTypes":[Ljava/lang/String;
    :goto_2fd
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getHint()Ljava/lang/String;

    move-result-object v2

    .line 2638
    .local v2, "hint":Ljava/lang/String;
    if-eqz v2, :cond_33c

    .line 2639
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v18, v3

    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .local v18, "matrix":Landroid/graphics/Matrix;
    const-string v3, "  Hint: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getHintIdEntry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33e

    .line 2638
    .end local v18    # "matrix":Landroid/graphics/Matrix;
    .restart local v3    # "matrix":Landroid/graphics/Matrix;
    :cond_33c
    move-object/from16 v18, v3

    .line 2642
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .restart local v18    # "matrix":Landroid/graphics/Matrix;
    :goto_33e
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2643
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_35e

    .line 2644
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "  Extras: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    :cond_35e
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->isAssistBlocked()Z

    move-result v11

    if-eqz v11, :cond_37a

    .line 2647
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "  BLOCKED"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    :cond_37a
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v11

    .line 2650
    .local v11, "autofillId":Landroid/view/autofill/AutofillId;
    if-nez v11, :cond_39a

    .line 2651
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v19, v2

    .end local v2    # "hint":Ljava/lang/String;
    .local v19, "hint":Ljava/lang/String;
    const-string v2, " No autofill ID"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42e

    .line 2653
    .end local v19    # "hint":Ljava/lang/String;
    .restart local v2    # "hint":Ljava/lang/String;
    :cond_39a
    move-object/from16 v19, v2

    .end local v2    # "hint":Ljava/lang/String;
    .restart local v19    # "hint":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "  Autofill info: id= "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", type="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2654
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillType()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", options="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2655
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", hints="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2656
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillHints()[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", value="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2657
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", sanitized="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2658
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->isSanitized()Z

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", important="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2659
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getImportantForAutofill()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", visibility="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2660
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getVisibility()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", isCredential="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2661
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->isCredential()Z

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2653
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    :goto_42e
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getPendingCredentialRequest()Landroid/credentials/GetCredentialRequest;

    move-result-object v2

    .line 2665
    .local v2, "getCredentialRequest":Landroid/credentials/GetCredentialRequest;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v20, v2

    .end local v2    # "getCredentialRequest":Landroid/credentials/GetCredentialRequest;
    .local v20, "getCredentialRequest":Landroid/credentials/GetCredentialRequest;
    const-string v2, "  Credential Manager info: hasCredentialManagerRequest="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v20, :cond_447

    const/4 v15, 0x1

    goto :goto_448

    :cond_447
    const/4 v15, 0x0

    :goto_448
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2667
    if-eqz v20, :cond_46c

    .line 2668
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    .end local v3    # "extras":Landroid/os/Bundle;
    .local v21, "extras":Landroid/os/Bundle;
    const-string v3, ", sizeOfOptions="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_470

    .line 2669
    .end local v21    # "extras":Landroid/os/Bundle;
    .restart local v3    # "extras":Landroid/os/Bundle;
    :cond_46c
    move-object/from16 v21, v3

    .end local v3    # "extras":Landroid/os/Bundle;
    .restart local v21    # "extras":Landroid/os/Bundle;
    const-string v3, ""

    :goto_470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2665
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    invoke-virtual/range {p2 .. p2}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v2

    .line 2673
    .local v2, "NCHILDREN":I
    if-lez v2, :cond_4c8

    .line 2674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "  Children:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "    "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2676
    .local v3, "cprefix":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4ab
    if-ge v5, v2, :cond_4c1

    .line 2677
    move-object/from16 v15, p2

    invoke-virtual {v15, v5}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    .line 2678
    .local v0, "cnode":Landroid/app/assist/AssistStructure$ViewNode;
    move/from16 v22, v2

    move-object/from16 v2, p0

    .end local v2    # "NCHILDREN":I
    .local v22, "NCHILDREN":I
    invoke-virtual {v2, v3, v0, v1}, Landroid/app/assist/AssistStructure;->dump(Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    .line 2676
    .end local v0    # "cnode":Landroid/app/assist/AssistStructure$ViewNode;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v22

    goto :goto_4ab

    .end local v22    # "NCHILDREN":I
    .restart local v2    # "NCHILDREN":I
    :cond_4c1
    move-object/from16 v15, p2

    move/from16 v22, v2

    move-object/from16 v2, p0

    .end local v2    # "NCHILDREN":I
    .restart local v22    # "NCHILDREN":I
    goto :goto_4ce

    .line 2673
    .end local v3    # "cprefix":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v22    # "NCHILDREN":I
    .restart local v2    # "NCHILDREN":I
    :cond_4c8
    move-object/from16 v15, p2

    move/from16 v22, v2

    move-object/from16 v2, p0

    .line 2681
    .end local v2    # "NCHILDREN":I
    .restart local v22    # "NCHILDREN":I
    :goto_4ce
    return-void
.end method

.method public greylist-max-o dump(Z)V
    .registers 8
    .param p1, "showSensitive"    # Z

    .line 2550
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    const-string v1, "AssistStructure"

    if-nez v0, :cond_e

    .line 2551
    const-string v0, "dump(): calling ensureData() first"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    .line 2554
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/app/assist/AssistStructure;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_3c

    .line 2556
    iget-object v2, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    .line 2557
    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2555
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sanitize on write: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flags: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v0

    .line 2561
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7d
    if-ge v2, v0, :cond_ec

    .line 2562
    invoke-virtual {p0, v2}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v3

    .line 2563
    .local v3, "node":Landroid/app/assist/AssistStructure$WindowNode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getLeft()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2564
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2563
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    const-string v4, "  "

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p1}, Landroid/app/assist/AssistStructure;->dump(Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    .line 2561
    .end local v3    # "node":Landroid/app/assist/AssistStructure$WindowNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 2567
    .end local v2    # "i":I
    :cond_ec
    return-void
.end method

.method public greylist-max-o ensureData()V
    .registers 3

    .line 2766
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    if-eqz v0, :cond_5

    .line 2767
    return-void

    .line 2769
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    .line 2770
    new-instance v0, Landroid/app/assist/AssistStructure$ParcelTransferReader;

    iget-object v1, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-direct {v0, p0, v1}, Landroid/app/assist/AssistStructure$ParcelTransferReader;-><init>(Landroid/app/assist/AssistStructure;Landroid/os/IBinder;)V

    .line 2771
    .local v0, "reader":Landroid/app/assist/AssistStructure$ParcelTransferReader;
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->go()V

    .line 2772
    return-void
.end method

.method public greylist-max-o ensureDataForAutofill()V
    .registers 3

    .line 2751
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    if-eqz v0, :cond_5

    .line 2752
    return-void

    .line 2754
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    .line 2755
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2757
    :try_start_d
    new-instance v0, Landroid/app/assist/AssistStructure$ParcelTransferReader;

    iget-object v1, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-direct {v0, p0, v1}, Landroid/app/assist/AssistStructure$ParcelTransferReader;-><init>(Landroid/app/assist/AssistStructure;Landroid/os/IBinder;)V

    .line 2758
    .local v0, "reader":Landroid/app/assist/AssistStructure$ParcelTransferReader;
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->go()V
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1e

    .line 2760
    .end local v0    # "reader":Landroid/app/assist/AssistStructure$ParcelTransferReader;
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Binder;->defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2761
    nop

    .line 2762
    return-void

    .line 2760
    :catchall_1e
    move-exception v0

    iget-object v1, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/os/Binder;->defaultBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2761
    throw v0
.end method

.method public whitelist getAcquisitionEndTime()J
    .registers 3

    .line 155
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    .line 156
    iget-wide v0, p0, Landroid/app/assist/AssistStructure;->mAcquisitionEndTime:J

    return-wide v0
.end method

.method public whitelist getAcquisitionStartTime()J
    .registers 3

    .line 143
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    .line 144
    iget-wide v0, p0, Landroid/app/assist/AssistStructure;->mAcquisitionStartTime:J

    return-wide v0
.end method

.method public whitelist getActivityComponent()Landroid/content/ComponentName;
    .registers 2

    .line 2713
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public greylist-max-o getFlags()I
    .registers 2

    .line 2718
    iget v0, p0, Landroid/app/assist/AssistStructure;->mFlags:I

    return v0
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 2698
    iget v0, p0, Landroid/app/assist/AssistStructure;->mTaskId:I

    return v0
.end method

.method public whitelist getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;
    .registers 3
    .param p1, "index"    # I

    .line 2744
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    .line 2745
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure$WindowNode;

    return-object v0
.end method

.method public whitelist getWindowNodeCount()I
    .registers 2

    .line 2735
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->ensureData()V

    .line 2736
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist isHomeActivity()Z
    .registers 2

    .line 2728
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mIsHomeActivity:Z

    return v0
.end method

.method public greylist-max-o sanitizeForParceling(Z)V
    .registers 2
    .param p1, "sanitize"    # Z

    .line 2545
    iput-boolean p1, p0, Landroid/app/assist/AssistStructure;->mSanitizeOnWrite:Z

    .line 2546
    return-void
.end method

.method public greylist-max-o setAcquisitionEndTime(J)V
    .registers 3
    .param p1, "acquisitionEndTime"    # J

    .line 124
    iput-wide p1, p0, Landroid/app/assist/AssistStructure;->mAcquisitionEndTime:J

    .line 125
    return-void
.end method

.method public greylist-max-o setAcquisitionStartTime(J)V
    .registers 3
    .param p1, "acquisitionStartTime"    # J

    .line 119
    iput-wide p1, p0, Landroid/app/assist/AssistStructure;->mAcquisitionStartTime:J

    .line 120
    return-void
.end method

.method public greylist-max-o setActivityComponent(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 2706
    iput-object p1, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    .line 2707
    return-void
.end method

.method public greylist-max-o setHomeActivity(Z)V
    .registers 2
    .param p1, "isHomeActivity"    # Z

    .line 132
    iput-boolean p1, p0, Landroid/app/assist/AssistStructure;->mIsHomeActivity:Z

    .line 133
    return-void
.end method

.method public blacklist setTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 2689
    iput p1, p0, Landroid/app/assist/AssistStructure;->mTaskId:I

    .line 2690
    return-void
.end method

.method greylist-max-o waitForReady()Z
    .registers 8

    .line 2775
    const/4 v0, 0x0

    .line 2776
    .local v0, "skipStructure":Z
    monitor-enter p0

    .line 2777
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    .line 2779
    .local v1, "endTime":J
    :goto_9
    iget-object v3, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_22

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_53

    move-wide v5, v3

    .local v5, "now":J
    cmp-long v3, v3, v1

    if-gez v3, :cond_22

    .line 2781
    sub-long v3, v1, v5

    :try_start_1c
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_20
    .catchall {:try_start_1c .. :try_end_1f} :catchall_53

    .line 2783
    :goto_1f
    goto :goto_9

    .line 2782
    :catch_20
    move-exception v3

    goto :goto_1f

    .line 2785
    .end local v5    # "now":J
    :cond_22
    :try_start_22
    iget-object v3, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4f

    .line 2787
    const-string v3, "AssistStructure"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping assist structure, waiting too long for async children (have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    .line 2788
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " remaining"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2787
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    const/4 v0, 0x1

    .line 2791
    .end local v1    # "endTime":J
    :cond_4f
    monitor-exit p0

    .line 2792
    xor-int/lit8 v1, v0, 0x1

    return v1

    .line 2791
    :catchall_53
    move-exception v1

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_22 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2809
    iget v0, p0, Landroid/app/assist/AssistStructure;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2810
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 2811
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mIsHomeActivity:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2812
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure;->mHaveData:Z

    if-eqz v0, :cond_24

    .line 2815
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    if-nez v0, :cond_1e

    .line 2816
    new-instance v0, Landroid/app/assist/AssistStructure$SendChannel;

    invoke-direct {v0, p0}, Landroid/app/assist/AssistStructure$SendChannel;-><init>(Landroid/app/assist/AssistStructure;)V

    iput-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    .line 2818
    :cond_1e
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mSendChannel:Landroid/app/assist/AssistStructure$SendChannel;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_29

    .line 2821
    :cond_24
    iget-object v0, p0, Landroid/app/assist/AssistStructure;->mReceiveChannel:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2823
    :goto_29
    return-void
.end method
