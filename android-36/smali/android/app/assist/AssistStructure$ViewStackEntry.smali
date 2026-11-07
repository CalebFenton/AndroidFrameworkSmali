.class final Landroid/app/assist/AssistStructure$ViewStackEntry;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewStackEntry"
.end annotation


# instance fields
.field greylist-max-o curChild:I

.field greylist-max-o node:Landroid/app/assist/AssistStructure$ViewNode;

.field greylist-max-o numChildren:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
