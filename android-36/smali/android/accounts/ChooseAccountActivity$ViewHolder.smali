.class Landroid/accounts/ChooseAccountActivity$ViewHolder;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field greylist-max-o icon:Landroid/widget/ImageView;

.field greylist-max-o text:Landroid/widget/TextView;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/accounts/ChooseAccountActivity-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/accounts/ChooseAccountActivity$ViewHolder;-><init>()V

    return-void
.end method
