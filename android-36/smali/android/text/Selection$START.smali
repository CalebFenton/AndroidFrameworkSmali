.class final Landroid/text/Selection$START;
.super Ljava/lang/Object;
.source "Selection.java"

# interfaces
.implements Landroid/text/NoCopySpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Selection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "START"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/text/Selection-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/text/Selection$START;-><init>()V

    return-void
.end method
