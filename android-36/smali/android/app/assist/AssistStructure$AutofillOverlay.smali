.class public Landroid/app/assist/AssistStructure$AutofillOverlay;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutofillOverlay"
.end annotation


# instance fields
.field public greylist-max-o focused:Z

.field public greylist-max-o value:Landroid/view/autofill/AutofillValue;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
