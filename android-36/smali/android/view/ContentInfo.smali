.class public final Landroid/view/ContentInfo;
.super Ljava/lang/Object;
.source "ContentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ContentInfo$Builder;,
        Landroid/view/ContentInfo$Flags;,
        Landroid/view/ContentInfo$Source;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_CONVERT_TO_PLAIN_TEXT:I = 0x1

.field public static final whitelist SOURCE_APP:I = 0x0

.field public static final whitelist SOURCE_AUTOFILL:I = 0x4

.field public static final whitelist SOURCE_CLIPBOARD:I = 0x1

.field public static final whitelist SOURCE_DRAG_AND_DROP:I = 0x3

.field public static final whitelist SOURCE_INPUT_METHOD:I = 0x2

.field public static final whitelist SOURCE_PROCESS_TEXT:I = 0x5


# instance fields
.field private final blacklist mClip:Landroid/content/ClipData;

.field private final blacklist mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mFlags:I

.field private final blacklist mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

.field private final blacklist mLinkUri:Landroid/net/Uri;

.field private final blacklist mSource:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClip(Landroid/view/ContentInfo;)Landroid/content/ClipData;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo;->mClip:Landroid/content/ClipData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDragAndDropPermissions(Landroid/view/ContentInfo;)Landroid/view/DragAndDropPermissions;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/view/ContentInfo;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/view/ContentInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/ContentInfo;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputContentInfo(Landroid/view/ContentInfo;)Landroid/view/inputmethod/InputContentInfo;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkUri(Landroid/view/ContentInfo;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo;->mLinkUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSource(Landroid/view/ContentInfo;)I
    .registers 1

    iget p0, p0, Landroid/view/ContentInfo;->mSource:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 465
    new-instance v0, Landroid/view/ContentInfo$1;

    invoke-direct {v0}, Landroid/view/ContentInfo$1;-><init>()V

    sput-object v0, Landroid/view/ContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/ContentInfo$Builder;)V
    .registers 6
    .param p1, "b"    # Landroid/view/ContentInfo$Builder;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {p1}, Landroid/view/ContentInfo$Builder;->-$$Nest$fgetmClip(Landroid/view/ContentInfo$Builder;)Landroid/content/ClipData;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroid/view/ContentInfo;->mClip:Landroid/content/ClipData;

    .line 154
    invoke-static {p1}, Landroid/view/ContentInfo$Builder;->-$$Nest$fgetmSource(Landroid/view/ContentInfo$Builder;)I

    move-result v0

    const/4 v1, 0x5

    const-string/jumbo v2, "source"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/ContentInfo;->mSource:I

    .line 156
    invoke-static {p1}, Landroid/view/ContentInfo$Builder;->-$$Nest$fgetmFlags(Landroid/view/ContentInfo$Builder;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroid/view/ContentInfo;->mFlags:I

    .line 157
    invoke-static {p1}, Landroid/view/ContentInfo$Builder;->-$$Nest$fgetmLinkUri(Landroid/view/ContentInfo$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo;->mLinkUri:Landroid/net/Uri;

    .line 158
    invoke-static {p1}, Landroid/view/ContentInfo$Builder;->-$$Nest$fgetmExtras(Landroid/view/ContentInfo$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo;->mExtras:Landroid/os/Bundle;

    .line 159
    invoke-static {p1}, Landroid/view/ContentInfo$Builder;->-$$Nest$fgetmInputContentInfo(Landroid/view/ContentInfo$Builder;)Landroid/view/inputmethod/InputContentInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    .line 160
    invoke-static {p1}, Landroid/view/ContentInfo$Builder;->-$$Nest$fgetmDragAndDropPermissions(Landroid/view/ContentInfo$Builder;)Landroid/view/DragAndDropPermissions;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    .line 161
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/ContentInfo$Builder;Landroid/view/ContentInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ContentInfo;-><init>(Landroid/view/ContentInfo$Builder;)V

    return-void
.end method

.method static blacklist flagsToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "flags"    # I

    .line 131
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    .line 132
    const-string v0, "FLAG_CONVERT_TO_PLAIN_TEXT"

    return-object v0

    .line 134
    :cond_7
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist sourceToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "source"    # I

    .line 100
    packed-switch p0, :pswitch_data_1a

    .line 108
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :pswitch_8
    const-string v0, "SOURCE_PROCESS_TEXT"

    return-object v0

    .line 105
    :pswitch_b
    const-string v0, "SOURCE_AUTOFILL"

    return-object v0

    .line 104
    :pswitch_e
    const-string v0, "SOURCE_DRAG_AND_DROP"

    return-object v0

    .line 103
    :pswitch_11
    const-string v0, "SOURCE_INPUT_METHOD"

    return-object v0

    .line 102
    :pswitch_14
    const-string v0, "SOURCE_CLIPBOARD"

    return-object v0

    .line 101
    :pswitch_17
    const-string v0, "SOURCE_APP"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClip()Landroid/content/ClipData;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/view/ContentInfo;->mClip:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 235
    iget-object v0, p0, Landroid/view/ContentInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 213
    iget v0, p0, Landroid/view/ContentInfo;->mFlags:I

    return v0
.end method

.method public whitelist getLinkUri()Landroid/net/Uri;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/view/ContentInfo;->mLinkUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getSource()I
    .registers 2

    .line 205
    iget v0, p0, Landroid/view/ContentInfo;->mSource:I

    return v0
.end method

.method public blacklist partition(Ljava/util/function/Predicate;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/view/ContentInfo;",
            "Landroid/view/ContentInfo;",
            ">;"
        }
    .end annotation

    .line 260
    .local p1, "itemPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/ClipData$Item;>;"
    iget-object v0, p0, Landroid/view/ContentInfo;->mClip:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_23

    .line 261
    iget-object v0, p0, Landroid/view/ContentInfo;->mClip:Landroid/content/ClipData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    .line 262
    .local v0, "matched":Z
    if-eqz v0, :cond_19

    move-object v1, p0

    goto :goto_1a

    :cond_19
    move-object v1, v2

    :goto_1a
    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object v2, p0

    :goto_1e
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 264
    .end local v0    # "matched":Z
    :cond_23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v0, "acceptedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ClipData$Item;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v1, "remainingItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ClipData$Item;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    iget-object v4, p0, Landroid/view/ContentInfo;->mClip:Landroid/content/ClipData;

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_4c

    .line 267
    iget-object v4, p0, Landroid/view/ContentInfo;->mClip:Landroid/content/ClipData;

    invoke-virtual {v4, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    .line 268
    .local v4, "item":Landroid/content/ClipData$Item;
    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 269
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 271
    :cond_46
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v4    # "item":Landroid/content/ClipData$Item;
    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 274
    .end local v3    # "i":I
    :cond_4c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 275
    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 277
    :cond_57
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 278
    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    .line 280
    :cond_62
    new-instance v2, Landroid/view/ContentInfo$Builder;

    invoke-direct {v2, p0}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/view/ContentInfo;)V

    new-instance v3, Landroid/content/ClipData;

    new-instance v4, Landroid/content/ClipDescription;

    iget-object v5, p0, Landroid/view/ContentInfo;->mClip:Landroid/content/ClipData;

    .line 281
    invoke-virtual {v5}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/ClipDescription;-><init>(Landroid/content/ClipDescription;)V

    invoke-direct {v3, v4, v0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/view/ContentInfo$Builder;->setClip(Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;

    move-result-object v2

    .line 282
    invoke-virtual {v2}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v2

    .line 283
    .local v2, "accepted":Landroid/view/ContentInfo;
    new-instance v3, Landroid/view/ContentInfo$Builder;

    invoke-direct {v3, p0}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/view/ContentInfo;)V

    new-instance v4, Landroid/content/ClipData;

    new-instance v5, Landroid/content/ClipDescription;

    iget-object v6, p0, Landroid/view/ContentInfo;->mClip:Landroid/content/ClipData;

    .line 284
    invoke-virtual {v6}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/ClipDescription;-><init>(Landroid/content/ClipDescription;)V

    invoke-direct {v4, v5, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/view/ContentInfo$Builder;->setClip(Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;

    move-result-object v3

    .line 285
    invoke-virtual {v3}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v3

    .line 286
    .local v3, "remaining":Landroid/view/ContentInfo;
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method public blacklist releasePermissions()V
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/view/ContentInfo;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Landroid/view/ContentInfo;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputContentInfo;->releasePermission()V

    .line 174
    :cond_9
    iget-object v0, p0, Landroid/view/ContentInfo;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    if-eqz v0, :cond_12

    .line 175
    iget-object v0, p0, Landroid/view/ContentInfo;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    invoke-virtual {v0}, Landroid/view/DragAndDropPermissions;->release()V

    .line 177
    :cond_12
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentInfo{clip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ContentInfo;->mClip:Landroid/content/ClipData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentInfo;->mSource:I

    .line 184
    invoke-static {v1}, Landroid/view/ContentInfo;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ContentInfo;->mFlags:I

    .line 185
    invoke-static {v1}, Landroid/view/ContentInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ContentInfo;->mLinkUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ContentInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 442
    iget-object v0, p0, Landroid/view/ContentInfo;->mClip:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 443
    iget v0, p0, Landroid/view/ContentInfo;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget v0, p0, Landroid/view/ContentInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget-object v0, p0, Landroid/view/ContentInfo;->mLinkUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 446
    iget-object v0, p0, Landroid/view/ContentInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 447
    iget-object v0, p0, Landroid/view/ContentInfo;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_23

    .line 448
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 450
    :cond_23
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget-object v0, p0, Landroid/view/ContentInfo;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputContentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 453
    :goto_2b
    iget-object v0, p0, Landroid/view/ContentInfo;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    if-nez v0, :cond_33

    .line 454
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b

    .line 456
    :cond_33
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget-object v0, p0, Landroid/view/ContentInfo;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    invoke-virtual {v0, p1, p2}, Landroid/view/DragAndDropPermissions;->writeToParcel(Landroid/os/Parcel;I)V

    .line 459
    :goto_3b
    return-void
.end method
