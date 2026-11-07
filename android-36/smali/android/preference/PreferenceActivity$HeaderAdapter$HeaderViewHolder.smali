.class Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceActivity$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field greylist-max-o icon:Landroid/widget/ImageView;

.field greylist-max-o summary:Landroid/widget/TextView;

.field greylist-max-o title:Landroid/widget/TextView;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/preference/PreferenceActivity-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity$HeaderAdapter$HeaderViewHolder;-><init>()V

    return-void
.end method
