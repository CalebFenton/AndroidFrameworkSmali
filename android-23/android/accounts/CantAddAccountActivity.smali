.class public Landroid/accounts/CantAddAccountActivity;
.super Landroid/app/Activity;
.source "CantAddAccountActivity.java"


# static fields
.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "android.accounts.extra.ERROR_CODE"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/accounts/CantAddAccountActivity;->onBackPressed()V

    #@3
    .line 38
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    .line 35
    const v0, 0x1090033

    #@6
    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->setContentView(I)V

    #@9
    .line 33
    return-void
.end method
