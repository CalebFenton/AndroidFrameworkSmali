.class Landroid/transition/Visibility$VisibilityInfo;
.super Ljava/lang/Object;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibilityInfo"
.end annotation


# instance fields
.field greylist-max-o endParent:Landroid/view/ViewGroup;

.field greylist-max-o endVisibility:I

.field greylist-max-o fadeIn:Z

.field greylist-max-o startParent:Landroid/view/ViewGroup;

.field greylist-max-o startVisibility:I

.field greylist-max-o visibilityChange:Z


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/transition/Visibility-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/transition/Visibility$VisibilityInfo;-><init>()V

    return-void
.end method
