.class public final Landroid/view/ContentInfo$Builder;
.super Ljava/lang/Object;
.source "ContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ContentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mClip:Landroid/content/ClipData;

.field private blacklist mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mFlags:I

.field private blacklist mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

.field private blacklist mLinkUri:Landroid/net/Uri;

.field private blacklist mSource:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClip(Landroid/view/ContentInfo$Builder;)Landroid/content/ClipData;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mClip:Landroid/content/ClipData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDragAndDropPermissions(Landroid/view/ContentInfo$Builder;)Landroid/view/DragAndDropPermissions;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/view/ContentInfo$Builder;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/view/ContentInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/ContentInfo$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputContentInfo(Landroid/view/ContentInfo$Builder;)Landroid/view/inputmethod/InputContentInfo;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkUri(Landroid/view/ContentInfo$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mLinkUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSource(Landroid/view/ContentInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/ContentInfo$Builder;->mSource:I

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/ClipData;I)V
    .registers 3
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "source"    # I

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mClip:Landroid/content/ClipData;

    .line 328
    iput p2, p0, Landroid/view/ContentInfo$Builder;->mSource:I

    .line 329
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ContentInfo;)V
    .registers 3
    .param p1, "other"    # Landroid/view/ContentInfo;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmClip(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mClip:Landroid/content/ClipData;

    .line 313
    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmSource(Landroid/view/ContentInfo;)I

    move-result v0

    iput v0, p0, Landroid/view/ContentInfo$Builder;->mSource:I

    .line 314
    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmFlags(Landroid/view/ContentInfo;)I

    move-result v0

    iput v0, p0, Landroid/view/ContentInfo$Builder;->mFlags:I

    .line 315
    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmLinkUri(Landroid/view/ContentInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mLinkUri:Landroid/net/Uri;

    .line 316
    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmExtras(Landroid/view/ContentInfo;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mExtras:Landroid/os/Bundle;

    .line 317
    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmInputContentInfo(Landroid/view/ContentInfo;)Landroid/view/inputmethod/InputContentInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    .line 318
    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmDragAndDropPermissions(Landroid/view/ContentInfo;)Landroid/view/DragAndDropPermissions;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    .line 319
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/ContentInfo;
    .registers 3

    .line 422
    new-instance v0, Landroid/view/ContentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ContentInfo;-><init>(Landroid/view/ContentInfo$Builder;Landroid/view/ContentInfo-IA;)V

    return-object v0
.end method

.method public whitelist setClip(Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;
    .registers 2
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 338
    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mClip:Landroid/content/ClipData;

    .line 339
    return-object p0
.end method

.method public blacklist setDragAndDropPermissions(Landroid/view/DragAndDropPermissions;)Landroid/view/ContentInfo$Builder;
    .registers 2
    .param p1, "permissions"    # Landroid/view/DragAndDropPermissions;

    .line 412
    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    .line 413
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/ContentInfo$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 384
    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mExtras:Landroid/os/Bundle;

    .line 385
    return-object p0
.end method

.method public whitelist setFlags(I)Landroid/view/ContentInfo$Builder;
    .registers 2
    .param p1, "flags"    # I

    .line 361
    iput p1, p0, Landroid/view/ContentInfo$Builder;->mFlags:I

    .line 362
    return-object p0
.end method

.method public blacklist setInputContentInfo(Landroid/view/inputmethod/InputContentInfo;)Landroid/view/ContentInfo$Builder;
    .registers 2
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;

    .line 398
    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    .line 399
    return-object p0
.end method

.method public whitelist setLinkUri(Landroid/net/Uri;)Landroid/view/ContentInfo$Builder;
    .registers 2
    .param p1, "linkUri"    # Landroid/net/Uri;

    .line 373
    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mLinkUri:Landroid/net/Uri;

    .line 374
    return-object p0
.end method

.method public whitelist setSource(I)Landroid/view/ContentInfo$Builder;
    .registers 2
    .param p1, "source"    # I

    .line 349
    iput p1, p0, Landroid/view/ContentInfo$Builder;->mSource:I

    .line 350
    return-object p0
.end method
