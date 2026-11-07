.class public abstract Landroid/view/autofill/AutofillManagerInternal;
.super Ljava/lang/Object;
.source "AutofillManagerInternal.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getAutofillOptions(Ljava/lang/String;JI)Landroid/content/AutofillOptions;
.end method

.method public abstract blacklist isAugmentedAutofillServiceForUser(II)Z
.end method

.method public abstract greylist-max-o onBackKeyPressed()V
.end method
