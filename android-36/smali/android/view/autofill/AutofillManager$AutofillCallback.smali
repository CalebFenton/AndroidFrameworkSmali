.class public abstract Landroid/view/autofill/AutofillManager$AutofillCallback;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AutofillCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillManager$AutofillCallback$AutofillEventType;
    }
.end annotation


# static fields
.field public static final whitelist EVENT_INPUT_HIDDEN:I = 0x2

.field public static final whitelist EVENT_INPUT_SHOWN:I = 0x1

.field public static final whitelist EVENT_INPUT_UNAVAILABLE:I = 0x3


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 4711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAutofillEvent(Landroid/view/View;I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # I

    .line 4755
    return-void
.end method

.method public whitelist onAutofillEvent(Landroid/view/View;II)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "event"    # I

    .line 4767
    return-void
.end method
