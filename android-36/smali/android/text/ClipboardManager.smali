.class public abstract Landroid/text/ClipboardManager;
.super Ljava/lang/Object;
.source "ClipboardManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist getText()Ljava/lang/CharSequence;
.end method

.method public abstract whitelist hasText()Z
.end method

.method public abstract whitelist setText(Ljava/lang/CharSequence;)V
.end method
