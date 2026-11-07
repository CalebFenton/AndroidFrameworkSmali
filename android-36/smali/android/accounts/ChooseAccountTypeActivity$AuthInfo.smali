.class Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;
.super Ljava/lang/Object;
.source "ChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseAccountTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthInfo"
.end annotation


# instance fields
.field final greylist-max-o desc:Landroid/accounts/AuthenticatorDescription;

.field final greylist-max-o drawable:Landroid/graphics/drawable/Drawable;

.field final greylist-max-o name:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "desc"    # Landroid/accounts/AuthenticatorDescription;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    .line 164
    iput-object p2, p0, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->name:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->drawable:Landroid/graphics/drawable/Drawable;

    .line 166
    return-void
.end method
