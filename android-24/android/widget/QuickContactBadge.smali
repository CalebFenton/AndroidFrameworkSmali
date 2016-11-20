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
.field static final EMAIL_ID_COLUMN_INDEX:I = 0x0

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

.field static final EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final EXTRA_URI_CONTENT:Ljava/lang/String; = "uri_content"

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field static final PHONE_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3


# instance fields
.field private mContactEmail:Ljava/lang/String;

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field private mDefaultAvatar:Landroid/graphics/drawable/Drawable;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mPrioritizedMimeType:Ljava/lang/String;

.field private mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;


# direct methods
.method static synthetic -get0(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/QuickContactBadge;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mPrioritizedMimeType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/QuickContactBadge;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 64
    new-array v0, v4, [Ljava/lang/String;

    #@5
    .line 65
    const-string/jumbo v1, "contact_id"

    #@8
    aput-object v1, v0, v2

    #@a
    .line 66
    const-string/jumbo v1, "lookup"

    #@d
    aput-object v1, v0, v3

    #@f
    .line 64
    sput-object v0, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    #@11
    .line 71
    new-array v0, v4, [Ljava/lang/String;

    #@13
    .line 72
    const-string/jumbo v1, "_id"

    #@16
    aput-object v1, v0, v2

    #@18
    .line 73
    const-string/jumbo v1, "lookup"

    #@1b
    aput-object v1, v0, v3

    #@1d
    .line 71
    sput-object v0, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    #@1f
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 79
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 52
    iput-object v1, p0, Landroid/widget/QuickContactBadge;->mExtras:Landroid/os/Bundle;

    #@6
    .line 55
    iput-object v1, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    #@8
    .line 94
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    #@a
    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    #@c
    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@f
    move-result-object v0

    #@10
    .line 96
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/16 v1, 0x12a

    #@12
    .line 95
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    #@18
    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1b
    .line 99
    invoke-virtual {p0, p0}, Landroid/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@1e
    .line 91
    return-void
.end method

.method private isAssigned()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 175
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    #@c
    if-nez v1, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method private onContactUriChanged()V
    .locals 1

    #@0
    .prologue
    .line 295
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->isAssigned()Z

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->setEnabled(Z)V

    #@7
    .line 294
    return-void
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z

    #@0
    .prologue
    .line 214
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;ZLandroid/os/Bundle;)V

    #@4
    .line 213
    return-void
.end method

.method public assignContactFromEmail(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 8
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 232
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    #@3
    .line 233
    iput-object p3, p0, Landroid/widget/QuickContactBadge;->mExtras:Landroid/os/Bundle;

    #@5
    .line 234
    if-nez p2, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 235
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    #@d
    .line 236
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    #@f
    iget-object v3, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    #@11
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@18
    move-result-object v3

    #@19
    .line 237
    sget-object v4, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    #@1b
    .line 235
    const/4 v1, 0x0

    #@1c
    move-object v5, v2

    #@1d
    move-object v6, v2

    #@1e
    move-object v7, v2

    #@1f
    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 231
    :goto_0
    return-void

    #@23
    .line 239
    :cond_0
    iput-object v2, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    #@25
    .line 240
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    #@28
    goto :goto_0
.end method

.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z

    #@0
    .prologue
    .line 255
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;ZLandroid/os/Bundle;)V

    #@8
    .line 254
    return-void
.end method

.method public assignContactFromPhone(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 8
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 272
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    #@3
    .line 273
    iput-object p3, p0, Landroid/widget/QuickContactBadge;->mExtras:Landroid/os/Bundle;

    #@5
    .line 274
    if-nez p2, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 275
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    #@d
    .line 276
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #@f
    iget-object v3, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    #@11
    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@14
    move-result-object v3

    #@15
    .line 277
    sget-object v4, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    #@17
    .line 275
    const/4 v1, 0x1

    #@18
    move-object v5, v2

    #@19
    move-object v6, v2

    #@1a
    move-object v7, v2

    #@1b
    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 271
    :goto_0
    return-void

    #@1f
    .line 279
    :cond_0
    iput-object v2, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    #@21
    .line 280
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    #@24
    goto :goto_0
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 198
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    #@3
    .line 199
    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    #@5
    .line 200
    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    #@7
    .line 201
    invoke-direct {p0}, Landroid/widget/QuickContactBadge;->onContactUriChanged()V

    #@a
    .line 197
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->drawableHotspotChanged(FF)V

    #@3
    .line 126
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 127
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@c
    .line 123
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    #@3
    .line 115
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    #@5
    .line 116
    .local v0, "overlay":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 117
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getDrawableState()[I

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@14
    move-result v1

    #@15
    .line 116
    if-eqz v1, :cond_0

    #@17
    .line 118
    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1a
    .line 112
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 325
    const-class v0, Landroid/widget/QuickContactBadge;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    #@0
    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    #@3
    .line 106
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->isInEditMode()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 107
    new-instance v0, Landroid/widget/QuickContactBadge$QueryHandler;

    #@b
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, p0, v1}, Landroid/widget/QuickContactBadge$QueryHandler;-><init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V

    #@14
    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    #@16
    .line 103
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 303
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v0, :cond_0

    #@5
    new-instance v2, Landroid/os/Bundle;

    #@7
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@a
    .line 304
    .local v2, "extras":Landroid/os/Bundle;
    :goto_0
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 305
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    #@14
    .line 306
    iget-object v3, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    #@16
    iget-object v4, p0, Landroid/widget/QuickContactBadge;->mPrioritizedMimeType:Ljava/lang/String;

    #@18
    .line 305
    invoke-static {v0, p0, v1, v3, v4}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    .line 299
    :goto_1
    return-void

    #@1c
    .line 303
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Landroid/widget/QuickContactBadge;->mExtras:Landroid/os/Bundle;

    #@1e
    .restart local v2    # "extras":Landroid/os/Bundle;
    goto :goto_0

    #@1f
    .line 307
    :cond_1
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    #@21
    if-eqz v0, :cond_2

    #@23
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 308
    const-string/jumbo v0, "uri_content"

    #@2a
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    #@2c
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    .line 309
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    #@31
    .line 310
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    #@33
    iget-object v3, p0, Landroid/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    #@35
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@3c
    move-result-object v3

    #@3d
    .line 311
    sget-object v4, Landroid/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    #@3f
    .line 309
    const/4 v1, 0x2

    #@40
    move-object v6, v5

    #@41
    move-object v7, v5

    #@42
    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@45
    goto :goto_1

    #@46
    .line 312
    :cond_2
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    #@48
    if-eqz v0, :cond_3

    #@4a
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    #@4c
    if-eqz v0, :cond_3

    #@4e
    .line 313
    const-string/jumbo v0, "uri_content"

    #@51
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    #@53
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@56
    .line 314
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    #@58
    .line 315
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #@5a
    iget-object v3, p0, Landroid/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    #@5c
    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@5f
    move-result-object v3

    #@60
    .line 316
    sget-object v4, Landroid/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    #@62
    .line 314
    const/4 v1, 0x3

    #@63
    move-object v6, v5

    #@64
    move-object v7, v5

    #@65
    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@68
    goto :goto_1

    #@69
    .line 319
    :cond_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 147
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    #@4
    .line 149
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->isEnabled()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 151
    return-void

    #@b
    .line 154
    :cond_0
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    #@d
    if-eqz v1, :cond_1

    #@f
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_2

    #@17
    .line 157
    :cond_1
    return-void

    #@18
    .line 155
    :cond_2
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    #@1a
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 160
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getWidth()I

    #@25
    move-result v2

    #@26
    invoke-virtual {p0}, Landroid/widget/QuickContactBadge;->getHeight()I

    #@29
    move-result v3

    #@2a
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2d
    .line 162
    iget v1, p0, Landroid/widget/QuickContactBadge;->mPaddingTop:I

    #@2f
    if-nez v1, :cond_3

    #@31
    iget v1, p0, Landroid/widget/QuickContactBadge;->mPaddingLeft:I

    #@33
    if-nez v1, :cond_3

    #@35
    .line 163
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    #@37
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@3a
    .line 146
    :goto_0
    return-void

    #@3b
    .line 165
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    #@3e
    move-result v0

    #@3f
    .line 166
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@42
    .line 167
    iget v1, p0, Landroid/widget/QuickContactBadge;->mPaddingLeft:I

    #@44
    int-to-float v1, v1

    #@45
    iget v2, p0, Landroid/widget/QuickContactBadge;->mPaddingTop:I

    #@47
    int-to-float v2, v2

    #@48
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@4b
    .line 168
    iget-object v1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    #@4d
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@50
    .line 169
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@53
    goto :goto_0
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 0
    .param p1, "excludeMimes"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 334
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    #@2
    .line 333
    return-void
.end method

.method public setImageToDefault()V
    .locals 2

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 183
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    #@6
    const v1, 0x108031e

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    #@f
    .line 185
    :cond_0
    iget-object v0, p0, Landroid/widget/QuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    #@11
    invoke-virtual {p0, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@14
    .line 181
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "size"    # I

    #@0
    .prologue
    .line 133
    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "overlay"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 291
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mOverlay:Landroid/graphics/drawable/Drawable;

    #@2
    .line 290
    return-void
.end method

.method public setPrioritizedMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "prioritizedMimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 142
    iput-object p1, p0, Landroid/widget/QuickContactBadge;->mPrioritizedMimeType:Ljava/lang/String;

    #@2
    .line 141
    return-void
.end method
