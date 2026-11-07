.class public Landroid/widget/QuickContactBadge;
.super Landroid/widget/ImageView;
.source "QuickContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/QuickContactBadge$QueryHandler;
    }
.end annotation


# static fields
.field static final greylist-max-o EMAIL_ID_COLUMN_INDEX:I = 0x0

.field static final greylist-max-o EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

.field static final greylist-max-o EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final greylist-max-o EXTRA_URI_CONTENT:Ljava/lang/String; = "uri_content"

.field static final greylist-max-o PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final greylist-max-o PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field static final greylist-max-o PHONE_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final greylist-max-o TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final greylist-max-o TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final greylist-max-o TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final greylist-max-o TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3


# instance fields
.field private greylist-max-o mContactEmail:Ljava/lang/String;

.field private greylist-max-o mContactPhone:Ljava/lang/String;

.field private greylist-max-o mContactUri:Landroid/net/Uri;

.field private greylist-max-o mDefaultAvatar:Landroid/graphics/drawable/Drawable;

.field protected whitelist mExcludeMimes:[Ljava/lang/String;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist mOverlay:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mPrioritizedMimeType:Ljava/lang/String;

.field private greylist-max-o mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContactUri(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrioritizedMimeType(Landroid/widget/QuickContactBadge;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/widget/QuickContactBadge;->mPrioritizedMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContactUri(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monContactUriChanged(Landroid/widget/QuickContactBadge;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 66
    const-string v0, "contact_id"

    const-string v1, "lookup"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 73
    const-string v0, "_id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 90
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mExtras:Landroid/os/Bundle;

    .line 57
    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 96
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/16 v1, 0x153

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    invoke-virtual {p0, p0}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method private greylist-max-o isAssigned()Z
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private greylist-max-o onContactUriChanged()V
    .registers 2

    .line 297
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->isAssigned()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->setEnabled(Z)V

    .line 298
    return-void
.end method


# virtual methods
.method public whitelist assignContactFromEmail(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 217
    return-void
.end method

.method public whitelist assignContactFromEmail(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 13
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 234
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 235
    iput-object p3, p0, Landroid/widget/QuickContactBadge;->mExtras:Landroid/os/Bundle;

    .line 236
    if-nez p2, :cond_23

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    if-eqz v0, :cond_23

    .line 237
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 238
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 237
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 241
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 242
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    .line 244
    :goto_29
    return-void
.end method

.method public whitelist assignContactFromPhone(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 258
    return-void
.end method

.method public whitelist assignContactFromPhone(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 13
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 274
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 275
    iput-object p3, p0, Landroid/widget/QuickContactBadge;->mExtras:Landroid/os/Bundle;

    .line 276
    if-nez p2, :cond_1f

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    if-eqz v0, :cond_1f

    .line 277
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 278
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 277
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 281
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 282
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    .line 284
    :goto_25
    return-void
.end method

.method public whitelist assignContactUri(Landroid/net/Uri;)V
    .registers 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .line 200
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 202
    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    .line 204
    return-void
.end method

.method public whitelist drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 126
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->drawableHotspotChanged(FF)V

    .line 128
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 129
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 131
    :cond_c
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 3

    .line 115
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 117
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 118
    .local v0, "overlay":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 119
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 120
    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_1a
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 327
    const-class v0, Landroid/widget/QuickContactBadge;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 3

    .line 106
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 108
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_16

    .line 109
    new-instance v0, Landroid/widget/QuickContactBadge$QueryHandler;

    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/QuickContactBadge$QueryHandler;-><init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    .line 111
    :cond_16
    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .line 305
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_c

    :cond_a
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mExtras:Landroid/os/Bundle;

    :goto_c
    move-object v3, v0

    .line 306
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1f

    .line 307
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/QuickContactBadge;->mPrioritizedMimeType:Ljava/lang/String;

    invoke-static {v0, p0, v1, v2, v4}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 309
    :cond_1f
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    const-string/jumbo v1, "uri_content"

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    if-eqz v0, :cond_47

    .line 310
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 312
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 311
    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 314
    :cond_47
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_68

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    if-eqz v0, :cond_68

    .line 315
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 317
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 316
    const/4 v2, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_67
    return-void

    .line 321
    :cond_68
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 149
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 153
    return-void

    .line 156
    :cond_a
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_54

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 157
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_54

    .line 162
    :cond_1f
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    iget v0, p0, Landroid/widget/QuickContactBadge;->mPaddingTop:I

    if-nez v0, :cond_3b

    iget v0, p0, Landroid/widget/QuickContactBadge;->mPaddingLeft:I

    if-nez v0, :cond_3b

    .line 165
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_53

    .line 167
    :cond_3b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 168
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 169
    iget v1, p0, Landroid/widget/QuickContactBadge;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/QuickContactBadge;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 171
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 173
    .end local v0    # "saveCount":I
    :goto_53
    return-void

    .line 159
    :cond_54
    :goto_54
    return-void
.end method

.method public whitelist setExcludeMimes([Ljava/lang/String;)V
    .registers 2
    .param p1, "excludeMimes"    # [Ljava/lang/String;

    .line 336
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 337
    return-void
.end method

.method public whitelist setImageToDefault()V
    .registers 3

    .line 184
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_f

    .line 185
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    const v1, 0x10803fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    .line 187
    :cond_f
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    return-void
.end method

.method public whitelist setMode(I)V
    .registers 2
    .param p1, "size"    # I

    .line 136
    return-void
.end method

.method public whitelist setOverlay(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "overlay"    # Landroid/graphics/drawable/Drawable;

    .line 293
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 294
    return-void
.end method

.method public whitelist setPrioritizedMimeType(Ljava/lang/String;)V
    .registers 2
    .param p1, "prioritizedMimeType"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mPrioritizedMimeType:Ljava/lang/String;

    .line 145
    return-void
.end method
