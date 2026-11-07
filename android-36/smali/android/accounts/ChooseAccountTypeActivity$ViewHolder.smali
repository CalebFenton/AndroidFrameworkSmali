.class Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;
.super Ljava/lang/Object;
.source "ChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseAccountTypeActivity;
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

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/accounts/ChooseAccountTypeActivity-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;-><init>()V

    return-void
.end method
