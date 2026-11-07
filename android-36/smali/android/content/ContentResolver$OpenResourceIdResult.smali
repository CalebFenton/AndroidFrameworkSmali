.class public Landroid/content/ContentResolver$OpenResourceIdResult;
.super Ljava/lang/Object;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenResourceIdResult"
.end annotation


# instance fields
.field public greylist id:I

.field public greylist r:Landroid/content/res/Resources;


# direct methods
.method public constructor blacklist <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .param p1, "this$0"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
