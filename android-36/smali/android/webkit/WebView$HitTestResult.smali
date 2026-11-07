.class public Landroid/webkit/WebView$HitTestResult;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HitTestResult"
.end annotation


# static fields
.field public static final whitelist ANCHOR_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EDIT_TEXT_TYPE:I = 0x9

.field public static final whitelist EMAIL_TYPE:I = 0x4

.field public static final whitelist GEO_TYPE:I = 0x3

.field public static final whitelist IMAGE_ANCHOR_TYPE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IMAGE_TYPE:I = 0x5

.field public static final whitelist PHONE_TYPE:I = 0x2

.field public static final whitelist SRC_ANCHOR_TYPE:I = 0x7

.field public static final whitelist SRC_IMAGE_ANCHOR_TYPE:I = 0x8

.field public static final whitelist UNKNOWN_TYPE:I


# instance fields
.field private greylist-max-o mExtra:Ljava/lang/String;

.field private greylist-max-o mType:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    .line 273
    return-void
.end method


# virtual methods
.method public whitelist getExtra()Ljava/lang/String;
    .registers 2

    .line 310
    iget-object v0, p0, Landroid/webkit/WebView$HitTestResult;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 298
    iget v0, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    return v0
.end method

.method public whitelist setExtra(Ljava/lang/String;)V
    .registers 2
    .param p1, "extra"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 288
    iput-object p1, p0, Landroid/webkit/WebView$HitTestResult;->mExtra:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public whitelist setType(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 280
    iput p1, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    .line 281
    return-void
.end method
