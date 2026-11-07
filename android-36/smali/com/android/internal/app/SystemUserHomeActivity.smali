.class public Lcom/android/internal/app/SystemUserHomeActivity;
.super Landroid/app/Activity;
.source "SystemUserHomeActivity.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SystemUserHome"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const-string v0, "SystemUserHome"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const v0, 0x109015a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/SystemUserHomeActivity;->setContentView(I)V

    .line 37
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 3

    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 41
    const-string v0, "SystemUserHome"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method
