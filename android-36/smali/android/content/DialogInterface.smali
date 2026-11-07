.class public interface abstract Landroid/content/DialogInterface;
.super Ljava/lang/Object;
.source "DialogInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/DialogInterface$OnKeyListener;,
        Landroid/content/DialogInterface$OnMultiChoiceClickListener;,
        Landroid/content/DialogInterface$OnClickListener;,
        Landroid/content/DialogInterface$OnShowListener;,
        Landroid/content/DialogInterface$OnDismissListener;,
        Landroid/content/DialogInterface$OnCancelListener;
    }
.end annotation


# static fields
.field public static final whitelist BUTTON1:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BUTTON2:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BUTTON3:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BUTTON_NEGATIVE:I = -0x2

.field public static final whitelist BUTTON_NEUTRAL:I = -0x3

.field public static final whitelist BUTTON_POSITIVE:I = -0x1


# virtual methods
.method public abstract whitelist cancel()V
.end method

.method public abstract whitelist dismiss()V
.end method
