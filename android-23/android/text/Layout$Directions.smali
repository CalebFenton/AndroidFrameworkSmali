.class public Landroid/text/Layout$Directions;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Directions"
.end annotation


# instance fields
.field mDirections:[I


# direct methods
.method constructor <init>([I)V
    .locals 0
    .param p1, "dirs"    # [I

    #@0
    .prologue
    .line 1886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1887
    iput-object p1, p0, Landroid/text/Layout$Directions;->mDirections:[I

    #@5
    .line 1886
    return-void
.end method
